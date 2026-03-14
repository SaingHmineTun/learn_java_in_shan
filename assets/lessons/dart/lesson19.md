## 19) Operator Precedence and Expressions

မိူဝ်ႈႁဝ်းတႅမ်ႈ Code ထႅဝ်လဵဝ်ၵၼ် ဢၼ်မီး Operators လၢႆလၢႆဢၼ် (တူဝ်ယၢင်ႇ: `5 + 3 * 2`) ၼၼ်ႉ Dart တေလူဝ်ႇတႅတ်ႈသိၼ်ၸႂ်ဝႃႈ တေလႆႈၵိတ်ႇၼပ်ႉ "ဢၼ်လႂ်ဢွၼ်တၢင်း"။ ပိူင်မၵ်းမၼ်ႈၼႆႉ ႁွင်ႉဝႃႈ **Operator Precedence** ယဝ်ႉ။

---

### Operator Precedence Table (Order of Operations)

ၼႆႉပဵၼ်တႃႇၼႄလွင်ႈလမ်ႇလွင်ႈ တႄႇတီႈ "သုင်သုတ်း" (ႁဵတ်းဢွၼ်တၢင်း) ၵႂႃႇၸူး "တႅမ်ႇသုတ်း" (ႁဵတ်းလိုၼ်းလင်)။

| Level | Operator | Description                     |
| --- | --- |---------------------------------|
| **1** | **`()`** | Parentheses (ၶွပ်ႇ)             |
| **2** | **`++`, `--**` | Postfix/Prefix (ထႅမ်/ထွၼ် 1)     |
| **3** | **`*`, `/`, `~/`, `%**` | Multiplicative (ပိုၼ် လႄႈ ႁၢၼ်) |
| **4** | **`+`, `-**` | Additive (ထႅမ် လႄႈ လိုတ်း)      |
| **5** | **`<<`, `>>**` | Shift operators (Bitwise)       |
| **6** | **`<`, `>`, `<=`, `>=**` | Relational (တႅၵ်ႈလိူင်း)        |
| **7** | **`==`, `!=**` | Equality (ၽဵင်ႇၵၼ်)             |
| **8** | **`&&`** | Logical AND                     |
| **9** | **` |                                 |
| **10** | **`=`, `+=`, `-=`, etc.** | Assignment (သႂ်ႇၵႃႈၶၼ်)         |

---

### 1. The Power of Parentheses `()`

သင်ႁဝ်းၶႂ်ႈႁႂ်ႈ Dart ၵိတ်ႇၼပ်ႉဢၼ်လႂ်ဢွၼ်တၢင်းၼႆ ႁဝ်းလူဝ်ႇသႂ်ႇ "ၶွပ်ႇ" `()` ပၼ်မၼ်း။ ဢၼ်မီးၼႂ်းၶွပ်ႇ တေလႆႈႁဵတ်းၵၢၼ်ဢွၼ်တၢင်းသုတ်းတေႃႇသေ။

**Example 1: Without Parentheses**

```dart
int result = 5 + 3 * 2; 
// Dart တေဢဝ် 3 * 2 ဢွၼ်တၢင်း (6) သေ ၸင်ႇဢဝ်မႃးထႅမ် 5 = 11
print(result); // Output: 11

```

**Example 2: With Parentheses**

```dart
int result = (5 + 3) * 2; 
// Dart တေဢဝ် 5 + 3 ဢွၼ်တၢင်း (8) သေ ၸင်ႇဢဝ်မႃးပိုၼ် 2 = 16
print(result); // Output: 16

```

---

### 2. Logical Precedence (`&&` vs `||`)

ၼႂ်းလွင်ႈတႅတ်ႈသိၼ်ၸႂ် Logic ၼၼ်ႉ `&&` (AND) မီးဢႃႇၼႃႇသုင်လိူဝ် `||` (OR)။

**Example: Mixed Logic**

```dart
bool check = true || false && false;
// Dart တေဢဝ် false && false ဢွၼ်တၢင်း (false)
// သေၸင်ႇဢဝ် true || false = true
print(check); // Output: true

```

---

### 3. Associativity (ၵိတ်ႇၼပ်ႉတီႈၽၢႆႇလႂ်?)

သင်ဝႃႈ Operators မၼ်းမီး Level မိူၼ်ၵၼ် (တူဝ်ယၢင်ႇ: `*` လႄႈ `/`) ၼႆ Dart တေၵိတ်ႇၼပ်ႉတႄႇတီႈ **"ၽၢႆႇသၢႆႉ ၵႂႃႇ ၽၢႆႇၶႂႃ" (Left-to-Right)** ယဝ်ႉ။

**Example: Left-to-Right**

```dart
double value = 10 / 2 * 5; 
// (10 / 2) = 5 -> (5 * 5) = 25
print(value); // Output: 25.0

```

---

### 4. Code Visualization Example

**Example: Complex Expression**

```dart
double finalResult = (10 + 20) * 2 / 5 + (10 % 3);
// 1. (10 + 20) = 30
// 2. (10 % 3) = 1
// 3. 30 * 2 = 60
// 4. 60 / 5 = 12.0
// 5. 12.0 + 1 = 13.0
print(finalResult); // Output: 13.0

```

---
