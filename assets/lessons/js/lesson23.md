# Lesson 23: Global vs. Local Scope

**Scope** ပွင်ႇဝႃႈ ပဵၼ် "ဢႃႇၼႃႇၵုမ်းၵမ်" ၶွင် Variable ၶႃႈ။ မၼ်းတေၸႅၵ်ႇဢွၵ်ႇပဵၼ် 2 တွၼ်ႈလူင်:

### 1. Global Scope

Variable ဢၼ်ပိုၼ်ေၽၢဝ်ႇဝႆႉ **"ၽၢႆႇၼွၵ်ႈ"** Function တင်းမူတ်း။

* **လွင်ႈၶႅၼ်ႇ:** ၵူႈတီႈၼႂ်း File ၼၼ်ႉ (ပႃးတင်းၼႂ်း Function) ၸၢင်ႈႁၼ် လႄႈ ၸႂ်ႉမၼ်းလႆႈၵူႈၶိင်ႇၶႃႈ။

```javascript
const name = "Sai Kham"; // Global Variable

function sayName() {
  console.log(name); // ✅ ၸႂ်ႉလႆႈ (ယွၼ်ႉမၼ်းယူႇ Global)
}

```

### 2. Local Scope (Function Scope)

Variable ဢၼ်ပိုၼ်ေၽၢဝ်ႇဝႆႉ **"ၼႂ်း"** Function ၼိုင်ႈဢၼ်။

* **လွင်ႈၶႅၼ်ႇ:** မၼ်းတေၸႂ်ႉလႆႈၼႂ်း Function ၼၼ်ႉၵူၺ်း။ ၵူၼ်းၼွၵ်ႈ (ၽၢႆႇၼွၵ်ႈ Function) တေဢမ်ႇၸၢင်ႈႁၼ် လႄႈ ဢမ်ႇၸၢင်ႈႁွင်ႉၸႂ်ႉမၼ်းလႆႈၶႃႈ။

```javascript
function sayJob() {
  const job = "Developer"; // Local Variable
  console.log(job); // ✅ ၸႂ်ႉလႆႈၼႂ်းၼႆႉ
}

sayJob();
console.log(job); // ❌ Error! (ယွၼ်ႉ job ဢမ်ႇမီးယူႇၼႂ်း Global)

```

---

### 3. Block Scope (`let` & `const`)

တွၼ်ႈၼႆႉလမ်ႇလွင်ႈၼႃႇၶႃႈ! ၼႂ်း Modern JavaScript၊ ၶိူင်ႈမၢႆပူၵ်ႇ **`{ }`** (မိူၼ်ၼင်ႇၼႂ်း `if` statement ႁိုဝ် `for` loop) ၵေႃႈသၢင်ႈ Scope လႆႈၶႃႈ။

* သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `let` ႁိုဝ် `const` ၼႂ်း `{ }`၊ မၼ်းတေပဵၼ် **Block Scope** သေ ၸႂ်ႉလႆႈၼႂ်းပူၵ်ႇၼၼ်ႉၵူၺ်းၶႃႈ။

```javascript
if (true) {
  const secret = "1234"; // Block Scope
}
console.log(secret); // ❌ Error!

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Global Scope:** မိူၼ်ၼင်ႇ "ၵၢင်ပၢင်ႇ" — ၵူႈၵူၼ်းႁၼ်လႆႈ။
* **Local Scope:** မိူၼ်ၼင်ႇ "ၼႂ်းႁိူၼ်း" — ၵူၼ်းၼႂ်းႁိူၼ်းၵူၺ်းၸၢင်ႈၸႂ်ႉၶူဝ်းလႆႈ။
* **Best Practice:** ႁဝ်းဢမ်ႇထုၵ်ႇလီသၢင်ႈ Global Variable ၼမ်လၢႆ၊ ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈ Variable ၵႂႃႇ "တႅတ်ႉ" (Clash) ၵၼ်သေ ၵိူတ်ႇပဵၼ် Bug ၶႃႈ။

---

