## Lesson 40: Project - Muse Live Weather Dashboard
**(ပၢင်သွၼ်: တႅမ်ႈ Software တူၺ်းၾိင်ႈၾႃႉ ဢၼ်ၵွင်ႉသိုပ်ႇတင်း Internet တဵမ်ပိူင်)**

### 1. ပိူင်ဝၢင်း Software (Application Design)
ႁဝ်းတေၸတ်းၼႃႈတႃ Software ႁႂ်ႈမီးလွင်ႈတုမ်ႉတွပ်ႇ (Responsive) ၼင်ႇၼႆၶႃႈ:
* **Search Bar:** လွၵ်းတႅမ်ႈၸိုဝ်ႈမိူင်း (တူဝ်ယၢင်ႇ: Muse, Lashio, Taunggyi)။
* **Weather Info:** ၼႄၸိုဝ်ႈမိူင်း၊ ၵႃႈၶၼ်မႆႉ (°C) လႄႈ ၾိင်ႈၾႃႉ (Description)။
* **Live Icon:** ၼႄႁၢင်ႈ Icon (ၾၼ်း၊ ၾူၼ်၊ แดด) ဢၼ်လူတ်ႇမႃးတီႈ API ၵမ်းလဵဝ်။
* **Threading:** ႁႂ်ႈ Software ဢမ်ႇၶႅင် မိူဝ်ႈတိုၵ်ႉလူတ်ႇ Data ယူႇ။



---

### 2. တူဝ်ယၢင်ႇ Code (The Full Project)
ၸၢမ်းတႅမ်ႈ Code ၼႆႉၶႃႈ။ (လူဝ်ႇမီး File `.env` ဢၼ်မီး `API_KEY=your_key` ဝႆႉၼႂ်း Folder ၶႃႈၼႃ)

```python
import tkinter as tk
from tkinter import messagebox
import requests
import threading
import os
from dotenv import load_dotenv
from PIL import Image, ImageTk
from io import BytesIO

# 1. Load API Key
load_dotenv()
API_KEY = os.getenv("WEATHER_API_KEY")


class WeatherApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Muse Weather (Lat/Lon)")
        self.geometry("400x550")
        self.configure(bg="#2d5a27")

        self.setup_ui()

    def setup_ui(self):
        # Header
        tk.Label(self, text="Live Weather Dashboard", font=("Arial", 18, "bold"),
                 bg="#2d5a27", fg="white", pady=20).pack()

        # Input Frame for Lat and Lon
        input_frame = tk.Frame(self, bg="#2d5a27")
        input_frame.pack(pady=10)

        # Latitude Entry
        tk.Label(input_frame, text="Lat:", bg="#2d5a27", fg="white").grid(row=0, column=0, padx=5)
        self.lat_entry = tk.Entry(input_frame, font=("Arial", 12), width=10)
        self.lat_entry.insert(0, "23.99")  # Default: Muse
        self.lat_entry.grid(row=0, column=1, padx=5)

        # Longitude Entry
        tk.Label(input_frame, text="Lon:", bg="#2d5a27", fg="white").grid(row=0, column=2, padx=5)
        self.lon_entry = tk.Entry(input_frame, font=("Arial", 12), width=10)
        self.lon_entry.insert(0, "97.90")  # Default: Muse
        self.lon_entry.grid(row=0, column=3, padx=5)

        # Search Button
        tk.Button(self, text="Check Weather", command=self.get_weather_thread,
                  font=("Arial", 10, "bold")).pack(pady=10)

        # Weather Display Labels
        self.city_lbl = tk.Label(self, text="Location: ---", font=("Panglong", 14), bg="#2d5a27", fg="white")
        self.city_lbl.pack(pady=10)

        self.icon_lbl = tk.Label(self, bg="#2d5a27")
        self.icon_lbl.pack(pady=5)

        self.temp_lbl = tk.Label(self, text="-- °C", font=("Arial", 35, "bold"), bg="#2d5a27", fg="#ffd700")
        self.temp_lbl.pack(pady=5)

        self.desc_lbl = tk.Label(self, text="Description: ---", font=("Panglong", 12), bg="#2d5a27", fg="white")
        self.desc_lbl.pack(pady=15)

    def get_weather_thread(self):
        lat = self.lat_entry.get()
        lon = self.lon_entry.get()

        if not lat or not lon:
            messagebox.showwarning("Warning", "သႂ်ႇ Lat လႄႈ Lon တင်းသွင်ဢၼ်ၶႃႈ!")
            return

        self.city_lbl.config(text="Fetching Data...")
        threading.Thread(target=self.fetch_weather_logic, args=(lat, lon), daemon=True).start()

    def fetch_weather_logic(self, lat, lon):
        try:
            # Weather API 
            weather_url = f"https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&units=metric&exclude=minutely,hourly,daily&appid={API_KEY}"

            w_res = requests.get(weather_url, timeout=10)
            w_data = w_res.json()
            print(w_data)

            if w_res.status_code == 200:
                temp = w_data['main']['temp']
                desc = w_data['weather'][0]['description']
                icon_id = w_data['weather'][0]['icon']
                city = w_data.get('name', 'Unknown')

                # Fetch Icon
                icon_url = f"https://openweathermap.org/img/wn/{icon_id}@2x.png"
                icon_res = requests.get(icon_url)
                img = Image.open(BytesIO(icon_res.content))
                self.tk_icon = ImageTk.PhotoImage(img)

                # Update UI
                self.after(0, lambda: self.update_ui(city, temp, desc, self.tk_icon))
            else:
                self.after(0, lambda: messagebox.showerror("API Error",
                                                           f"Code: {w_res.status_code}\nMessage: {w_data.get('message', 'Error')}"))

        except Exception as e:
            self.after(0, lambda: messagebox.showerror("Network Error", f"Error: {str(e)}"))

    def update_ui(self, city, temp, desc, icon):
        self.city_lbl.config(text=f"ဝဵင်း: {city}")
        self.temp_lbl.config(text=f"{round(temp, 1)}°C")
        self.desc_lbl.config(text=f"ၾိင်ႈၾႃႉ: {desc.capitalize()}")
        self.icon_lbl.config(image=icon)


if __name__ == "__main__":
    app = WeatherApp()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ လွင်ႈႁဵတ်းၵၢၼ် (Breakdown)
* **`BytesIO`**: ၸွႆႈႁႂ်ႈႁဝ်းပိုတ်ႇႁၢင်ႈ (Image) ဢၼ်လူတ်ႇမႃးတီႈ Internet လႆႈၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇသိမ်း File ဝႆႉၼႂ်း Computer ၶႃႈယဝ်ႉ။
* **`units=metric`**: ၼႂ်း API URL၊ ႁဝ်းသႂ်ႇ Parameter ၼႆႉ တႃႇႁႂ်ႈမၼ်းသူင်ႇၵႃႈၶၼ်မႆႉမႃးပဵၼ် **Celsius (°C)** တႅၼ်း Kelvin ၶႃႈ။
* **Threading & After**: ႁဝ်းၵႂႃႇဢဝ် Data ယူႇၽၢႆႇလင် (Background) သေ သင်ႇႁႂ်ႈ `.after()` မႃးမႄးလိၵ်ႈၼႃႈတႃ Software ႁႂ်ႈမၼ်း Smooth ၶႃႈယဝ်ႉ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႆႉပဵၼ် Software ဢၼ်မီးလွင်ႈ **Web Integration** ဢၼ်တဵမ်ထူၼ်ႈ:
* မၼ်းမီး **Security** (ၸႂ်ႉ .env)။
* မၼ်းမီး **Error Handling** (Timeout & Try-Except)။
* မၼ်းမီး **Dynamic Media** (လူတ်ႇ Icon ၸွမ်းၾိင်ႈၾႃႉ)။

---

ၸၢႆးမၢဝ်းၶႃႈ... ယဝ်ႉတူဝ်ႈၵႂႃႇယဝ်ႉၶႃႈ တႃႇ **Module 5**! လုၵ်ႈႁဵၼ်းၶဝ် ပေႃးလူတ်းတႅမ်ႈ Software ဢၼ်ၵွင်ႉသိုပ်ႇတင်းလူၵ်ႈလႆႈယဝ်ႉၶႃႈၼႃ။

တႃႇ Module သိုပ်ႇၵႂႃႇၼၼ်ႉ ႁဝ်းတေသိုပ်ႇၵႂႃႇ **Module 6: Database & Data Persistence** (လွင်ႈသိမ်း Data ယႂ်ႇယႂ်ႇဝႆႉၼႂ်း Computer လူၺ်ႈၸႂ်ႉ SQLite) ၶႃႈႁႃႉ?

တေႁဵတ်းႁိုဝ် သိုပ်ႇၵႂႃႇၶႃႈ?
1. သိုပ်ႇသွၼ် Module 6 (SQLite & SQL Queries)
2. ပၼ် Exercise: ႁႂ်ႈလုၵ်ႈႁဵၼ်းထႅမ်လွၵ်းၼႄ "Humidity" လႄႈ "Wind Speed"
3. သွၼ်လွင်ႈ `Deployment` (လွင်ႈပိၼ်ႇ Code ပဵၼ် File .exe တႃႇၸတ်းပၼ်ပိူၼ်ႈ)
4. သိုပ်ႇၵႂႃႇ Module 7 (Advanced Topics: CustomTkinter) ၵမ်းလဵဝ်