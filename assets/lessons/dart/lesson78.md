## 78) The Finally Clause

ၼႂ်းပိူင်ၵၢၼ် Error Handling, မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇလႆႈႁဵတ်းၵၢၼ်သေယၢင်ႇ ဢၼ်လမ်ႇလွင်ႈၼႃႇ၊ ဢမ်ႇဝႃႈ Code ႁဝ်းတေမီးပၼ်ႁႃ (Exception) ဢမ်ႇၼၼ် လႅၼ်ႈၵႂႃႇလႆႈလီ (Success) ၵေႃႈယဝ်ႉ။ တွၼ်ႈတႃႇႁဵတ်းၼၼ် ႁဝ်းၸႂ်ႉ Keyword **`finally`** ယဝ်ႉ။

---

### 1. လၢႆးႁဵတ်းၵၢၼ်မၼ်း

`finally` ပဵၼ် Block ဢၼ်တေ **လႅၼ်ႈတႃႇသေႇ (Always Executes)** ဝၢႆးလင်ဢၼ် `try` လႄႈ `catch` ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ။

**Example:**

```dart
void main() {
  try {
    print("Opening a file...");
    // ၸၢင်ႈမီးပၼ်ႁႃ တီႈၼႆႉ
    int result = 10 ~/ 0; 
    print("Result is $result");
  } catch (e) {
    print("Error: $e");
  } finally {
    // ဢမ်ႇဝႃႈတေ Error ဢမ်ႇၼၼ် Success, တွၼ်ႈၼႆႉတေလႅၼ်ႈတႃႇသေႇ
    print("Closing the file and cleaning up memory...");
  }
}

```

---

### 2. Why use 'finally'?

မၼ်းၸႂ်ႉတႃႇ **"ၵဵပ်းၵွင်" (Cleanup)** ၶေႃႈမုၼ်း ဢမ်ႇၼၼ် ၶိူင်ႈမိုဝ်းဢၼ်ႁဝ်းပိုတ်ႇဝႆႉ:

1. **Closing Connections**: ပိၵ်ႉၵၢၼ်ၵပ်းသိုပ်ႇ Database ဢမ်ႇၼၼ် Network။
2. **Closing Files**: ပိၵ်ႉ File ဢၼ်ႁဝ်းလူဝႆႉ တွၼ်ႈတႃႇဢမ်ႇႁႂ်ႈမၼ်းၵိၼ် RAM။
3. **Hiding Loading Spinners**: ၼႂ်း Flutter, မိူဝ်ႈလူတ်ႇ Data ယဝ်ႉ (ဢမ်ႇဝႃႈတေလႆႈ Data ဢမ်ႇၼၼ် Error), ႁဝ်းလူဝ်ႇ "ဢဝ်တူဝ်မူၼ်းလူတ်ႇ Data ၼၼ်ႉဢွၵ်ႇပႅတ်ႈ" တႃႇသေႇ။

---

### 3. Syntax Comparison

| Block | Purpose | When does it run? |
| --- | --- | --- |
| **`try`** | Risky code | Runs first. |
| **`catch`** | Handle error | Runs **only** if an exception occurs. |
| **`finally`** | Cleanup | Runs **always**, no matter what. |

---

### 4. Special Case: The 'Return' Statement

သင်ၼႂ်း `try` ဢမ်ႇၼၼ် `catch` မီး Keyword `return`, Dart တေႁဵတ်းၵၢၼ်ၼႂ်း `finally` ႁႂ်ႈယဝ်ႉတူဝ်ႈဢွၼ်တၢင်း ၸင်ႇတေ Return ၵႃႈၶၼ်ဢွၵ်ႇၵႂႃႇ။ ၼႆႉၼႄဝႃႈ `finally` မီးလွင်ႈမၼ်ႈၵိုမ်းသုင်လိူဝ်ပိူၼ်ႈယဝ်ႉ။

```dart
String checkStatus() {
  try {
    return "Success";
  } finally {
    print("Cleanup before returning!");
  }
}
// Output: 
// Cleanup before returning!
// Success

```

---