## 67) Enhanced Enums with Fields (Dart 3.0+)

တႄႇတီႈ Dart 2.17 မႃး လႄႈ ထုၵ်ႇမႄးႁႂ်ႈၶႅမ်ႉလိူဝ်ၵဝ်ႇၼႂ်း Dart 3.0, **Enums** ဢမ်ႇၸႂ်ႈၵူၺ်း "သဵၼ်ႈၸိုဝ်ႈ" ယူဝ်းယူဝ်းယဝ်ႉ။ မၼ်းၸၢင်ႈမီး **Fields (Variables)**, **Constructors**, လႄႈ **Methods** မိူၼ်ၼင်ႇ Class တႄႇတႄႇယဝ်ႉ။ ႁဝ်းႁွင်ႉမၼ်းဝႃႈ **Enhanced Enums**။

---

### 1. ႁဵတ်းသင်လႄႈလူဝ်ႇ Enhanced Enums?

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇမီး Enum `Vehicle`။ ၸဝ်ႈၵဝ်ႇဢမ်ႇၵူၺ်းၶႂ်ႈႁူႉဝႃႈမၼ်းပဵၼ် `car` ဢမ်ႇၼၼ် `bicycle`၊ ၵူၺ်းၵႃႈ ၸဝ်ႈၵဝ်ႇၶႂ်ႈႁႂ်ႈ Enum ၼၼ်ႉ "သိမ်း" ဝႆႉပႃးၵႃႈၶၼ် မိူၼ်ၼင်ႇ "ႁႅင်းမႃႉ" (Horsepower) ဢမ်ႇၼၼ် "ၵႃႈၶၼ်" ၸွမ်းၼႂ်းတူဝ်မၼ်းၵမ်းလဵဝ်။

---

### 2. Syntax: Adding Fields and Constructors

မိူဝ်ႈႁဝ်းသၢင်ႈ Enhanced Enum:

1. Field တေလႆႈပဵၼ် `final` တႃႇသေႇ။
2. Constructor တေလႆႈပဵၼ် `const`။

```dart
enum Vehicle {
  // ၵႃႈၶၼ် Enum (မိူၼ်ၵၢၼ်သၢင်ႈ Object)
  car(4, "Vroom!"),
  bicycle(2, "Ring Ring!"),
  motorcycle(2, "Broom!");

  // Fields
  final int wheels;
  final String sound;

  // Constructor
  const Vehicle(this.wheels, this.sound);

  // Methods
  void drive() {
    print("Moving on $wheels wheels: $sound");
  }
}

void main() {
  var myRide = Vehicle.car;
  
  print(myRide.wheels); // Output: 4
  myRide.drive();      // Output: Moving on 4 wheels: Vroom!
}

```

---

### 3. Adding Getters and Logic

ၸဝ်ႈၵဝ်ႇၸၢင်ႈသႂ်ႇ Computed Properties (Getters) သႂ်ႇၼႂ်း Enum လႆႈၸွမ်းၼင်ႇၵဝ်ႇ:

```dart
enum UserRole {
  admin(3),
  editor(2),
  viewer(1);

  final int accessLevel;
  const UserRole(this.accessLevel);

  bool get canEdit => accessLevel >= 2;
  bool get canDelete => accessLevel == 3;
}

void main() {
  var user = UserRole.editor;
  print(user.canEdit);   // true
  print(user.canDelete); // false
}

```

---

### 4. Key Differences from Regular Enums

| Feature | Basic Enum | Enhanced Enum |
| --- | --- | --- |
| **Simple List** | ✅ | ✅ |
| **Variables (Fields)** | ❌ | ✅ (Must be `final`) |
| **Methods/Getters** | ❌ | ✅ |
| **Custom Constructors** | ❌ | ✅ (Must be `const`) |
| **Interfaces** | ❌ | ✅ (Can `implements`) |

---

### 5. Why use them?

* **Data Association**: ႁဵတ်းႁႂ်ႈ Enum သိမ်းၶေႃႈမုၼ်းဢၼ်ၵပ်းၵၢႆႇမၼ်းဝႆႉလႆႈ (တူဝ်ယၢင်ႇ: `HttpStatus.notFound` သိမ်းပႃး Code `404`)။
* **Self-Contained Logic**: Logic ဢၼ်ၵပ်းၵၢႆႇတင်း Enum ၼၼ်ႉ ယူႇၼႂ်းတူဝ် Enum ၼၼ်ႉၵမ်းလဵဝ်၊ ဢမ်ႇလူဝ်ႇၵႂႃႇတႅမ်ႈ `switch` ဝႆႉတီႈၼွၵ်ႈတင်းၼမ်။
* **Implements Interfaces**: Enhanced Enums ၸၢင်ႈ `implements` interfaces လႆႈ၊ ႁဵတ်းႁႂ်ႈမၼ်းၸႂ်ႉၸွမ်း Polymorphism လႆႈယဝ်ႉ။

---
