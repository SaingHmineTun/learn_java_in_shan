## 43) Classes: Blueprints for Objects

**Object-Oriented Programming (OOP)** ပဵၼ်လၢႆးဝူၼ်ႉၵၢၼ်တႅမ်ႈ Code ဢၼ်ဢဝ် "လွင်ႈတူဝ်တႄႇၼႂ်းလူၵ်ႈ" (Real-world entities) မႃးပဵၼ်ပိူင်။ တူဝ်ယၢင်ႇမိူၼ်ၼင်ႇ: ၵူၼ်း၊ တူဝ်သတ်း၊ ၵႃး၊ ဢမ်ႇၼၼ် ၶေႃႈမုၼ်းမိူၼ်ၼင်ႇ User, Product ၸိူဝ်းၼႆႉယဝ်ႉ။

---

### 1. Class vs Object

* **Class**: ပဵၼ် "ပိူင်တႅမ်ႈ" (Blueprint) ဢမ်ႇၼၼ် ပဵၼ်ၵၢတ်ႈ (Mold) ဢၼ်မၵ်းမၼ်ႈဝႃႈ Object ၼၼ်ႉတေမီးသင်။ မၼ်းပႆႇမီးတူဝ်တႄႇ၊ မၼ်းပဵၼ်ၵူၺ်း "ၶေႃႈမၵ်းမၼ်ႈ"။
* **Object**: ပဵၼ် "တူဝ်တႄႇ" (Instance) ဢၼ်သၢင်ႈဢွၵ်ႇမႃးတီႈ Class ၼၼ်ႉ။ မၼ်းပဵၼ်တူဝ်ဢၼ်မီးယူႇတႄႇတႄႇၼႂ်း Memory။

---

### 2. Defining a Class (ၵၢၼ်သၢင်ႈ Class)

ႁဝ်းၸႂ်ႉ Keyword **`class`** သေၸွမ်းလူၺ်ႈၸိုဝ်ႈ ဢၼ်တႄႇလူၺ်ႈ **PascalCase** (တူဝ်ယႂ်ႇၽၢႆႇၼႃႈၵူႈတူဝ်)။

**Example: Class Student**

```dart
class Student {
  // Fields (ၶေႃႈမုၼ်းဢၼ်မၼ်းမီး)
  String? name;
  int? age;

  // Method (ၵၢၼ်ႁဵတ်းဢၼ်မၼ်းႁဵတ်းလႆႈ)
  void study() {
    print("$name is studying.");
  }
}

```

---

### 3. Creating an Object (ၵၢၼ်သၢင်ႈ Object)

မိူဝ်ႈႁဝ်းမီး Class ယဝ်ႉ၊ ႁဝ်းၸၢင်ႈသၢင်ႈ Object ဢွၵ်ႇမႃးလႆႈလၢႆလၢႆတူဝ် ၸွမ်းၼင်ႇႁဝ်းလူဝ်ႇယဝ်ႉ။ ၵၢၼ်သၢင်ႈ Object ၼႆႉ ႁွင်ႉဝႃႈ **Instantiation**။

**Example:**

```dart
void main() {
  // 1. သၢင်ႈ Object တူဝ်ထီႉၼိုင်ႈ
  var student1 = Student();
  student1.name = "Sai Sai";
  student1.age = 20;
  
  // 2. သၢင်ႈ Object တူဝ်ထီႉသွင်
  var student2 = Student();
  student2.name = "Su Su";
  student2.age = 19;

  // ႁွင်ႉၸႂ်ႉၵၢၼ်ႁဵတ်းမၼ်း
  student1.study(); // Output: Sai Sai is studying.
  student2.study(); // Output: Su Su is studying.
}

```

---

### 4. Why Use Classes?

* **Organization**: ႁဵတ်းႁႂ်ႈ Code ႁဝ်းယူႇပဵၼ်မူႇပဵၼ်ၸုမ်း။ ၶေႃႈမုၼ်း (Data) လႄႈ ၵၢၼ်ႁဵတ်း (Action) ယူႇၸွမ်းၵၼ်ၼႂ်း "ၵွၼ်ႉ" (Block) လဵဝ်ၵၼ်။
* **Reusability**: တႅမ်ႈ Class ပွၵ်ႈလဵဝ်၊ သၢင်ႈ Object ဢွၵ်ႇမႃးလႆႈ ပဵၼ်ႁဵင် ပဵၼ်မိုၼ်ႇတူဝ်။
* **Abstraction**: ႁဝ်းႁူႉၵူၺ်းဝႃႈ Object ၼၼ်ႉ "ႁဵတ်းသင်လႆႈ"၊ ႁဝ်းဢမ်ႇလူဝ်ႇၵႂႃႇဝူၼ်ႉၸွမ်းဝႃႈ ၼႂ်းမၼ်းတႅမ်ႈဝႆႉယၢပ်ႇၸိူင်ႉႁိုဝ်။

---

**Summary Table**

| Item | Analogy (ၵၢၼ်ပႅၵ်ႉတႅၵ်ႈ) | Code Example |
| --- | --- | --- |
| **Class** | ပိူင်တႅမ်ႈႁိူၼ်း (Paper) | `class House { ... }` |
| **Object** | ႁိူၼ်းတႄႇတႄႇ (Real House) | `var myHouse = House();` |
| **Field** | သီႁိူၼ်း, တၢင်းၵႂၢင်ႈ | `String color;` |
| **Method** | ၵၢၼ်ပိုတ်ႇၽၵ်းတူ | `void openDoor() { ... }` |

---
