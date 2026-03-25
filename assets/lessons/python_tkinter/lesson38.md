## Lesson 38: Environment Variables
**(လွၵ်းလၢႆးႁႄႉၵၢင် API Key ဢမ်ႇႁႂ်ႈၵူၼ်းတၢင်ႇၵေႃႉလၵ်ႉႁၼ်)**

### 1. .env File ပဵၼ်သင်? (What is a .env file?)
**`.env`** ပဵၼ် File လိၵ်ႈယူဝ်းယူဝ်း ဢၼ်ႁဝ်းၸႂ်ႉသိမ်း "ၶေႃႈမုၼ်းလပ်ႉ" (Secrets) ၶႃႈ။ 
ႁဝ်းတေဢမ်ႇတႅမ်ႈ Key ဝႆႉၼႂ်း `main.py`။ ႁဝ်းတေတႅမ်ႈဝႆႉၼႂ်း `.env` သေ သင်ႇႁႂ်ႈ Python "ၵႂႃႇလူဢဝ်" (Read) မႃးၸႂ်ႉၵူၺ်းၶႃႈယဝ်ႉ။



### 2. လွၵ်းလၢႆး Setup (Install python-dotenv)
ႁဝ်းလူဝ်ႇ Tool ဢွၼ်ႇၼိုင်ႈ တႃႇၸွႆႈလူ File `.env` ၶႃႈ:
```bash
pip install python-dotenv
```

---

### 3. တူဝ်ယၢင်ႇ ၵၢၼ်ၸတ်းၵၢၼ် File (File Structure)
ၼႂ်း Folder Project ၸဝ်ႈၵဝ်ႇ လူဝ်ႇမီး 2 File ၼႆႉၶႃႈ:
1.  **`.env`**: (တီႈသိမ်း Key - ဢမ်ႇၼႄပိူၼ်ႈ)
2.  **`main.py`**: (တီႈတႅမ်ႈ Code - လူတ်ႇဢဝ် Key မႃးၸႂ်ႉ)

#### ၼႂ်း File `.env` (တႅမ်ႈၼႆႉၵူၺ်း):
```text
WEATHER_API_KEY=your_secret_key_here_12345
```

---

### 4. တူဝ်ယၢင်ႇ Code (How to use in main.py)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေလူတ်ႇဢဝ် Key မႃးၸႂ်ႉ လူၺ်ႈဢမ်ႇၼႄတူဝ် Key တႄႉတႄႉၶႃႈၼႃ။

```python
import os
from dotenv import load_dotenv # 1. Import tool
import requests

# 2. သင်ႇႁႂ်ႈလူတ်ႇ Data တီႈ File .env ၶဝ်ႈမႃးၼႂ်း System
load_dotenv()

# 3. ထူၵ်းဢဝ် Key မႃးၸႂ်ႉ (လူၺ်ႈၸႂ်ႉၸိုဝ်ႈ Variable ဢၼ်တင်ႈဝႆႉ)
api_key = os.getenv("WEATHER_API_KEY")

def fetch_weather():
    if not api_key:
        print("Error: ႁႃ API Key ၼႂ်း .env ဢမ်ႇႁၼ်ၶႃႈ!")
        return

    # တူဝ်ယၢင်ႇၵၢၼ်ၸႂ်ႉ (URL တေဢမ်ႇၼႄ Key တႄႉတႄႉ)
    url = f"https://api.openweathermap.org/data/2.5/weather?q=Muse&appid={api_key}"
    print(f"API Key ဢၼ်လူတ်ႇမႃးလႆႈ: {api_key[:5]}*****") # ၼႄၵူၺ်း 5 တူဝ်ၼႃႈ

if __name__ == "__main__":
    fetch_weather()
```

---

### 5. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`load_dotenv()`**: မၼ်းတေၵႂႃႇႁႃ File ဢၼ်ၸိုဝ်ႈဝႃႈ `.env` ၼႂ်း Folder လဵဝ်ၵၼ်သေ ဢဝ်ၶေႃႈမုၼ်းၼႂ်းၼၼ်ႉ ၶဝ်ႈၵႂႃႇသိမ်းဝႆႉၼႂ်း "Environment" ၶွင် Computer ႁဝ်းၶႃႈ။
* **`os.getenv("NAME")`**: ပဵၼ်ၵၢၼ်ထၢမ်ဢဝ် "ၵႃႈၶၼ်" (Value) ၶွင် Key ၼၼ်ႉမႃးၸႂ်ႉၶႃႈယဝ်ႉ။
* **Security Bonus**: မိူဝ်ႈႁဝ်းဢဝ် Code သူင်ႇပၼ်ပိူၼ်ႈ ဢမ်ႇၼၼ် Upload ၼိူဝ် GitHub၊ ၸဝ်ႈၵဝ်ႇ **ဢမ်ႇလူဝ်ႇ Upload File `.env`** ပႃးၵႂႃႇၶႃႈ။ ပၼ်ပိူၼ်ႈလူတ်ႇဢဝ် `main.py` သေ ႁႂ်ႈပိူၼ်ႈၵႂႃႇသၢင်ႈ `.env` ႁင်းၶဝ်ၵေႃႈလႆႈယဝ်ႉၶႃႈ။

---

### 6. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Muse Live Weather Dashboard** ၼၼ်ႉ:
1.  ႁဝ်းတေသၢင်ႈ File `.env` တႃႇသိမ်း API Key တူဝ်တႄႉ ဢၼ်ႁဝ်း ဢဝ်မႃးတီႈ OpenWeatherMap။
2.  ဢၼ်ၼႆႉပဵၼ် **Standard Practice** (ပိူင်ဝၢင်းဢၼ်ၵူၼ်းတႅမ်ႈ Software ၵူႈၵေႃႉလူဝ်ႇႁဵတ်း) တႃႇႁႄႉၵၢင် Security ၶႃႈယဝ်ႉ။

---