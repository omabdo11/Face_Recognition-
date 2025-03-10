

# # الكود بعد اختيار الماده

# import ssl
# from fastapi import FastAPI, Query
# from fastapi.middleware.cors import CORSMiddleware
# import cv2
# import mysql.connector
# import json
# from simple_facerec import SimpleFacerec
# from datetime import datetime

# app = FastAPI()

# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=["*"],
#     allow_credentials=True,
#     allow_methods=["*"],
#     allow_headers=["*"],
# )

# sfr = SimpleFacerec()
# sfr.load_encoding_images("E:/faces/omar/my-Github/Face_Recognition-/person")

# RTSP_URL = "rtsp://omar_4.5125:OMAR01118061180@192.168.1.10:554/stream1"

# db_config = {
#     "host": "localhost",
#     "port": 3307,
#     "user": "dbomar",
#     "password": "12345",
#     "database": "face_recognition",
#     "ssl_disabled": True  # تعطيل SSL لحل مشكلة استيراد ssl
# }

# @app.get("/courses/")
# def get_courses():
#     try:
#         db = mysql.connector.connect(**db_config)
#         cursor = db.cursor()
#         cursor.execute("SELECT course_id, course_name FROM courses")
#         courses = cursor.fetchall()
#         cursor.close()
#         db.close()
#         return {"courses": [{"id": c[0], "name": c[1]} for c in courses]}
#     except mysql.connector.Error as err:
#         return {"error": str(err)}

# @app.get("/recognize/")
# def recognize_from_camera(course_id: str = Query(...)):
#     cap = cv2.VideoCapture(RTSP_URL)
#     if not cap.isOpened():
#         return {"error": "Failed to open camera stream"}

#     face_results = []
#     frame_count = 0

#     while frame_count < 1:
#         ret, frame = cap.read()
#         if not ret:
#             break

#         face_locations, face_names = sfr.detect_known_faces(frame)
#         if not face_names:
#             continue

#         for name in face_names:
#             face_results.append({"student_id": name, "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S")})
        
#         frame_count += 1

#     cap.release()

#     with open("recognized_faces.json", "w", encoding="utf-8") as f:
#         json.dump(face_results, f, indent=4)

#     update_attendance(course_id)
#     return {"frames_captured": frame_count, "results": face_results, "message": "Data saved and database updated"}

# def update_attendance(course_id):
#     try:
#         db = mysql.connector.connect(**db_config)
#         cursor = db.cursor()

#         with open("recognized_faces.json", "r", encoding="utf-8") as file:
#             recognized_faces = json.load(file)

#         for entry in recognized_faces:
#             student_id = entry["student_id"]
#             timestamp = entry["timestamp"]

#             cursor.execute("SELECT location_name, day, period_id FROM registrations WHERE student_id = %s AND course_id = %s", (student_id, course_id))
#             registration_data = cursor.fetchone()

#             if registration_data:
#                 location_name, day, period_id = registration_data
#                 cursor.execute("""
#                     INSERT INTO attendances (student_id, course_id, location_name, day, period_id, created_at, updated_at,week_id)
#                     VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
#                 """, (student_id, course_id, location_name, day, period_id, timestamp, timestamp,week_id))
#                 db.commit()
#                 print(f"Student attendance has been registered: {student_id} In the material: {course_id}")
#             else:
#                 print(f" Student {student_id} Not registered in the article {course_id}")

#     except mysql.connector.Error as err:
#         print(f"Database error: {err}")

#     finally:
#         cursor.close()
#         db.close()

#     return {"message": " Attendance updated successfully!"}
 
 
 






# الكود بعد اختيار الماده وادخال رقم الاسبوع

import ssl
from fastapi import FastAPI, Query
from fastapi.middleware.cors import CORSMiddleware
import cv2
import mysql.connector
import json
from simple_facerec import SimpleFacerec
from datetime import datetime

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

sfr = SimpleFacerec()
sfr.load_encoding_images("E:/faces/omar/my-Github/Face_Recognition-/person")

RTSP_URL = "rtsp://omar_4.5125:OMAR01118061180@192.168.1.10:554/stream1"

db_config = {
    "host": "localhost",
    "port": 3307,
    "user": "dbomar",
    "password": "12345",
    "database": "face_recognition",
    "ssl_disabled": True
}

@app.get("/courses/")
def get_courses():
    try:
        db = mysql.connector.connect(**db_config)
        cursor = db.cursor()
        cursor.execute("SELECT course_id, course_name FROM courses")
        courses = cursor.fetchall()
        cursor.close()
        db.close()
        return {"courses": [{"id": c[0], "name": c[1]} for c in courses]}
    except mysql.connector.Error as err:
        return {"error": str(err)}

@app.get("/recognize/")
def recognize_from_camera(course_id: str = Query(...), week_id: int = Query(...)):
    cap = cv2.VideoCapture(RTSP_URL)
    if not cap.isOpened():
        return {"error": "Failed to open camera stream"}

    face_results = []
    frame_count = 0

    while frame_count < 1:
        ret, frame = cap.read()
        if not ret:
            break

        face_locations, face_names = sfr.detect_known_faces(frame)
        if not face_names:
            continue

        for name in face_names:
            face_results.append({"student_id": name, "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S")})
        
        frame_count += 1

    cap.release()

    with open("recognized_faces.json", "w", encoding="utf-8") as f:
        json.dump(face_results, f, indent=4)

    update_attendance(course_id, week_id)
    return {"frames_captured": frame_count, "results": face_results, "message": "Data saved and database updated"}

def update_attendance(course_id, week_id):
    try:
        db = mysql.connector.connect(**db_config)
        cursor = db.cursor()

        with open("recognized_faces.json", "r", encoding="utf-8") as file:
            recognized_faces = json.load(file)

        print(f" Week ID received from Frontend: {week_id}")

        for entry in recognized_faces:
            student_id = entry["student_id"]
            timestamp = entry["timestamp"]

            cursor.execute("SELECT location_name, day, period_id FROM registrations WHERE student_id = %s AND course_id = %s", (student_id, course_id))
            registration_data = cursor.fetchone()

            if registration_data:
                location_name, day, period_id = registration_data
                cursor.execute("""
                    INSERT INTO attendances (student_id, course_id, location_name, day, period_id, created_at, updated_at, week_id)
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
                """, (student_id, course_id, location_name, day, period_id, timestamp, timestamp, week_id))
                db.commit()
                print(f"  Student attendance registered: {student_id} In course: {course_id}, Week ID: {week_id}")
            else:
                print(f"  Student {student_id} not registered in course {course_id}")

    except mysql.connector.Error as err:
        print(f"  Database error: {err}")

    finally:
        cursor.close()
        db.close()

    return {"message": "Attendance updated successfully!"}
