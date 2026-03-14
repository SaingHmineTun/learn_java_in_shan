## 33) Lexical Scope and Variable Lifetime

မိူဝ်ႈႁဝ်းပိုၼ်ၽၢဝ်ႇ Variable ၼိုင်ႈဢၼ်၊ မၼ်းဢမ်ႇၸႂ်ႈဝႃႈ တေၸႂ်ႉလႆႈၵူႈတီႈၼႂ်း Code ႁဝ်း။ ၵႃႈၶၼ်မၼ်းတေမီး "ၶွပ်ႇပိူင်" (Scope) လႄႈ "ဢႃႇယု" (Lifetime) တႅတ်ႈတေႃး။ ၼႂ်း Dart၊ ႁဝ်းၸႂ်ႉပိူင် **Lexical Scope** ယဝ်ႉ။

---

### 1. Lexical Scope (ၶွပ်ႇပိူင်ၸွမ်းၼင်ႇဢွင်ႈတီႈ)

**Lexical Scope** မၢႆထိုင်ဝႃႈ "Variable ၼၼ်ႉ တေၸႂ်ႉလႆႈၼႂ်း Block `{ }` ဢၼ်မၼ်းယူႇဝႆႉ လႄႈ Block ဢၼ်ယူႇၽၢႆႇၼႂ်းမၼ်းၵူၺ်း"။

**Example: Global vs Local**

```dart
String globalVar = "I am Global"; // ၸႂ်ႉလႆႈၵူႈတီႈ

void main() {
  String localVar = "I am Local"; // ၸႂ်ႉလႆႈၼႂ်း main() ၵူၺ်း
  
  print(globalVar); // မႅၼ်ႈ
  print(localVar);  // မႅၼ်ႈ
  
  if (true) {
    String insideIf = "I am hidden";
    print(localVar); // မႅၼ်ႈ (ယွၼ်ႉ if ယူႇၼႂ်း main)
  }
  
  // print(insideIf); // ၽိတ်း! (ယွၼ်ႉမၼ်းယူႇၼႂ်း Block {if})
}

```

---

### 2. Variable Lifetime (ဢႃႇယု Variable)

ဢႃႇယုမၼ်း မၢႆထိုင် ဝၼ်းလႂ်မၼ်းတေထုၵ်ႇယႃႉပႅတ်ႈ (Destroy) တီႈၼႂ်း Memory။

* **Global Variables**: မီးၸႂ်ယူႇတေႃႇ App တေပိၵ်ႉ။
* **Local Variables**: မီးၸႂ်ယူႇမိူဝ်ႈ Function ၼၼ်ႉလႅၼ်ႈၵၢၼ် (Execution)။ မိူဝ်ႈ Function ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ၊ Variable ၸိူဝ်းၼၼ်ႉတေထုၵ်ႇယႃႉပႅတ်ႈၵမ်းလဵဝ်။

---

### 3. Scope Visualization Table

| Level | Where it is defined | Visibility (တီႈဢၼ်ႁၼ်လႆႈ) |
| --- | --- | --- |
| **Top-level** | ၽၢႆႇၼွၵ်ႈ Function | ၵူႈတီႈၼႂ်း File ၼၼ်ႉ |
| **Function Level** | ၼႂ်း Function | ၼႂ်း Function ၼၼ်ႉၵူၺ်း |
| **Block Level** | ၼႂ်း `if`, `for`, `while` | ၼႂ်း `{ }` ၼၼ်ႉၵူၺ်း |

---

### 4. Shadowing (ၵၢၼ်ယမ်ႉၸိုဝ်ႈ)

သင်ႁဝ်းပိုၼ်ၽၢဝ်ႇ Variable ၸိုဝ်ႈမိူၼ်ၵၼ် ဝႆႉၼႂ်း Scope ဢၼ်ပႅၵ်ႇၵၼ်၊ Variable တူဝ်ၼႂ်း (Local) တေ "တူမ်း" (Shadow) တူဝ်ၼွၵ်ႈ (Global) ဝႆႉယဝ်ႉ။

**Example:**

```dart
int count = 10; // Global

void main() {
  int count = 5; // Local (Shadows Global count)
  print(count);  // Output: 5
}

```

* **Best Practice**: ယႃႇၸႂ်ႉၸိုဝ်ႈမိူၼ်ၵၼ် တႃႇတူဝ် Global လႄႈ Local ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈႁဝ်းငိူဝ်ႉငႅၼ်း (Confused) လႆႈငၢႆႈ။

---