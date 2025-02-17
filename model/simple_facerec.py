import face_recognition
import cv2
import os
import glob
import numpy as np



import cv2
import face_recognition
import numpy as np

def grid_search_image_enhancement(image):
    """
    تجربة عدة طرق لتحسين الصورة وتحديد الأفضل بناءً على عدد الوجوه المكتشفة.
    """
    methods = {}

    # 🟢 1️⃣ الصورة الأصلية بدون تعديل
    methods["original"] = image  

    # 🟢 2️⃣ تحسين التباين باستخدام CLAHE
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
    clahe_img = cv2.cvtColor(clahe.apply(gray), cv2.COLOR_GRAY2BGR)
    methods["clahe"] = clahe_img

    # 🟢 3️⃣ تحسين التباين باستخدام Histogram Equalization
    hist_eq = cv2.equalizeHist(gray)
    hist_eq_img = cv2.cvtColor(hist_eq, cv2.COLOR_GRAY2BGR)
    methods["hist_eq"] = hist_eq_img

    # 🟢 4️⃣ Gamma Correction لتعديل السطوع (تجربة قيم مختلفة)
    gamma_values = [0.5, 1.5, 2.0]
    for gamma in gamma_values:
        invGamma = 1.0 / gamma
        table = np.array([(i / 255.0) ** invGamma * 255 for i in range(256)]).astype("uint8")
        gamma_img = cv2.LUT(image, table)
        methods[f"gamma_{gamma}"] = gamma_img

    # 🟢 5️⃣ تقليل الضوضاء باستخدام Gaussian Blur
    methods["gaussian_blur"] = cv2.GaussianBlur(image, (5, 5), 0)

    # 🔍 تجربة كل طريقة ومعرفة عدد الوجوه المكتشفة
    best_method = "original"
    max_faces = 0

    for method_name, processed_image in methods.items():
        face_locations = face_recognition.face_locations(processed_image, model="hog")
        num_faces = len(face_locations)

        if num_faces > max_faces:
            max_faces = num_faces
            best_method = method_name

    print(f"🧐 The best way to improve image: {best_method}")
    return methods[best_method]

class SimpleFacerec:
    def __init__(self):
        self.known_face_encodings = []
        self.known_face_names = []

        # Resize frame for a faster speed
        self.frame_resizing = 1

    def load_encoding_images(self, images_path):
        
        # Load Images
        images_path = glob.glob(os.path.join(images_path, "*.*"))

        print("{} encoding images found.".format(len(images_path)))

        # Store image encoding and names
        for img_path in images_path:
            img = cv2.imread(img_path)
            rgb_img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)

            # Get the filename only from the initial file path.
            basename = os.path.basename(img_path)
            (filename, ext) = os.path.splitext(basename)
            # Get encoding
            img_encoding = face_recognition.face_encodings(rgb_img)[0]

            # Store file name and file encoding
            self.known_face_encodings.append(img_encoding)
            self.known_face_names.append(filename)
        print("Encoding images loaded")

    def detect_known_faces(self, frame):
        # 🔹 تصغير الإطار لتسريع العملية
        small_frame = cv2.resize(frame, (0, 0), fx=self.frame_resizing, fy=self.frame_resizing)

        # 🔹 اختيار أفضل تحسين للصورة
        processed_frame = grid_search_image_enhancement(small_frame)

        # 🔹 تحويل إلى RGB (face_recognition يحتاج إلى صيغة RGB)
        rgb_small_frame = cv2.cvtColor(processed_frame, cv2.COLOR_BGR2RGB)

        # 🔹 اكتشاف الوجوه
        face_locations = face_recognition.face_locations(rgb_small_frame)
        face_encodings = face_recognition.face_encodings(rgb_small_frame, face_locations)

        face_names = []
        for face_encoding in face_encodings:
            matches = face_recognition.compare_faces(self.known_face_encodings, face_encoding)
            name = "Unknown"

            # 🔹 البحث عن أفضل تطابق
            face_distances = face_recognition.face_distance(self.known_face_encodings, face_encoding)
            best_match_index = np.argmin(face_distances)
            if matches[best_match_index]:
                name = self.known_face_names[best_match_index]
            face_names.append(name)

        # 🔹 تحويل الإحداثيات إلى الحجم الأصلي
        face_locations = np.array(face_locations)
        face_locations = face_locations / self.frame_resizing
        return face_locations.astype(int), face_names

    
    
    
    
