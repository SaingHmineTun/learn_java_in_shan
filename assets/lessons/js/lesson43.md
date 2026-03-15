# Lesson 43: The Filter Method

### 1. `.filter()` ပဵၼ်သင်?

**`.filter()`** ပဵၼ် Method ဢၼ်တေၵူတ်ႇထတ်း (Test) ၵူႈ Element ၼႂ်း Array။ မၼ်းတေ "သၢင်ႈ Array မႂ်ႇ" ဢၼ်မီးၵႃႈၶၼ် **တူဝ်ဢၼ်ၵျႃႉၸွမ်း (Passes)** ၶေႃႈၵၢတ်ႇ (Condition) ဢၼ်ႁဝ်းပၼ်ဝႆႉၼၼ်ႉၵူၺ်းၶႃႈ။

> 💡 **လွင်ႈလမ်ႇလွင်ႈ:** > * သင် Callback Function `return true` -> Element ၼၼ်ႉတေထုၵ်ႇ **ၵဵပ်းဝႆႉ**။
> * သင် Callback Function `return false` -> Element ၼၼ်ႉတေထုၵ်ႇ **ထွၼ်ပႅတ်ႈ**။
>
>

---

### 2. ပိူင်တႅမ်ႈ (Syntax)

```javascript
const filteredArray = oldArray.filter(element => {
  return element > 10; // ၶေႃႈၵၢတ်ႇ (Condition)
});

```

---

### 💻 တူဝ်ယၢင်ႇ (Code Examples)

#### A. ၵၢၼ်လိူၵ်ႈ Number

```javascript
const ages = [12, 18, 25, 8, 30, 15];

// လိူၵ်ႈဢဝ်ၵူၼ်းဢႃႇယု 18 ၶိုၼ်ႈၼိူဝ်
const adults = ages.filter(age => age >= 18);

console.log(adults); // [18, 25, 30]

```

#### B. ၵၢၼ်လိူၵ်ႈ String

```javascript
const names = ["Sai Kham", "Nan Shwe", "Aung", "Kyaw", "Sai Lu"];

// လိူၵ်ႈဢဝ်ၸိုဝ်ႈဢၼ်တႄႇလူၺ်ႈ "Sai"
const sNames = names.filter(name => name.startsWith("Sai"));

console.log(sNames); // ["Sai Kham", "Sai Lu"]

```

#### C. ၵၢၼ်လိူၵ်ႈၼႂ်း Object (Real-world use)

ၼႆႉပဵၼ်လၢႆးဢၼ်ၸႂ်ႉၼမ်သုတ်း ၼႂ်းၵၢၼ်ႁဵတ်း "Search" ႁိုဝ် "Filter" ၼႂ်း Website ၶႃႈ။

```javascript
const products = [
  { name: "Laptop", price: 1000, inStock: true },
  { name: "Mouse", price: 25, inStock: false },
  { name: "Keyboard", price: 50, inStock: true }
];

// လိူၵ်ႈဢဝ်ၶူဝ်းဢၼ် "မီးၼႂ်းသတွၵ်ႉ" ၵူၺ်း
const availableProducts = products.filter(item => item.inStock === true);

console.log(availableProducts);
// Output: [{ name: "Laptop", ... }, { name: "Keyboard", ... }]

```

---

### 3. ပႅၵ်ႇပိူင်ႈၵၼ်သင်တင်း `.map()`?

| Method | Array ဢၼ်မႂ်ႇ (New Array) | ၼႃႈတီႈ |
| --- | --- | --- |
| **`.map()`** | မီးႁူဝ်ၼပ်ႉ **သမ်ႉၵၼ်** တင်းတူဝ်ၵဝ်ႇ | လႅၵ်ႈလၢႆႈပိူင်ၶေႃႈမုၼ်း |
| **`.filter()`** | မီးႁူဝ်ၼပ်ႉ **ဢေႇလိူဝ် ႁိုဝ် သမ်ႉၵၼ်** တင်းတူဝ်ၵဝ်ႇ | လိူၵ်ႈဢဝ်ၶေႃႈမုၼ်းဢၼ်လူဝ်ႇ |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* ၸႂ်ႉ **`.filter()`** မိူဝ်ႈၸဝ်ႈၵဝ်ႇၶႂ်ႈ "ထွၼ်ပႅတ်ႈ" ၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇလူဝ်ႇၸႂ်ႉ။
* မၼ်းတေ **ဢမ်ႇလႅၵ်ႈလၢႆႈ** Array တူဝ်ငဝ်ႈတိုၼ်း (Immutable)။
* Callback Function တေလႆႈ Return ပဵၼ် **Boolean** (True/False) တႃႇသေႇၶႃႈ။

---