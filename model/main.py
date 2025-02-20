
# from fastapi import FastAPI
# from fastapi.middleware.cors import CORSMiddleware
# import cv2
# import numpy as np
# import json
# from simple_facerec import SimpleFacerec

# # إنشاء تطبيق FastAPI
# app = FastAPI()

# # السماح بالطلبات من أي مصدر (للاختبار، عدلها في الإنتاج)
# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=["*"],
#     allow_credentials=True,
#     allow_methods=["*"],
#     allow_headers=["*"],
# )

# # تحميل نموذج التعرف على الوجوه
# sfr = SimpleFacerec()
# sfr.load_encoding_images("C:/Users/hp/Desktop/face/person")

# # مسار كاميرا RTSP
# RTSP_URL = "rtsp://omar_4.5125:OMAR01118061180@192.168.1.4:554/stream1"

# @app.get("/recognize/")
# async def recognize_from_camera():
#     cap = cv2.VideoCapture(RTSP_URL)

#     if not cap.isOpened():
#         return {"error": "Failed to open camera stream"}

#     face_results = []
#     frame_count = 0

#     while frame_count < 1:  # التقاط 5 فريمات فقط
#         ret, frame = cap.read()
#         if not ret:
#             break

#         face_locations, face_names = sfr.detect_known_faces(frame)
#         face_results.append({"frame": frame_count + 1, "faces": face_names})

#         frame_count += 1

#     cap.release()

#     # حفظ البيانات في ملف JSON
#     with open("recognized_faces.json", "w") as f:
#         json.dump(face_results, f, indent=4)

#     return {"frames_captured": frame_count, "results": face_results, "message": "Data saved to recognized_faces.json"}






  

# الكود من غير اختيار الماده

# from fastapi import FastAPI
# from fastapi.middleware.cors import CORSMiddleware
# import cv2
# import mysql.connector
# import json
# from simple_facerec import SimpleFacerec
# from datetime import datetime

# # إنشاء تطبيق FastAPI
# app = FastAPI()

# # السماح بالطلبات من أي مصدر (للاختبار، عدلها في الإنتاج)
# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=["*"],
#     allow_credentials=True,
#     allow_methods=["*"],
#     allow_headers=["*"],
# )

# # تحميل نموذج التعرف على الوجوه
# sfr = SimpleFacerec()
# sfr.load_encoding_images("C:/Users/hp/Desktop/face/person")

# # مسار كاميرا RTSP
# RTSP_URL = "rtsp://omar_4.5125:OMAR01118061180@192.168.1.4:554/stream1"

# # إعدادات قاعدة البيانات
# db_config = {
#     "host": "localhost",
#     "port": 3307,
#     "user": "dbomar",
#     "password": "12345",
#     "database": "smart_attendance"
# }

# @app.get("/recognize/")
# def recognize_from_camera():
#     cap = cv2.VideoCapture(RTSP_URL)
#     if not cap.isOpened():
#         return {"error": "Failed to open camera stream"}

#     face_results = []
#     frame_count = 0

#     while frame_count < 1:  # التقاط 1 فريم فقط
#         ret, frame = cap.read()
#         if not ret:
#             break

#         face_locations, face_names = sfr.detect_known_faces(frame)
#         if not face_names:
#             continue  # تجاهل الفريم إذا لم يتم التعرف على أي وجه

#         for name in face_names:
#             face_results.append({"student_id": name, "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S")})
        
#         frame_count += 1

#     cap.release()

#     # حفظ البيانات في ملف JSON
#     with open("recognized_faces.json", "w", encoding="utf-8") as f:
#         json.dump(face_results, f, indent=4)

#     # تحديث قاعدة البيانات تلقائيًا بعد التعرف
#     update_attendance()
    
#     return {"frames_captured": frame_count, "results": face_results, "message": "Data saved to recognized_faces.json and database updated"}

# def update_attendance():
#     try:
#         db = mysql.connector.connect(**db_config)
#         cursor = db.cursor()

#         # قراءة البيانات من JSON مباشرةً
#         with open("recognized_faces.json", "r", encoding="utf-8") as file:
#             recognized_faces = json.load(file)

#         for entry in recognized_faces:
#             student_id = entry["student_id"]
#             timestamp = entry["timestamp"]

#             # البحث عن الطالب باستخدام الاستعلام الجديد
#             cursor.execute("""
#                 SELECT r.course_id, r.location_name, r.day, r.period_id, r.student_id, r.created_at, r.updated_at
#                 FROM registrations r
#                 JOIN users u ON r.student_id = u.id
#                 WHERE u.id = %s;
#             """, (student_id,))
#             registration_data = cursor.fetchone()

#             if registration_data:
#                 course_id, location_name, day, period_id, student_id, created_at, updated_at = registration_data

#                 # إضافة بيانات الطالب إلى جدول attendances
#                 cursor.execute("""
#                     INSERT INTO attendances (student_id, course_id, location_name, day, period_id, created_at, updated_at)
#                     VALUES (%s, %s, %s, %s, %s, %s, %s)
#                 """, (student_id, course_id, location_name, day, period_id, timestamp, timestamp))
#                 db.commit()
#                 print(f"✅ تم إدخال الحضور بنجاح للطالب: {student_id}")  # تأكيد الإدخال

#             else:
#                 print(f"⚠️ لم يتم العثور على الطالب: {student_id} في جدول registrations")  # رسالة عند عدم وجود الطالب

#     except mysql.connector.Error as err:
#         print(f"  Database error: {err}")  # طباعة الخطأ إذا كان هناك مشكلة في الاتصال أو الاستعلام

#     finally:
#         cursor.close()
#         db.close()

#     return {"message": "✅ تم تحديث الحضور بنجاح!"}

 


















# الكود بعد اختيار الماده

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

RTSP_URL = "rtsp://omar_4.5125:OMAR01118061180@192.168.1.4:554/stream1"

db_config = {
    "host": "localhost",
    "port": 3307,
    "user": "dbomar",
    "password": "12345",
    "database": "smart_attendance",
    "ssl_disabled": True  # تعطيل SSL لحل مشكلة استيراد ssl
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
def recognize_from_camera(course_id: str = Query(...)):
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

    update_attendance(course_id)
    return {"frames_captured": frame_count, "results": face_results, "message": "Data saved and database updated"}

def update_attendance(course_id):
    try:
        db = mysql.connector.connect(**db_config)
        cursor = db.cursor()

        with open("recognized_faces.json", "r", encoding="utf-8") as file:
            recognized_faces = json.load(file)

        for entry in recognized_faces:
            student_id = entry["student_id"]
            timestamp = entry["timestamp"]

            cursor.execute("SELECT location_name, day, period_id FROM registrations WHERE student_id = %s AND course_id = %s", (student_id, course_id))
            registration_data = cursor.fetchone()

            if registration_data:
                location_name, day, period_id = registration_data
                cursor.execute("""
                    INSERT INTO attendances (student_id, course_id, location_name, day, period_id, created_at, updated_at)
                    VALUES (%s, %s, %s, %s, %s, %s, %s)
                """, (student_id, course_id, location_name, day, period_id, timestamp, timestamp))
                db.commit()
                print(f"Student attendance has been registered: {student_id} In the material: {course_id}")
            else:
                print(f" Student {student_id} Not registered in the article {course_id}")

    except mysql.connector.Error as err:
        print(f"Database error: {err}")

    finally:
        cursor.close()
        db.close()

    return {"message": " Attendance updated successfully!"}
 