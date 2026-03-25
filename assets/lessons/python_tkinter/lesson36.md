## Lesson 36: Parsing API Responses
**(လွၵ်းလၢႆးဢဝ် ၶေႃႈၵႂၢမ်းမူၼ်ႈ လႄႈ ႁၢင်ႈ Icons တီႈ API)**

### 1. JSON Structure ၶွင် Chuck Norris API
မိူဝ်ႈႁဝ်းသူင်ႇ Request ၵႂႃႇတီႈ `https://api.chucknorris.io/jokes/random` ၼၼ်ႉ မၼ်းတေသူင်ႇ JSON ဢၼ်မီး Key လၢႆလၢႆဢၼ်မႃးပၼ်ႁဝ်းၶႃႈ။



* **Icon URL:** ယူႇၼႂ်း `"icon_url"` (ပဵၼ်လိင်ႉႁၢင်ႈ Chuck Norris)
* **Joke Text:** ယူႇၼႂ်း `"value"` (ပဵၼ်ၶေႃႈၵႂၢမ်းမူၼ်ႈ)

---

### 2. တူဝ်ယၢင်ႇ Code (Parsing Logic)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေဢဝ် Joke မႃးၼႄ လႄႈ ဢဝ်လိင်ႉႁၢင်ႈ Icon မၼ်းဢွၵ်ႇမႃးၶႃႈယဝ်ႉ။

```python
import requests

# 1. တီႈယူႇ API (Chuck Norris Random Joke)
url = "https://api.chucknorris.io/jokes/random"

try:
    # 2. သူင်ႇ Get Request ၵႂႃႇ
    response = requests.get(url)

    if response.status_code == 200:
        # 3. ပိၼ်ႇ Response ႁႂ်ႈပဵၼ် Dictionary
        data = response.json()
        
        # 4. --- ၵၢၼ်ထူၵ်းဢဝ် (Parsing) ---
        
        # A. ဢဝ်ၶေႃႈၵႂၢမ်းမူၼ်ႈ (Joke Value)
        joke = data['value']
        
        # B. ဢဝ်လိင်ႉႁၢင်ႈ Icon (Icon URL)
        icon_url = data['icon_url']
        
        # C. ဢဝ် ID ၶွင် Joke
        joke_id = data['id']

        print(f"--- Chuck Norris Joke (ID: {joke_id}) ---")
        print(f"😂 {joke}")
        print(f"🖼️ Icon URL: {icon_url}")
        
    else:
        print(f"Error: {response.status_code} - ႁႃ API ဢမ်ႇႁၼ်ၶႃႈ!")

except Exception as e:
    print(f"Network Error: ဢမ်ႇၸၢင်ႈၵွင်ႉ Internet လႆႈၶႃႈ! ({e})")
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`data['value']`**: ဢၼ်ၼႆႉပဵၼ်ၵၢၼ်ဢဝ် "လိၵ်ႈ" ဢၼ်ပဵၼ်တူဝ် Joke တႄႉတႄႉၼၼ်ႉမႃးၶႃႈ။
* **`data['icon_url']`**: ဢၼ်ၼႆႉပဵၼ် "လိင်ႉႁၢင်ႈ" (Image URL)။ ၼႂ်း GUI တႄႉ ႁဝ်းတေလူဝ်ႇၸႂ်ႉ **Pillow** တႃႇလူတ်ႇဢဝ်ႁၢင်ႈတီႈလိင်ႉၼႆႉ မႃးၼႄၼႂ်း Label ၶႃႈယဝ်ႉ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Muse Live Weather Dashboard** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉလွၵ်းလၢႆးမိူၼ်ၵၼ်ၼႆႉ တႃႇဢဝ် **Temperature** လႄႈ **Weather Icon** ၶႃႈ။
2.  ၵၢၼ်ပွင်ႇၸႂ် **Key** ၼႂ်း JSON ပဵၼ်လွင်ႈယႂ်ႇသုတ်း တႃႇတေဢဝ် Data မႃးၼႄလႆႈထုၵ်ႇမႅၼ်ႈၶႃႈယဝ်ႉ။

---