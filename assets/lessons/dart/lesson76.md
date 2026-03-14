## 76) Try-Catch Blocks

မိူဝ်ႈႁဝ်းႁူႉယဝ်ႉဝႃႈ **Exception** ပဵၼ်လွင်ႈဢၼ်ႁဝ်း "ႁၢမ်" လႆႈ၊ ၵမ်းၼႆႉႁဝ်းတေမႃးတူၺ်းၶိူင်ႈမိုဝ်းဢၼ်ၸႂ်ႉတႃႇႁပ်ႉမိုဝ်းမၼ်း၊ ၼၼ်ႉၵေႃႈပဵၼ် **`try-catch`** block ယဝ်ႉ။ မၼ်းမိူၼ်ၼင်ႇ "ၶွႆႇဢၼ်ႁွင်ႉဝႆႉ" (Safety Net) တႃႇႁပ်ႉ Object မိူဝ်ႈမၼ်းတူၵ်းလူင်းမႃးယဝ်ႉ။

---

### 1. ပိူင်ၵၢၼ် (Syntax)

လၢႆးတႅမ်ႈမၼ်းၸႅၵ်ႇပဵၼ်သွင်တွၼ်ႈ:

* **`try`**: သႂ်ႇ Code ဢၼ်ႁဝ်းထၢင်ႇဝႃႈ "ၸၢင်ႈမီးပၼ်ႁႃ" (Risky code) သႂ်ႇၼႂ်းၼႆႉ။
* **`catch`**: သင်မီး Exception ပဵၼ်မႃးတႄႇတႄႇ၊ Code ၼႂ်းတွၼ်ႈၼႆႉတေႁဵတ်းၵၢၼ် (Backup plan)။

**Example:**

```dart
void main() {
  print("Start Program");

  try {
    // ၵၢၼ်ႁဵတ်းဢၼ်ၸၢင်ႈၽိတ်း (ၸႅၵ်ႇလူၺ်ႈသုၼ်)
    int result = 10 ~/ 0; 
    print(result);
  } catch (e) {
    // 'e' ပဵၼ် Object ဢၼ်သိမ်းၶေႃႈမုၼ်းလွင်ႈၽိတ်းပိူင်ဝႆႉ
    print("Oops! Something went wrong: $e");
  }

  print("End Program"); // App တေဢမ်ႇ Crash သေ သိုပ်ႇလႅၼ်ႈမႃးထိုင်ၼႆႉလႆႈ
}

```

---

### 2. Catch Object လႄႈ StackTrace

မိူဝ်ႈႁဝ်း `catch` ပၼ်ႁႃ၊ Dart သူင်ႇၶေႃႈမုၼ်းမႃးပၼ်ႁဝ်း 2 ယၢင်ႇ:

1. **`e` (Exception)**: ပဵၼ်ၶေႃႈၵႂၢမ်းလၢတ်ႈၼႄဝႃႈ "မၼ်းၽိတ်းသင်"။
2. **`s` (StackTrace)**: ပဵၼ် "ႅၼ်ၽႅၼ်ႇတီႈ" ဢၼ်ၼႄဝႃႈ မၼ်းၽိတ်းတီႈ File လႂ်၊ ထႅဝ် (Line) ဢၼ်လႂ်။

```dart
try {
  // code...
} catch (e, s) {
  print("Error: $e");
  print("Stack Trace: $s"); // တူၺ်းတႃႇ Debug ႁႃတီႈၽိတ်း
}

```

---

### 3. Why use Try-Catch?

* **Prevent Crashing**: ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈ App ပိၵ်ႉၵႂႃႇၵမ်းလဵဝ် (Force Close)။
* **Graceful Recovery**: ႁဵတ်းႁႂ်ႈ App သိုပ်ႇလႅၼ်ႈၵႂႃႇလႆႈ လူၺ်ႈၵၢၼ်ၼႄ Message "ၵႃႈၶၼ်ၽိတ်းယဝ်ႉ၊ ၶတ်းၸႂ်ထႅင်ႈပွၵ်ႈ" တႅၼ်းၵၢၼ် Crash။
* **Logging**: ၸၢင်ႈၵဵပ်းၶေႃႈမုၼ်းလွင်ႈၽိတ်းပိူင် သူင်ႇၵႂႃႇၸူး Server တႃႇမႄး Bug ၼႂ်းဝၼ်းၼႃႈ။

---

### Summary Table

| Block | Purpose | When does it run? |
| --- | --- | --- |
| **`try`** | တွၼ်ႈတႅမ်ႈ Code ဢၼ်ၸၢင်ႈမီးပၼ်ႁႃ | လႅၼ်ႈတႃႇသေႇ (Every time) |
| **`catch`** | တွၼ်ႈႁပ်ႉမိုဝ်းမိူဝ်ႈမီးပၼ်ႁႃ | လႅၼ်ႈၵူၺ်းမိူဝ်ႈမီး Exception |

---

