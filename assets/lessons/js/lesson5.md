
# Lesson 05: Primitive Data Types (Deep Dive)

**Primitive** ပွင်ႇဝႃႈ ပဵၼ်ၵႃႈၶၼ်ဢၼ်ငၢႆႈသုတ်း၊ မၼ်းဢမ်ႇၸႂ်ႈ Object လႄႈ မၼ်းမီးၵႃႈၶၼ် (Value) တူဝ်မၼ်းၵမ်းလဵဝ်ၶႃႈ။

### 1. Number (တူဝ်ၼပ်ႉ)

ၸႂ်ႉတႃႇတူဝ်ၼပ်ႉတင်းမူတ်း၊ ပႃးတင်း တူဝ်ၼပ်ႉထူၼ်ႈ (Integer) လႄႈ တူဝ်ၼပ်ႉမီးၸုၼ်တ်ႉ (Decimal/Float)။

```javascript
let price = 99.99;
let age = 25;

```

### 2. String (တူဝ်လိၵ်ႈ)

ပဵၼ်ၸုမ်းတူဝ်လိၵ်ႈ ဢၼ်ယူႇၼႂ်းၶွပ်ႇ `' '` ႁိုဝ် `" "` ႁိုဝ် `` `` ခႃႈ။

```javascript
let name = "Sai Kham";

```

### 3. Boolean (လွင်ႈမၢၼ်ႇ/ၽိတ်း)

မီးၵႃႈၶၼ် 2 မဵဝ်းၵူၺ်း: `true` (မၢၼ်ႇ) ႁိုဝ် `false` (ၽိတ်း)။ ၸႂ်ႉတႃႇတႅပ်းတတ်း Logic။

```javascript
let isLearning = true;

```

### 4. Undefined (ဢမ်ႇပႆႇလႆႈပၼ်ၵႃႈၶၼ်)

မိူဝ်ႈႁဝ်းပိုၼ်ေၽၢဝ်ႇ Variable ဝႆႉ ၵူၺ်းၵႃႈ ဢမ်ႇပႆႇသႂ်ႇၵႃႈၶၼ်သင်ဝႆႉၼၼ်ႉ JavaScript တေပၼ်မၼ်းပဵၼ် `undefined` ၵမ်းလဵဝ်ၶႃႈ။

```javascript
let x;
console.log(x); // undefined

```

### 5. Null (ၵႃႈၶၼ်ပဝ်ႇ - တႅတ်ႉတေႃး)

ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈပၼ်ၵႃႈၶၼ်မၼ်းပဵၼ် "ဢၼ်ပဝ်ႇ" လူၺ်ႈၸႂ်ႁဝ်းၶႃႈ။

```javascript
let currentPartner = null; // ပွင်ႇဝႃႈ တိုၵ်ႉပဝ်ႇဝႆႉယူႇ

```

---

### 🔍 ၵၢၼ်ၵူတ်ႇထတ်း Data Type (`typeof`)

ႁဝ်းၸၢင်ႈၸႂ်ႉ Keyword `typeof` တႃႇတူၺ်းဝႃႈ Variable ၼၼ်ႉ ပဵၼ် Data Type မဵဝ်းလႂ်ၶႃႈ:

```javascript
console.log(typeof 25);       // "number"
console.log(typeof "Shan");   // "string"
console.log(typeof true);     // "boolean"
console.log(typeof undefined);// "undefined"
console.log(typeof null);      // "object" ⚠️ (ၼႆႉပဵၼ် Bug ႁိုင်ၼႃႇယဝ်ႉၼႂ်း JS ၵူၺ်းၵႃႈၶဝ်ဢမ်ႇမႄးယဝ်ႉၶႃႈ)

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* JavaScript မီး Primitive Types 7 မဵဝ်း။
* **Primitive** ဢမ်ႇၸၢင်ႈလႅၵ်ႈလၢႆႈ (Immutable) - ႁဝ်းလႅၵ်ႈလႆႈၵူၺ်းၵႃႈၶၼ် Variable ဢၼ်ၸီႉၸူးမၼ်း။
* ၾၢင်ႉလွင်ႈ `typeof null` ဢွၵ်ႇပဵၼ် `"object"`၊ မၼ်းပဵၼ်လွင်ႈၽိတ်းပိူင်ႈပိုၼ်း JavaScript ၶႃႈ။

---