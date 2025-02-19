import face_recognition
import cv2
import os
import glob
import numpy as np

class SimpleFacerec:
    def __init__(self):
        self.known_face_encodings = []
        self.known_face_names = []

        # Resize frame for a faster speed
        self.frame_resizing = 0.5  # تم تصغير الإطار لتسريع العملية

    def load_encoding_images(self, images_path):
        # Load Images
        images_path = glob.glob(os.path.join(images_path, "*.*"))

        print("{} encoding images found.".format(len(images_path)))

        # Store image encoding and names
        for img_path in images_path:
            img = cv2.imread(img_path)
            if img is None:
                print(f"Warning: Could not read image {img_path}")
                continue

            rgb_img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)

            # Get the filename only from the initial file path.
            basename = os.path.basename(img_path)
            (filename, ext) = os.path.splitext(basename)
            
            # Get encoding
            encodings = face_recognition.face_encodings(rgb_img)
            if encodings:
                img_encoding = encodings[0]
                # Store file name and file encoding
                self.known_face_encodings.append(img_encoding)
                self.known_face_names.append(filename)
            else:
                print(f"Warning: No face found in {img_path}")

        print("Encoding images loaded")

    def detect_known_faces(self, frame):
        # 🔹 تصغير الإطار لتسريع العملية
        small_frame = cv2.resize(frame, (0, 0), fx=self.frame_resizing, fy=self.frame_resizing)

        # 🔹 تحويل إلى RGB (face_recognition يحتاج إلى صيغة RGB)
        rgb_small_frame = cv2.cvtColor(small_frame, cv2.COLOR_BGR2RGB)

        # 🔹 اكتشاف الوجوه
        face_locations = face_recognition.face_locations(rgb_small_frame)
        face_encodings = face_recognition.face_encodings(rgb_small_frame, face_locations)

        print(f"Detected faces: {len(face_locations)}")  # طباعة عدد الوجوه المكتشفة للتحقق

        face_names = []
        for face_encoding in face_encodings:
            matches = face_recognition.compare_faces(self.known_face_encodings, face_encoding)
            name = "Unknown"

            # 🔹 البحث عن أفضل تطابق
            face_distances = face_recognition.face_distance(self.known_face_encodings, face_encoding)
            if face_distances.size > 0:
                best_match_index = np.argmin(face_distances)
                if matches[best_match_index]:
                    name = self.known_face_names[best_match_index]
            
            face_names.append(name)

        return face_locations, face_names
