from fastapi import FastAPI, File, UploadFile
from fastapi.middleware.cors import CORSMiddleware
import cv2
import numpy as np
from simple_facerec import SimpleFacerec
import shutil
import os

# إنشاء تطبيق FastAPI
app = FastAPI()

# السماح بالطلبات من أي مصدر (للاختبار، عدلها في الإنتاج)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# تحميل نموذج التعرف على الوجوه
sfr = SimpleFacerec()
sfr.load_encoding_images("person")

@app.post("/recognize/")
async def recognize_face(file: UploadFile = File(...)):
    # حفظ الملف مؤقتًا
    temp_file_path = f"temp_{file.filename}"
    with open(temp_file_path, "wb") as buffer:
        shutil.copyfileobj(file.file, buffer)
    
    # تحميل الصورة وتحليلها
    image = cv2.imread(temp_file_path)
    face_locations, face_names = sfr.detect_known_faces(image)
    
    # حذف الصورة بعد الاستخدام
    os.remove(temp_file_path)
    
    return {"recognized_faces": face_names}
