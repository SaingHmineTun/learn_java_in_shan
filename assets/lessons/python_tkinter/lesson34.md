## Lesson 34: Understanding JSON
**(လွၵ်းလၢႆးပွင်ႇၸႂ် ပိူင်ဝၢင်းၶေႃႈမုၼ်း JSON)**

### 1. JSON ပဵၼ်သင်? (What is JSON?)
**JSON** တီႈယၢဝ်းပွင်ႇဝႃႈ **JavaScript Object Notation** ၶႃႈ။ မၼ်းပဵၼ်ပိူင်ဝၢင်းလိၵ်ႈ (Text Format) ဢၼ်တူၺ်းငၢႆႈ လႄႈ ၸႂ်ႉတိုဝ်းငၢႆႈ တႃႇလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း (Data) ၼိူဝ် Internet ၶႃႈ။

ၼႂ်း Python ၼၼ်ႉ JSON မီးပိူင်မိူၼ်ၼင်ႇ **Dictionary** ဢၼ်မီး **Key** လႄႈ **Value** ၶႃႈယဝ်ႉ။



---

### 2. ပိူင်ဝၢင်း JSON (JSON Syntax)
JSON သိမ်းၶေႃႈမုၼ်းဝႆႉၼႂ်း **Braces `{ }`** လႄႈ ၸႂ်ႉတိုဝ်း:
* **Key:** လူဝ်ႇမီး String ၼႂ်း Double Quotes `""` (တူဝ်ယၢင်ႇ: `"city"`)
* **Value:** ၸၢင်ႈပဵၼ် String, Number, Boolean, List ဢမ်ႇၼၼ် JSON ထႅင်ႈတူဝ်ၼိုင်ႈ (Nested)။

**တူဝ်ယၢင်ႇ JSON ၶွင် Muse Weather:**
```json
{
  "city": "Muse",
  "temperature": 32,
  "is_sunny": true,
  "coords": {
    "lat": 23.99,
    "lon": 97.90
  }
}
```

---

### 3. တူဝ်ယၢင်ႇ Code (Python JSON Handling)
ၼႂ်း Python ႁဝ်းၸႂ်ႉ Module `json` တႃႇပိၼ်ႇလိၵ်ႈ JSON ႁႂ်ႈပဵၼ် Dictionary ၶႃႈ။

```python
import json

# 1. တူဝ်ယၢင်ႇ လိၵ်ႈ JSON (ဢၼ်လႆႈမႃးတီႈ API)
raw_json = '{"city": "Muse", "temp": 30, "status": "Clear"}'

# 2. ပိၼ်ႇ (Parse) JSON String ႁႂ်ႈပဵၼ် Python Dictionary
data = json.loads(raw_json)

# 3. ဢဝ် Data မႃးၸႂ်ႉ
print(f"မိူင်း: {data['city']}")
print(f"ၵႃႈၶၼ်မႆႉ: {data['temp']}°C")
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`json.loads()`**: ၸွႆႈပိၼ်ႇလိၵ်ႈ JSON (Load String) ႁႂ်ႈပဵၼ် Dictionary ၼင်ႇႁိုဝ် Python ပေႃးတေဢဝ် Data မႃးၸႂ်ႉလႆႈၶႃႈ။
* **Nested Data**: သင်မီး Data ၼႂ်း Data ၸိူင်ႉၼင်ႇ `coords` တီႈၼိူဝ်ၼၼ်ႉ ႁဝ်းၸၢင်ႈဢဝ်မႃးၸႂ်ႉ `data['coords']['lat']` ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Muse Live Weather Dashboard** ၼၼ်ႉ:
1.  API တေသူင်ႇ JSON ဢၼ်ယၢဝ်းယၢဝ်းမႃးပၼ်ႁဝ်း။
2.  ႁဝ်းလူဝ်ႇၸႂ်ႉ **Key** ဢၼ်မႅၼ်ႈၸွမ်းပိူင် Server တႃႇဢဝ် **Temperature** ဢမ်ႇၼၼ် **Weather Icon** ဢွၵ်ႇမႃးၼႄၼႂ်း GUI ၶႃႈယဝ်ႉ။

---