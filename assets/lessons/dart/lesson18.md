## 18) String Interpolation & Multi-line Strings

ၼႂ်း Dart ၼၼ်ႉ လၢႆးတႅမ်ႈလိၵ်ႈ (Strings) မၼ်းမီးလွၵ်းလၢႆးဢၼ်ငၢႆႈ လႄႈ ၶႅၼ်ႇဝႆႉယဝ်ႉ။ ႁဝ်းဢမ်ႇလူဝ်ႇဢဝ်မၢႆ `+` မႃးသိုပ်ႇလိၵ်ႈၵၼ်ယူႇယၢဝ်းယၢဝ်း၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ **Interpolation** လႄႈ **Multi-line** တႃႇႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူဢၢၼ်ႇငၢႆႈလိူဝ်ၵဝ်ႇ။

---

### String Features Table

| Feature | Syntax | Usage (လၢႆးၸႂ်ႉ) |
| --- | --- | --- |
| **Simple Interpolation** | `$variable` | ဢဝ်ၵႃႈၶၼ် Variable သႂ်ႇၼႂ်းလိၵ်ႈ |
| **Expression Interpolation** | `${expression}` | ဢဝ်ၵႃႈၶၼ်ပၢႆးၼပ်ႉ ဢမ်ႇၼၼ် Logic သႂ်ႇၼႂ်းလိၵ်ႈ |
| **Multi-line Strings** | `'''` or `"""` | တႅမ်ႈလိၵ်ႈလၢႆလၢႆထႅဝ် ႁႂ်ႈဢွၵ်ႇၸွမ်းပိူင် |
| **Raw Strings** | `r'string'` | တႅမ်ႈလိၵ်ႈ ဢၼ်ဢမ်ႇပၼ်မၼ်းပိၼ်ႇ Escape characters |

---

### 1. String Interpolation (`$`)

ၼႆႉပဵၼ်လၢႆးဢဝ် "တူဝ်လႅၵ်ႈလၢႆႈ" သႂ်ႇဝႆႉၼႂ်း "လိၵ်ႈ" ယဝ်ႉ။

**Example 1: Variable Interpolation**

```dart
String name = "Sai Sai";
int age = 20;

// ဢမ်ႇလူဝ်ႇၸႂ်ႉ "My name is " + name
print("My name is $name and I am $age years old."); 
// Output: My name is Sai Sai and I am 20 years old.

```

**Example 2: Expression Interpolation (`${}`)**
သင်ဝႃႈႁဝ်းလူဝ်ႇလႆႈၵိတ်ႇၼပ်ႉ ဢမ်ႇၼၼ် ႁွင်ႉ Method သေဢၼ်ဢၼ်ၼႂ်း String ၼၼ်ႉ၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ ပုမ်ႇပိတ်းပုမ်ႇပိုတ်ႇ `{}` ယဝ်ႉ။

```dart
double price = 10.5;
int quantity = 3;

print("Total: ${price * quantity}"); // Output: Total: 31.5
print("Upper case: ${name.toUpperCase()}"); // Output: Upper case: SAI SAI

```

---

### 2. Multi-line Strings

မိူဝ်ႈႁဝ်းလူဝ်ႇတႅမ်ႈလိၵ်ႈယၢဝ်းယၢဝ်း (မိူၼ်ၼင်ႇ လိၵ်ႈၽၢၵ်ႇ၊ လိၵ်ႈပိုၼ်ၽၢဝ်ႇ) ဢၼ်မီးလၢႆလၢႆထႅဝ်ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ Triple Quotes ယဝ်ႉ။

**Example 1: Using Triple Quotes**

```dart
String message = '''
Hello User,
Welcome to Dart Programming.
We hope you enjoy the lesson!
''';

print(message);

```

---

### 3. Raw Strings (`r`)

မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈတႅမ်ႈလိၵ်ႈ ဢၼ်မီးမၢႆသိုဝ်ႈသိုဝ်ႈ မိူၼ်ၼင်ႇ `\n` (New line) ဢမ်ႇၼၼ် `$` ဢၼ်ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈမၼ်းပိၼ်ႇပဵၼ်သင်ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉတူဝ် `r` (Raw) ဝႆႉၽၢႆႇၼႃႈ String ယဝ်ႉ။

**Example 1: Raw String vs Normal String**

```dart
String normal = "Line 1 \n Line 2"; // မၼ်းတေလူင်းထႅဝ်မႂ်ႇ
String raw = r"Line 1 \n Line 2";   // မၼ်းတေၼႄ \n သိုဝ်ႈသိုဝ်ႈ

print(normal);
print(raw); // Output: Line 1 \n Line 2

```

---

### 4. Logic Application (Combined)

**Example: Building a Profile Summary**

```dart
String user = "Kyaw Kyaw";
int points = 1200;
String status = "Gold";

String profile = """
--- USER PROFILE ---
Name: $user
Current Status: $status
Points: $points
Next Level in: ${2000 - points} points
--------------------
""";

print(profile);

```
