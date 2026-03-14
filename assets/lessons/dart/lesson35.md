## 35) Higher-Order Functions

**Higher-Order Function** မၢႆထိုင် Function ဢၼ်မီး "တၢင်းလႅတ်းသႅဝ်း" သုင်သေ Function ပိုၼ်ႉထၢၼ်။ မၼ်းၸၢင်ႈ:

1. ႁပ်ႉဢဝ် Function တၢင်ႇဢၼ် မႃးပဵၼ် **Parameter (Input)**။
2. ဢမ်ႇၼၼ် **Return** (သူင်ႇဢွၵ်ႇ) Function တၢင်ႇဢၼ်မႃးပဵၼ် Result။

---

### 1. Function as a Parameter

ၼႆႉပဵၼ်လၢႆးၸႂ်ႉ ဢၼ်ႁဝ်းတေလႆႈႁၼ်ၼမ်သုတ်း။ ႁဝ်းတႅမ်ႈ Function ဢၼ်ၼိုင်ႈဝႆႉ သေသူင်ႇမၼ်းၶဝ်ႈၵႂႃႇၼႂ်း Function တၢင်ႇဢၼ် တႃႇႁႂ်ႈမၼ်းၵႂႃႇႁဵတ်းၵၢၼ် (Execute) ၽၢႆႇၼႂ်းယဝ်ႉ။

**Example: Simple Calculation**

```dart
// Higher-Order Function: ႁပ်ႉဢဝ် function 'action' မႃးပဵၼ် parameter
void calculate(int a, int b, Function action) {
  print("Result: ${action(a, b)}");
}

void main() {
  // သူင်ႇ Anonymous Function ၶဝ်ႈၵႂႃႇ
  calculate(10, 5, (x, y) => x + y); // Output: Result: 15
  calculate(10, 5, (x, y) => x * y); // Output: Result: 50
}

```

---

### 2. Built-in Higher-Order Functions (Common Examples)

Dart မီး Higher-Order Functions ဝႆႉၼႂ်း List ဢၼ်ႁဝ်းၸႂ်ႉၵူႈဝၼ်းယဝ်ႉ။

| Method | What it does (ၼႃႈတီႈ) | Result Type |
| --- | --- | --- |
| **`.map()`** | လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းၵူႈဢၼ်ၼႂ်း List | `Iterable` |
| **`.where()`** | လိူၵ်ႈဢဝ်ၶေႃႈမုၼ်းၸွမ်းၼင်ႇ Condition | `Iterable` |
| **`.fold()` / `.reduce()` | ဢဝ်ၶေႃႈမုၼ်းတင်းသဵင်ႈမႃးႁူမ်ႈၵၼ် (Sum/Total) | `Single Value` |

**Example: Using .map() and .where()**

```dart
void main() {
  var numbers = [1, 2, 3, 4, 5];

  // .where() ပဵၼ် Higher-Order Function ဢၼ်ႁပ်ႉ Logic တႃႇလိူၵ်ႈ
  var evens = numbers.where((n) => n % 2 == 0); 
  print(evens); // (2, 4)

  // .map() လႅၵ်ႈလၢႆႈမၢႆၼပ်ႉ ႁႂ်ႈပဵၼ် တူဝ်လိၵ်ႈ String
  var strings = numbers.map((n) => "Number $n").toList();
  print(strings); // [Number 1, Number 2, ...]
}

```

---

### 3. Returning a Function (သူင်ႇ Function ဢွၵ်ႇမႃး)

မၢင်ပွၵ်ႈ ႁဝ်းၸၢင်ႈတႅမ်ႈ Function ဢၼ် "သၢင်ႈ" Function တၢင်ႇဢၼ်ဢွၵ်ႇမႃးၸွမ်းၼင်ႇႁဝ်းလူဝ်ႇယဝ်ႉ။

**Example: Custom Multiplier**

```dart
Function makeMultiplier(int factor) {
  // သူင်ႇ anonymous function ဢွၵ်ႇမႃး
  return (int n) => n * factor;
}

void main() {
  var triple = makeMultiplier(3); // triple တေပဵၼ် function ဢၼ်ပိုၼ် 3
  print(triple(10)); // Output: 30
}

```

---

### 4. Why use Higher-Order Functions?

* **Code Cleanliness**: ႁဵတ်းႁႂ်ႈ Code ႁဝ်းပွတ်း လႄႈ လူငၢႆႈလိူဝ်ၵၢၼ်ၸႂ်ႉ Loop ပိုၼ်ႉထၢၼ်။
* **Decoupling**: ႁဝ်းၸၢင်ႈလႅၵ်ႈလၢႆႈ "Logic" ၵၢၼ်ႁဵတ်း (Action) လႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇမႄးတူဝ် Function လမ်ႇလွင်ႈမၼ်း။
* **Functional Programming**: ၼႆႉပဵၼ်ပိုၼ်ႉထၢၼ် ဢၼ်ၸႂ်ႉၼမ်ၼႂ်း Modern Frameworks မိူၼ်ၼင်ႇ Flutter ယဝ်ႉ။

---
