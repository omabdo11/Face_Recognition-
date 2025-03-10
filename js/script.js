 
// # الكود بعد  اختيار الماده



// document.addEventListener("DOMContentLoaded", function () {
//     loadCourses();
// });

// function loadCourses() {
//     fetch("http://127.0.0.1:8000/courses/")
//         .then(response => response.json())
//         .then(data => {
//             let courseSelect = document.getElementById("course");
//             data.courses.forEach(course => {
//                 let option = document.createElement("option");
//                 option.value = course.id;
//                 option.textContent = course.name;
//                 courseSelect.appendChild(option);
//             });
//         })
//         .catch(error => console.error("Error loading courses:", error));
// }

// function recognizeFromCamera() {
//     let courseId = document.getElementById("course").value;
//     if (!courseId) {
//         alert("Please select the material first!");
//         return;
//     }

//     fetch(`http://127.0.0.1:8000/recognize/?course_id=${courseId}`)
//         .then(response => response.json())
//         .then(data => {
//             document.getElementById("result").innerText = data.message;
//         })
//         .catch(error => console.error("Error:", error));
// }





// final 
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
    let weekId = document.getElementById("week").value; //  الحصول على week_id من المستخدم

    if (!courseId) {
        alert("Please select the material first!");
        return;
    }

    if (!weekId) {
        alert("Please enter the week number!");
        return;
    }

    fetch(`http://127.0.0.1:8000/recognize/?course_id=${courseId}&week_id=${weekId}`)
        .then(response => response.json())
        .then(data => {
            document.getElementById("result").innerText = data.message;
        })
        .catch(error => console.error("Error:", error));
}
