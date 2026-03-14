# Lesson 15: Higher-Order Functions (Function ဢၼ်ၵုမ်း Function)

ၼႂ်း JavaScript၊ Function ၼႆႉပဵၼ် "First-Class Citizens" (ၵူၼ်းမိူင်းၸၼ်ႉၼိုင်ႈ)။ မၼ်းမၢႆထိုင်ဝႃႈ ႁဝ်းဢဝ် Function သူင်ႇၶဝ်ႈၵႂႃႇၼႂ်း Function တၢင်ႇဢၼ်ၵေႃႈလႆႈ၊ ႁိုဝ် သူင်ႇ Function ဢွၵ်ႇမႃးၶိုၼ်းၵေႃႈလႆႈၶႃႈ။

### 1. Higher-Order Function မၢႆထိုင်သင်?

Function လႂ်ၵေႃႈယႃႇ ဢၼ်ႁဵတ်းလွင်ႈတႂ်ႈၼႆႉ ၼိုင်ႈယၢင်ႇယၢင်ႇ ႁဝ်းႁွင်ႉဝႃႈ Higher-Order Function (HOF) ၶႃႈ:

1. ႁပ်ႉဢဝ် Function တၢင်ႇဢၼ် ပဵၼ် **Argument** (Parameter)။
2. သူင်ႇ Function တၢင်ႇဢၼ်ဢွၵ်ႇမႃးၶိုၼ်း ပဵၼ် **Return Value**။

### 2. Callback Functions

Function ဢၼ်ႁဝ်းသူင်ႇၶဝ်ႈၵႂႃႇၼၼ်ႉ ႁဝ်းႁွင်ႉဝႃႈ **Callback Function** ၶႃႈ။

**တူဝ်ယၢင်ႇ (Example):**

```javascript
function multiplier(factor) {
  // ၼႆႉပဵၼ် HOF ဢၼ်သူင်ႇ Function ဢွၵ်ႇမႃးၶိုၼ်း
  return function(number) {
    return number * factor;
  };
}

const double = multiplier(2);
console.log(double(5)); // 10

```

---

### 3. Built-in Higher-Order Functions

JavaScript မီး HOF ဝႆႉပၼ်ႁဝ်းတင်းၼမ် ဢၼ်ၸႂ်ႉတႃႇၸတ်းၵၢၼ် Array ႁႂ်ႈငၢႆႈၶိုၼ်ႈ။ ဢၼ်ႁဝ်းၸႂ်ႉၼမ်သုတ်းမီး 3 ဢၼ်:

#### A. `.map()`

ၸႂ်ႉတႃႇလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းၼႂ်း Array ၵူႈတူဝ်။

```javascript
const nums = [1, 2, 3];
const doubled = nums.map(n => n * 2); // [2, 4, 6]

```

#### B. `.filter()`

ၸႂ်ႉတႃႇလိူၵ်ႈဢဝ်ၶေႃႈမုၼ်း ၸွမ်းၼင်ႇသၢႆငၢႆဢၼ်ႁဝ်းပၼ်။

```javascript
const prices = [100, 500, 800, 200];
const expensive = prices.filter(p => p > 300); // [500, 800]

```

#### C. `.reduce()`

ၸႂ်ႉတႃႇဢဝ်ၶေႃႈမုၼ်းတင်းမူတ်း ၼႂ်း Array မႃးႁူမ်ႈၵၼ် ႁႂ်ႈၵိုတ်းၵႃႈၶၼ်လဵဝ်။

```javascript
const total = [1, 2, 3].reduce((sum, n) => sum + n, 0); // 6

```

---

### 4. Why use them? (ယွၼ်ႉသင်ထိုင်လီၸႂ်ႉ?)

* **Declarative Code:** ႁဵတ်းႁႂ်ႈၵူတ်ႉႁဝ်း လူယႃႇငၢႆႈ။ ႁဝ်းသင်ႇဝႃႈ "ၶႂ်ႈလႆႈသင်" တႅၼ်းၵၢၼ်သင်ႇဝႃႈ "ႁဵတ်းၸိူင်ႉႁိုဝ်" (How to do it)။
* **Less Bugs:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ `for loop` ယၢဝ်းယၢဝ်း ဢၼ်ၸၢင်ႈၽိတ်းပလၢတ်ႈလႆႈငၢႆႈ။
* **Reusability:** ၸၢင်ႈဢဝ် Logic ၼိုင်ႈယၢင်ႇ ၵႂႃႇၸႂ်ႉလႆႈတင်းလၢႆလၢႆ Function။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 15)

* **HOF**: Function ဢၼ်ႁပ်ႉ ႁိုဝ် သူင်ႇ Function တၢင်ႇဢၼ်။
* **Callback**: Function ဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇ ပဵၼ် Argument။
* **Array Methods**: `.map()`, `.filter()`, `.reduce()` ပဵၼ်တူဝ်ယၢင်ႇ HOF ဢၼ်လီသုတ်း။

---