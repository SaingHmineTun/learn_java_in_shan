## 75) Exceptions vs. Errors

ၼႂ်း Dart, မိူဝ်ႈ Program ႁဝ်းထူပ်းပၼ်ႁႃ၊ မၼ်းတေသူင်ႇ Object "လွင်ႈၽိတ်းပိူင်" ဢွၵ်ႇမႃး။ ၵူၺ်းၵႃႈ ႁဝ်းတေလႆႈၸႅၵ်ႇႁူႉဝႃႈ ပၼ်ႁႃၼၼ်ႉ ပဵၼ် **Exception** ဢမ်ႇၼၼ် **Error** ယွၼ်ႉလၢႆးၵႄႈမၼ်းပႅၵ်ႇၵၼ်ၶႃႈ။

---

### 1. Exceptions (လွင်ႈဢၼ်ႁဝ်း "ႁၢမ်ႈ" လႆႈ)

**Exception** ပဵၼ်ပၼ်ႁႃဢၼ်ၵမ်ႉၼမ်ပဵၼ်ယွၼ်ႉ "ပၢႆးဝူၼ်ႉ" (Logic) ဢမ်ႇၼၼ် "ပတ်ႉၸႆႇၼွၵ်ႈ"။ မၼ်းပဵၼ်လွင်ႈဢၼ်ႁဝ်း **ထၢင်ႇဝႆႉဝႃႈမၼ်းၸၢင်ႈပဵၼ်လႆႈ** လႄႈ ႁဝ်းၸၢင်ႈ "ႁပ်ႉမိုဝ်း" (Handle) မၼ်း တွၼ်ႈတႃႇဢမ်ႇႁႂ်ႈ App ႁဝ်း Crash ယဝ်ႉ။

* **တူဝ်ယၢင်ႇ:**
* `FormatException`: မိူဝ်ႈႁဝ်းၶတ်းၸႂ်ပိၼ်ႇတူဝ်လိၵ်ႈ "ABC" ႁႂ်ႈပဵၼ် မၢႆၼပ်ႉ (Integer)။
* `PathNotFoundException`: မိူဝ်ႈႁဝ်းႁႃ File ၼိုင်ႈဢၼ်သေ မၼ်းဢမ်ႇမီး။
* `NetworkException`: မိူဝ်ႈ Internet ၶขาด။



> **Philosophy:** "လွင်ႈၼႆႉမၼ်းၽိတ်းၵႂႃႇ၊ ၵူၺ်းၵႃႈ ႁဝ်းၸၢင်ႈလၢတ်ႈၼႄ User သေ သိုပ်ႇလႅၼ်ႈ App ၵႂႃႇလႆႈယူႇ။"

---

### 2. Errors (လွင်ႈဢၼ် "Broken" တႄႇတႄႇ)

**Error** ပဵၼ်လွင်ႈၽိတ်းပိူင်ဢၼ် "ႁၢႆႉႁႅင်း"။ မၼ်းၵႆႉပဵၼ်ယွၼ်ႉ Code ႁဝ်းတႅမ်ႈဝႆႉၽိတ်းပိူင် (Bug) ဢမ်ႇၼၼ် ပဵၼ်ယွၼ်ႉ System (Hardware) မီးပၼ်ႁႃ။ ႁဝ်း **ဢမ်ႇထုၵ်ႇလီ** ၶတ်းၸႂ်ၵႄႈမၼ်း (Catch) ၼႂ်း Code၊ ၵူၺ်းၵႃႈ လူဝ်ႇလႆႈမႄးတႅမ်ႈ Code မႂ်ႇယဝ်ႉ။

* **တူဝ်ယၢင်ႇ:**
* `OutOfMemoryError`: မိူဝ်ႈ RAM တီႈၾူၼ်းသဵင်ႈ။
* `StackOverflowError`: မိူဝ်ႈ Function ႁွင်ႉၸႂ်ႉတူဝ်မၼ်းၶိုၼ်း ဢမ်ႇသိူဝ်း (Infinite Loop)။
* `TypeError`: မိူဝ်ႈႁဝ်းၸႂ်ႉ Type ၽိတ်း (တူဝ်ယၢင်ႇ: ဢဝ် String သႂ်ႇၼႂ်း Int)။



> **Philosophy:** "Code မီး Bug ယဝ်ႉ! Programmer လူဝ်ႇလႆႈမႃးမႄး၊ ဢမ်ႇၸႂ်ႈဝႃႈ ႁပ်ႉမိုဝ်းမၼ်းမိူဝ်ႈ App လႅၼ်ႈယူႇ။"

---

### 3. Summary Table

| Feature | Exception | Error |
| --- | --- | --- |
| **Reason** | Logical or External issues | Programming bugs or System failure |
| **Expectation** | Anticipated (ႁူႉဝႃႈၸၢင်ႈပဵၼ်) | Unanticipated (ဢမ်ႇထၢင်ႇဝႃႈတေပဵၼ်) |
| **Handling** | Should be caught (`try-catch`) | Should not be caught (Fix code) |
| **Example** | `IntegerDivisionByZeroException` | `OutOfMemoryError` |

---

### 4. Why distinguish?

သင်ႁဝ်းၵႂႃႇ `catch` (ႁပ်ႉ) ၵူႈလွင်ႈ ႁူမ်ႈတင်း `Error` ၸိုင်၊ ႁဝ်းတေဢမ်ႇႁူႉဝႃႈ Code ႁဝ်းမီး Bug ယူႇတီႈလႂ်။ ၵူၺ်းၵႃႈ သင်ႁဝ်းႁပ်ႉ `Exception`၊ ႁဝ်းၸၢင်ႈသူင်ႇ Message "Something went wrong" ၼႄ User သေ ပၼ်ၶဝ်လႅၼ်ႈ App သိုပ်ႇၵႂႃႇလႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇပိၵ်ႉ App ယဝ်ႉ။

---
