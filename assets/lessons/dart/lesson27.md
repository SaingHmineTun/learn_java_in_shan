## 27) Defining and Calling Functions

**Function** ၼႆႉပဵၼ် "ၸုမ်း Code" ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ တႃႇႁဵတ်းၵၢၼ်သင်သေဢၼ်ဢၼ် (Specific task)။ တႅမ်ႈဝႆႉပွၵ်ႈလဵဝ်သေ ႁွင်ႉၸႂ်ႉလႆႈလၢႆလၢႆပွၵ်ႈ ၸွမ်းၼင်ႇႁဝ်းလူဝ်ႇယဝ်ႉ။

---

### Function Syntax Table

ပိူင်တႅမ်ႈ (Syntax) ၶေႃႈ Function ၼိုင်ႈဢၼ် မီး 4 တွၼ်ႈလူင်:

| Part | Description | Example |
| --- | --- | --- |
| **`Return Type`** | ၵႃႈၶၼ်ဢၼ်မၼ်းတေသူင်ႇဢွၵ်ႇ | `void`, `int`, `String` |
| **`Function Name`** | ၸိုဝ်ႈ Function (ၸႂ်ႉ camelCase) | `sayHello`, `calculateTotal` |
| **`Parameters`** | ၶေႃႈမုၼ်းဢၼ်လူဝ်ႇဢဝ်သႂ်ႇ (Input) | `(String name)` |
| **`Function Body`** | Code ဢၼ်မၼ်းတေႁဵတ်းၵၢၼ် | `{ ... }` |

---

### 1. Defining a Function (ၵၢၼ်တႅမ်ႈ Function)

မိူဝ်ႈႁဝ်းတႅမ်ႈ Function ၼၼ်ႉ ႁဝ်းတေလႆႈတႅမ်ႈဝႆႉ "ၽၢႆႇၼွၵ်ႈ" `main()` function ဢမ်ႇၼၼ် ဝႆႉၼႂ်း Class (ႁွင်ႉဝႃႈ Method)။

**Example: Simple Greeting**

```dart
// 1. တႅမ်ႈ Function ဝႆႉ
void sayHello() {
  print("Hello! Welcome to Dart.");
}

```

---

### 2. Calling a Function (ၵၢၼ်ႁွင်ႉၸႂ်ႉ)

Function တေဢမ်ႇႁဵတ်းၵၢၼ် သင်ႁဝ်းဢမ်ႇ "ႁွင်ႉ" (Call) မၼ်း။ ႁဝ်းႁွင်ႉမၼ်းလႆႈ ၼႂ်း `main()` ဢမ်ႇၼၼ် ၼႂ်း Function တၢင်ႇဢၼ် လူၺ်ႈၵၢၼ်ၸႂ်ႉ **"ၸိုဝ်ႈ + ()"**။

**Example: Calling the function**

```dart
void main() {
  print("App started.");
  
  sayHello(); // ႁွင်ႉၸႂ်ႉပွၵ်ႈၵမ်း 1
  sayHello(); // ႁွင်ႉၸႂ်ႉပွၵ်ႈၵမ်း 2
  
  print("App finished.");
}

void sayHello() {
  print("Hello! Welcome to Dart.");
}

```

---

### 3. Function with Parameters (လွင်ႈသူင်ႇၶေႃႈမုၼ်းသႂ်ႇ)

ႁဝ်းၸၢင်ႈသူင်ႇၶေႃႈမုၼ်း (Input) သႂ်ႇၼႂ်း Function တႃႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်လႅၵ်ႈလၢႆႈၸွမ်း ၶေႃႈမုၼ်းၼၼ်ႉ။

**Example: Personalized Greeting**

```dart
void greetUser(String name, int age) {
  print("Hello $name, you are $age years old.");
}

void main() {
  greetUser("Sai Sai", 20); // "Sai Sai" လႄႈ 20 ႁွင်ႉဝႃႈ Arguments
  greetUser("Su Su", 22);
}

```

---

### 4. Key Benefits of Functions (ၽွၼ်းလီ)

* **Reusability**: တႅမ်ႈဝႆႉပွၵ်ႈလဵဝ် ၸႂ်ႉလႆႈၵူႈတီႈ။
* **Maintainability**: သင်လူဝ်ႇမႄး Code တွၼ်ႈၼၼ်ႉ၊ မႄးတီႈ Function တီႈလဵဝ်ၵူၺ်း ယဝ်ႉတင်း App။
* **Abstraction**: ႁဝ်းဢမ်ႇလူဝ်ႇႁူႉဝႃႈ ၼႂ်းမၼ်းႁဵတ်းၵၢၼ်ယၢပ်ႇၵေႃႈႁိုဝ်၊ ႁဝ်းႁူႉၵူၺ်းဝႃႈ သူင်ႇသင်သႂ်ႇသေ မၼ်းတေဢွၵ်ႇသင်မႃး။

---