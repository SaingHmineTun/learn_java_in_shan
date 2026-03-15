# Lesson 33: Object Methods & 'this' keyword

### 1. Object Method ပဵၼ်သင်?

**Method** ပဵၼ် Property ၶွင် Object ဢၼ်မီးၵႃႈၶၼ်ပဵၼ် **Function** ၶႃႈ။ မၼ်းၸွႆႈႁႂ်ႈ Object ၼၼ်ႉ မီး "ၵၢၼ်ႁဵတ်း (Action)" ဢမ်ႇၸႂ်ႈဝႃႈသိမ်းၶေႃႈမုၼ်းယူဝ်းယူဝ်းၵူၺ်း။

```javascript
const person = {
  name: "Sai Kham",
  // ၼႆႉပဵၼ် Method
  greet: function() {
    console.log("မႂ်ႇသုင်ၶႃႈ!");
  }
};

person.greet(); // "မႂ်ႇသုင်ၶႃႈ!"

```

---

### 2. The `this` Keyword

Keyword **`this`** ၼႂ်း JavaScript မၼ်းမီးလွင်ႈလႅၵ်ႈလၢႆႈၸွမ်းငဝ်းလၢႆး (Context)၊ ၵူၺ်းၵႃႈ မိူဝ်ႈမၼ်းယူႇၼႂ်း Object Method ၼၼ်ႉ `this` ပွင်ႇဝႃႈ **"Object တူဝ်ဢၼ်တိုၵ်ႉႁွင်ႉၸႂ်ႉ Method ၼႆႉယူႇ"** ၼၼ်ႉၶႃႈ။

မၼ်းၸွႆႈႁႂ်ႈ Method ၶဝ်ႈထိုင် (Access) Property တၢင်ႇၸိူဝ်း ဢၼ်ယူႇၼႂ်း Object လဵဝ်ၵၼ်ၼၼ်ႉလႆႈၶႃႈ။

```javascript
const car = {
  brand: "Toyota",
  model: "Camry",
  year: 2022,
  
  getSummary: function() {
    // this.brand ပွင်ႇဝႃႈ car.brand
    return `This car is a ${this.year} ${this.brand} ${this.model}.`;
  }
};

console.log(car.getSummary()); 
// "This car is a 2022 Toyota Camry."

```

---

### 3. Arrow Functions လႄႈ `this` (လွင်ႈသတိ!)

တွၼ်ႈၼႆႉလမ်ႇလွင်ႈၼႃႇၶႃႈ! **Arrow Functions** ဢမ်ႇမီး `this` တူဝ်မၼ်း။ သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ Arrow Function ႁဵတ်း Method၊ `this` တေဢမ်ႇၸႅၵ်ႇၸူး Object ၼၼ်ႉ၊ မၼ်းတေၵႂႃႇၸူး Global Scope တႅၼ်းၶႃႈ။

> 💡 **Best Practice:** တႃႇသၢင်ႈ Object Method၊ ႁႂ်ႈၸႂ်ႉ Regular Function တႃႇသေႇ တွၼ်ႈတႃႇႁႂ်ႈ `this` ႁဵတ်းၵၢၼ်ထုၵ်ႇမႅၼ်ႈၶႃႈ။

```javascript
const user = {
  name: "Nan Shwe",
  // ❌ ဢမ်ႇလီၸႂ်ႉ (this တေပဵၼ် undefined ႁိုဝ် Global)
  sayHiArrow: () => console.log(`Hi, I am ${this.name}`),
  
  // ✅ လၢႆးတႅမ်ႈမႂ်ႇ (Shorthand Method)
  sayHi() {
    console.log(`Hi, I am ${this.name}`);
  }
};

user.sayHi(); // "Hi, I am Nan Shwe"

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Method** ပဵၼ် Function ဢၼ်ယူႇၼႂ်း Object။
* **`this`** ၸွႆႈႁႂ်ႈ Method ဢဝ်ၶေႃႈမုၼ်းၼႂ်း Object တူဝ်မၼ်းမႃးၸႂ်ႉလႆႈ။
* ႁႄႉၵင်ႈၵၢၼ်ၸႂ်ႉ **Arrow Function** တႃႇသၢင်ႈ Method သင်ၸဝ်ႈၵဝ်ႇလူဝ်ႇၸႂ်ႉ `this`။

---
