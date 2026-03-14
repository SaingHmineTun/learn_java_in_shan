
# Lesson 31: JSON (JavaScript Object Notation)

**JSON** ပဵၼ် "ၽႃႇသႃႇၵၢင်" ဢၼ်ၸႂ်ႉတႃႇၵဵပ်း လႄႈ သူင်ႇၶေႃႈမုၼ်း (Data Exchange)။ မၼ်းမီးပိုၼ်ႉထၢၼ်မႃးလုၵ်ႉတီႈ JavaScript Object ၵူၺ်းၵႃႈ မၼ်းပဵၼ် **String (လိၵ်ႈ)** ၶႃႈ။

### 1. ပႅၵ်ႇပိူင်ႈတင်း JS Object ၸိူင်ႉႁိုဝ်?

ၼႂ်း JSON၊ ပၵ်းပိူင်မၼ်းတေ "ၵႅၼ်ႇၶႅင်" လိူဝ် JS Object:

1. **Keys**: တေလႆႈယူႇၼႂ်း Double Quotes (`" "`) တႃႇသေႇ။
2. **Strings**: တေလႆႈၸႂ်ႉ Double Quotes (`" "`) ၵူၺ်း (ၸႂ်ႉ `' '` ဢမ်ႇလႆႈ)။
3. **Functions**: JSON ဢမ်ႇၵဵပ်း Function, Method, ႁိုဝ် `undefined` လႆႈ။
4. **Trailing Commas**: တူဝ်လိုၼ်းသုတ်း ဢမ်ႇပၼ်ႁႂ်ႈမီး "," ၶႃႈ။

---

### 2. Methods တႃႇၸတ်းၵၢၼ် JSON

JavaScript မီး Object ဢၼ်ၸိုဝ်ႈဝႃႈ `JSON` ဝႆႉႁင်းၵူၺ်း ပိူဝ်ႈတေလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းၶႃႈ။

#### A. `JSON.stringify()` (လႅၵ်ႈ Object ႁႂ်ႈပဵၼ် String)

ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ "သူင်ႇ" ၶေႃႈမုၼ်းၵႂႃႇၸူး Server ႁိုဝ် သိမ်းဝႆႉၼႂ်း Browser (LocalStorage)။

```javascript
const user = { name: "Sai Kham", age: 25 };
const jsonString = JSON.stringify(user);

console.log(jsonString); // '{"name":"Sai Kham","age":25}'
console.log(typeof jsonString); // "string"

```

#### B. `JSON.parse()` (လႅၵ်ႈ String ၶိုၼ်းပဵၼ် Object)

ၸႂ်ႉမိူဝ်ႈႁဝ်း "ႁပ်ႉ" ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Server မႃး သေ ၶႂ်ႈဢဝ်မႃးၸႂ်ႉၼႂ်းၵူတ်ႉ JavaScript။

```javascript
const response = '{"status":"success", "id": 101}';
const data = JSON.parse(response);

console.log(data.status); // "success"
console.log(typeof data); // "object"

```

---

### 3. ယွၼ်ႉသင် JSON ထိုင်လမ်ႇလွင်ႈ?

ယွၼ်ႉဝႃႈ JSON ပဵၼ် Text-based (ပဵၼ်တူဝ်လိၵ်ႈ)၊ မၼ်းၸင်ႇမီးၼမ်ႉၼၵ်း "မဝ်" လႄႈ ၸၢင်ႈၸႂ်ႉလႆႈတင်း ၵူႈၽႃႇသႃႇ (Python, PHP, Java, Ruby)။ ၼႆႉၸင်ႇႁဵတ်းႁႂ်ႈ Browser လၢတ်ႈတေႃႇတင်း Server လႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **JSON** ပဵၼ်လိၵ်ႈ (String)၊ ဢမ်ႇၸႂ်ႈ Object တေႉတေႉ။
* **`JSON.stringify()`**: Object -> JSON String (တႃႇသူင်ႇ/သိမ်း)။
* **`JSON.parse()`**: JSON String -> Object (တႃႇဢဝ်မႃးၸႂ်ႉ)။
* **Double Quotes** လမ်ႇလွင်ႈၼႃႇၼႂ်း JSON။

---