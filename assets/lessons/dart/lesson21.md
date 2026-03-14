## 21) The Conditional (Ternary) Operator

**Ternary Operator** ၼႆႉ ပဵၼ်လၢႆးတႅမ်ႈ `if-else` ဢၼ်ပိၼ်ႇပွတ်း လႄႈ ႁဵတ်းႁႂ်ႈ Code ႁဝ်းမူတ်းသႂ် (Clean) လိူဝ်ၵဝ်ႇ။ မၼ်းၸၢင်ႈတႅတ်ႈသိၼ်ၸႂ် သေသူင်ႇၵႃႈၶၼ် (Return value) ပၼ်ၼႂ်းထႅဝ်လဵဝ်ၵမ်း lဵဝ်ယဝ်ႉ။

---

### Syntax & Structure Table

| Part | Meaning (တီႈပွင်ႇ) | Description |
| --- | --- | --- |
| **`Condition`** | လွင်ႈတၢင်း | ဢၼ်တေထတ်းသၢင် (တေလႆႈပဵၼ် `bool`) |
| **`?`** | Question mark | ထၢမ်ဝႃႈ "မႅၼ်ႈႁႃႉ?" |
| **`Expression 1`** | True Case | ၵႃႈၶၼ်ဢၼ်တေၸႂ်ႉ သင်မႅၼ်ႈ (**True**) |
| **`:`** | Colon | "ဢမ်ႇၼၼ်" |
| **`Expression 2`** | False Case | ၵႃႈၶၼ်ဢၼ်တေၸႂ်ႉ သင်ၽိတ်း (**False**) |

---

### 1. Basic Comparison (if-else vs Ternary)

မႃးတူၺ်း လွင်ႈပႅၵ်ႇပိူင်ႈမိူဝ်ႈႁဝ်းတႅမ်ႈ Code တႃႇထတ်းသၢင်မၢႆၼပ်ႉ။

**Example: Classic if-else**

```dart
int age = 16;
String result;

if (age >= 18) {
  result = "Adult";
} else {
  result = "Minor";
}

```

**Example: Ternary Operator (ပွတ်းလိူဝ်)**

```dart
int age = 16;
String result = (age >= 18) ? "Adult" : "Minor";
print(result); // Output: Minor

```

---

### 2. Nesting Ternary (Ternary ၼႂ်း Ternary)

ႁဝ်းၸၢင်ႈၸႂ်ႉ Ternary သိုပ်ႇၵၼ်လႆႈ မိူၼ်ၼင်ႇ `else if` ၼင်ႇၵဝ်ႇ၊ ၵူၺ်းၵႃႈ လူဝ်ႇၾၢင်ႉယႃႇႁႂ်ႈမၼ်းသုၵ်ႉယုင်ႈပူၼ်ႉတီႈ။

**Example: Score Grade**

```dart
int score = 85;
String grade = (score >= 90) ? "A" 
             : (score >= 80) ? "B" 
             : "C";

print(grade); // Output: B

```

---

### 3. Usage in String Interpolation

လွင်ႈၶႅၼ်ႇသုတ်းၶေႃႈ Ternary တႄႉ ပဵၼ်ၵၢၼ်ဢဝ်မႃးၸႂ်ႉၼႂ်း `${}` တႃႇတႅတ်ႈသိၼ်ၸႂ် လိၵ်ႈဢၼ်တေၼႄၼၼ်ႉယဝ်ႉ။

**Example: Dynamic Message**

```dart
bool isLoggedIn = false;
print("Welcome, ${isLoggedIn ? 'User' : 'Guest'}!");
// Output: Welcome, Guest!

```

---

### 4. Comparison Table (When to use?)

| Feature | if-else Statement | Ternary Operator |
| --- | --- | --- |
| **Complexity** | ၸႂ်ႉလႆႈတင်း လွင်ႈတၢင်းဢၼ်ယၢပ်ႇ/သုၵ်ႉ | ၸႂ်ႉတႃႇလွင်ႈတၢင်းဢၼ်ငၢႆႈ |
| **Return Value** | ဢမ်ႇသူင်ႇၵႃႈၶၼ် (လူဝ်ႇ Assignment) | သူင်ႇၵႃႈၶၼ်ပၼ်လႆႈၵမ်းလဵဝ် |
| **Readability** | လူဢၢၼ်ႇငၢႆႈ မိူဝ်ႈ Code မီးလၢႆထႅဝ် | လူဢၢၼ်ႇငၢႆႈ မိူဝ်ႈ Code မီးထႅဝ်လဵဝ် |

---

### ၶေႃႈပၼ်ႁႅင်း (Best Practice):

* ၸႂ်ႉ Ternary မိူဝ်ႈႁဝ်းလူဝ်ႇလႆႈၵႃႈၶၼ် (Value) တႃႇသႂ်ႇ Variable ဢၼ်ၼိုင်ႈ။
* သင်ဝႃႈလွင်ႈတၢင်းမၼ်းယၢပ်ႇၼႃႇ ဢမ်ႇၼၼ် လူဝ်ႇတႅမ်ႈ Code လၢႆလၢႆထႅဝ် ၼႂ်း `if` ၼၼ်ႉ၊ ႁႂ်ႈၸႂ်ႉ `if-else` သိုဝ်ႈသိုဝ်ႈ တေလီလိူဝ်ယဝ်ႉ။
