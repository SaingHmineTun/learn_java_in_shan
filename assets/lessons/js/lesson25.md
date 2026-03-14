
# Lesson 25: Sorting & Reversing (ၵၢၼ်ၸတ်းလမ်ႇတပ်ႉ)

မိူဝ်ႈႁဝ်းမီး Array ယဝ်ႉ၊ မၢင်ၵမ်းႁဝ်းၶႂ်ႈၸတ်းႁႂ်ႈမၼ်းတႄႇတီႈ A-Z ႁိုဝ် ၼပ်ႉလုၵ်ႉတီႈ ဢေႇၵႂႃႇႁႃ ၼမ်ၶႃႈ။

### 1. `.reverse()`

ၸႂ်ႉတႃႇ "ပိၼ်ႈ" လမ်ႇတပ်ႉ Array လုၵ်ႉတီႈ လင်မႃးၼႃႈ။

> **သတိ:** Method ၼႆႉ တေမႄးလႅၵ်ႈလၢႆႈ Array တူဝ်ၵဝ်ႇ (Mutate) ၶႃႈ။

```javascript
const numbers = [1, 2, 3, 4, 5];
numbers.reverse(); 
console.log(numbers); // [5, 4, 3, 2, 1]

```

---

### 2. `.sort()` (ၵၢၼ်ၸတ်းလမ်ႇတပ်ႉ)

Method ၼႆႉ လမ်ႇလွင်ႈၼႃႇ၊ ၵူၺ်းၵႃႈ မၼ်းမီးလွင်ႈလၢၵ်ႇလၢႆးဢၼ်လူဝ်ႇလႆႈၾၢင်ႉၶႃႈ။

#### ၵၢၼ်ၸတ်း String (A-Z)

သင်ပဵၼ်လိၵ်ႈ၊ `.sort()` တေၸတ်းပၼ်ၸွမ်း Alphabetical order ႁင်းၵူၺ်းမၼ်း။

```javascript
const names = ["Zau", "Sai", "Aung", "Nan"];
names.sort();
console.log(names); // ["Aung", "Nan", "Sai", "Zau"]

```

#### ၵၢၼ်ၸတ်း Numbers (ပၼ်ႁႃ လႄႈ ၶေႃႈၵႄႈ)

သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `.sort()` ၸုမ်းတူဝ်ၼပ်ႉပဝ်ႇပဝ်ႇ၊ မၼ်းတေ "တူၺ်းတူဝ်လိၵ်ႈဢွၼ်တၢင်းသုတ်း" သေၸတ်း၊ ႁဵတ်းႁႂ်ႈၵႃႈၶၼ်မၼ်းၽိတ်းလႆႈ (မိူၼ်ၼင်ႇ `100` တေမႃးဢွၼ်တၢင်း `25`)။

**လၢႆးၵႄႈ:** ႁဝ်းလူဝ်ႇသႂ်ႇ **Compare Function** ၶဝ်ႈၵႂႃႇၶႃႈ။

```javascript
const scores = [40, 100, 1, 5, 25];

// ၸတ်းလုၵ်ႉဢေႇ ၵႂႃႇၼမ် (Ascending)
scores.sort((a, b) => a - b);
console.log(scores); // [1, 5, 25, 40, 100]

// ၸတ်းလုၵ်ႉၼမ် ၵႂႃႇဢေႇ (Descending)
scores.sort((a, b) => b - a);
console.log(scores); // [100, 40, 25, 5, 1]

```

---

### 3. `.join()` & `.split()` (လႅၵ်ႈ Array လႄႈ String)

* **`.join()`**: ဢဝ် Array မႃးမတ်ႉၵၼ်ပဵၼ် String လဵဝ်။
* **`.split()`**: (ၼႆႉပဵၼ် String Method) ဢဝ် String မႃးၽၼ်ႇပဵၼ် Array။

```javascript
const words = ["I", "Love", "Shan"];
const sentence = words.join(" "); // "I Love Shan"

const data = "Red,Blue,Green";
const colors = data.split(","); // ["Red", "Blue", "Green"]

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`.reverse()`**: ပိၼ်ႈလမ်ႇတပ်ႉ။
* **`.sort()`**: ၸတ်းလမ်ႇတပ်ႉ (သင်ပဵၼ်တူဝ်ၼပ်ႉ လူဝ်ႇၸႂ်ႉ `(a, b) => a - b`)။
* **Mutations**: သတိဝႆႉဝႃႈ `.sort()` လႄႈ `.reverse()` မႄးတူဝ် Array ၵဝ်ႇၶႃႈ။

---