## 45) Methods and the `this` Keyword

မိူဝ်ႈ **Fields** ပဵၼ်ၶေႃႈမုၼ်း (Data) ဢၼ် Object မီးဝႆႉ၊ **Methods** သမ်ႉပဵၼ် "ၵၢၼ်ႁဵတ်း" (Actions) ဢၼ် Object ၼၼ်ႉႁဵတ်းလႆႈယဝ်ႉ။ ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးတူၺ်းလၢႆးတႅမ်ႈ Method လႄႈ လွင်ႈၸႂ်ႉတူဝ်ၸူၺ်းဢၼ်လမ်ႇလွင်ႈၼၼ်ႉၵေႃႈပဵၼ် Keyword `this` ယဝ်ႉ။

---

### 1. What are Methods?

Methods ၵေႃႈပဵၼ် Functions ၼင်ႇၵဝ်ႇ၊ ၵူၺ်းၵႃႈ မၼ်းထုၵ်ႇတႅမ်ႈဝႆႉၼႂ်း Class။ မၼ်းၸၢင်ႈဢဝ် Fields ၼႂ်း Class ၼၼ်ႉမႃးၸႂ်ႉတႃႇႁဵတ်းၵၢၼ်သေလၢင်ပိူင်လႆႈ။

**Example:**

```dart
class Car {
  String brand = "Toyota";
  int speed = 0;

  // ၼႆႉပဵၼ် Method
  void accelerate(int amount) {
    speed += amount;
    print("The $brand is now going at $speed km/h.");
  }
}

```

---

### 2. The `this` Keyword

Keyword **`this`** မၢႆထိုင် "Object တူဝ်ဢၼ်တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇယၢမ်းလဵဝ်" (Current Instance)။ ႁဝ်းၸႂ်ႉမၼ်းတႃႇၸီႉၸူး Fields ႁဝ်း ႁႂ်ႈႁူႉဝႃႈပဵၼ်တူဝ်လႂ်တႄႇ။

ႁဝ်းလူဝ်ႇၸႂ်ႉ `this` ၼမ်သုတ်း မိူဝ်ႈ **Parameter name** လႄႈ **Field name** ႁဝ်း "ၸိုဝ်ႈမိူၼ်ၵၼ်"။ သင်ႁဝ်းဢမ်ႇၸႂ်ႉ `this`၊ Dart တေဝူၼ်ႉဝႃႈႁဝ်းမၢႆထိုင် Parameter ၼၼ်ႉၵူၺ်း (Shadowing)။

**Example: Name Conflict**

```dart
class User {
  String name;

  User(this.name); // ၼႆႉပဵၼ် Constructor (တေလဵပ်ႈႁဵၼ်းတွၼ်ႈၼႃႈ)

  void updateName(String name) {
    // this.name = Field ၼႂ်း Class
    // name = Parameter ဢၼ်သူင်ႇမႃးမႂ်ႇ
    this.name = name; 
  }
}

```

---

### 3. When to use `this`?

* **Disambiguation**: မိူဝ်ႈ Parameter ၸိုဝ်ႈမိူၼ် Field (ၸိူင်ႉၼင်ႇတူဝ်ယၢင်ႇၽၢႆႇၼိူဝ်)။
* **Fluent Interface**: မိူဝ်ႈၶႂ်ႈသူင်ႇ Object တူဝ်မၼ်းၶိုၼ်း (`return this;`) တႃႇႁႂ်ႈႁွင်ႉ Method သိုပ်ႇၵၼ်လႆႈလၢႆလၢႆဢၼ် (Method Chaining)။

---

### 4. Method Chaining

ႁဝ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ Method ႁဝ်းသူင်ႇ `this` ၶိုၼ်း၊ တႃႇႁႂ်ႈတႅမ်ႈ Code လႆႈပွတ်း လႄႈ ႁၢင်ႈလီ။

**Example:**

```dart
class StepCounter {
  int steps = 0;

  StepCounter walk() {
    steps++;
    return this; // သူင်ႇ Object တူဝ်မၼ်းၶိုၼ်း
  }

  void show() => print("Steps: $steps");
}

void main() {
  var mySteps = StepCounter();
  
  // Method Chaining
  mySteps.walk().walk().walk().show(); // Output: Steps: 3
}

```

---

### Summary Table

| Feature | Description |
| --- | --- |
| **Method** | Function ဢၼ်ယူႇၼႂ်း Class တႃႇႁဵတ်းၵၢၼ်သင်သေယၢင် |
| **`this`** | Keyword တႃႇၸီႉၸူး Object တူဝ်ယၢမ်းလဵဝ် |
| **Shadowing** | မိူဝ်ႈ Local Variable တူမ်း Field ဝႆႉ ယွၼ်ႉၸိုဝ်ႈမိူၼ်ၵၼ် |

---
