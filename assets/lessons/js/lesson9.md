
# Lesson 09: Type Coercion vs. Explicit Conversion

မၼ်းမီး 2 လၢႆး ဢၼ် Data Type ၼိုင်ႈမဵဝ်း တေပိၼ်ႇပဵၼ်ထႅင်ႈမဵဝ်းၼိုင်ႈၶႃႈ:

### 1. Type Coercion (ၵၢၼ်ပိၼ်ႇဢလိုၼ်း - Implicit)

ၼႆႉပဵၼ်မိူဝ်ႈ **JavaScript Engine** မၼ်းတႅပ်းတတ်းသေ ပိၼ်ႇပၼ်ႁဝ်းၵမ်းလဵဝ် (Automatically) ၶႃႈ။ မၼ်းၵႆႉၵိုတ်းပဵၼ်တီႈ "ၶိူင်ႈမၢႆပၵ်း (`+`)" ၶႃႈ။

* **String Coercion:** သင်ဢဝ် String မႃးပၵ်း Number၊ JS တေပိၼ်ႇ Number ၼၼ်ႉပဵၼ် String သေဢဝ်မႃးၸွႆးၵၼ်ၶႃႈ။
* **Math Coercion:** သင်ၸႂ်ႉ `-`, `*`, `/` ၸိုင် JS တေပိၼ်ႇ String ၼၼ်ႉပဵၼ် Number ၶႃႈ။

```javascript
console.log("5" + 2); // "52" (String + Number = String)
console.log("5" - 2); // 3 (String - Number = Number)
console.log("5" * "2"); // 10 (Number)

```

---

### 2. Explicit Conversion (ၵၢၼ်ပိၼ်ႇလူၺ်ႈၸႂ် - Explicit)

ၼႆႉပဵၼ်မိူဝ်ႈ **ႁဝ်း (Developer)** ၸႂ်ႉ Function တႃႇပိၼ်ႇမဵဝ်းၶေႃႈမုၼ်းလူၺ်ႈၸႂ်ႁဝ်းၶႃႈ (Manual)။ ၼႆႉပဵၼ်လၢႆးဢၼ် "Safe" သုတ်းၶႃႈ။

* **`Number()`**: ပိၼ်ႇလိၵ်ႈပဵၼ်တူဝ်ၼပ်ႉ။
* **`String()`**: ပိၼ်ႇသင်ၵေႃႈယဝ်ႉပဵၼ်လိၵ်ႈ။
* **`Boolean()`**: ပိၼ်ႇပဵၼ် true ႁိုဝ် false။

```javascript
let input = "100";
let converted = Number(input); // ယၢမ်းလဵဝ်ပဵၼ် 100 (Number) ယဝ်ႉ

console.log(converted + 50); // 150
console.log(String(200));    // "200"

```

---

### 3. NaN (Not a Number)

သင်ႁဝ်းၵႂႃႇပိၼ်ႇလိၵ်ႈဢၼ်ဢမ်ႇၸႂ်ႉတူဝ်ၼပ်ႉ (မိူၼ်ၼင်ႇ "Hello") ႁႂ်ႈပဵၼ် Number ၸိုင်၊ JavaScript တေပၼ်ၵႃႈၶၼ် **NaN** (Not a Number) မႃးၶႃႈ။

```javascript
let errorCase = Number("SaiKham");
console.log(errorCase); // NaN
console.log(typeof NaN); // "number" (⚠️ ၼႆႉၵေႃႈပဵၼ်လွင်ႈပႅၵ်ႇထႅင်ႈဢၼ်ၼိုင်ႈၶႃႈ)

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Type Coercion** ပဵၼ်ၵၢၼ်ဢၼ် JS ႁဵတ်းပၼ်ႁဝ်း (ၵႆႉလေႇႁဵတ်းႁႂ်ႈယုင်ႈ)။
* **Explicit Conversion** ပဵၼ်လၢႆးတႅမ်ႈၵူတ်ႉဢၼ်လီ ယွၼ်ႉႁဝ်းၵုမ်းၵမ်လႆႈတင်းမူတ်း။
* ပေႃးႁၼ် **`+`** ႁႂ်ႈၾၢင်ႉဝႃႈမၼ်းတေပဵၼ် String၊ ပေႃးႁၼ် **`- * /`** မၼ်းတေပဵၼ် Number ၶႃႈ။

---