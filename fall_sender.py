import requests
from datetime import datetime

# API URL — Rails sunucunun adresi
API_URL = "http://localhost:3000/falls/detect"

def send_fall_data(status):
    data = {
        "status": status,
        "detected_at": datetime.now().isoformat()
    }
    try:
        response = requests.post(API_URL, json=data)
        if response.status_code == 201:
            print("✅ Fall data sent successfully:", response.json())
        else:
            print("⚠️ Failed to send data:", response.text)
    except Exception as e:
        print("❌ Error:", e)

# Örnek kullanım
if __name__ == "__main__":
    send_fall_data("detected")
