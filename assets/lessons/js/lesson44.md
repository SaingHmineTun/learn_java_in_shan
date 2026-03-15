
# Lesson 44: The Reduce Method

### 1. `.reduce()` ပဵၼ်သင်?

**`.reduce()`** ၸႂ်ႉတႃႇ "ႁုပ်ႈ" (Reduce) ၶေႃႈမုၼ်းတင်းမူတ်းၼႂ်း Array ႁႂ်ႈပဵၼ် **"ၵႃႈၶၼ်လဵဝ်"** (Single Value) ၶႃႈ။ မိူၼ်ၼင်ႇ ဢဝ် Number တင်းမူတ်းမႃး "ပွင်းၵၼ်" ႁႂ်ႈပဵၼ် Total ဢၼ်လဵဝ်။

မၼ်းတေမီးတူဝ်ၸွႆႈဢၼ်ၼိုင်ႈ ႁွင်ႉဝႃႈ **Accumulator** (တူဝ်ၵဵပ်းႁုပ်ႈ) ဢၼ်တေၵဵပ်းၵႃႈၶၼ်ဝႆႉ ၸဵမ်မိူဝ်ႈတႄႇ တေႃႇထိုင်သုတ်း Array ၶႃႈ။

---

### 2. ပိူင်တႅမ်ႈ (Syntax)

`.reduce()` တေႁပ်ႉဢဝ် Argument 2 ဢၼ်:

1. **Callback Function** (ဢၼ်မီး `accumulator` လႄႈ `currentValue`)
2. **Initial Value** (ၵႃႈၶၼ်တႄႇပိုၼ်း - သင်ဢမ်ႇသႂ်ႇ မၼ်းတေဢဝ် Element တူဝ်တီႈ 1)

```javascript
const result = array.reduce((accumulator, currentValue) => {
  return accumulator + currentValue;
}, 0); // 0 ၼႆႉပဵၼ် Initial Value

```

---

### 💻 တူဝ်ယၢင်ႇ (Code Examples)

#### A. ၵၢၼ်ႁႃ ၽົນပွင်း (Summing Numbers)

```javascript
const prices = [100, 250, 50, 120];

const total = prices.reduce((acc, price) => {
  return acc + price;
}, 0);

console.log(total); // 520

```

#### B. ၵၢၼ်ႁႃ ၵႃႈၶၼ်ဢၼ်ယႂ်ႇသုတ်း (Finding Max Value)

```javascript
const scores = [45, 88, 92, 70, 65];

const highest = scores.reduce((max, score) => {
  return score > max ? score : max;
}, scores[0]);

console.log(highest); // 92

```

#### C. ၵၢၼ်ၼပ်ႉ ၶေႃႈမုၼ်း (Counting Instances)

```javascript
const fruits = ["apple", "banana", "apple", "orange", "banana", "apple"];

const tally = fruits.reduce((count, fruit) => {
  count[fruit] = (count[fruit] || 0) + 1;
  return count;
}, {}); // တႄႇလူၺ်ႈ Object ပလွၵ်ႇ {}

console.log(tally); // { apple: 3, banana: 2, orange: 1 }

```

---

### 3. ပႅၵ်ႇပိူင်ႈၵၼ်သင်တင်း Map လႄႈ Filter?

* **`.map()`**: ဢဝ် Array 1 ဢၼ် -> လႅၵ်ႈပဵၼ် Array မႂ်ႇ 1 ဢၼ် (Length သမ်ႉၵၼ်)။
* **`.filter()`**: ဢဝ် Array 1 ဢၼ် -> လိူၵ်ႈပဵၼ် Array မႂ်ႇ 1 ဢၼ် (Length ဢေႇလူင်း)။
* **`.reduce()`**: ဢဝ် Array 1 ဢၼ် -> ႁုပ်ႈပဵၼ် **ၵႃႈၶၼ်လဵဝ်** (Number, String, Object, etc.)။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Accumulator (`acc`)**: မိူၼ်ၼိုင်ႈ "ထူင်" ဢၼ်ႁဝ်းသႂ်ႇၶေႃႈမုၼ်းဝႆႉတိၵ်းတိၵ်း။
* တႃႇသေႇ၊ လူဝ်ႇမီး **`return accumulator`** ၼႂ်း Callback တွၼ်ႈတႃႇႁႂ်ႈပွၵ်ႈၼႃႈ ၸႂ်ႉသိုပ်ႇလႆႈ။
* **Initial Value** လမ်ႇလွင်ႈၼႃႇ။ သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈလႆႈ Object၊ ႁႂ်ႈတႄႇလူၺ်ႈ `{}`။ သင်ၶႂ်ႈလႆႈ Number၊ ႁႂ်ႈတႄႇလူၺ်ႈ `0`။

---