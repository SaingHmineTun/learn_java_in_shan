## 14) Arithmetic and Assignment Operators

Operators ၼႆႉပဵၼ် "မၢႆ" ဢၼ်ႁဝ်းၸႂ်ႉတႃႇၸီႉသင်ႇႁႂ်ႈ Dart ၵိတ်ႇၼပ်ႉ ဢမ်ႇၼၼ် တႅတ်ႈသိၼ်ၸႂ်ၼိူဝ် Variables လႄႈ Values ယဝ်ႉ။

---

### 1. Arithmetic Operators (မၢႆၵိတ်ႇၼပ်ႉ)

| Operator | Meaning (တီႈပွင်ႇ) | Example | Result |
| --- | --- | --- | --- |
| **`+`** | Addition (ထႅမ်) | `10 + 5` | `15` |
| **`-`** | Subtraction (လိုတ်း) | `10 - 5` | `5` |
| **`*`** | Multiplication (ပိုၼ်) | `10 * 5` | `50` |
| **`/`** | Division (ႁၢၼ်) | `10 / 4` | `2.5` |
| **`~/`** | Integer Division (ႁၢၼ်ဢဝ်တူဝ်ၵူၼ်ႇ) | `10 ~/ 4` | `2` |
| **`%`** | Modulo (ႁၢၼ်ဢဝ်ဢၼ်လိူဝ်) | `10 % 3` | `1` |

**Example: Division vs Integer Division vs Modulo**

```dart
int money = 10;
int friends = 3;

print(money / friends);  // 3.3333... (double)
print(money ~/ friends); // 3 (int)
print(money % friends);  // 1 (ဢၼ်လိူဝ်)

```

---

### 2. Increment and Decrement Operators

| Operator | Meaning (တီႈပွင်ႇ) | Example | Effect |
| --- | --- | --- | --- |
| **`++var`** | Pre-increment | `++a` | ထႅမ် 1 ဢွၼ်တၢင်း သေၸင်ႇၸႂ်ႉၵႃႈၶၼ် |
| **`var++`** | Post-increment | `a++` | ၸႂ်ႉၵႃႈၶၼ်ဢွၼ်တၢင်း သေၸင်ႇထႅမ် 1 |
| **`--var`** | Pre-decrement | `--a` | လိုတ်း 1 ဢွၼ်တၢင်း သေၸင်ႇၸႂ်ႉၵႃႈၶၼ် |
| **`var--`** | Post-decrement | `a--` | ၸႂ်ႉၵႃႈၶၼ်ဢွၼ်တၢင်း သေၸင်ႇလိုတ်း 1 |

**Example: Pre vs Post Increment**

```dart
int x = 5;
print(x++); // Output: 5 (ၸႂ်ႉၵႃႈၶၼ်ၵဝ်ႇဢွၼ်တၢင်း)
print(x);   // Output: 6 (ၸင်ႇထႅမ်ဝႆႉ)

int y = 5;
print(++y); // Output: 6 (ထႅမ်ယဝ်ႉၸင်ႇၸႂ်ႉ)

```

---

### 3. Assignment Operators (မၢႆသႂ်ႇၵႃႈၶၼ်)

| Operator | Meaning (တီႈပွင်ႇ) | Example | Equivalent to |
| --- | --- | --- | --- |
| **`=`** | Simple Assignment | `a = 10` | `a = 10` |
| **`+=`** | Add and Assign | `a += 5` | `a = a + 5` |
| **`-=`** | Subtract and Assign | `a -= 2` | `a = a - 2` |
| **`*=`** | Multiply and Assign | `a *= 3` | `a = a * 3` |
| **`/=`** | Divide and Assign | `a /= 2` | `a = a / 2` |
| **`??=`** | Null-aware Assignment | `a ??= 5` | `if (a == null) a = 5` |

**Example: Compound Assignment**

```dart
double price = 100;
price += 50;  // 150.0
price *= 0.9; // 135.0 (Discount 10%)

int? age;
age ??= 20;   // age ပဵၼ် 20 ယွၼ်ႉမၼ်းပဵၼ် null ဝႆႉ

```