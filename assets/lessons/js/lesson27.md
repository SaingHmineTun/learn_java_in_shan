
# Lesson 27: Sets (ၸုမ်းၶေႃႈမုၼ်းဢၼ်ဢမ်ႇသမ်ႉၵၼ်)

**Set** ပဵၼ် Object မဵဝ်းၼိုင်ႈ ဢၼ်ၵဵပ်းၶေႃႈမုၼ်းလႆႈၵူႈမဵဝ်း၊ ၵူၺ်းၵႃႈ ပၵ်းပိူင်လူင်မၼ်းၵေႃႈပဵၼ် **"ၵႃႈၶၼ်ၵူႈတူဝ် တေလႆႈပႅၵ်ႇပိူင်ႈၵၼ်"** (Every value must be unique)။ သင်ႁဝ်းသႂ်ႇၶေႃႈမုၼ်းဢၼ်သမ်ႉၵၼ်ၶဝ်ႈၵႂႃႇ၊ မၼ်းတေသိမ်းဝႆႉပၼ် တူဝ်လဵဝ်ၵူၺ်းၶႃႈ။

### 1. ၵၢၼ်သၢင်ႈ Set (Creating a Set)

```javascript
// သၢင်ႈ Set ပဝ်ႇ
const mySet = new Set();

// သၢင်ႈ Set လုၵ်ႉတီႈ Array
const numbers = new Set([1, 2, 2, 3, 4, 4]);
console.log(numbers); // Set(4) {1, 2, 3, 4} (တူဝ်သမ်ႉထုၵ်ႇတတ်းဢွၵ်ႇ)

```

---

### 2. Methods ဢၼ်ၸႂ်ႉၼႂ်း Set

Set ဢမ်ႇၸႂ်ႉ Index (မိူၼ်ၼင်ႇ `set[0]`) တႃႇၶဝ်ႈထိုင်ၶေႃႈမုၼ်းၶႃႈ။ မၼ်းမီး Methods ၶွင်တူဝ်မၼ်းၸိူင်ႉၼႆ:

* **`.add(value)`**: ထႅမ်ၶေႃႈမုၼ်းမႂ်ႇ။
* **`.delete(value)`**: မၢတ်ႇၶေႃႈမုၼ်းဢွၵ်ႇ။
* **`.has(value)`**: ၵူတ်ႇထတ်းဝႃႈ မီးၶေႃႈမုၼ်းၼၼ်ႉယူႇႁႃႉ? (Return ပဵၼ် `true/false`)။
* **`.clear()`**: မၢတ်ႇၶေႃႈမုၼ်းတင်းမူတ်းပႅတ်ႈ။
* **`.size`**: တူဝ်ၼပ်ႉၶေႃႈမုၼ်းတင်းမူတ်း (မိူၼ်ၼင်ႇ `.length` ၼႂ်း Array)။

```javascript
const tags = new Set();

tags.add("js");
tags.add("coding");
tags.add("js"); // တေဢမ်ႇထႅမ်သႂ်ႇထႅင်ႈ ၵွပ်ႈမီးဝႆႉယဝ်ႉ

console.log(tags.has("js")); // true
console.log(tags.size); // 2

```

---

### 3. ပၵ်းပိူင်လၢၵ်ႇလၢႆး (Unique Features)

1. **High Performance**: ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်းလူၺ်ႈ `.has()` ၼႂ်း Set မၼ်း **ၽႂ်းလိူဝ်** ၵၢၼ်ၸႂ်ႉ `.includes()` ၼႂ်း Array တင်းၼမ် မိူဝ်ႈၶေႃႈမုၼ်းမီးၼပ်ႉႁဵင်ၼပ်ႉမိုၼ်ႇ။
2. **No Index**: ႁဝ်းဢမ်ႇၸၢင်ႈႁွင်ႉဢဝ်ၶေႃႈမုၼ်းလူၺ်ႈ Index လႆႈ။ သင်ၶႂ်ႈလႅၵ်ႈပဵၼ် Array ႁဝ်းလူဝ်ႇၸႂ်ႉ Spread Operator `[...]` ၶႃႈ။

---

### 4. တူဝ်ယၢင်ႇ ဢၼ်ၸႂ်ႉတေႉ (Practical Use Case)

လၢႆးဢၼ် "ၵတ်ႉ" သုတ်း တႃႇတတ်းတူဝ်သမ်ႉ (Duplicates) ဢွၵ်ႇၼႂ်း Array ၶႃႈ:

```javascript
const members = ["Sai", "Nan", "Sai", "Kham", "Nan"];

// 1. လႅၵ်ႈ Array ပဵၼ် Set (ပိူဝ်ႈတေတတ်းတူဝ်သမ်ႉ)
// 2. လႅၵ်ႈ Set ၶိုၼ်းပဵၼ် Array (လူၺ်ႈ Spread Operator)
const uniqueMembers = [...new Set(members)];

console.log(uniqueMembers); // ["Sai", "Nan", "Kham"]

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Set** ၵဵပ်းၶေႃႈမုၼ်းဢၼ် "ဢမ်ႇသမ်ႉၵၼ်" (Unique) ၵူၺ်း။
* ၸႂ်ႉ **`.has()`** တႃႇၵူတ်ႇထတ်းၶေႃႈမုၼ်းလႆႈၽႂ်းၽၢႆ။
* လီသုတ်း တႃႇၸႂ်ႉတတ်းတူဝ်သမ်ႉ (Remove duplicates) ဢွၵ်ႇၼႂ်း Array။

---
