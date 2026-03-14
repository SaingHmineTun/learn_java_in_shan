## 32) Arrow Syntax (`=>`)

**Arrow Syntax** (ဢမ်ႇၼၼ် ႁွင်ႉဝႃႈ **Fat Arrow**) ပဵၼ်လၢႆးတႅမ်ႈ Function ဢၼ်ပွတ်းသုတ်းၼႂ်း Dart ယဝ်ႉ။ မၼ်းထုၵ်ႇဒီၸၢႆးဝႆႉ တႃႇၸႂ်ႉၸွမ်း Function ဢၼ်မီး Code ၵူၺ်း **"ထႅဝ်လဵဝ်" (Single Expression)**။

---

### Syntax Comparison

| Feature | Block Body `{}` | Arrow Syntax `=>` |
| --- | --- | --- |
| **Usage** | ၸႂ်ႉလႆႈတင်း Code လၢႆလၢႆထႅဝ် | ၸႂ်ႉလႆႈၵူၺ်း Code ထႅဝ်လဵဝ် |
| **Return** | လူဝ်ႇၸႂ်ႉ Keyword `return` | ဢမ်ႇလူဝ်ႇၸႂ်ႉ `return` (မၼ်းသူင်ႇဢွၵ်ႇပၼ်ၵမ်းလဵဝ်) |
| **Structure** | `{ code; }` | `=> expression;` |

---

### 1. Basic Conversion

မႃးတူၺ်းလွင်ႈပႅၵ်ႇပိူင်ႈ မိူဝ်ႈႁဝ်းပိၼ်ႇ Code တီႈ Block Body မႃးပဵၼ် Arrow Syntax ယဝ်ႉ။

**Example: Regular Function**

```dart
int doubleIt(int n) {
  return n * 2;
}

```

**Example: Arrow Function**

```dart
int doubleIt(int n) => n * 2;

```

* **Logic:** ၼႂ်း Arrow Syntax ၼၼ်ႉ `=>` မၼ်းတႅၼ်းတင်း `{ return ...; }` ယဝ်ႉ။ ႁဝ်းဢမ်ႇၸၢင်ႈတႅမ်ႈ `return` သႂ်ႇၼႃႈ Arrow လႆႈ။

---

### 2. Usage with Void Functions

Arrow Syntax ၵေႃႈၸၢင်ႈၸႂ်ႉလႆႈတင်း Function ဢၼ်ဢမ်ႇသူင်ႇၵႃႈၶၼ် (`void`) ၼင်ႇၵဝ်ႇ။

**Example:**

```dart
void sayHi() => print("Hi there!");

```

---

### 3. Usage in Conditional Expressions

ယွၼ်ႉဝႃႈ Arrow Syntax တေလႆႈပဵၼ် "ထႅဝ်လဵဝ်" ၵူၺ်း၊ သင်ႁဝ်းၶႂ်ႈသႂ်ႇ Logic ႁဝ်းတေလႆႈၸႂ်ႉ **Ternary Operator** (`? :`) တႅၼ်း `if-else` ယဝ်ႉ။

**Example:**

```dart
String checkEven(int n) => (n % 2 == 0) ? "Even" : "Odd";

```

---

### 4. Common Use Cases

ႁဝ်းတေလႆႈႁၼ် Arrow Syntax ၼမ်သုတ်း တီႈ:

1. **Getters**: မိူဝ်ႈလူဝ်ႇလႆႈၵႃႈၶၼ် Variable ငၢႆႈငၢႆႈ။
2. **Higher-Order Functions**: မိူဝ်ႈသူင်ႇ Function သႂ်ႇၼႂ်း `map()`, `where()`, ဢမ်ႇၼၼ် `forEach()`။

**Example in forEach:**

```dart
var fruits = ["Apple", "Banana"];
fruits.forEach((f) => print(f)); // ပွတ်း လႄႈ လူငၢႆႈ

```

---

### ၶေႃႈသတိ (Important Rule):

* ႁဝ်း **ဢမ်ႇၸၢင်ႈ** တႅမ်ႈ Statement (မိူၼ်ၼင်ႇ `if`, `for`, `while`) ၼႂ်း Arrow Syntax လႆႈ။ ႁဝ်းတႅမ်ႈလႆႈၵူၺ်း **Expression** (ဢၼ်ၵိတ်ႇၼပ်ႉသေ ထွၼ်ၵႃႈၶၼ်ဢွၵ်ႇမႃးလႆႈ)။
