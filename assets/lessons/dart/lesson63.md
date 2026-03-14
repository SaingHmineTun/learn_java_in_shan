## 63) Polymorphism in Action

**Polymorphism** (ပူဝ်ႇလီႇမူဝ်းၾိတ်းသႅမ်း) မႃးတီႈၶေႃႈၵႂၢမ်းၵရိၵ်ႉ ဢၼ်မၢႆထိုင် **"လၢႆႁူပ်ႈလၢႆၾၢင်" (Many forms)**။ ၼႂ်း OOP, မၼ်းပဵၼ်လၢႆးၵၢၼ်ဢၼ် Object တူဝ်လဵဝ်ၵၼ် ၸၢင်ႈ "ပႅင်ႇၾၢင်" ႁဵတ်းၵၢၼ်လႆႈလၢႆပိူင် ၸွမ်းၼင်ႇဝႃႈမၼ်းပဵၼ် Class လုၵ်ႈတူဝ်လႂ်ယဝ်ႉ။

---

### 1. ပိူင်ၵၢၼ်ပိုၼ်ႉထၢၼ်

Polymorphism ႁဵတ်းၵၢၼ်လႆႈ ယွၼ်ႉလွင်ႈသွင်ယၢင်ႇ:

1. **Inheritance**: Subclass သိုပ်ႇမႃးတီႈ Parent Class (တူဝ်ယၢင်ႇ: `Dog` extends `Animal`).
2. **Overriding**: Subclass မႄးလႅၵ်ႈလၢႆႈ Logic ၼႂ်း Method (တူဝ်ယၢင်ႇ: `bark()` တႅမ်ႈတူပ်ႉ `makeSound()`).

---

### 2. တူဝ်ယၢင်ႇ (The Power of Polymorphism)

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး List ဢၼ်သိမ်း `Animal` ဝႆႉ။ ႁဝ်းဢမ်ႇလူဝ်ႇႁူႉဝႃႈ ၼႂ်းၼၼ်ႉပဵၼ် မႃ, မႅဝ်း, ဢမ်ႇၼၼ် ပဵတ်း။ ႁဝ်းၵူၺ်းႁွင်ႉ `makeSound()` သေ မၼ်းတေ "ပႅင်ႇၾၢင်" ႁွင်ႉသဵင်ဢွၵ်ႇမႃးႁင်းၵူၺ်းမၼ်း။

```dart
abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() => print("Woof!");
}

class Cat extends Animal {
  @override
  void makeSound() => print("Meow!");
}

void main() {
  // သိမ်း Object လၢႆလၢႆပိူင် ဝႆႉၼႂ်း Type လဵဝ်ၵၼ် (Animal)
  List<Animal> myZoo = [Dog(), Cat(), Dog()];

  for (var animal in myZoo) {
    // ၼႆႉယဝ်ႉပဵၼ် Polymorphism! 
    // animal တူဝ်လဵဝ်ၵၼ် ၵူၺ်းၵႃႈ "ပႅင်ႇၾၢင်" သဵင်ဢွၵ်ႇမႃးပႅၵ်ႇၵၼ်
    animal.makeSound(); 
  }
}

```

---

### 3. Static Type vs Runtime Type

* **Static Type**: ပဵၼ် Type ဢၼ်ႁဝ်းပိုၼ်ၽၢဝ်ႇဝႆႉ (`Animal`).
* **Runtime Type**: ပဵၼ် Type တႄႇတႄႇ ဢၼ် Object ၼၼ်ႉပဵၼ်ယူႇ မိူဝ်ႈ App လႅၼ်ႈ (`Dog` ဢမ်ႇၼၼ် `Cat`).

Polymorphism တေလိူၵ်ႈႁွင်ႉ Method ၸွမ်းၼင်ႇ **Runtime Type** ယဝ်ႉ။

---

### 4. Why use Polymorphism?

1. **Flexibility**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈထႅမ် Class မႂ်ႇ (မိူၼ်ၼင်ႇ `Cow`) လႆႈငၢႆႈငၢႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇမႄး Code ၼႂ်း Loop ဢမ်ႇၼၼ် Logic ၵဝ်ႇ။
2. **Clean Code**: လူတ်းယွၼ်ႇၵၢၼ်ၸႂ်ႉ `if` ဢမ်ႇၼၼ် `switch` တႃႇၵူတ်ႇထတ်း Type တူဝ်ယၢင်ႇ: `if (animal is Dog) ... else if (animal is Cat) ...`.
3. **Extensibility**: ႁဵတ်းႁႂ်ႈ System ႁဝ်း "ပိုတ်ႇ" ဝႆႉတႃႇၵၢၼ်ၶိုပ်ႈၼႃႈ ၵူၺ်းၵႃႈ "ပိၵ်ႉ" ဝႆႉတႃႇၵၢၼ်မႄး Code ၵဝ်ႇ (Open-Closed Principle)။

---

### 5. Summary Table

| Feature | Inheritance | Polymorphism |
| --- | --- | --- |
| **Focus** | ၵၢၼ်သိုပ်ႇဢဝ် Code (Reuse) | ၵၢၼ်ပႅင်ႇၾၢင်ႁဵတ်းၵၢၼ် (Behavior) |
| **Action** | Child `extends` Parent | Parent variable points to Child object |
| **Benefit** | ဢမ်ႇလူဝ်ႇတႅမ်ႈ Code ယမ်ႉၵၼ် | ႁဵတ်းႁႂ်ႈ Code လႅတ်းသႅဝ်း လႄႈ မႄးငၢႆႈ |

---
