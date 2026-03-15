# Lesson 39: Looping through Arrays (for-of)

မိူဝ်ႈႁဝ်းႁဵၼ်း `for` loop ၼႂ်း Lesson 37 ၼၼ်ႉ ႁဝ်းလႆႈတႅမ်ႈ `let i = 0; i < arr.length; i++` ဢၼ်ယၢဝ်းၼႃႇ။ ၼႂ်း ES6၊ JavaScript လႆႈပၼ်လၢႆးတႅမ်ႈဢၼ်ပွတ်း လႄႈ လူယႃႇငၢႆႈလိူဝ်ၵဝ်ႇ ဢၼ်ႁွင်ႉဝႃႈ **`for...of`** ၶႃႈ။

### 1. ပိူင်တႅမ်ႈ (Syntax)

လၢႆးၼႆႉမၼ်းတေ "ထုတ်ႇ" ဢဝ်ၵႃႈၶၼ် (Value) တူဝ်ၼိုင်ႈယဝ်ႉတူဝ်ၼိုင်ႈ ဢွၵ်ႇမႃးၼႂ်း Array ပၼ်ႁဝ်းႁင်းမၼ်းၵမ်းလဵဝ်ၶႃႈ။

```javascript
for (const element of array) {
  // ၵူတ်ႉဢၼ်တေႁဵတ်းၵၢၼ်ၸွမ်း element ၼၼ်ႉ
}

```

---

### 💻 တူဝ်ယၢင်ႇတႅၵ်ႈၼိူဝ် (Traditional vs Modern)

**လၢႆးၵဝ်ႇ (Traditional For Loop):**

```javascript
const colors = ["Red", "Green", "Blue"];

for (let i = 0; i < colors.length; i++) {
  console.log(colors[i]);
}

```

**လၢႆးမႂ်ႇ (For...of Loop):**

```javascript
const colors = ["Red", "Green", "Blue"];

for (const color of colors) {
  console.log(color);
}
// Result: Red, Green, Blue

```

> 💡 **သင်ႇၵဵတ်း:** ႁဝ်းဢမ်ႇလူဝ်ႇ `i` (Index)၊ ဢမ်ႇလူဝ်ႇၼပ်ႉ `.length`၊ လႄႈ ဢမ်ႇလူဝ်ႇတႅမ်ႈ `colors[i]` ယဝ်ႉၶႃႈ။

---

### 2. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ `for...of`?

* မိူဝ်ႈၸဝ်ႈၵဝ်ႇၶႂ်ႈလႅၼ်ႈသမ်ႉၸွမ်း **ၵႃႈၶၼ် (Values)** တင်းမူတ်းၼႂ်း Array။
* မိူဝ်ႈၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇႁူႉမၢႆ Index (ဢွင်ႈတီႈ) ၶွင်မၼ်း။
* ၸႂ်ႉလႆႈတင်း Array, String, Map, လႄႈ Set (ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼႂ်း Lesson 36)။

---

### 3. ၵၢၼ်ၸႂ်ႉ `break` လႄႈ `continue`

`for...of` ယင်းတိုၵ်ႉၸႂ်ႉ `break` လႄႈ `continue` လႆႈမိူၼ် `for` loop ယူဝ်းယူဝ်းယူႇၶႃႈ။

```javascript
const scores = [50, 80, 100, 30, 90];

for (const score of scores) {
  if (score === 100) {
    console.log("Perfect score found! Stopping...");
    break; 
  }
  console.log("Checking score: " + score);
}

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`for...of`** တေဢဝ် **Value** ဢွၵ်ႇမႃးပၼ်ၵမ်းလဵဝ်။
* မၼ်းလူယႃႇငၢႆႈ (Readable) လႄႈ ႁႄႉၵင်ႈ Bug ဢၼ်ၵိူတ်ႇတီႈၵၢၼ်ၼပ်ႉ Index ၽိတ်း (Off-by-one errors)။
* **သတိ:** သင်ၸဝ်ႈၵဝ်ႇလူဝ်ႇ "လႅၵ်ႈလၢႆႈ (Modify)" ၵႃႈၶၼ်ၼႂ်း Array တူဝ်ငဝ်ႈတိုၼ်း ႁိုဝ် လူဝ်ႇၸႂ်ႉမၢႆ Index၊ လၢႆးတႅမ်ႈ `for` loop ယူဝ်းယူဝ်း ႁိုဝ် `.forEach()` တေလီလိူဝ်ၶႃႈ။

---
