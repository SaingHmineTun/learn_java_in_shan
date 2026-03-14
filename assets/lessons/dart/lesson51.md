## 51) Privacy with the Underscore (_)

ၼႂ်း Dart, ႁဝ်းဢမ်ႇမီး Keyword မိူၼ်ၼင်ႇ `private`, `public`, ဢမ်ႇၼၼ် `protected` မိူၼ်ၼင်ႇၼႂ်း Java ဢမ်ႇၼၼ် C# ၶႃႈ။ ၵူၺ်းၵႃႈ Dart ၸႂ်ႉလၢႆးငၢႆႈငၢႆႈ ဢၼ်ႁွင်ႉဝႃႈ **Underscore Syntax** ယဝ်ႉ။

### 1. လၢႆးသၢင်ႈ Private Member

သင်ၸဝ်ႈၵဝ်ႇသႂ်ႇမၢႆ **Underscore (`_`)** ဝႆႉၽၢႆႇၼႃႈၸိုဝ်ႈ Variable, Method, ဢမ်ႇၼၼ် Class၊ မၼ်းတေပဵၼ် **Private** ၵမ်းလဵဝ်။

**Example:**

```dart
class BankAccount {
  double _balance = 0; // Private Variable
  
  void _calculateInterest() { // Private Method
    print("Calculating...");
  }
}

```

---

### 2. Library-level Privacy (ပိူင်လမ်ႇလွင်ႈသုတ်း)

လွင်ႈဢၼ် Developer မႂ်ႇမႂ်ႇၵႆႉငိုင်ႇၵေႃႈပဵၼ်: **Privacy ၼႂ်း Dart ပဵၼ် "Library-level" (File-level)၊ ဢမ်ႇၸႂ်ႈ "Class-level"။**

* **ၼႂ်း File လဵဝ်ၵၼ်:** ၸဝ်ႈၵဝ်ႇတိုၵ်ႉၸၢင်ႈႁွင်ႉၸႂ်ႉ `_balance` လႆႈယူႇ (ထတ်းသၢင် (Test) လႆႈငၢႆႈ)။
* **ၵူၼ်းၼွၵ်ႈ File:** သင် File တၢင်ႇဢၼ် `import` Class ၼႆႉၵႂႃႇ၊ မၼ်းတေဢမ်ႇႁၼ် လႄႈ ဢမ်ႇၸၢင်ႈႁွင်ႉၸႂ်ႉ Variable ဢၼ်မီး `_` ၼၼ်ႉလႆႈယဝ်ႉ။

---

### 3. Why Encapsulate? (ႁဵတ်းသင်လႄႈလူဝ်ႇသိပ်း?)

ၵၢၼ်သိပ်းၶေႃႈမုၼ်းဝႆႉၼႂ်း Class (Encapsulation) မီးၽွၼ်းလီၼမ်ၼႃႇ:

1. **Validation**: ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈၵူၼ်းၼွၵ်ႈမႃးပၼ်ၵႃႈၶၼ်ၽိတ်းၽိတ်း (တူဝ်ယၢင်ႇ: ပၼ် balance ပဵၼ် -1000)။
2. **Read-Only Access**: ႁဝ်းၸၢင်ႈပၼ်ႁႂ်ႈၵူၼ်းၼွၵ်ႈ "လူ" (Read) လႆႈၵူၺ်း ၵူၺ်းၵႃႈ "မႄး" (Modify) ဢမ်ႇလႆႈ။
3. **Hiding Complexity**: သိပ်းလၢႆးၵၢၼ်ဢၼ်ယၢပ်ႇယၢပ်ႇဝႆႉၼႂ်း Class သေ ၼႄၵူၺ်း Button ဢမ်ႇၼၼ် Method ဢၼ်လူဝ်ႇၸႂ်ႉတႄႇတႄႇ။

---

### 4. တူဝ်ယၢင်ႇတႄႇတႄႇ (Real-world Example)

သင်ႁဝ်းမီး Class `Car`၊ ႁဝ်းတေဢမ်ႇၶႂ်ႈႁႂ်ႈၵူၼ်းလႅၼ်ႈၵႃး မႃးလႅၵ်ႈလၢႆႈၵႃႈၶၼ် `_engineTemperature` ႁင်းၵူၺ်းမၼ်း၊ ယွၼ်ႉမၼ်းဢၼ်တရႄႇ (Dangerous)။

```dart
// file: car.dart
class Car {
  double _engineTemp = 90.0; // Private

  void drive() {
    _engineTemp += 10.0;
    print("Driving... Temp is $_engineTemp");
  }
}

// file: main.dart
import 'car.dart';

void main() {
  var myCar = Car();
  myCar.drive();
  // myCar._engineTemp = 500.0; // Error! ႁွင်ႉဢမ်ႇလႆႈ ယွၼ်ႉယူႇၵူၼ်းလိုင် File
}

```

---
