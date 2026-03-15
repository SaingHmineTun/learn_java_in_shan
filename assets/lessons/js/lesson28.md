# Lesson 28: Array Basics & Storing Data

**Array** ပဵၼ် "ၵူတ်ႇၶေႃႈမုၼ်း" (Data Structure) ဢၼ်လမ်ႇလွင်ႈသုတ်းၼႂ်း JavaScript။ မၼ်းပဵၼ် "သဵၼ်ႈမၢႆ" (List) ဢၼ်ၸၢင်ႈသိမ်းၵႃႈၶၼ် (Values) လၢႆလၢႆဢၼ်ႁူမ်ႈၵၼ်ဝႆႉၼႂ်း Variable တူဝ်လဵဝ်ၵူၺ်းၶႃႈ။

### 1. လၢႆးသၢင်ႈ Array

ႁဝ်းၸႂ်ႉၶိူင်ႈမၢႆ **Square Brackets `[ ]**` သေ ၸႅၵ်ႇ Element တူဝ်ၼိုင်ႈ လႄႈ တူဝ်ၼိုင်ႈလူၺ်ႈၶိူင်ႈမၢႆ **Comma (`,`)** ၶႃႈ။

```javascript
// Array ဢၼ်သိမ်း String
const students = ["Sai Kham", "Nan Shwe", "Aung Aung"];

// Array ဢၼ်သိမ်း Number
const scores = [85, 92, 78, 100];

// Array ဢၼ်သိမ်းၶေႃႈမုၼ်းလၢႆမဵဝ်း (Mixed Data)
const mixed = ["Apple", 25, true, null];

```

---

### 2. Zero-Based Indexing (ၵၢၼ်ၼပ်ႉဢွင်ႈတီႈ)

လွင်ႈလမ်ႇလွင်ႈသုတ်းတႄႉပဵၼ် JavaScript တႄႇၼပ်ႉဢွင်ႈတီႈ Element ဢွၼ်တၢင်းသုတ်း တီႈ **0** (ဢမ်ႇၸႂ်ႈ 1) ၶႃႈ။

* **Index 0**: Element တူဝ်တီႈ 1
* **Index 1**: Element တူဝ်တီႈ 2
* **Index n**: Element တူဝ်တီႈ n+1

```javascript
const fruits = ["Mango", "Banana", "Orange"];

console.log(fruits[0]); // "Mango"
console.log(fruits[2]); // "Orange"

// ၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း (Modifying)
fruits[1] = "Apple";
console.log(fruits); // ["Mango", "Apple", "Orange"]

```

---

### 3. The `.length` Property

ႁဝ်းၸၢင်ႈတူၺ်းဝႃႈ ၼႂ်း Array မီးၶေႃႈမုၼ်းတင်းမူတ်းၵႃႈႁိုင် လူၺ်ႈၸႂ်ႉ `.length` ၶႃႈ။

```javascript
const colors = ["Red", "Green", "Blue", "Yellow"];

console.log(colors.length); // 4

// တူဝ်ယၢင်ႇ: ဢဝ်တူဝ်လင်သုတ်း (Last Element)
console.log(colors[colors.length - 1]); // "Yellow"

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Array** ၸွႆႈႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇသၢင်ႈ Variable ၼမ်ၼႃႇ (မိူၼ်ၼင်ႇ student1, student2, student3)။
* တွၼ်းဝႆႉတႃႇသေႇဝႃႈ **Index တႄႇတီႈ 0**။
* ႁဝ်းၸၢင်ႈသိမ်း Array ဝႆႉၼႂ်း `const` ၵူၺ်းၵႃႈ ယင်းတိုၵ်ႉ "လႅၵ်ႈလၢႆႈ" ၶေႃႈမုၼ်းၽၢႆႇၼႂ်းမၼ်းလႆႈယူႇ (ယွၼ်ႉ Array ပဵၼ် Reference Type)။

---