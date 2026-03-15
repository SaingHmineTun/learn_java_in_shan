# Lesson 47: Classes & Constructors

### 1. Class ပဵၼ်သင်?

**Class** ပဵၼ် "ပိူင်တႅၵ်ႈ" (Blueprint) တႃႇသၢင်ႈ Object ၶႃႈ။ ဝူၼ်ႉဝႃႈ Class ပဵၼ် "ႁၢင်ႈလိၼ်း" (Mold) တႃႇႁဵတ်းၶူတ်ႇၼမ်ႉ၊ သေ Object သမ်ႉပဵၼ် "ၶူတ်ႇၼမ်ႉတေႉတေႉ" ဢၼ်ဢွၵ်ႇမႃးၼႂ်းႁၢင်ႈလိၼ်းၼၼ်ႉၶႃႈ။

---

### 2. Constructor Method

**`constructor`** ပဵၼ် Method ၶိုၵ်ႉတွၼ်း ဢၼ်တေႁဵတ်းၵၢၼ် **"ၵမ်းလဵဝ်"** မိူဝ်ႈႁဝ်းသၢင်ႈ Object မႂ်ႇ။ မၼ်းၸႂ်ႉတႃႇပၼ်ၵႃႈၶၼ် (Initialize) တူဝ် Variable ၼႂ်း Object ၼၼ်ႉၶႃႈ။

```javascript
class Person {
  // တွၼ်ႈတႄႇပၼ်ၵႃႈၶၼ်
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }

  // Method (ၵၢၼ်ႁဵတ်း) - ဢမ်ႇလူဝ်ႇတႅမ်ႈ function keyword
  sayHello() {
    console.log(`မႂ်ႇသုင်ၶႃႈ၊ ၵဝ်ႇၸိုဝ်ႈ ${this.name}။`);
  }
}

```

---

### 3. ၵၢၼ်သၢင်ႈ Object (The `new` Keyword)

တႃႇတေဢဝ် Class မႃးသၢင်ႈပဵၼ် Object တေႉတေႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ Keyword **`new`** တႃႇသေႇၶႃႈ။

```javascript
const user1 = new Person("Sai Kham", 25);
const user2 = new Person("Nan Shwe", 22);

console.log(user1.name); // "Sai Kham"
user2.sayHello();        // "မႂ်ႇသုင်ၶႃႈ၊ ၵဝ်ႇၸိုဝ်ႈ Nan Shwe။"

```

---

### 4. ယွၼ်ႉသင်ၸင်ႇၸႂ်ႉ Class တႅၼ်း Prototype?

1. **Readability:** ၵူတ်ႉလူယႃႇငၢႆႈလိူဝ် ယွၼ်ႉမၼ်းႁုပ်ႈဝႆႉၼႂ်းပူၵ်ႇ `{ }` ဢၼ်လဵဝ်ၵူၺ်း။
2. **Sugar Coating:** Class တေႃႉပဵၼ် "ၼမ်ႉၵႅဝ်ႈႁေႃႇၸွႆႉ" (Syntactic Sugar) ၼိူဝ် Prototype ၵူၺ်း။ ၽၢႆႇလင်မၼ်း JavaScript ယင်းတိုၵ်ႉၸႂ်ႉ Prototype ယူႇမိူၼ်ၵဝ်ႇ၊ ၵူၺ်းၵႃႈ လၢႆးတႅမ်ႈမၼ်း Modern လိူဝ်ၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* Class ၸိုဝ်ႈတေလႆႈတႄႇလူၺ်ႈ **"တူဝ်ယႂ်ႇ" (PascalCase)** တႃႇသေႇ (မိူၼ်ၼင်ႇ `Person`, `Car`)။
* **`this`** ၼႂ်း Class ပွင်ႇဝႃႈ Object တူဝ်ဢၼ်တိုၵ်ႉထုၵ်ႇသၢင်ႈယူႇၼၼ်ႉ။
* ၼႂ်း Class ၼိုင်ႈဢၼ် မီး **`constructor`** လႆႈတူဝ်လဵဝ်ၵူၺ်းၶႃႈ။

---