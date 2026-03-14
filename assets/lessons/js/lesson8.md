
# Lesson 8: Ternary Operator & Nullish Coalescing (လၢႆးတႅမ်ႈ "သင်ဝႃႈ" ပွတ်းပွတ်း)

မိူဝ်ႈႁဝ်းၵတ်ႉၶႅၼ်ႇမႃးယဝ်ႉ ႁဝ်းတေဢမ်ႇတႅမ်ႈ `if...else` လၢႆလၢႆထႅဝ်တႃႇၵၢၼ်ငၢႆႈငၢႆႈ။ ႁဝ်းတေၸႂ်ႉ **Ternary Operator** မႃးတႅၼ်းၶႃႈ။

### 1. The Ternary Operator (`? :`)

မၼ်းပဵၼ်လၢႆးတႅမ်ႈ `if...else` ၼႂ်းထႅဝ်လဵဝ် (One-liner)။

**လွၵ်းလၢႆးတႅမ်ႈ:**
`condition ? expressionIfTrue : expressionIfFalse;`

#### တူဝ်ယၢင်ႇ (Example):

```javascript
let age = 20;

// လၢႆးတႅမ်ႈပၵ်းၵဝ်ႇ
let message;
if (age >= 18) {
  message = "ပဵၼ်ၵူၼ်းယႂ်ႇယဝ်ႉ";
} else {
  message = "တိုၵ်ႉပဵၼ်လုၵ်ႈဢွၼ်ႇ";
}

// လၢႆးတႅမ်ႈ Ternary (ES6)
const msg = age >= 18 ? "ပဵၼ်ၵူၼ်းယႂ်ႇယဝ်ႉ" : "တိုၵ်ႉပဵၼ်လုၵ်ႈဢွၼ်ႇ";

console.log(msg); // "ပဵၼ်ၵူၼ်းယႂ်ႇယဝ်ႉ"

```

* **`?`** : မၢႆထိုင် "သင်ဝႃႈတေႉ"
* **`:`** : မၢႆထိုင် "သင်ဢမ်ႇတေႉ" (Else)

---

### 2. Nullish Coalescing Operator (`??`)

တူဝ်ၼႆႉပဵၼ်တူဝ်မႂ်ႇ ဢၼ်မႃးၸွႆႈၵူတ်ႇထတ်းၵႃႈၶၼ်ပဝ်ႇ (Missing values)။ မၼ်းတေတူၺ်းၵူၺ်းဝႃႈ ၵႃႈၶၼ်ၼၼ်ႉပဵၼ် **`null`** ႁိုဝ် **`undefined`** ႁိုဝ်?

**တူဝ်ယၢင်ႇ (Example):**

```javascript
let userNickname = null;

// သင် userNickname ပဵၼ် null, မၼ်းတေဢဝ် "User" မႃးၸႂ်ႉ
let finalName = userNickname ?? "User";

console.log(finalName); // "User"

```

> **Why not use `||`?**
> သင်ႁဝ်းၸႂ်ႉ `||` သေ ၵႃႈၶၼ်ပဵၼ် `0` ႁမ်ႉ `""` (လိၵ်ႈလၢႆ) ၼႆ မၼ်းတေၼပ်ႉပဵၼ် False သေ ၵႂႃႇဢဝ်ၵႃႈၶၼ်ၽၢႆႇလင်မႃး။ ၵမ်းၼႆႉ `??` တေၸွႆႈႁႂ်ႈ `0` လႄႈ `""` တိုၵ်ႉၸႂ်ႉလႆႈယူႇ (ၵွပ်ႈမၼ်းဢမ်ႇၸႂ်ႈ null)။

---

### 3. Optional Chaining (`?.`) - Bonus!

ၼႆႉၵေႃႈၵႆႉၸႂ်ႉၵိုၵ်းၵၼ်ၶႃႈ။ မၼ်းၸႂ်ႉတႃႇၵူတ်ႇထတ်း Object ၼႂ်းၸၼ်ႉလိုၵ်ႉလိုၵ်ႉ သင်ဝႃႈမၼ်းဢမ်ႇမီး မၼ်းတေဢမ်ႇ Error၊ မၼ်းတေပၼ် `undefined` ၵူၺ်း။

```javascript
const user = { name: "Sai" };

console.log(user.address?.city); // undefined (ဢမ်ႇ Error ၵွပ်ႈမီး ?.)

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 8)

* **Ternary (`? :`)**: ၸႂ်ႉတႅၼ်း `if...else` ပွတ်းပွတ်း။
* **Nullish Coalescing (`??`)**: ၸႂ်ႉတႃႇဝႆႉၵႃႈၶၼ် Default မိူဝ်ႈၶေႃႈမုၼ်းပဵၼ် `null` ႁိုဝ် `undefined`။
* **Cleaner Code**: လၢႆးၸိူဝ်းၼႆႉႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူယႃႇငၢႆႈ လႄႈ တႅတ်ႈတေႃး။

---