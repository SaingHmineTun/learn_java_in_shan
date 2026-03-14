## 58) The 'super' Keyword

Keyword **`super`** ပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်ၸႂ်ႉတႃႇ "ၸီႉၸူး" (Reference) ၵႂႃႇတီႈ **Parent Class** (Superclass) ယဝ်ႉ။ မၼ်းမီးၸိုဝ်ႈသဵင်ၼမ်ၼႂ်းၵၢၼ်ႁွင်ႉၸႂ်ႉ Constructor လႄႈ Methods ဢၼ်ယူႇတီႈၼိူဝ်မၼ်း။

---

### 1. Accessing Parent Methods

မၢင်ပွၵ်ႈ Subclass ႁဝ်းမီး Method ၸိုဝ်ႈမိူၼ်တင်း Parent Class၊ ၵူၺ်းၵႃႈ ႁဝ်းတိုၵ်ႉၶႂ်ႈႁွင်ႉၸႂ်ႉ Logic ဢၼ်မီးၼႂ်း Parent ၼၼ်ႉယူႇ။ ႁဝ်းၸႂ်ႉ `super.methodName()` တႃႇႁွင်ႉမၼ်းလႆႈ။

**Example:**

```dart
class Robot {
  void boot() {
    print("System booting up...");
  }
}

class CombatRobot extends Robot {
  void boot() {
    super.boot(); // ႁွင်ႉၸႂ်ႉ Logic တီႈ Robot ဢွၼ်တၢင်း
    print("Weapon systems online!"); // ထႅမ် Logic မႂ်ႇသႂ်ႇ
  }
}

```

---

### 2. Super in Constructors (ပွတ်းသုတ်း)

ၼႆႉပဵၼ်တွၼ်ႈဢၼ်လမ်ႇလွင်ႈသုတ်း။ မိူဝ်ႈ Parent Class မီး Constructor ဢၼ်လူဝ်ႇ Argument၊ Subclass တေလႆႈသူင်ႇၵႃႈၶၼ်ၼၼ်ႉၶိုၼ်းၵႂႃႇပၼ် Parent မၼ်း ၵမ်းလဵဝ်။

#### A) The Modern Way (Super Parameters)

ၼႂ်း Dart ပိူင်မႂ်ႇ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`super.propertyName`** ၼႂ်း Parameter list လႆႈၵမ်းလဵဝ် တႃႇသူင်ႇၵႃႈၶၼ်ၵႂႃႇပၼ် Parent။

```dart
class Person {
  String name;
  Person(this.name);
}

class Student extends Person {
  int grade;
  
  // သူင်ႇ name ၵႂႃႇပၼ် Person, သႂ်ႇ grade ဝႆႉၼႂ်း Student
  Student(super.name, this.grade); 
}

```

#### B) The Initializer List Way (လၢႆးၵဝ်ႇ)

သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Code ဢၼ်လူဝ်ႇၸႂ်ႉ Dart Version ၵဝ်ႇ၊ ၸဝ်ႈၵဝ်ႇတေႁၼ်လၢႆးတႅမ်ႈၼင်ႇၼႆ:

```dart
Student(String name, int grade) : super(name) {
  this.grade = grade;
}

```

---

### 3. Why is `super` necessary?

1. **Avoid Code Repetition**: ဢမ်ႇလူဝ်ႇတႅမ်ႈ Logic ၵဝ်ႇၶိုၼ်းၼႂ်း Subclass။
2. **Order of Initialization**: မၼ်းမၵ်းမၼ်ႈဝႃႈ Parent Class တေထုၵ်ႇသၢင်ႈ (Initialized) တႅတ်ႉတႅတ်ႉတေႃတေႃ ဢွၼ်တၢင်း Subclass တေတႄႇႁဵတ်းၵၢၼ်။
3. **Specific Access**: မိူဝ်ႈမီး Name Conflict (ၸိုဝ်ႈမိူၼ်ၵၼ်), `super` ၸူၺ်းၵႄႈလႅတ်ႈဝႃႈ ႁဝ်းမၢႆထိုင်တူဝ်ဢၼ်ယူႇၽၢႆႇၼိူဝ်။

---

### Summary Table

| Keyword | Refers to... | Primary Use |
| --- | --- | --- |
| **`this`** | Current Instance (Object တူဝ်ၼႆႉ) | Accessing current class fields/methods |
| **`super`** | Parent Instance (Object ၽၢႆႇၼိူဝ်) | Calling parent constructors/methods |

---

