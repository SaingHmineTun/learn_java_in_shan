# Lesson 26: Array Methods (map, filter, reduce)

Methods သၢမ်ဢၼ်ၼႆႉ ပႅၵ်ႇပိူင်ႈတင်း `.forEach()` ၵွပ်ႈဝႃႈ ၶဝ်တေ **Return** (သူင်ႇၵႃႈၶၼ်) Array မႂ်ႇဢွၵ်ႇမႃး ႁင်းၵူၺ်း၊ ႁဵတ်းႁႂ်ႈ Array တူဝ်ၵဝ်ႇ ဢမ်ႇလူႉလႅဝ် (Immutable) ၶႃႈ။

### 1. `.map()` - ၵၢၼ်လႅၵ်ႈလၢႆႈ

ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ "လႅၵ်ႈ" ၶေႃႈမုၼ်းၵူႈတူဝ် ၼႂ်း Array ႁႂ်ႈၵႂႃႇပဵၼ် ႁၢင်ႈၽၢင်မႂ်ႇ။

* **သႅၼ်းမၼ်း:** Input 10 တူဝ် -> Output 10 တူဝ်။

```javascript
const prices = [100, 200, 300];

// လႅၵ်ႈၵႃႈၶၼ်ပဵၼ် ပိူဝ်ႇသႅၼ်ႇ (သႂ်ႇထႅပ်ႉ 10%)
const discountedPrices = prices.map(price => price * 0.9);

console.log(discountedPrices); // [90, 180, 270]

```

---

### 2. `.filter()` - ၵၢၼ်လိူၵ်ႈဢဝ်

ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ "လိူၵ်ႈ" ဢဝ်ၵူၺ်း ၶေႃႈမုၼ်းဢၼ်မႅၼ်ႈၸွမ်း ပၵ်းပိူင် (Condition) ဢၼ်ႁဝ်းပၼ်ဝႆႉ။

* **သႅၼ်းမၼ်း:** Input 10 တူဝ် -> Output တေဢေႇလိူဝ် ႁိုဝ် သဝ်းတေႃႇ 10 တူဝ်။

```javascript
const numbers = [10, 25, 8, 40, 3];

// လိူၵ်ႈဢဝ်ၵူၺ်း တူဝ်ဢၼ်ယႂ်ႇလိူဝ် 20
const bigNumbers = numbers.filter(num => num > 20);

console.log(bigNumbers); // [25, 40]

```

---

### 3. `.reduce()` - ၵၢၼ်ႁူမ်ႈၵၼ်

ၼႆႉပဵၼ် Method ဢၼ်မီးဢဵၼ်ႁႅင်းသုတ်း။ မၼ်းတေဢဝ် "ၶေႃႈမုၼ်းတင်း Array" မႃး "ၼပ်ႉႁူမ်ႈ" ၵၼ် ႁႂ်ႈၵိုတ်းၵႃႈၶၼ် **တူဝ်လဵဝ် (Single Value)**။

* **သႅၼ်းမၼ်း:** Input 10 တူဝ် -> Output 1 တူဝ်။

```javascript
const cart = [10, 20, 30, 40];

// ၼပ်ႉႁူမ်ႈၵႃႈၶူဝ်းတင်းမူတ်း
// accumulator (acc) = ၵႃႈၶၼ်ႁူမ်ႈဢၼ်ပူၼ်ႉမႃး
// current (curr) = ၶေႃႈမုၼ်းတူဝ်တိုၵ်ႉလူယူႇ
const total = cart.reduce((acc, curr) => acc + curr, 0);

console.log(total); // 100

```

---

### 4. Method Chaining (ၵၢၼ်ႁွင်ႉသိုပ်ႇၵၼ်)

ႁႅင်းလီၶွင် Methods ၸိူဝ်းၼႆႉၵေႃႈပဵၼ် ႁဝ်းၸၢင်ႈ "မတ်ႉ" ၶဝ်သိုပ်ႇၵၼ်လႆႈ ၼႂ်းထႅဝ်လိၵ်ႈလဵဝ်ၶႃႈ။

```javascript
const products = [
  { name: "Phone", price: 500 },
  { name: "Case", price: 20 },
  { name: "Laptop", price: 1000 }
];

// 1. လိူၵ်ႈဢဝ်ၶူဝ်းဢၼ် ၵႃႈၶၼ်လိူဝ် 100
// 2. ၼပ်ႉႁူမ်ႈၵႃႈၶၼ်ၶဝ်
const expensiveTotal = products
  .filter(p => p.price > 100)
  .map(p => p.price)
  .reduce((acc, curr) => acc + curr, 0);

console.log(expensiveTotal); // 1500

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`.map()`**: လႅၵ်ႈႁၢင်ႈ (Transform)။
* **`.filter()`**: လိူၵ်ႈဢဝ် (Select)။
* **`.reduce()`**: ႁူမ်ႈၵၼ် (Accumulate)။
* **Immutability**: ၶဝ်တင်းသၢမ်ဢၼ် သၢင်ႈ Array မႂ်ႇတႃႇသေႇ၊ ဢမ်ႇယႃႉ Array ၵဝ်ႇ။

---