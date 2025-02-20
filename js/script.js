 
async function recognizeFromCamera() {
    try {
        let response = await fetch("http://127.0.0.1:8000/recognize/", {
            method: "GET"
        });

        let result = await response.json();
        console.log("Server Response:", result);

        let output = "";

        if (result.error) {
            output = "❌ خطأ: " + result.error;
        } else {
            output += `📸 عدد الفريمات الملتقطة: ${result.frames_captured}\n\n`;
            
            if (result.results.length > 0) {
                output += "✅ الطلاب الذين تم التعرف عليهم:\n";
                result.results.forEach((entry, index) => {
                    output += `🆔 الطالب ${index + 1}: ${entry.student_id}\n📅 الوقت: ${entry.timestamp}\n\n`;
                });
            } else {
                output += "⚠️ لم يتم التعرف على أي طالب!";
            }
        }

        document.getElementById("result").innerText = output;
    } catch (error) {
        console.error("❌ Fetch Error:", error);
        document.getElementById("result").innerText = "❌ خطأ في الاتصال بالسيرفر.";
    }
}
