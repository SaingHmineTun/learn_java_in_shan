## 20) Conditional Statements: if, else if, and else

`if` statement ၼႆႉ ၸႂ်ႉတႃႇၸီႉသင်ႇဝႃႈ "သင်ဝႃႈလွင်ႈတၢင်းၼႆႉမႅၼ်ႈ (true) ၼႆ ႁႂ်ႈႁဵတ်း Code ၼႂ်းၼႆႉ" ယဝ်ႉ။

---

### Logic Structure Table

| Keyword | Usage (လၢႆးၸႂ်ႉ) | Requirement (ၶေႃႈမၵ်းမၼ်ႈ) |
| --- | --- | --- |
| **`if`** | တႄႇထတ်းသၢင်လွင်ႈတၢင်း | လူဝ်ႇမီး Boolean (`true`/`false`) |
| **`else if`** | ထတ်းသၢင်လွင်ႈတၢင်းထႅင်ႈဢၼ်ၼိုင်ႈ (သင်ဢၼ်ၼႃႈၼၼ်ႉၽိတ်း) | ၸႂ်ႉလႆႈလၢႆလၢႆဢၼ် |
| **`else`** | သင်ဝႃႈဢၼ်ၼႃႈၼၼ်ႉ ၽိတ်း (false) တင်းသဵင်ႈ | ၸႂ်ႉလႆႈပွၵ်ႈလဵဝ် တီႈသုတ်းမၼ်း |

---

### 1. Simple 'if' and 'else'

ၼႆႉပဵၼ်လၢႆးၸႂ်ႉ ဢၼ်မီးတၢင်းလိူၵ်ႈသွင်ၽၢႆႇ - သင်မႅၼ်ႈ ႁဵတ်း `if`၊ သင်ၽိတ်း ႁဵတ်း `else`။

**Example: Weather Check**

```dart
bool isRaining = true;

if (isRaining) {
  print("Take an umbrella!"); // တေဢွၵ်ႇဢၼ်ၼႆႉ ယွၼ်ႉ isRaining ပဵၼ် true
} else {
  print("Enjoy the sun!");
}

```

---

### 2. The 'else if' Chain

မိူဝ်ႈႁဝ်းမီးလွင်ႈတၢင်း လၢႆလၢႆပိူင် ဢၼ်လူဝ်ႇထတ်းသၢင်ၸွမ်းၸၼ်ႉမၼ်း။

**Example: Grading System**

```dart
int score = 85;

if (score >= 90) {
  print("Grade: A");
} else if (score >= 80) {
  print("Grade: B"); // တေဢွၵ်ႇဢၼ်ၼႆႉ ယွၼ်ႉ 85 တူၵ်းၼႂ်းလွၵ်းၼႆႉ
} else if (score >= 70) {
  print("Grade: C");
} else {
  print("Grade: F");
}

```

---

### 3. Nested if (if ၼႂ်း if)

ႁဝ်းၸၢင်ႈတႅမ်ႈ `if` သႂ်ႇဝႆႉၼႂ်း `if` ထႅင်ႈပွၵ်ႈၼိုင်ႈ တႃႇထတ်းသၢင်လွင်ႈတၢင်း ဢၼ်သုၵ်ႉယုင်ႈလိူဝ်ၼၼ်ႉ။

**Example: Login Logic**

```dart
bool isEmailCorrect = true;
bool isPasswordCorrect = false;

if (isEmailCorrect) {
  if (isPasswordCorrect) {
    print("Login successful!");
  } else {
    print("Wrong password!"); // တေဢွၵ်ႇဢၼ်ၼႆႉ
  }
} else {
  print("Email not found!");
}

```

---

### 4. Short-hand if (Ternary Operator)

သင်ဝႃႈလွင်ႈတၢင်းႁဝ်းမၼ်းငၢႆႈၼႃႇ ႁဝ်းၸၢင်ႈၸႂ်ႉ `condition ? true_value : false_value` တႅၼ်းလႆႈ။

**Example: Age Check**

```dart
int age = 20;
String status = (age >= 18) ? "Adult" : "Minor";
print(status); // Output: Adult

```

---

### ၶေႃႈသတိ (Important Note):

* ၼႂ်းၶွပ်ႇ `if (...)` ၼၼ်ႉ **တေလႆႈပဵၼ် `bool` (`true`/`false`) တႃႇသေႇ**။
* ၼႂ်း Dart ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ Number (မိူၼ်ၼင်ႇ `if (1)`) တႅၼ်း true/false လႆႈ ၼင်ႇ زمانی C++ ဢမ်ႇၼၼ် JavaScript။

---
