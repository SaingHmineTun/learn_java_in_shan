## 17) Type Test Operators (is, as)

Type Test Operators ၸႂ်ႉတႃႇထတ်းသၢင် (Check) လႄႈ မၵ်းမၼ်ႈ (Cast) Type ၶေႃႈမုၼ်း မိူဝ်ႈၽွင်း App ႁဝ်းလႅၼ်ႈယူႇ (Runtime)။ မၼ်းလမ်ႇလွင်ႈသုတ်း မိူဝ်ႈႁဝ်းႁဵတ်းၵၢၼ်ၸွမ်း Variable ဢၼ်ႁဝ်းဢမ်ႇႁူႉ Type မၼ်းတႅတ်ႈတေႃး (မိူၼ်ၼင်ႇ `dynamic` ဢမ်ႇၼၼ် `Object`)။

---

### Type Test Operators Table

| Operator | Meaning (တီႈပွင်ႇ) | Example | Result |
| --- | --- | --- | --- |
| **`is`** | Is type | `x is String` | `true` သင် x ပဵၼ် String |
| **`is!`** | Is NOT type | `x is! int` | `true` သင် x ဢမ်ႇၸႂ်ႈ int |
| **`as`** | Type Casting | `(x as String).length` | မၵ်းမၼ်ႈ x ႁႂ်ႈပဵၼ် String သေၸႂ်ႉ |

---

### 1. The `is` and `is!` Operators

ၸႂ်ႉတႃႇထတ်းသၢင် Type ႁႂ်ႈၼႄႉၸႂ် ဢွၼ်တၢင်းတေႁဵတ်းၵၢၼ်သင်သေဢၼ်ဢၼ်။

**Example 1: Basic Type Check**

```dart
var name = "Sai Sai";
print(name is String); // Output: true
print(name is int);    // Output: false

```

**Example 2: Negative Check (`is!`)**

```dart
var score = 100.5;
if (score is! int) {
  print("This is not a whole number"); // Output: This is not a whole number
}

```

---

### 2. The `as` Operator (Type Casting)

ၸႂ်ႉတႃႇ "ပိၼ်ႇ" ဢမ်ႇၼၼ် "မၵ်းမၼ်ႈ" ဝႃႈ Variable ၼၼ်ႉပဵၼ် Type သင်။ သင်ဝႃႈႁဝ်း Cast ၽိတ်း (တူဝ်ယၢင်ႇ: ဢဝ် Number ၵႂႃႇ Cast ပဵၼ် String) App တေ **Crash** (Error) ယဝ်ႉ။

**Example 1: Casting dynamic to String**

```dart
dynamic value = "Hello";
// ႁဝ်းႁူႉဝႃႈ value ပဵၼ် String ၼႆ ႁဝ်းၸၢင်ႈ Cast မၼ်းတႃႇၸႂ်ႉ String methods
String text = value as String; 
print(text.toUpperCase()); // Output: HELLO

```

**Example 2: Safe Casting with `is**`
ၵမ်းၼမ် ႁဝ်းလူဝ်ႇထတ်းသၢင် `is` ဢွၼ်တၢင်း ၸင်ႇၸႂ်ႉ `as` တႃႇႁႂ်ႈမၼ်း Safe ယဝ်ႉ။

```dart
dynamic data = 123;

if (data is String) {
  String s = data as String;
  print(s.length);
} else {
  print("Data is not a String, cannot cast!"); // Output: Data is not a String...
}

```

---

### 3. Smart Casting in Dart

တီႈလမ်ႇလွင်ႈၼိုင်ႈဢၼ်တႄႉ - ၼႂ်း Dart ၼၼ်ႉ သင်ႁဝ်းၸႂ်ႉ `is` ထတ်းသၢင်ယဝ်ႉၼႂ်း `if` statement ၼႆ Dart တေ **Smart Cast** ပၼ်ႁင်းၵူၺ်းယဝ်ႉ။ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `as` ၶိုၼ်းၵေႃႈလႆႈ။

**Example: Smart Cast**

```dart
dynamic x = "Dart is cool";

if (x is String) {
  // တီႈၼႆႈ Dart ႁူႉယဝ်ႉဝႃႈ x ပဵၼ် String
  // ႁဝ်းၸၢင်ႈၸႂ်ႉ .length လႆႈၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇ (x as String)
  print(x.length); // Output: 12
}

```

---
