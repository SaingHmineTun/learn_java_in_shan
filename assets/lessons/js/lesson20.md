# Lesson 20: Arrow Functions

Arrow Function ထုၵ်ႇသႂ်ႇမႃးၼႂ်း ES6 တႃႇႁႂ်ႈႁဝ်းတႅမ်ႈ Function လႆႈပွတ်းလိူဝ်ၵဝ်ႇ။ မၼ်းၸႂ်ႉၶိူင်ႈမၢႆ **`=>`** (ဢၼ်မိူၼ်ၼင်ႇ တူဝ်ယိုဝ်း/Arrow) တႅၼ်းတၢင် Keyword `function` ၶႃႈ။

### 1. ပႅၵ်ႇပိူင်ႈၵၼ်ၸိူင်ႉၼိုင်?

**Function Expression (လၢႆးၵဝ်ႇ):**

```javascript
const add = function(a, b) {
  return a + b;
};

```

**Arrow Function (လၢႆးမႂ်ႇ):**

```javascript
const add = (a, b) => {
  return a + b;
};

```

---

### 2. လၢႆးတႅမ်ႈႁႂ်ႈပွတ်း (Shorthand Rules)

Arrow Function မီး "တၢင်းလႅတ်း" ဢၼ်ႁဵတ်းႁႂ်ႈၵူတ်ႉႁဝ်းပွတ်းလႆႈထႅင်ႈၶႃႈ:

* **Rule 1: သင်မီး Parameter တူဝ်လဵဝ်** — ဢမ်ႇလူဝ်ႇသႂ်ႇၵွင်းၸိၵ်း `( )`။
* **Rule 2: သင်မီးၵူတ်ႉထႅဝ်လဵဝ် (Implicit Return)** — ဢမ်ႇလူဝ်ႇသႂ်ႇ `{ }` လႄႈ ဢမ်ႇလူဝ်ႇတႅမ်ႈ Keyword `return`။

**တူဝ်ယၢင်ႇ Pro:**

```javascript
// ပွတ်းသုတ်း (One-liner)
const square = n => n * n;

console.log(square(5)); // 25

```

---

### 3. မိူဝ်ႈလႂ်တေၸႂ်ႉ Arrow Functions?

* ၸႂ်ႉမိူဝ်ႈလူဝ်ႇ Function ဢွၼ်ႇဢၼ်ႁဵတ်းၵၢၼ်ငၢႆႈငၢႆႈ။
* ၸႂ်ႉၼႂ်း **Callback Functions** (မိူၼ်ၼင်ႇ ၸႂ်ႉၼႂ်း `.map()`, `.filter()`, `.forEach()`)။
* **သတိ:** Arrow Function ဢမ်ႇမီး `this` တူဝ်မၼ်း (မၼ်းတေၸႂ်ႉ `this` ၶွင်ပိုၼ်ႉတီႈဢၼ်မၼ်းယူႇဝႆႉ)။ ပွင်ႇဝႃႈ မၼ်းဢမ်ႇလီၸႂ်ႉတႃႇသၢင်ႈ **Object Methods** ၶႃႈ။

---

### 💻 တႅၵ်ႈၼိူဝ် (Comparison Table)

| Feature | Regular Function | Arrow Function |
| --- | --- | --- |
| **Syntax** | ယၢဝ်းလိူဝ် (`function`) | ပွတ်းလိူဝ် (`=>`) |
| **Implicit Return** | ဢမ်ႇမီး (လူဝ်ႇတႅမ်ႈ `return`) | မီး (သင်မီးထႅဝ်လဵဝ်) |
| **`this` Keyword** | မီး `this` တူဝ်မၼ်း | ဢဝ် `this` တီႈ Parent Scope မႃးၸႂ်ႉ |
| **Hoisting** | မီး (သင်ပဵၼ် Declaration) | ဢမ်ႇမီး (ပဵၼ် Variable) |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Arrow Functions** ႁဵတ်းႁႂ်ႈၵူတ်ႉသႅၼ်ႈသႂ် လႄႈ လူယႃႇငၢႆႈ။
* သင်မီးထႅဝ်လဵဝ်၊ ဢမ်ႇလူဝ်ႇတႅမ်ႈ `{ }` လႄႈ `return` (မၼ်းတေသူင်ႇၵႃႈၶၼ်ဢွၵ်ႇပၼ်ၵမ်းလဵဝ်)။
* ပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်လမ်ႇလွင်ႈသုတ်း တႃႇတႅမ်ႈ Modern JavaScript လႄႈ React ၶႃႈ။

---