# Lesson 21: Inheritance & Polymorphism (ၵၢၼ်သိုပ်ႇပူၺ်ႈၸၼ်ႉသုင်)

မိူဝ်ႈႁဝ်းမီး Class လၢႆဢၼ်ဢၼ်မီးၵၢၼ်ႁဵတ်းမိူၼ်ၵၼ်၊ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈမႂ်ႇၵူႈဢၼ်ၶႃႈ။ ႁဝ်းၸၢင်ႈသၢင်ႈ Class "ပေႃႈမႄႈ" (Parent Class) သေ ႁႂ်ႈ Class "လုၵ်ႈ" (Child Class) သိုပ်ႇဢဝ်ၵႂႃႇၸႂ်ႉလႆႈၶႃႈ။

### 1. Inheritance (ၵၢၼ်သိုပ်ႇပူၺ်ႈလူၺ်ႈ `extends`)

ႁဝ်းၸႂ်ႉ Keyword `extends` ပိူဝ်ႈတေသိုပ်ႇဢဝ် Properties လႄႈ Methods လုၵ်ႉတီႈ Class တၢင်ႇဢၼ်။

```javascript
// Class ပေႃႈမႄႈ (Parent)
class Animal {
  constructor(name) {
    this.name = name;
  }
  eat() {
    console.log(`${this.name} တိုၵ်ႉၵိၼ်ဢႃႇႁႃႇရယူႇ...`);
  }
}

// Class လုၵ်ႈ (Child)
class Dog extends Animal {
  bark() {
    console.log("ဝူင်ႇ! ဝူင်ႇ!");
  }
}

const myDog = new Dog("ၵျႅတ်ႉၵီႇ");
myDog.eat();  // သိုပ်ႇဢဝ်လုၵ်ႉတီႈ Animal မႃးၸႂ်ႉ
myDog.bark(); // ၵၢၼ်ႁဵတ်းၶွင်တူဝ်မၼ်းႁင်းၵူၺ်း

```

---

### 2. The `super` Keyword

သင်ဝႃႈၼႂ်း Class လုၵ်ႈ မီး `constructor` ၶွင်တူဝ်မၼ်း၊ ႁဝ်းတေလႆႈႁွင်ႉ `super()` ဢွၼ်တၢင်းသေယၢင်ႇ ပိူဝ်ႈတေသူင်ႇၶေႃႈမုၼ်းၵႂႃႇပၼ် Class ပေႃႈမႄႈၶႃႈ။

```javascript
class Cat extends Animal {
  constructor(name, color) {
    super(name); // ႁွင်ႉ constructor ၶွင် Animal
    this.color = color;
  }
}

```

---

### 3. Polymorphism (ၵၢၼ်လႅၵ်ႈလၢႆႈလၢႆႁၢင်ႈ)

**Polymorphism** မၢႆထိုင်ဝႃႈ "လၢႆႁၢင်ႈ"။ ၼႂ်း OOP၊ မၼ်းမၢႆထိုင်ဝႃႈ Class လုၵ်ႈ ၸၢင်ႈမႄးလႅၵ်ႈလၢႆႈ (Override) Method ဢၼ်သိုပ်ႇဢဝ်မႃးတီႈပေႃႈမႄႈ ႁႂ်ႈမၼ်းပႅၵ်ႇပိူင်ႈၵႂႃႇ ၸွမ်းၼင်ႇၵၢၼ်ၸႂ်ႉတိုဝ်းၶွင်တူဝ်မၼ်းၶႃႈ။

```javascript
class Bird extends Animal {
  // Override Method: မႄးလႅၵ်ႈလၢႆႈၵၢၼ်ႁဵတ်း 'eat' ၶွင် Animal
  eat() {
    console.log(`${this.name} တိုၵ်ႉၸိတ်းၵိၼ်မၢၵ်ႇမႆႉယူႇ...`);
  }
}

const myBird = new Bird("ၼၵ်ႉၶမ်း");
myBird.eat(); // တေဢမ်ႇဢွၵ်ႇမိူၼ် Animal ယဝ်ႉ၊ တေဢွၵ်ႇၸွမ်းၼင်ႇ Bird တႅမ်ႈဝႆႉ

```

---

### 4. Why Use Inheritance? (ယွၼ်ႉသင်ထိုင်လီၸႂ်ႉ?)

* **Reusability**: တႅမ်ႈၵူတ်ႉတီႈလဵဝ်၊ ၸႂ်ႉလႆႈလၢႆတီႈ။
* **Organization**: ႁဵတ်းႁႂ်ႈၵူတ်ႉႁဝ်းမီးလမ်ႇတပ်ႉ (Hierarchy) ဢၼ်ပွင်ႇၸႂ်ငၢႆႈ။
* **Flexibility**: ၸၢင်ႈမႄးလႅၵ်ႈလၢႆႈၵၢၼ်ႁဵတ်းလုၵ်ႈလၢၼ် လႆႈငၢႆႈငၢႆႈလူၺ်ႈဢမ်ႇတုမ်ႉတိူဝ်ႉပေႃႈမႄႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 21)

* **`extends`**: ၸႂ်ႉတႃႇသိုပ်ႇပူၺ်ႈလုၵ်ႉတီႈ Class တၢင်ႇဢၼ်။
* **`super()`**: ၸႂ်ႉတႃႇႁွင်ႉ constructor ႁိုဝ် methods ၶွင် Class ပေႃႈမႄႈ။
* **Method Overriding**: ၵၢၼ်တႅမ်ႈ Method ၸိုဝ်ႈမိူၼ်ပေႃႈမႄႈ ၼႂ်း Class လုၵ်ႈ ပိူဝ်ႈတေလႅၵ်ႈလၢႆႈၵၢၼ်ႁဵတ်းမၼ်း။

---
