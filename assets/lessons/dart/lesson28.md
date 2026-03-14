## 28) Return Types and the void Keyword

ၼႂ်း Lesson ဢၼ်ပၼ်ႇမႃး ႁဝ်းလႆႈႁၼ်ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း "ၶဝ်ႈ" (Input) ယဝ်ႉ။ ၵမ်းၼႆႉ ႁဝ်းတေမႃးလဵပ်ႈႁဵၼ်းလွင်ႈသူင်ႇၶေႃႈမုၼ်း "ဢွၵ်ႇ" (Output) မႃးၶိုၼ်း တီႈ Function ၼၼ်ႉယဝ်ႉ။

---

### Return Types Table

| Type | Meaning | What it does |
| --- | --- | --- |
| **`void`** | ဢမ်ႇမီးၵႃႈၶၼ် | ႁဵတ်းၵၢၼ်ယဝ်ႉၵေႃႈယဝ်ႉ၊ ဢမ်ႇသူင်ႇသင်ပိၵ်ႉမႃးၶိုၼ်း |
| **`int`** | တူဝ်ၼပ်ႉ (Whole number) | သူင်ႇမၢႆၼပ်ႉဢွၵ်ႇမႃး (တူဝ်ယၢင်ႇ: `10`, `-5`) |
| **`double`** | တူဝ်ၼပ်ႉ (Decimal) | သူင်ႇမၢႆၼပ်ႉမီးၸုၵ်းဢွၵ်ႇမႃး (တူဝ်ယၢင်ႇ: `3.14`) |
| **`String`** | တူဝ်လိၵ်ႈ | သူင်ႇလိၵ်ႈဢွၵ်ႇမႃး (တူဝ်ယၢင်ႇ: `"Hello"`) |
| **`bool`** | မႅၼ်ႈ/ၽိတ်း | သူင်ႇ `true` ဢမ်ႇၼၼ် `false` ဢွၵ်ႇမႃး |

---

### 1. The `void` Keyword

သင်ဝႃႈ Function ႁဝ်းမီးၼႃႈတီႈၵူၺ်းတႃႇ `print` သင်သေဢၼ်ဢၼ် ဢမ်ႇၼၼ် မႄးလႅၵ်ႈလၢႆႈၵႃႈၶၼ် Variable၊ ႁဝ်းတေၸႂ်ႉ `void` ယဝ်ႉ။

**Example:**

```dart
void logMessage(String msg) {
  print("Log: $msg");
  // ဢမ်ႇလူဝ်ႇမီး return statement
}

```

---

### 2. Returning Values with `return`

မိူဝ်ႈႁဝ်းမၵ်းမၼ်ႈ Return Type (မိူၼ်ၼင်ႇ `int` ဢမ်ႇၼၼ် `String`)၊ ႁဝ်းတေလႆႈၸႂ်ႉ Keyword **`return`** တႃႇသူင်ႇၵႃႈၶၼ်ၼၼ်ႉဢွၵ်ႇမႃး။

**Example: Sum Function**

```dart
int add(int a, int b) {
  return a + b; // သူင်ႇၽူၼ်လႅပ်ႈဢွၵ်ႇမႃး
}

void main() {
  int result = add(5, 10); // ၵႃႈၶၼ် 15 တေမႃးသႂ်ႇၼႂ်း result
  print(result); 
}

```

---

### 3. Why Use Return Instead of Print?

မၢင်ပွၵ်ႈ ၵူၼ်းႁဵၼ်းမႂ်ႇတေထၢမ်ဝႃႈ "ယွၼ်ႉသင်ဢမ်ႇ `print` ၼႂ်း Function ၵမ်းလဵဝ်?"

* **Flexibility**: သင်ႁဝ်း `return` မႃး၊ ႁဝ်းၸၢင်ႈဢဝ်ၵႃႈၶၼ်ၼၼ်ႉ ၵႂႃႇၵိတ်ႇၼပ်ႉတေႃႇ ဢမ်ႇၼၼ် ၵႂႃႇသိုပ်ႇၸႂ်ႉတီႈတၢင်ႇ။
* **Pure Logic**: Function ဢၼ်လီ ၼႃႈတီႈမၼ်းလူဝ်ႇတႅတ်ႈတေႃး (Calculate ၵေႃႈ Calculate၊ Print ၵေႃႈ Print)။

**Comparison:**

```dart
// ပိူင်ၼႆႉ ၸႂ်ႉလႆႈတႃႇၼႄၵူၺ်း
void printSum(int a, int b) {
  print(a + b);
}

// ပိူင်ၼႆႉ ၶႅၼ်ႇလိူဝ် ယွၼ်ႉဢဝ်ၵႃႈၶၼ်မၼ်းၵႂႃႇၸႂ်ႉတေႃႇလႆႈ
int getSum(int a, int b) {
  return a + b;
}

```

---

### 4. Logic Execution and Return

မိူဝ်ႈ Function ႁွတ်ႈတီႈထႅဝ် `return` ယဝ်ႉ၊ မၼ်းတေ **ၵိုတ်း (Stop)** ၵၢၼ်ႁဵတ်းၵူႈယၢင်ႇၼႂ်း Function ၼၼ်ႉၵမ်းလဵဝ်။ Code ဢၼ်တႅမ်ႈဝႆႉၽၢႆႇတႂ်ႈ `return` တေဢမ်ႇႁဵတ်းၵၢၼ်။

**Example:**

```dart
String checkAge(int age) {
  if (age >= 18) {
    return "Adult";
  }
  return "Minor"; // သင် age >= 18 မႅၼ်ႈ၊ ထႅဝ်ၼႆႉတေဢမ်ႇႁွတ်ႈ
}

```

---
