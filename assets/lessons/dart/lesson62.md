## 62) Implementing Interfaces

ၼႂ်း Dart, ႁဝ်းဢမ်ႇမီး Keyword `interface` မိူၼ်ၼင်ႇ Java ဢမ်ႇၼၼ် C#။ ယွၼ်ႉဝႃႈ **Class ၵူႈဢၼ် ၼႂ်း Dart ပဵၼ် Interface ၼႂ်းတူဝ်မၼ်းယူႇယဝ်ႉ** (Implicit Interface)။

မိူဝ်ႈႁဝ်းၸႂ်ႉ Keyword **`implements`**၊ Class ၼၼ်ႉတေဢဝ် Class တၢင်ႇဢၼ်မႃးပဵၼ် "လိၵ်ႈၵိၼ်ၵႅၼ်ႇ" (Contract) တႃႇတႅမ်ႈ Code ယဝ်ႉ။

---

### 1. Extends vs Implements

လွင်ႈပႅၵ်ႇၵၼ်ၼႆႉ လမ်ႇလွင်ႈၼႃႇ:

* **`extends` (Inheritance):** သိုပ်ႇဢဝ်တင်း "ပိူင်" လႄႈ "ၵၢၼ်ႁဵတ်း" (Logic) မႃးၸႂ်ႉ။
* **`implements` (Interface):** ဢဝ်မႃးၵူၺ်း "ပိူင်" (Structure)။ ၸဝ်ႈၵဝ်ႇတေလႆႈ **တႅမ်ႈမႂ်ႇတင်းသဵင်ႈ** ၼႂ်း Class ႁင်းၵူၺ်း။

---

### 2. ပိူင်ၵၢၼ်ၸႂ်ႉ `implements`

မိူဝ်ႈ Class ၼိုင်ႈ `implements` ထႅင်ႈ Class ၼိုင်ႈ၊ မၼ်းတေလႆႈ:

1. Override ၵူႈ Fields (Variables)။
2. Override ၵူႈ Methods။
   *(မၢႆထိုင်ဝႃႈ မၼ်းဢမ်ႇသိုပ်ႇဢဝ် Logic မႃးၸႂ်ႉၶိုၼ်း၊ မၼ်းၵူၺ်းႁပ်ႉပၢၵ်ႇဝႃႈ တေမီး Method ၸိုဝ်ႈၼၼ်ႉၼၼ်ႉၼႆယဝ်ႉ)*

**Example:**

```dart
class RegularClass {
  void greet() {
    print("Hello!");
  }
}

// ၸႂ်ႉ implements မၢႆထိုင်ဝႃႈ ႁဝ်းဢမ်ႇဢဝ် "Hello!" မႃး၊ ၵူၺ်းၵႃႈ ႁဝ်းတေလႆႈတႅမ်ႈ greet() ႁင်းၵူၺ်း
class MyImplementation implements RegularClass {
  @override
  void greet() {
    print("Sawatdee!");
  }
}

```

---

### 3. Multiple Interfaces (သိုပ်ႇလႆႈလၢႆဢၼ်)

ၼႆႉပဵၼ်ၽွၼ်းလီလူင်မၼ်းယဝ်ႉ။ ၼႂ်း Dart, ႁဝ်း `extends` လႆႈ Class လဵဝ်ၵူၺ်း၊ ၵူၺ်းၵႃႈ ႁဝ်းၸၢင်ႈ **`implements` လႆႈလၢႆ Class ပွၵ်ႈလဵဝ်ၵၼ်**။

```dart
abstract class Flyer {
  void fly();
}

abstract class Swimmer {
  void swim();
}

// Duck ၸၢင်ႈပဵၼ်လႆႈတင်း Flyer လႄႈ Swimmer
class Duck implements Flyer, Swimmer {
  @override
  void fly() => print("Duck is flying");

  @override
  void swim() => print("Duck is swimming");
}

```

---

### 4. Why use Interfaces?

* **Loose Coupling:** ႁဵတ်းႁႂ်ႈ Class သွင်ဢၼ် ဢမ်ႇလူဝ်ႇပိုင်ႈဢိင်ၵၼ်ၼမ်။ ႁဝ်းၵူၺ်းလူဝ်ႇႁူႉဝႃႈ မၼ်းႁဵတ်းသင်လႆႈ (Interface)၊ ဢမ်ႇလူဝ်ႇႁူႉဝႃႈ မၼ်းႁဵတ်းၸိူင်ႉႁိုဝ် (Implementation)။
* **Flexibility:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ Object ဢၼ်မီး "တႃၼႃႈ" (Behavior) လၢႆလၢႆယၢင်ႇ ၼႂ်းတူဝ်လဵဝ်။
* **Testing:** ၸူၺ်းႁႂ်ႈသၢင်ႈ Mock Objects (Object ပွမ်) တႃႇ Test App လႆႈငၢႆႈ။

---

### Summary Table

| Feature | `extends` | `implements` |
| --- | --- | --- |
| **Logic Reuse** | ✅ (သိုပ်ႇဢဝ်မႃးၸႂ်ႉလႆႈ) | ❌ (တေလႆႈတႅမ်ႈမႂ်ႇၵူႈဢၼ်) |
| **Count** | Only 1 class | Multiple classes |
| **Relationship** | "Is-A" (ပဵၼ်...) | "Acts-Like" (ႁဵတ်းမိူၼ်...) |

---
