# Lesson 31: Searching: indexOf, includes, findIndex** ၶႃႈ။


### 1. `indexOf()` (ႁႃဢွင်ႈတီႈ/Index)

ႁဝ်းၸႂ်ႉ `indexOf` တႃႇႁႃဝႃႈ ၶေႃႈမုၼ်းၼိုင်ႈဢၼ် ယူႇတီႈ **Index** မၢႆၵႃႈႁိုင်ၶႃႈ။

* သင်ႁၼ်: မၼ်းတေသူင်ႇ Index (0, 1, 2, ...) ဢွၵ်ႇမႃး။
* သင်ဢမ်ႇႁၼ်: မၼ်းတေသူင်ႇ **`-1`** ဢွၵ်ႇမႃးတႃႇသေႇၶႃႈ။

```javascript
const beasts = ["Lion", "Tiger", "Elephant", "Tiger"];

console.log(beasts.indexOf("Tiger"));    // 1 (မၼ်းတေဢဝ်တူဝ်ဢွၼ်တၢင်းသုတ်းဢၼ်ႁၼ်)
console.log(beasts.indexOf("Giraffe"));  // -1 (ယွၼ်ႉဢမ်ႇမီးၼႂ်း Array)

```

---

### 2. `includes()` (ၵူတ်ႇထတ်းဝႃႈ "မီးႁႃႉ?")

ၼႆႉပဵၼ်လၢႆးဢၼ်ငၢႆႈသုတ်း တႃႇၵူတ်ႇထတ်းဝႃႈ ၶေႃႈမုၼ်းၼၼ်ႉ "မီး" ႁိုဝ် "ဢမ်ႇမီး" ၼႂ်း Array ၶႃႈ။ မၼ်းတေသူင်ႇၵႃႈၶၼ်ပဵၼ် **Boolean** ဢွၵ်ႇမႃး။

```javascript
const shelf = ["Book", "Pen", "Laptop"];

console.log(shelf.includes("Pen"));    // true
console.log(shelf.includes("Phone"));  // false

```

---

### 3. `findIndex()` (ႁႃ Index လူၺ်ႈမီး "ၶေႃႈၵၢတ်ႇ")

တွၼ်ႈၼႆႉသမ်ႉပဵၼ် **Higher-Order Function** ၶႃႈ။ ႁဝ်းၸႂ်ႉမၼ်းမိူဝ်ႈႁဝ်းဢမ်ႇႁႃ "ၵႃႈၶၼ်တႅတ်ႉတေႃး" ၵူၺ်း၊ ၵူၺ်းၵႃႈႁဝ်းႁႃ "ၶေႃႈမုၼ်း ဢၼ်ၵျႃႉၸွမ်းၼင်ႇၶေႃႈၵၢတ်ႇ (Condition)" ႁဝ်းၶႃႈ။

```javascript
const ages = [10, 15, 22, 18, 30];

// ႁႃ Index ၶွင်ၵူၼ်းၵေႃႉဢွၼ်တၢင်းသုတ်း ဢၼ်ဢႃႇယု 20 ၶိုၼ်ႈၼိူဝ်
const result = ages.findIndex(age => age > 20);

console.log(result); // 2 (ယွၼ်ႉ 22 ယူႇတီႈ Index 2)

```

---

### 💡 တႅၵ်ႈၼိူဝ် (Comparison Table)

| Method | ၵႃႈၶၼ်ဢၼ်သူင်ႇဢွၵ်ႇ (Returns) | မိူဝ်ႈလႂ်တေၸႂ်ႉ? |
| --- | --- | --- |
| **`indexOf`** | Index (Number) | မိူဝ်ႈႁူႉ "ၵႃႈၶၼ်" တႅတ်ႉတေႃး သေၶႂ်ႈလႆႈဢွင်ႈတီႈမၼ်း။ |
| **`includes`** | True / False | မိူဝ်ႈၶႂ်ႈႁူႉဝႃႈ "မီးႁိုဝ်ဢမ်ႇမီး" ၵူၺ်း။ |
| **`findIndex`** | Index (Number) | မိူဝ်ႈလူဝ်ႇႁႃလူၺ်ႈၸႂ်ႉ "Logic" (မိူၼ်ၼင်ႇ ႁႃတူဝ်ဢၼ်ယႂ်ႇလိူဝ် 100)။ |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* သင်တေၸႂ်ႉၼႂ်း `if` statement ယူဝ်းယူဝ်း၊ **`includes`** တေလူယႃႇငၢႆႈလိူဝ်ပိူၼ်ႈ။
* တွၼ်းဝႆႉဝႃႈ **`indexOf`** သူင်ႇ `-1` သင်ဢမ်ႇႁၼ် (ၼႆႉပဵၼ် Bug ဢၼ်ၵႆႉၵိူတ်ႇသုတ်း တႃႇၵူၼ်းတႅမ်ႈၵူတ်ႉမႂ်ႇၶႃႈ)။
* **`findIndex`** ၸွႆႈႁႂ်ႈႁဝ်းႁႃၶေႃႈမုၼ်း ဢၼ်သုၵ်ႉယုင်ႈလိူဝ်ၵဝ်ႇလႆႈ။

---
