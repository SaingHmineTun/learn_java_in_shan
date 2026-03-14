## 60) Abstract Classes: Rules and Usage

**Abstract Class** ပဵၼ် Class ပိူင်လူးၵတ်ႉ ဢၼ်ႁဝ်းသၢင်ႈဝႆႉတႃႇပဵၼ် **"ပိူင်" (Blueprint/Template)** ၵူၺ်း။ မၼ်းမီးဝႆႉတႃႇႁႂ်ႈ Class တၢင်ႇဢၼ်မႃး သိုပ်ႇၶေႃ (Inherit)၊ ၵူၺ်းၵႃႈ ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ်မၼ်းမႃးသၢင်ႈပဵၼ် Object လႆႈၵမ်းလဵဝ်။

---

### 1. Abstract Class မၢႆထိုင်သင်?

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇတႅမ်ႈ App လွင်ႈသတ်း (Animals)။ ၸဝ်ႈၵဝ်ႇမီး Class `Animal`၊ ၵူၺ်းၵႃႈ ၼႂ်းလေႃးၵၼႆႉ မၼ်းဢမ်ႇမီးသတ်းတူဝ်လႂ် ဢၼ်ၸိုဝ်ႈဝႃႈ "Animal" ၵူၺ်းၵူၺ်း။ မၼ်းတေလႆႈပဵၼ် "Dog", "Cat", ဢမ်ႇၼၼ် "Bird"။ ၼႆႉယဝ်ႉပဵၼ်တီႈဢၼ် `Animal` ထုၵ်ႇလီပဵၼ် **Abstract Class**။

**Syntax:**
ႁဝ်းၸႂ်ႉ Keyword `abstract` ဝႆႉၽၢႆႇၼႃႈ `class`။

```dart
abstract class Animal {
  // Abstract Method (ဢမ်ႇမီး Body {})
  void makeNoise(); 

  // Regular Method (မီး Body {})
  void eat() {
    print("Eating...");
  }
}

```

---

### 2. Important Rules (ပိုင်ၵၢၼ်ဢၼ်လမ်ႇလွင်ႈ)

1. **Cannot Instantiate**: ၸဝ်ႈၵဝ်ႇဢမ်ႇၸၢင်ႈႁဵတ်း `var a = Animal();` (Error တေပဵၼ်ၵမ်းလဵဝ်)။
2. **Can have Abstract Methods**: မၼ်းၸၢင်ႈမီး Method ဢၼ်မီးၵူၺ်း "ၸိုဝ်ႈ" သေ ဢမ်ႇမီး "ၵၢၼ်ႁဵတ်း" ({ })။
3. **Forces Subclasses**: Class လုၵ်ႈ ဢၼ်မႃး `extends` Abstract class တေလႆႈ **Override** ပၼ် Abstract methods တင်းသဵင်ႈ (သင်ဢမ်ႇမႄးပၼ် တေပဵၼ် Error)။

---

### 3. Why Use Abstract Classes?

* **Consistency**: မၵ်းမၼ်ႈပိူင်ႁႂ်ႈ Subclasses တင်းသဵင်ႈ တေလႆႈမီး Method ၸိူဝ်းၼၼ်ႉၼင်ႇၵၼ် (တူဝ်ယၢင်ႇ: သတ်းၵူႈတူဝ် တေလႆႈမီး `makeNoise`)။
* **Abstraction**: သိပ်းဝႆႉလွင်ႈၵၢၼ်ႁဵတ်းဢၼ်ယၢပ်ႇယၢပ်ႇသေ ၼႄဝႆႉၵူၺ်း "ပိူင်" ဢၼ်လူဝ်ႇၸႂ်ႉ။
* **Code Reusability**: ၸၢင်ႈတႅမ်ႈ Regular Methods ဝႆႉၼႂ်း Abstract class တႃႇႁႂ်ႈ Subclasses တင်းသဵင်ႈ ၸႂ်ႉၸွမ်းၵၼ်။

---

### 4. တူဝ်ယၢင်ႇ (Practical Example)

```dart
abstract class Shape {
  // ၵူႈ Shape တေလႆႈမီးလၢႆးၵိတ်ႇၼပ်ႉ Area ႁင်းၵူၺ်း
  double calculateArea(); 
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double calculateArea() => 3.14 * radius * radius;
}

class Square extends Shape {
  double side;
  Square(this.side);

  @override
  double calculateArea() => side * side;
}

```

---

### Summary

* **Abstract Class**: ပဵၼ် "ပိူင်" (Template) ဢၼ်သၢင်ႈ Object ဢမ်ႇလႆႈ။
* **Concrete Class**: ပဵၼ် Class ယူဝ်းယူဝ်း (မိူၼ် Circle, Square) ဢၼ်သၢင်ႈ Object လႆႈ။

---

