import os
import json
import cv2
import numpy as np
import face_recognition
from fastapi import FastAPI, Response, Request
from fastapi.middleware.cors import CORSMiddleware
from datetime import datetime
from simple_facerec import SimpleFacerec
from collections import defaultdict

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

sfr = SimpleFacerec()

ENCODINGS_FILE = "encodings.json"

if os.path.exists(ENCODINGS_FILE):
    sfr.load_encodings(ENCODINGS_FILE)
else:
    print("Loading face encodings for the first time...")
    sfr.load_encoding_images("E:/faces/omar/my-Github/Face_Recognition-/person")
    sfr.save_encodings(ENCODINGS_FILE)
    print("Saved face encodings to file.")

RTSP_URL = 0

@app.post("/api/clear_attendance")
async def clear_attendance_api():
    try:
        with open('attendance.json', 'w') as f:
            json.dump([], f, indent=4)
        return {"message": "Attendance data cleared successfully!"}
    except Exception as e:
        return {"error": str(e)}, 500

@app.post("/api/mark_attendance")
async def mark_attendance_api(request: Request):
    form = await request.form()
    if 'image' not in form:
        return {"error": "No image uploaded"}, 400

    file = form['image']
    try:
        img = cv2.imdecode(np.frombuffer(await file.read(), np.uint8), cv2.IMREAD_COLOR)
        imgS = cv2.resize(img, (0, 0), fx=0.25, fy=0.25)
        imgS = cv2.cvtColor(imgS, cv2.COLOR_BGR2RGB)

        facesCurFrame = face_recognition.face_locations(imgS)
        encodesCurFrame = face_recognition.face_encodings(imgS, facesCurFrame)
        
        recognized_names = []

        for encodeFace, faceLoc in zip(encodesCurFrame, facesCurFrame):
            matches = face_recognition.compare_faces(sfr.known_face_encodings, encodeFace)
            faceDis = face_recognition.face_distance(sfr.known_face_encodings, encodeFace)
            matchIndex = np.argmin(faceDis)

            if matches[matchIndex]:
                name = sfr.known_face_names[matchIndex].upper()
                recognized_names.append(name)
                mark_attendance(name)

        return {"recognized": recognized_names}

    except Exception as e:
        return {"error": str(e)}, 500

@app.get("/api/get_attendance")
async def get_attendance_api():
    try:
        with open('attendance.json', 'r') as f:
            attendance_data = json.load(f)
        return {"attendance": attendance_data}
    except (FileNotFoundError, json.JSONDecodeError):
        return {"attendance": []}
    except Exception as e:
        return {"error": str(e)}, 500

from fastapi.responses import StreamingResponse

@app.get("/video_feed")
def video_feed():
    return StreamingResponse(generate_frames(), media_type="multipart/x-mixed-replace; boundary=frame")

def generate_frames():
    cap = cv2.VideoCapture(RTSP_URL)
    frame_resizing = 2.0

    frame_count = 0
    recognized_in_frames = defaultdict(int)

    while True:
        success, img = cap.read()
        if not success:
            break

        frame_count += 1

        imgS = cv2.resize(img, (0, 0), fx=frame_resizing, fy=frame_resizing)
        imgS = cv2.cvtColor(imgS, cv2.COLOR_BGR2RGB)

        facesCurFrame = face_recognition.face_locations(imgS)
        encodesCurFrame = face_recognition.face_encodings(imgS, facesCurFrame)

        for encodeFace, faceLoc in zip(encodesCurFrame, facesCurFrame):
            matches = face_recognition.compare_faces(sfr.known_face_encodings, encodeFace)
            faceDis = face_recognition.face_distance(sfr.known_face_encodings, encodeFace)
            matchIndex = np.argmin(faceDis)

            if matches[matchIndex]:
                name = sfr.known_face_names[matchIndex].upper()

                recognized_in_frames[name] += 1

                if recognized_in_frames[name] >= 6:
                    print(f"{name} recognized {recognized_in_frames[name]} times, marking attendance.")
                    mark_attendance(name)  
                    recognized_in_frames[name] = 0

                faceLoc = np.array(faceLoc) / frame_resizing
                y1, x2, y2, x1 = faceLoc.astype(int)

                cv2.rectangle(img, (x1, y1), (x2, y2), (0, 255, 0), 2)
                cv2.rectangle(img, (x1, y2 - 35), (x2, y2), (0, 255, 0), cv2.FILLED)
                cv2.putText(img, name, (x1 + 6, y2 - 6), cv2.FONT_HERSHEY_COMPLEX, 1, (255, 255, 255), 2)

        cv2.putText(img, f"Frame: {frame_count}", (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 255), 2)

        ret, buffer = cv2.imencode('.jpg', img)
        img = buffer.tobytes()
        yield (b'--frame\r\n'
               b'Content-Type: image/jpeg\r\n\r\n' + img + b'\r\n')

        if frame_count >= 10:
            break

    cap.release()

def mark_attendance(name, filename='attendance.json'):
    new_attendance = {
        "name": name,
        "time": datetime.now().strftime('%H:%M:%S')
    }

    try:
        with open(filename, 'r') as f:
            attendance_data = json.load(f)
    except (FileNotFoundError, json.JSONDecodeError):
        attendance_data = []

    if not any(entry['name'] == name for entry in attendance_data):
        attendance_data.append(new_attendance)

        with open(filename, 'w') as f:
            json.dump(attendance_data, f, indent=4)

        print(f"Attendance marked for {name} at {new_attendance['time']}")

@app.route('/api/clear_attendance', methods=['POST'])
def clear_attendance_api():
    try:
        with open('attendance.json', 'w') as f:
            json.dump([], f, indent=4)
        return jsonify({'message': 'Attendance data cleared successfully!'})
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
