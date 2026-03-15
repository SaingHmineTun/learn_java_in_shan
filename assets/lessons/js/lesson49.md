# Lesson 49: Inheritance: Extends & Super

### 1. `extends` Keyword

ႁဝ်းၸႂ်ႉ **`extends`** တႃႇမွၵ်ႇဝႃႈ Class ဢၼ်ၼိုင်ႈ ပဵၼ် "လုၵ်ႈလၢၼ်" (Subclass) ၶွင်ထႅင်ႈ Class ၼိုင်ႈ (Parent Class) ၶႃႈ။

### 2. `super` Keyword

မိူဝ်ႈႁဝ်းမီး Constructor ၼႂ်း Subclass၊ ႁဝ်းတေလႆႈႁွင်ႉ **`super()`** ဢွၼ်တၢင်းသုတ်းတႃႇသေႇ။ မၼ်းပွင်ႇဝႃႈ "ၵႂႃႇႁွင်ႉ Constructor ၶွင်ပေႃႈမႄႈ (Parent) မၼ်းမႃးႁဵတ်းၵၢၼ်ပၼ်ဢွၼ်တၢင်း" ၼၼ်ႉၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Code Example)

ဝူၼ်ႉဝႃႈ ႁဝ်းမီး Class `Animal` ပဵၼ်ပေႃႈမႄႈ၊ သေ `Dog` သမ်ႉပဵၼ်လုၵ်ႈ ဢၼ်သိုပ်ႇဢဝ်ၵၢၼ်ႁဵတ်းမႃးၶႃႈ။

```javascript
// Parent Class (ပေႃႈမႄႈ)
class Animal {
  constructor(name) {
    this.name = name;
  }

  eat() {
    console.log(`${this.name} is eating...`);
  }
}

// Subclass (လုၵ်ႈ)
class Dog extends Animal {
  constructor(name, breed) {
    // ႁွင်ႉ Constructor ၶွင် Animal တႃႇပၼ်ၵႃႈၶၼ် name
    super(name); 
    this.breed = breed;
  }

  bark() {
    console.log("Woof! Woof!");
  }
}

const myDog = new Dog("Buddy", "Golden Retriever");
myDog.eat();  // "Buddy is eating..." (သိုပ်ႇပူၺ်ႈမႃး)
myDog.bark(); // "Woof! Woof!" (မီးႁင်းၵူၺ်း)

```

---

### 3. Method Overriding (ၵၢၼ်တႅမ်ႈတပ်ႉ)

သင်လုၵ်ႈ (Subclass) မီး Method ဢၼ်ၸိုဝ်ႈမိူၼ်ပေႃႈမႄႈ၊ မၼ်းတေၸႂ်ႉတူဝ်ဢၼ်ယူႇၼႂ်း Subclass ၼၼ်ႉတႅၼ်းၶႃႈ။ ၼႆႉႁွင်ႉဝႃႈ **Overriding**။

```javascript
class Cat extends Animal {
  // တႅမ်ႈတပ်ႉ Method eat ၶွင် Animal
  eat() {
    super.eat(); // ၸၢင်ႈႁွင်ႉၸႂ်ႉ Method ပေႃႈမႄႈပႃးလႆႈ
    console.log(`${this.name} likes fish.`);
  }
}

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`extends`** ၸွႆႈႁႂ်ႈႁဝ်း "Reuse" ၵူတ်ႉလႆႈငၢႆႈ။
* **`super()`** တေလႆႈထုၵ်ႇႁွင်ႉ ဢွၼ်တၢင်းတေၸႂ်ႉ `this` ၼႂ်း constructor ၶွင် Subclass တႃႇသေႇ။
* Inheritance ၸွႆႈသၢင်ႈပိူင် (Structure) ၶေႃႈမုၼ်း ႁႂ်ႈမၼ်းပဵၼ်ၸၼ်ႉပဵၼ်ၶၼ်ႉ (Hierarchy) ၶႃႈ။

---