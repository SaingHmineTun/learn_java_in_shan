# Lesson 14: Scope & Closures (ၶွပ်ႇၵင်ႈ လႄႈ ၵၢၼ်တွၼ်းမၢႆ)

မိူဝ်ႈႁဝ်းတႅမ်ႈၵူတ်ႉၼမ်မႃး၊ ႁဝ်းလူဝ်ႇႁူႉဝႃႈ တူဝ်လႅၵ်ႈလႂ် ၸႂ်ႉလႆႈတီႈလႂ်။ သင်ႁဝ်းဢမ်ႇႁူႉ၊ ၵူတ်ႉႁဝ်းတေ Error ဝႃႈ `ReferenceError: x is not defined` ၼၼ်ႉၶႃႈ။

### 1. Scope (ၶွပ်ႇၵင်ႈၵၢၼ်ၸႂ်ႉတူဝ်လႅၵ်ႈ)

Scope မၢႆထိုင် "ဢွင်ႈတီႈ" ဢၼ်တူဝ်လႅၵ်ႈၼၼ်ႉ မီးတူဝ်မီးတၼ်းဝႆႉယူႇ။ ၼႂ်း JavaScript မီး 3 မဵဝ်း:

* **Global Scope:** တူဝ်လႅၵ်ႈဢၼ်တႅမ်ႈဝႆႉ ၽၢႆႇၼွၵ်ႈ Function တင်းမူတ်း။ ၸႂ်ႉလႆႈၵူႈတီႈ ၼႂ်း File ၼၼ်ႉ။
* **Function Scope:** တူဝ်လႅၵ်ႈဢၼ်တႅမ်ႈဝႆႉ ၼႂ်း Function။ ၸႂ်ႉလႆႈၼႂ်း Function ၼၼ်ႉၵူၺ်း။
* **Block Scope (`let`, `const`):** တူဝ်လႅၵ်ႈဢၼ်ယူႇၼႂ်းဝူင်းလဵၵ်းပိၵ်း `{ }` (မိူၼ်ၼင်ႇၼႂ်း `if` ႁိုဝ် `for` loop)။

```javascript
let globalVar = "ၶူင်းၵၢင်"; // Global

function testScope() {
  let localVar = "ၼႂ်းႁိူၼ်း"; // Function Scope
  console.log(globalVar); // ၸႂ်ႉလႆႈ
  console.log(localVar);  // ၸႂ်ႉလႆႈ
}

testScope();
console.log(localVar); // Error! ဢွၵ်ႇမႃးၼွၵ်ႈႁိူၼ်းယဝ်ႉ ဢမ်ႇႁူႉၸၵ်း။

```

---

### 2. Closures (ၵၢၼ်တွၼ်းမၢႆၶွင် Function)

**Closure** ပဵၼ်လွင်ႈဢၼ် "Function လုၵ်ႈဢွၼ်ႇ" (Inner function) တိုၵ်ႉတွၼ်းမၢႆ လႄႈ ၸႂ်ႉတူဝ်လႅၵ်ႈၶွင် "Function ပေႃႈမႄႈ" (Outer function) လႆႈယူႇ၊ တင်းသဵင်ႈ ဢၼ် Function ပေႃႈမႄႈၼၼ်ႉ ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈၵႂႃႇယဝ်ႉၵေႃႈယႃႇ။

**တူဝ်ယၢင်ႇ (Example):**

```javascript
function makeCounter() {
  let count = 0; // တူဝ်လႅၵ်ႈၼႆႉ ယူႇၼႂ်း Scope ၶွင် makeCounter

  return function() {
    count++; // Function လုၵ်ႈဢွၼ်ႇ တိုၵ်ႉတွၼ်းမၢႆ 'count' ဝႆႉယူႇ
    return count;
  };
}

const counter = makeCounter();
console.log(counter()); // 1
console.log(counter()); // 2

```

> **Ebook Tip:** တွၼ်းမၢႆငၢႆႈငၢႆႈဝႃႈ Closure ပဵၼ်မိူၼ် **"Memory ၶွင် Function"**။ မၼ်းတေ "ၵဵပ်း" တူဝ်လႅၵ်ႈဢၼ်မၼ်းလူဝ်ႇၸႂ်ႉဝႆႉ ဢမ်ႇပၼ်ႁၢႆၶႃႈ။

---

### 3. Why is it useful? (မၼ်းလီၸိူင်ႉႁိုဝ်?)

* **Data Privacy:** ႁဵတ်းႁႂ်ႈတူဝ်လႅၵ်ႈ (Variables) ႁဝ်း ပဵၼ်လွင်ႈလပ်ႉ (Private)။ ၵူၼ်းၽၢႆႇၼွၵ်ႈ ဢမ်ႇၸၢင်ႈမႃးလႅၵ်ႈလၢႆႈၵႃႈၶၼ်မၼ်းလႆႈ ၵမ်းလဵဝ်။
* **State Management:** ၸွႆႈတွၼ်းမၢႆသၢႆငၢႆ (Status) ၶွင် Program ႁဝ်း။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 14)

* **Global Scope**: ၸႂ်ႉလႆႈၵူႈတီႈ။
* **Local Scope**: ၸႂ်ႉလႆႈၼႂ်း `{ }` ဢၼ်မၼ်းယူႇဝႆႉၵူၺ်း။
* **Closures**: လွင်ႈဢၼ် Function လုၵ်ႈဢွၼ်ႇ တွၼ်းမၢႆတူဝ်လႅၵ်ႈ ၽၢႆႇၼွၵ်ႈ Scope မၼ်းဝႆႉလႆႈ။

---