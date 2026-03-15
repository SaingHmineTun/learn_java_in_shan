
# Lesson 27: Higher-Order Functions (HOF)

ၼႂ်း JavaScript၊ Function ၼႆႉထုၵ်ႇၼပ်ႉပဵၼ် **"First-Class Citizens"** ၶႃႈ။ ပွင်ႇဝႃႈ ႁဝ်းၸၢင်ႈဢဝ် Function ႁဵတ်းလႆႈၵူႈယၢင်ႇ မိူၼ်ၼင်ႇ Variable ယူဝ်းယူဝ်း—ၸၢင်ႈဢဝ်သိမ်းၼႂ်း Variable၊ ၸၢင်ႈသူင်ႇၶဝ်ႈပဵၼ် Argument၊ လႄႈ ၸၢင်ႈသူင်ႇဢွၵ်ႇ (Return) မႃးၶိုၼ်းလႆႈၶႃႈ။

### 1. Higher-Order Function ပဵၼ်သင်?

**Higher-Order Function** ပဵၼ် Function ဢၼ်မီးၵုၼ်းလၵ်ႉသၼႃႉ ၼိုင်ႈၼႂ်းသွင်ယၢင်ႇၼႆႉ (ႁိုဝ် တင်းသွင်ယၢင်ႇ) ၶႃႈ:

1. ႁပ်ႉဢဝ် Function ထႅင်ႈတူဝ်ၼိုင်ႈ မႃးပဵၼ် **Argument** (ႁွင်ႉဝႃႈ Callback Function)။
2. သူင်ႇ **Return** ဢွၵ်ႇမႃးပဵၼ် Function ထႅင်ႈတူဝ်ၼိုင်ႈ။

---

### 2. တူဝ်ယၢင်ႇ: ႁပ်ႉ Function ပဵၼ် Argument

မိူဝ်ႈႁဝ်းသူင်ႇ Function A ၶဝ်ႈၵႂႃႇၼႂ်း Function B၊ Function B ၼၼ်ႉႁွင်ႉဝႃႈ Higher-Order Function ၶႃႈ။

```javascript
// 1. Callback Function (Function ယူဝ်းယူဝ်း)
const whisper = (msg) => msg.toLowerCase() + "...";

// 2. Higher-Order Function (Function ဢၼ်ႁပ်ႉ Function တၢင်ႇတူဝ်)
function transformMessage(message, fn) {
  return fn(message);
}

console.log(transformMessage("HELLO WORLD", whisper)); // "hello world..."

```

---

### 3. ယွၼ်ႉသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ HOF?

* **Abstraction:** ၸွႆႈႁႂ်ႈႁဝ်းတႅမ်ႈ Logic ဢၼ်ၸႂ်ႉလႆႈၵူႈလွင်ႈ (General Logic) သေ ဢဝ် Detail (Callback) မႃးလႅၵ်ႈလၢႆႈၸွမ်းၼင်ႇၵၢင်ၸႂ်ၶႃႈ။
* **Code Reusability:** ဢမ်ႇလူဝ်ႇတႅမ်ႈၵူတ်ႉသမ်ႉၵၼ် ၼမ်ၼမ်။
* **Modern Methods:** Function ၸိုဝ်ႈดังၼႂ်း JavaScript မိူၼ်ၼင်ႇ `.map()`, `.filter()`, `.reduce()` တင်းမူတ်းပဵၼ် Higher-Order Functions ၶႃႈ။

---

### 4. တူဝ်ယၢင်ႇ: သူင်ႇ Function ဢွၵ်ႇမႃး (Return a Function)

ၼႆႉၵႆႉၸႂ်ႉႁူမ်ႈၵၼ်တင်း Closures ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼႂ်း Lesson 26 ၶႃႈ။

```javascript
function multiplier(factor) {
  // သူင်ႇ Function မႂ်ႇဢွၵ်ႇၵႂႃႇ
  return function(num) {
    return num * factor;
  };
}

const double = multiplier(2);
console.log(double(10)); // 20

const triple = multiplier(3);
console.log(triple(10)); // 30

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Higher-Order Function** ပဵၼ် "Function ဢၼ်ၵုမ်းၵမ် Function"။
* မၼ်းၸွႆႈႁႂ်ႈၵူတ်ႉႁဝ်းမီးလွင်ႈလွတ်ႈလႅဝ်း (Flexible) လႄႈ သႅၼ်ႈသႂ် (Clean)။
* ပဵၼ်ပိုၼ်ႉထၢၼ်ဢၼ်လမ်ႇလွင်ႈသုတ်း တႃႇၸဝ်ႈၵဝ်ႇတေၵႂႃႇႁဵၼ်းလွင်ႈ **Array Methods** လႄႈ **Asynchronous JavaScript** ၶႃႈ။

---
