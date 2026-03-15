# Lesson 45: Find, Some, Every & Method Chaining** ၶႃႈ။

### 1. Find, Some, လႄႈ Every

ပဵၼ် Method ဢၼ်ၸွႆႈႁဝ်း "ၵူတ်ႇထတ်း" (Check) ၶေႃႈမုၼ်းၼႂ်း Array လူၺ်ႈၸႂ်ႉ Condition ၶႃႈ။

* **`.find()`**: ႁႃဢဝ် **"တူဝ်ဢွၼ်တၢင်းသုတ်း"** ဢၼ်ၵျႃႉၸွမ်း Condition။ သင်ဢမ်ႇႁၼ် မၼ်းတေသူင်ႇ `undefined`။
* **`.some()`**: ၵူတ်ႇထတ်းဝႃႈ "မီး **သေတူဝ်တူဝ်** ႁႃႉ ဢၼ်ၵျႃႉၸွမ်း Condition?" (သူင်ႇ True/False)။
* **`.every()`**: ၵူတ်ႇထတ်းဝႃႈ "**ၵူႈတူဝ်** ၵျႃႉၸွမ်း Condition တင်းမူတ်းႁႃႉ?" (သူင်ႇ True/False)။

**တူဝ်ယၢင်ႇ:**

```javascript
const scores = [45, 80, 92, 30, 65];

const firstTopScore = scores.find(s => s > 90); // 92
const hasFail = scores.some(s => s < 40);       // true
const allPass = scores.every(s => s >= 50);     // false

```

---

### 2. Method Chaining (ၵၢၼ်ၵပ်း Method)

ၼႆႉပဵၼ် "တီႈသုတ်း" ၶွင် Functional Programming ၶႃႈ။ ယွၼ်ႉ Method မိူၼ်ၼင်ႇ `.filter()` လႄႈ `.map()` သူင်ႇ Array မႂ်ႇဢွၵ်ႇမႃးတႃႇသေႇ၊ ႁဝ်းၸင်ႇၸၢင်ႈဢဝ် Method ထႅင်ႈတူဝ်ၼိုင်ႈ မႃး "ၸပ်း" ၽၢႆႇလင်မၼ်းၵမ်းလဵဝ်လႆႈၶႃႈ။

#### 💻 တူဝ်ယၢင်ႇ:

ဝူၼ်ႉဝႃႈ ႁဝ်းမီးသဵၼ်ႈမၢႆ "ၶူဝ်းၶၢႆ" သေ ႁဝ်းၶႂ်ႈလႆႈ **"ၽົນပွင်းၵႃႈၶၼ် ၶွင်ၶူဝ်းဢၼ်မီးၼႂ်းသတွၵ်ႉၵူၺ်း"**။

```javascript
const products = [
  { name: "Laptop", price: 1000, inStock: true },
  { name: "Mouse", price: 25, inStock: false },
  { name: "Keyboard", price: 50, inStock: true },
  { name: "Monitor", price: 200, inStock: true }
];

const totalInStock = products
  .filter(p => p.inStock)           // 1. လိူၵ်ႈဢဝ်ဢၼ်မီးၼႂ်းသတွၵ်ႉ
  .map(p => p.price)                // 2. ဢဝ်ၵူၺ်းၵႃႈၶၼ် (Price) မၼ်း
  .reduce((acc, price) => acc + price, 0); // 3. ပွင်းၵၼ်တင်းမူတ်း

console.log(totalInStock); // 1250 (1000 + 50 + 200)

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Method Chaining** ၸွႆႈႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇသၢင်ႈ Variable ၸူဝ်ႈၶၢဝ်း (Temporary variables) ၼမ်ၼႃႇ။
* လမ်ႇတတ်း (Order) လမ်ႇလွင်ႈၼႃႇ: ၵႆႉၸႂ်ႉ **`.filter()`** ဢွၼ်တၢင်း တႃႇလူတ်းယွမ်းၶေႃႈမုၼ်း ၸင်ႇၵွႆႈၸႂ်ႉ **`.map()`** ႁိုဝ် **`.reduce()`** ၶႃႈ။
* ၸႂ်ႉ **`.find()`** မိူဝ်ႈၶႂ်ႈလႆႈ "တူဝ်တေႉ" မၼ်း၊ ၸႂ်ႉ **`.some()`** မိူဝ်ႈၶႂ်ႈၵူတ်ႇထတ်းငဝ်းလၢႆးၵူၺ်း။

---