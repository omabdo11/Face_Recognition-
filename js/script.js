 
async function recognizeFromCamera() {
    try {
        let response = await fetch("http://127.0.0.1:8000/recognize/", {
            method: "GET"
        });

        let result = await response.json();
        console.log("Server Response:", result);

        let output = "";

        if (result.error) {
            output = "❌ Error: " + result.error;
        } else {
            output += `📸 Frames Captured: ${result.frames_captured}\n\n`;


            if (result.results.length > 0) {
                output += "✅ Recognized Students:\n";

                result.results.forEach((entry, index) => {
                    output += `🆔 Student ${index + 1}: ${entry.student_id}\n📅 Timestamp: ${entry.timestamp}\n\n`;  

                });
            } else {
                output += "⚠️ No students were recognized!";

            }
        }

        document.getElementById("result").innerText = output;
    } catch (error) {
        console.error("❌ Fetch Error:", error);
        document.getElementById("result").innerText = "❌ Error connecting to the server.";

    }
}
