# Lesson 50: Static Methods & Properties

### 1. Static ပဵၼ်သင်?

ၼႂ်း Class ယူႇယူဝ်း၊ Method တင်းမူတ်းတေထုၵ်ႇသူင်ႇပၼ် Object ၵူႈတူဝ် (Instance)။ ၵူၺ်းၵႃႈ သင်ႁဝ်းသႂ်ႇ Keyword **`static`** ဝႆႉၽၢႆႇၼႃႈၸိုင်:

* Method ၼၼ်ႉတေၸပ်းဝႆႉတီႈ **Class** ၵမ်းလဵဝ်။
* ႁဝ်းႁွင်ႉၸႂ်ႉလႆႈလူၺ်ႈၸႂ်ႉ "ၸိုဝ်ႈ Class" (မိူၼ်ၼင်ႇ `Math.random()`)။
* Object ဢၼ်သၢင်ႈမႃးမႂ်ႇ (Instance) တေ **ဢမ်ႇၸၢင်ႈ** ႁွင်ႉၸႂ်ႉ Method ၼၼ်ႉလႆႈၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Code Example)

ဝူၼ်ႉဝႃႈ ႁဝ်းမီး Class `Calculator` သေ ႁဝ်းၶႂ်ႈလႆႈ Method ဢၼ်ၸွႆႈပတ်းပိုၼ်ႉ ဢၼ်ဢမ်ႇလူဝ်ႇသၢင်ႈ Object မႃးၵေႃႈၸႂ်ႉလႆႈၶႃႈ။

```javascript
class Calculator {
  // Static Property
  static category = "Mathematics";

  // Static Method
  static add(a, b) {
    return a + b;
  }

  // Instance Method (Method ယူဝ်းယူဝ်း)
  displayResult(val) {
    console.log("The result is: " + val);
  }
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ (ၸႂ်ႉၸိုဝ်ႈ Class ၵမ်းလဵဝ်)
console.log(Calculator.category); // "Mathematics"
console.log(Calculator.add(10, 5)); // 15

// ❌ ဢမ်ႇလီႁဵတ်း (Error)
const myCalc = new Calculator();
// console.log(myCalc.add(5, 5)); // Error: myCalc.add is not a function

```

---

### 2. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ Static?

* **Utility Functions:** မိူဝ်ႈလူဝ်ႇ Function ဢၼ်ၸွႆႈၼပ်ႉသွၼ်ႇသင်သင်ၼိုင်ႈ ဢၼ်ဢမ်ႇလူဝ်ႇၶေႃႈမုၼ်း (Data) ၶွင် Object ၼၼ်ႉ။
* **Configuration/Metadata:** မိူဝ်ႈလူဝ်ႇသိမ်းၵႃႈၶၼ်ဢၼ်မိူၼ်ၵၼ် တႃႇ Class တင်းမူတ်း (မိူၼ်ၼင်ႇ Version ႁိုဝ် API Base URL)။
* **Factory Methods:** မိူဝ်ႈလူဝ်ႇသၢင်ႈ Object မႂ်ႇလူၺ်ႈလၢႆးတႅမ်ႈဢၼ်ၶိုၵ်ႉတွၼ်း။

---

### 3. Static လႄႈ Inheritance (ၵၢၼ်သိုပ်ႇပူၺ်ႈ)

လွင်ႈၶႅၼ်ႇမၼ်းထႅင်ႈပိူင်ၼိုင်ႈတႄႉ Static Method ယင်းသိုပ်ႇပူၺ်ႈ (Inherit) ၵႂႃႇၸူး Subclass လႆႈယူႇၶႃႈ။

```javascript
class ScientificCalc extends Calculator {}

console.log(ScientificCalc.add(20, 20)); // 40 (သိုပ်ႇဢဝ်မႃးၼႂ်း Calculator)

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Static** = ၶွင် Class (Class-level)။
* **Instance** (ယူဝ်းယူဝ်း) = ၶွင် Object (Object-level)။
* ၼႂ်း Static Method၊ ၸဝ်ႈၵဝ်ႇတေ **ဢမ်ႇၸၢင်ႈ** ၸႂ်ႉ Keyword `this` တႃႇႁွင်ႉ Property ယူဝ်းယူဝ်း (Non-static) လႆႈၶႃႈ။

---
