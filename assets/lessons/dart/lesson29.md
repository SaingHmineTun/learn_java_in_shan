## 29) Positional Parameters (Required vs Optional)

Parameters (ဢမ်ႇၼၼ် Inputs) ၼႂ်း Dart ၼၼ်ႉ မီးလၢႆးသူင်ႇလၢႆပိူင်။ ပိူင်ဢၼ်ႁဝ်းၸႂ်ႉမႃးတေႃႇထိုင်ယၢမ်းၼႆႉ ႁွင်ႉဝႃႈ **Positional Parameters** ယဝ်ႉ။ မၼ်းမၵ်းမၼ်ႈဝႃႈ ၶေႃႈမုၼ်းဢၼ်သူင်ႇၵႂႃႇ တေလႆႈယူႇ "ၸွမ်းတူင်ႇဝူင်း" (Position) ဢၼ်မၼ်းမီးဝႆႉၼၼ်ႉယဝ်ႉ။

---

### Parameter Types Table

| Type | Syntax | Usage (လၢႆးၸႂ်ႉ) |
| --- | --- | --- |
| **Required Positional** | `(String a, int b)` | တေလႆႈသူင်ႇပၼ်တင်းသွင်ဢၼ် ၸွမ်းလမ်ႇดับ |
| **Optional Positional** | `(String a, [int? b])` | ဢၼ်ယူႇၼႂ်း `[]` ၼၼ်ႉ တေသူင်ႇ ဢမ်ႇသူင်ႇၵေႃႈလႆႈ |

---

### 1. Required Positional Parameters

ၼႆႉပဵၼ်ပိူင်ပိုၼ်ႉထၢၼ်။ သင်ႁဝ်းမၵ်းမၼ်ႈဝႆႉ 2 ဢၼ်၊ မိူဝ်ႈႁွင်ႉၸႂ်ႉၵေႃႈ တေလႆႈသူင်ႇပၼ် 2 ဢၼ်သေ မၼ်းတေၼပ်ႉၸွမ်း "ဢၼ်မႃးဢွၼ်တၢင်း/လုၼ်ႈ" ယဝ်ႉ။

**Example:**

```dart
void printInfo(String name, int age) {
  print("Name: $name, Age: $age");
}

void main() {
  printInfo("Sai Sai", 20); // မႅၼ်ႈ
  // printInfo(20, "Sai Sai"); // ၽိတ်း! ယွၼ်ႉ Position ဢမ်ႇမႅၼ်ႈၸွမ်း Type
}

```

---

### 2. Optional Positional Parameters `[]`

မၢင်ပွၵ်ႈ ႁဝ်းမီးၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇလူဝ်ႇလႆႈသူင်ႇပၼ်ၵူႈပွၵ်ႈၵေႃႈလႆႈ။ ႁဝ်းၸၢင်ႈၸႂ်ႉ **Square Brackets `[]**` လႅပ်ႈဝႆႉၽၢႆႇလုၼ်ႈသုတ်းၶေႃႈ Parameters တၢင်ႇဢၼ်ယဝ်ႉ။

**Example: Optional Info**

```dart
// 'msg' ပဵၼ် Optional၊ သင်ဢမ်ႇသူင်ႇမႃး ၵႃႈၶၼ်မၼ်းတေပဵၼ် null
void greet(String name, [String? msg]) {
  if (msg != null) {
    print("Hello $name, $msg");
  } else {
    print("Hello $name");
  }
}

void main() {
  greet("Sai Sai");               // Output: Hello Sai Sai
  greet("Sai Sai", "Good Morning"); // Output: Hello Sai Sai, Good Morning
}

```

---

### 3. Multiple Optional Parameters

သင်ဝႃႈမီး Optional လၢႆဢၼ်၊ ႁဝ်းတေလႆႈသူင်ႇၸွမ်းလမ်ႇดับမၼ်းၼင်ႇၵဝ်ႇ။ ႁဝ်းဢမ်ႇၸၢင်ႈ "ၶၢမ်ႈ" ဢၼ်ထီႉၼိုင်ႈ သေၵႂႃႇသူင်ႇဢၼ်ထီႉသွင်လႆႈ။

**Example:**

```dart
void test(int a, [int? b, int? c]) {
  print("a: $a, b: $b, c: $c");
}

void main() {
  test(1);       // a: 1, b: null, c: null
  test(1, 2);    // a: 1, b: 2, c: null
  test(1, 2, 3); // a: 1, b: 2, c: 3
  // test(1, , 3); // ၽိတ်း! ဢမ်ႇၸၢင်ႈၶၢမ်ႈ b လႆႈ
}

```

---

### ၶေႃႈသတိ (Important Rule):

* Optional Positional Parameters တေလႆႈယူႇ **ၽၢႆႇလုၼ်ႈသုတ်း (End of the list)** တႃႇသေႇ။
* `void func([int a], int b) {}` -> **ၽိတ်း!**
* `void func(int b, [int a]) {}` -> **မႅၼ်ႈ!**

---

Would you like to move on to **Lesson 30: Named Parameters and {required}**? ဢၼ်ၼႆႉတေပဵၼ်လၢႆးသူင်ႇ Parameters ဢၼ်ငၢႆႈလိူဝ် လႄႈ ၸႂ်ႉၼမ်လိူဝ်ၼႂ်း Flutter ယဝ်ႉ။