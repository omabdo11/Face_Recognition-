 

import os
import glob
import json
import numpy as np
import cv2
import face_recognition


class SimpleFacerec:
    def __init__(self):
        self.known_face_encodings = []
        self.known_face_names = []

        # Resize frame for faster speed
        self.frame_resizing = 0.5  # Reduce the frame for speed improvement

    def load_encoding_images(self, images_path):
        """تحميل التشفيرات من الصور"""
        images_path = glob.glob(os.path.join(images_path, "*.*"))
        print(f"{len(images_path)} encoding images found.")

        # Store image encoding and names
        for img_path in images_path:
            img = cv2.imread(img_path)
            if img is None:
                print(f"Warning: Could not read image {img_path}")
                continue

            rgb_img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)

            # Get the filename only from the initial file path.
            basename = os.path.basename(img_path)
            filename, ext = os.path.splitext(basename)

            # Get encoding
            encodings = face_recognition.face_encodings(rgb_img)
            if encodings:
                img_encoding = encodings[0]

                # استخراج student_id من اسم الصورة
                if "_" in filename:
                    student_id = filename.split("_")[0]
                else:
                    student_id = filename

                # Store student_id and encoding
                self.known_face_encodings.append(img_encoding)
                self.known_face_names.append(student_id)
            else:
                print(f"Warning: No face found in {img_path}")

        print("Encoding images loaded")

    def detect_known_faces(self, frame):
        """اكتشاف الوجوه في الإطار"""
        small_frame = cv2.resize(frame, (0, 0), fx=self.frame_resizing, fy=self.frame_resizing)
        rgb_small_frame = cv2.cvtColor(small_frame, cv2.COLOR_BGR2RGB)

        # Detect faces
        face_locations = face_recognition.face_locations(rgb_small_frame)
        face_encodings = face_recognition.face_encodings(rgb_small_frame, face_locations)

        print(f"Detected faces: {len(face_locations)}")

        face_names = []
        for face_encoding in face_encodings:
            matches = face_recognition.compare_faces(self.known_face_encodings, face_encoding)
            name = "Unknown"

            # Find the best match
            face_distances = face_recognition.face_distance(self.known_face_encodings, face_encoding)
            if face_distances.size > 0:
                best_match_index = np.argmin(face_distances)
                if matches[best_match_index] < 0.45:   # تحكم في حساسية التعرف
                    name = self.known_face_names[best_match_index]
            
            face_names.append(name)

        return face_locations, face_names

    def save_encodings(self, encodings_file):
        """حفظ التشفيرات في الملف"""
        # تحويل التشفيرات إلى قوائم قبل حفظها
        encodings_list = [encoding.tolist() for encoding in self.known_face_encodings]

        face_encodings_data = {
            "encodings": encodings_list,
            "names": self.known_face_names
        }
        with open(encodings_file, "w", encoding="utf-8") as f:
            json.dump(face_encodings_data, f, indent=4)
        print("Saved face encodings to file.")

    def load_encodings(self, encodings_file):
        """تحميل التشفيرات من الملف"""
        if os.path.exists(encodings_file):
            with open(encodings_file, "r", encoding="utf-8") as f:
                face_encodings_data = json.load(f)
            
            # تحويل القوائم إلى ndarray
            self.known_face_encodings = [np.array(encoding) for encoding in face_encodings_data["encodings"]]
            self.known_face_names = face_encodings_data["names"]
            print("Loaded face encodings from file.")
        else:
            print("No encodings file found, starting fresh.")
