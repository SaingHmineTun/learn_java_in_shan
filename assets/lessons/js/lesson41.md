
# Lesson 41: Higher-Order Functions & Callbacks

### 1. Function ပဵၼ် "First-Class Citizens"

ၼႂ်း JavaScript၊ Function ၼႆႉထုၵ်ႇၼပ်ႉပဵၼ် **"First-Class Citizens"** (ၵူၼ်းမိူင်းၸၼ်ႉၼိုင်ႈ)။ မၼ်းပွင်ႇဝႃႈ ႁဝ်းၸၢင်ႈဢဝ် Function ႁဵတ်းလႆႈၵူႈယၢင်ႇ မိူၼ်ၼင်ႇ Variable ယူဝ်းယူဝ်း:

* ၸၢင်ႈဢဝ်သိမ်းၼႂ်း Variable။
* ၸၢင်ႈသူင်ႇၶဝ်ႈပဵၼ် Argument (Parameter) ၼႂ်း Function တၢင်ႇတူဝ်။
* ၸၢင်ႈသူင်ႇဢွၵ်ႇ (Return) မႃးၶိုၼ်းလႆႈ။

---

### 2. Callback Function ပဵၼ်သင်?

**Callback Function** ပဵၼ် Function ဢၼ်ႁဝ်း **သူင်ႇၶဝ်ႈၵႂႃႇ** ၼႂ်း Function ထႅင်ႈတူဝ်ၼိုင်ႈ တႃႇႁႂ်ႈမၼ်းၵႂႃႇ "ႁွင်ႉၸႂ်ႉ (Call back)" ၼႂ်းၶိင်ႇဢၼ်မၼ်းလူဝ်ႇၼၼ်ႉၶႃႈ။

---

### 3. Higher-Order Function (HOF) ပဵၼ်သင်?

**Higher-Order Function** ပဵၼ် Function ဢၼ်:

1. **ႁပ်ႉဢဝ်** Function တၢင်ႇတူဝ်မႃးပဵၼ် Argument။
2. **သူင်ႇဢွၵ်ႇ** Function မႂ်ႇၼိုင်ႈတူဝ်ပဵၼ် Return value။

---

### 💻 တူဝ်ယၢင်ႇ (Code Example)

ႁဝ်းမႃးသၢင်ႈ Higher-Order Function ဢၼ်ၸၢင်ႈႁဵတ်းၵၢၼ်လၢႆလၢႆမဵဝ်းလူၺ်ႈၸႂ်ႉ Callback ၶႃႈ:

```javascript
// 1. သၢင်ႈ Callback Functions
const add = (a, b) => a + b;
const multiply = (a, b) => a * b;

// 2. သၢင်ႈ Higher-Order Function
// fn ၼႆႉပဵၼ် Callback ဢၼ်ႁဝ်းတေသူင်ႇၶဝ်ႈမႃး
function calculate(x, y, fn) {
  return fn(x, y);
}

// 3. ၵၢၼ်ၸႂ်ႉတူဝ်ယၢင်ႇ
console.log(calculate(5, 3, add));      // 8
console.log(calculate(5, 3, multiply)); // 15

```

---

### 4. ယွၼ်ႉသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ HOF & Callbacks?

* **Abstraction (ၵၢၼ်ႁုပ်ႈႁူဝ်):** ႁဝ်းၸၢင်ႈတႅမ်ႈ Logic ဢၼ်ၸႂ်ႉလႆႈတူဝ်ႈၵႂႃႇ (General Logic) သေ ဢဝ် Detail (Callback) မႃးလႅၵ်ႈလၢႆႈၸွမ်းၼင်ႇၵၢင်ၸႂ်။
* **Asynchronous Programming:** ၸႂ်ႉမိူဝ်ႈႁဝ်းလူဝ်ႇမွၵ်ႇ Computer ဝႃႈ "ပေႃးလူတ်ႇၶေႃႈမုၼ်းယဝ်ႉ ၸင်ႇၵွႆႈႁဵတ်း Function ၼႆႉၼႃ" (မိူၼ်ၼင်ႇ `setTimeout` ႁိုဝ် Fetch Data)။
* **Array Iteration:** ပဵၼ်ပိုၼ်ႉထၢၼ်ၶွင် `.map()`, `.filter()`, `.reduce()` ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson ထႅင်ႈၼႃႈၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Callback** = Function ဢၼ်ထုၵ်ႇသူင်ႇၶဝ်ႈ။
* **Higher-Order Function** = Function ဢၼ်ႁပ်ႉဢဝ် Callback ၼၼ်ႉ။
* တွၼ်းဝႆႉဝႃႈ မိူဝ်ႈသူင်ႇ Callback ၶဝ်ႈၵႂႃႇ **ဢမ်ႇလူဝ်ႇသႂ်ႇ `()**` (မိူၼ်ၼင်ႇ `calculate(5, 3, add)`)။ သင်သႂ်ႇ `add()` မၼ်းတေလႅၼ်ႈၵမ်းလဵဝ် သေသူင်ႇၵႃႈၶၼ်မၼ်းၶဝ်ႈၵႂႃႇတႅၼ်းၶႃႈ။

---
