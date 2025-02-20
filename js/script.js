 


// # الكود من غير اختيار الماده

// async function recognizeFromCamera() {
//     try {
//         let response = await fetch("http://127.0.0.1:8000/recognize/", {
//             method: "GET"
//         });

//         let result = await response.json();
//         console.log("Server Response:", result);

//         let output = "";

//         if (result.error) {
//             output = "❌ خطأ: " + result.error;
//         } else {
//             output += `📸 عدد الفريمات الملتقطة: ${result.frames_captured}\n\n`;
            
//             if (result.results.length > 0) {
//                 output += "✅ الطلاب الذين تم التعرف عليهم:\n";
//                 result.results.forEach((entry, index) => {
//                     output += `🆔 الطالب ${index + 1}: ${entry.student_id}\n📅 الوقت: ${entry.timestamp}\n\n`;
//                 });
//             } else {
//                 output += "⚠️ لم يتم التعرف على أي طالب!";
//             }
//         }

//         document.getElementById("result").innerText = output;
//     } catch (error) {
//         console.error("❌ Fetch Error:", error);
//         document.getElementById("result").innerText = "❌ خطأ في الاتصال بالسيرفر.";
//     }
// }










// # الكود بعد  اختيار الماده



document.addEventListener("DOMContentLoaded", function () {
    loadCourses();
});

function loadCourses() {
    fetch("http://127.0.0.1:8000/courses/")
        .then(response => response.json())
        .then(data => {
            let courseSelect = document.getElementById("course");
            data.courses.forEach(course => {
                let option = document.createElement("option");
                option.value = course.id;
                option.textContent = course.name;
                courseSelect.appendChild(option);
            });
        })
        .catch(error => console.error("Error loading courses:", error));
}

function recognizeFromCamera() {
    let courseId = document.getElementById("course").value;
    if (!courseId) {
        alert("Please select the material first!");
        return;
    }

    fetch(`http://127.0.0.1:8000/recognize/?course_id=${courseId}`)
        .then(response => response.json())
        .then(data => {
            document.getElementById("result").innerText = data.message;
        })
        .catch(error => console.error("Error:", error));
}
