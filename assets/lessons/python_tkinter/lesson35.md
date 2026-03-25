## Lesson 35: The Requests Library
**(လွၵ်းလၢႆးသူင်ႇ Request ၵႂႃႇဢဝ် Data တီႈ Web)**

### 1. Requests Library ပဵၼ်သင်? (What is it?)
**Requests** ပဵၼ် Library ဢၼ်ၸႂ်ႉၼမ်လိူဝ်ပိူၼ်ႈ လႄႈ ၸႂ်ႉငၢႆႈလိူဝ်ပိူၼ်ႈ ၼႂ်း Python တႃႇၵပ်းသိုပ်ႇတင်း HTTP (Internet) ၶႃႈ။ 
မၼ်းၸွႆႈႁဝ်းသူင်ႇ "ၶေႃႈၵႂၢမ်းထၢမ်" (Get Request) ၵႂႃႇတီႈ Server သေ ႁပ်ႉဢဝ် ၶေႃႈတွပ်ႇ (Response) ၶိုၼ်းမႃးၶႃႈယဝ်ႉ။



### 2. လွၵ်းလၢႆး Install (How to Install)
ယွၼ်ႉမၼ်း ဢမ်ႇပႃးမႃးၸွမ်း Python မိူဝ်ႈတႄႇႁူဝ်မၼ်းလႄႈ ႁဝ်းလူဝ်ႇ Install မၼ်းၼႂ်း Terminal (ဢမ်ႇၼၼ် PyCharm Console) ၵွၼ်ႇၶႃႈ:
```bash
pip install requests
```

---

### 3. တူဝ်ယၢင်ႇ Code (Fetching Real Data)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေၸမ်းၵႂႃႇဢဝ် "ၶေႃႈၵႂၢမ်းၵပ်းထုၵ်ႇ" (Random Quotes) တီႈ Internet မႃးၼႄၶႃႈ။

```python
import requests

# 1. တီႈယူႇ API တီႈဝႅပ်ႉသၢႆႉၸဝ်ႈၵဝ်ႇ (Get Random Proverb)
url = "https://shan-proverbs.vercel.app/api/proverbs/random"

try:
    # 2. သူင်ႇ Request ၵႂႃႇထၢမ်ဢဝ်
    response = requests.get(url)

    if response.status_code == 200:
        # 3. ပိၼ်ႇပဵၼ် Dictionary
        data = response.json()

        # 4. ထူၵ်းဢဝ်ၵႂၢမ်းၵပ်းထုၵ်ႇ (Parsing)
        # ၼႂ်း API ၸဝ်ႈၵဝ်ႇ မၼ်းမီး Key ဢၼ်ၸိုဝ်ႈဝႃႈ 'proverb'
        proverb_text = data['proverb']
        id = data['id']

        print(f"--- ၵႂၢမ်းၵပ်းထုၵ်ႇတႆး (ID: {id}) ---")
        print(f"👉 {proverb_text}")
    else:
        print(f"Error: {response.status_code}")

except Exception as e:
    print(f"Network Error: {e}")
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`requests.get(url)`**: ပဵၼ်ၵၢၼ် "ၼဵၵ်း Enter" တီႈ Browser ႁဝ်းၼၼ်ႉယဝ်ႉၶႃႈ။ မၼ်းတေသူင်ႇၶေႃႈၵႂၢမ်းၵႂႃႇထၢမ် Server။
* **`.status_code`**: Server တေသူင်ႇမၢႆၼပ်ႉမႃးပၼ်ႁဝ်း။
    * **200**: OK (လႆႈယဝ်ႉ)။
    * **404**: Not Found (ႁႃ Address ဢမ်ႇႁၼ်)။
* **`.json()`**: ဢၼ်ၼႆႉၵျႃႉတႄႉတႄႉၶႃႈ။ မၼ်းတေပိၼ်ႇလိၵ်ႈ JSON ဢၼ်လႆႈမႃးၼၼ်ႉ ႁႂ်ႈပဵၼ် **Python Dictionary** ပၼ်ႁဝ်းၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ `json.loads()` ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Muse Live Weather Dashboard** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ `requests.get()` တႃႇၵႂႃႇဢဝ်ၶေႃႈမုၼ်း Weather တီႈ **OpenWeatherMap**။
2.  ႁဝ်းလူဝ်ႇသႂ်ႇ **Parameters** (City Name, API Key) ၸွမ်းၼႂ်း URL ၶႃႈယဝ်ႉ။

---