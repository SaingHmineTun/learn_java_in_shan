
# Lesson 42: The Map Method

### 1. `.map()` ပဵၼ်သင်?

**`.map()`** ပဵၼ် Higher-Order Function ဢၼ်တေတႆႇႁႃ (Iterate) ၵူႈ Element ၼႂ်း Array သေ ဢဝ် Element ၼၼ်ႉသူင်ႇၶဝ်ႈၵႂႃႇၼႂ်း Callback Function။ ဝၢႆးၼၼ်ႉ မၼ်းတေ **"သၢင်ႈ Array မႂ်ႇ"** ဢၼ်မီးၵႃႈၶၼ်ၸွမ်းၼင်ႇ ဢၼ်ႁဝ်း `return` ဢွၵ်ႇမႃးၼၼ်ႉၶႃႈ။

> 💡 **လွင်ႈလမ်ႇလွင်ႈ:** `.map()` တေ **ဢမ်ႇလႅၵ်ႈလၢႆႈ** Array တူဝ်ငဝ်ႈတိုၼ်း၊ မၼ်းတေသူင်ႇ Array ဢၼ်မႂ်ႇဢွၵ်ႇမႃးပၼ်တႃႇသေႇၶႃႈ။

---

### 2. ပိူင်တႅမ်ႈ (Syntax)

```javascript
const newArray = oldArray.map(function(element) {
  return element * 2; 
});

// လၢႆးတႅမ်ႈလူၺ်ႈ Arrow Function (ဢၼ်ၵႆႉၸႂ်ႉသုတ်း)
const newArray = oldArray.map(element => element * 2);

```

---

### 💻 တူဝ်ယၢင်ႇ (Code Examples)

#### A. ၵၢၼ်သွၼ်ႇၼပ်ႉ Number

```javascript
const numbers = [1, 2, 3, 4, 5];
const squares = numbers.map(num => num * num);

console.log(squares); // [1, 4, 9, 16, 25]
console.log(numbers); // [1, 2, 3, 4, 5] (တူဝ်ငဝ်ႈတိုၼ်းယင်းတိုၵ်ႉမိူၼ်ၵဝ်ႇ)

```

#### B. ၵၢၼ်လႅၵ်ႈလၢႆႈ String

```javascript
const names = ["sai", "nan", "aung"];
const caps = names.map(name => name.toUpperCase());

console.log(caps); // ["SAI", "NAN", "AUNG"]

```

#### C. ၵၢၼ်ထုတ်ႇဢဝ်ၶေႃႈမုၼ်းၼႂ်း Object (Real-world use)

ၼႆႉပဵၼ်လၢႆးဢၼ်ၸႂ်ႉၼမ်သုတ်း မိူဝ်ႈႁဝ်းလူဝ်ႇဢဝ် "ၸိုဝ်း" ဢွၵ်ႇၼႂ်း "သဵၼ်ႈမၢႆၵူၼ်းၸႂ်ႉ (Users)" ၶႃႈ။

```javascript
const users = [
  { id: 1, name: "Sai Kham" },
  { id: 2, name: "Nan Shwe" },
  { id: 3, name: "Aung Aung" }
];

const userNames = users.map(user => user.name);
console.log(userNames); // ["Sai Kham", "Nan Shwe", "Aung Aung"]

```

---

### 3. ပႅၵ်ႇပိူင်ႈၵၼ်သင်တင်း `.forEach()`?

* **`.forEach()`**: ၵူၺ်း "လႅၼ်ႈသမ်ႉ" (Loop) သေႁဵတ်းၵၢၼ်သင်သင်ၼိုင်ႈ (မိူၼ်ၼင်ႇ console.log)၊ မၼ်းတေ **ဢမ်ႇ Return** သင်ဢွၵ်ႇမႃး။
* **`.map()`**: မၼ်းတေလႅၼ်ႈသမ်ႉသေ **Return** Array ဢၼ်မႂ်ႇဢွၵ်ႇမႃးပၼ်တႃႇသေႇ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* ၸႂ်ႉ **`.map()`** မိူဝ်ႈၸဝ်ႈၵဝ်ႇၶႂ်ႈ "လႅၵ်ႈ" Array ၼိုင်ႈဢၼ် ႁႂ်ႈပဵၼ် Array ထႅင်ႈၼိုင်ႈဢၼ် ဢၼ်မီး **ႁူဝ်ၼပ်ႉ (Length) မိူၼ်ၵၼ်**။
* တွၼ်းဝႆႉတႃႇသေႇ: တေလႆႈမီး **`return`** ၼႂ်း Callback Function၊ သင်ဢမ်ႇၼၼ် Array ဢၼ်မႂ်ႇၼၼ်ႉတေပဵၼ် `undefined` တင်းမူတ်းၶႃႈ။

---