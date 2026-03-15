# Lesson 04: Internal Hoisting & TDZ

### 1. Hoisting ပဵၼ်သင်?

**Hoisting** ၼႆႉ ႁႂ်ႈဝူၼ်ႉဝႃႈ JavaScript Engine တေ "ယုၵ်ႉ" (Hoist) ၵၢၼ်ပိုၼ်ေၽၢဝ်ႇ Variable လႄႈ Function တင်းမူတ်း မိူဝ်းဝႆႉၽၢႆႇၼိူဝ်သုတ်း ဢွၼ်တၢင်းတေတႄႇ Run ၵူတ်ႉၶႃႈ။

ၵူၺ်းၵႃႈ လွင်ႈယုၵ်ႉၼႆႉ မၼ်းႁဵတ်းၵၢၼ်ပႅၵ်ႇၵၼ် ၸွမ်းၼင်ႇ Keyword ဢၼ်ႁဝ်းၸႂ်ႉၶႃႈ:

* **`var` Hoisting:** သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `var` ဢွၼ်တၢင်းတႅမ်ႈ၊ မၼ်းတေဢမ်ႇ Error၊ မၼ်းတေဢွၵ်ႇၵႃႈၶၼ်ပဵၼ် `undefined`။ ၼႆႉပဵၼ်လွင်ႈဢၼ်လီၵူဝ်၊ ယွၼ်ႉမၼ်းၸၢင်ႈႁဵတ်းႁႂ်ႈႁဝ်း Bug ၵႂႃႇလူၺ်ႈဢမ်ႇႁူႉတူဝ်ၶႃႈ။
* **`let` & `const` Hoisting:** မၼ်းၵေႃႈထုၵ်ႇ Hoist (ယုၵ်ႉ) ယူႇ၊ ၵူၺ်းၵႃႈ မၼ်းတေယူႇၼႂ်း **TDZ (Temporal Dead Zone)** ၶႃႈ။

---

### 2. TDZ (Temporal Dead Zone) ပဵၼ်သင်?

**TDZ** ၼႆႉပဵၼ် "ပိုၼ်ႉတီႈဢၼ်တၢႆဝႆႉ" ၶႃႈ။ မၼ်းတႄႇတႄႇတီႈ ၽၢႆႇၼိူဝ်သုတ်း ၵႂႃႇတေႃႇထိုင် တီႈဢၼ်ႁဝ်းတႅမ်ႈ Variable ၼၼ်ႉတေႉတေႉၶႃႈ။

သင်ၸဝ်ႈၵဝ်ႇ ၵႂႃႇႁွင်ႉၸႂ်ႉ Variable ၼႂ်းတွၼ်ႈ TDZ ၼႆႉ၊ JavaScript တေ **Error** ၵမ်းလဵဝ်။ ၼႆႉပဵၼ်လွင်ႈလီၶႃႈ! ယွၼ်ႉမၼ်းႁႄႉၵင်ႈပၼ် ႁႂ်ႈႁဝ်းယႃႇပေၸႂ်ႉ Variable ပႅတ်ႉလႅတ်ႉ ဢွၼ်တၢင်းတေပိုၼ်ေၽၢဝ်ႇမၼ်းၶႃႈ။

```javascript
// --- Start of Temporal Dead Zone (TDZ) for 'age' ---
console.log(age); // ❌ ReferenceError: Cannot access 'age' before initialization
let age = 25;     // --- End of TDZ for 'age' ---

```

---

### 💻 တူဝ်ယၢင်ႇပဵၼ်တွၼ်ႈ (Comparison)

| Keyword | Hoisted? | Initial Value | Result if accessed before declaration |
| --- | --- | --- | --- |
| **`var`** | Yes | `undefined` | `undefined` (No Error) |
| **`let`** | Yes | <none> | **ReferenceError** (Safe) |
| **`const`** | Yes | <none> | **ReferenceError** (Safe) |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Hoisting** ၶိုၼ်ႈၵႂႃႇယူႇၽၢႆႇၼိူဝ် ၵူၺ်းၵႃႈ `var` ဢဝ် `undefined` ၵႂႃႇၸွမ်း၊ တူဝ်တၢင်ႇၸိူဝ်းဢမ်ႇဢဝ်ၵႂႃႇ။
* **TDZ** ၸွႆႈႁႄႉၵင်ႈ Bug ၸွမ်းၼင်ႇလွၵ်းလၢႆး JavaScript မႂ်ႇ (Modern JS)။
* **Rule:** လူဝ်ႇတႅမ်ႈ Variable ဝႆႉၽၢႆႇၼိူဝ်သေ ၸင်ႇၸႂ်ႉမၼ်းၽၢႆႇတႂ်ႈ တႃႇသေႇၶႃႈ။

---