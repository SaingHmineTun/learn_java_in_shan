# Lesson 46: Object Prototypes & Inheritance

ၼႂ်း JavaScript၊ Object ၵူႈဢၼ်မီး "ပူႇမွၼ်ႇ" (Ancestor) ဢၼ်မၼ်း "သိုပ်ႇပူၺ်ႈ" (Inherit) ဢဝ် Method လႄႈ Property မႃးၸႂ်ႉ။ ပူႇမွၼ်ႇၼၼ်ႉ ႁဝ်းႁွင်ႉဝႃႈ **Prototype** ၶႃႈ။

### 1. Prototype ပဵၼ်သင်?

မိူဝ်ႈႁဝ်းသၢင်ႈ Object ၼိုင်ႈဢၼ်၊ JavaScript တေၵပ်းမၼ်းဝႆႉတင်း **Prototype Object** ဢၼ်ၼိုင်ႈတႃႇသေႇ။ သင်ႁဝ်းႁွင်ႉၸႂ်ႉ Property ဢၼ်ဢမ်ႇမီးၼႂ်း Object ႁဝ်း၊ JavaScript တေၵႂႃႇ "ၸွပ်ႇႁႃ" ၼႂ်း Prototype ၼၼ်ႉပၼ်ၶႃႈ။

### 2. Prototype Chain (သဵၼ်ႈသၢႆပူႇမွၼ်ႇ)

သင်ႁႃၼႂ်း Prototype ဢၼ်ၼိုင်ႈဢမ်ႇႁၼ်၊ မၼ်းတေတႆႇႁႃၶိုၼ်းၵႂႃႇတီႈ Prototype ၶွင် Prototype ထႅင်ႈ ပဵၼ်ၶၼ်ႉၶၼ်ႉ တေႃႇထိုင်ၽႅဝ် `null` ၶႃႈ။

```javascript
const animal = {
  eats: true,
  walk() {
    console.log("Animal walks");
  }
};

const rabbit = {
  jumps: true,
  __proto__: animal // rabbit သိုပ်ႇပူၺ်ႈဢဝ် animal မႃး (လၢႆးတႅမ်ႈၵဝ်ႇ)
};

console.log(rabbit.eats); // true (ဢဝ်မႃးၼႂ်း animal)
rabbit.walk();           // "Animal walks"

```

---

### 3. Constructor Functions & Prototypes

မိူဝ်ႈၵဝ်ႇ (ဢွၼ်တၢင်း ES6)၊ ႁဝ်းၸႂ်ႉ Function တႃႇသၢင်ႈ Object လၢႆလၢႆတူဝ်။ တႃႇႁႂ်ႈၵူႈတူဝ်ၸႂ်ႉ Method ႁူမ်ႈၵၼ် (တႃႇလူတ်းယွမ်း Memory)၊ ႁဝ်းတေလႆႈသႂ်ႇ Method ၼၼ်ႉဝႆႉၼႂ်း `.prototype` ၶႃႈ။

```javascript
function Person(name) {
  this.name = name;
}

// ထႅမ် Method ၶဝ်ႈၼႂ်း Prototype
Person.prototype.greet = function() {
  console.log(`Hi, I am ${this.name}`);
};

const saiKham = new Person("Sai Kham");
saiKham.greet(); // "Hi, I am Sai Kham"

```

---

### 4. ယွၼ်ႉသင် Prototype ၸင်ႇလမ်ႇလွင်ႈ?

1. **Memory Efficiency:** ႁဝ်းဢမ်ႇလူဝ်ႇသၢင်ႈ Method မိူၼ်ၵၼ်ဝႆႉၼႂ်းၵူႈ Object။ ႁဝ်းသႂ်ႇဝႆႉၼႂ်း Prototype တူဝ်လဵဝ်ၵူၺ်းၵေႃႈ ၵူႈတူဝ်ၸႂ်ႉႁူမ်ႈၵၼ်လႆႈ။
2. **Inheritance:** မၼ်းပဵၼ်လၢႆးဢၼ် JavaScript ၸႂ်ႉတႃႇ "သိုပ်ႇပူၺ်ႈ" ၵၢၼ်ႁဵတ်း (Behavior) တၢင်ႇဢၼ်မႃးၸႂ်ႉၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Prototype** ပဵၼ် Object ဢၼ်သိမ်း "ၵၢၼ်ႁဵတ်းႁူမ်ႈၵၼ်" (Shared behavior)။
* JavaScript ၸႂ်ႉ **Prototype-based inheritance** (ဢမ်ႇၸႂ်ႈ Class-based မိူၼ် Java/C++)။
* Property ဢၼ်ယူႇၼႂ်း Object ႁင်းမၼ်း ႁွင်ႉဝႃႈ **Own Property**။

---
