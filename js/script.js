async function uploadImage() {
    let fileInput = document.getElementById("fileInput");
    let file = fileInput.files[0];

    if (!file) 
        alert("Please select an image file.");
        return;
    }

    let formData = new FormData();
    formData.append("file", file);

    try {
        let response = await fetch("http://127.0.0.1:8000/recognize/", {
            method: "POST",
            body: formData
        });

        let result = await response.json();
        document.getElementById("result").innerText = "Recognized Faces: " + result.recognized_faces.join(", ");
    } catch (error) {
        console.error("Error:", error);
        document.getElementById("result").innerText = "Error recognizing faces.";
    }

