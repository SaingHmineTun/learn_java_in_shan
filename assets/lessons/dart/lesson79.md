## 79) Throwing Exceptions Manually

မၢင်ပွၵ်ႈ ပၼ်ႁႃဢမ်ႇလႆႈပဵၼ်ယွၼ်ႉ System (မိူၼ်ၼင်ႇ ၸႅၵ်ႇလူၺ်ႈသုၼ်)၊ ၵူၺ်းၵႃႈ မၼ်းပဵၼ်ယွၼ်ႉၶေႃႈမုၼ်းဢၼ် User သႂ်ႇမႃးၼၼ်ႉ **ဢမ်ႇပဵၼ်ၵၢၼ်** ၸွမ်းၼင်ႇပိူင် (Rules) ႁဝ်းမၵ်းမၼ်ႈဝႆႉ။ တွၼ်ႈတႃႇလၢတ်ႈၼႄ Program ဝႃႈ "တီႈၼႆႉမီးပၼ်ႁႃယဝ်ႉၼႃ" ႁဝ်းၸႂ်ႉ Keyword **`throw`** ယဝ်ႉ။

---

### 1. လၢႆးၸႂ်ႉ Keyword `throw`

ႁဝ်းၸၢင်ႈ `throw` (ထိုၼ်ႇဢွၵ်ႇ) Object ၵူႈပိူင်၊ ၵူၺ်းၵႃႈ လၢႆးဢၼ်လီသုတ်းပဵၼ် ၵၢၼ်သူင်ႇ Exception ဢၼ်မီးဝႆႉယူႇယဝ်ႉ ဢမ်ႇၼၼ် Exception ဢၼ်ႁဝ်းသၢင်ႈမႂ်ႇ။

**Example:**

```dart
void checkAge(int age) {
  if (age < 18) {
    // သၢင်ႈပၼ်ႁႃ (Exception) ႁင်းႁဝ်းၵမ်းလဵဝ်
    throw Exception("ၸဝ်ႈၵဝ်ႇတိုၵ်ႉလဵၵ်ႉၼႃႇ၊ ၶဝ်ႈတူၺ်းဢမ်ႇလႆႈၶႃႈ!");
  } else {
    print("Welcome!");
  }
}

void main() {
  try {
    checkAge(15);
  } catch (e) {
    print(e); // Output: Exception: ၸဝ်ႈၵဝ်ႇတိုၵ်ႉလဵၵ်ႉၼႃႇ...
  }
}

```

---

### 2. Rethrowing an Exception

မၢင်ပွၵ်ႈ ႁဝ်း `catch` ပၼ်ႁႃဝႆႉယူႇ၊ ၵူၺ်းၵႃႈ ဝၢႆးလင်ႁဝ်း Print Error ယဝ်ႉ ႁဝ်းၶႂ်ႈသူင်ႇပၼ်ႁႃၼၼ်ႉ "သိုပ်ႇၵႂႃႇ" ၸူး Function ဢၼ်ႁွင်ႉၸႂ်ႉမၼ်း (Parent function) ထႅင်ႈ။ ႁဝ်းၸႂ်ႉ Keyword **`rethrow`**။

```dart
void processOrder() {
  try {
    // code...
    throw Exception("Network Down");
  } catch (e) {
    print("Logged locally: $e");
    rethrow; // သူင်ႇပၼ်ႁႃၼႆႉၵႂႃႇၸူး main() ထႅင်ႈ
  }
}

void main() {
  try {
    processOrder();
  } catch (e) {
    print("Caught in main: $e");
  }
}

```

---

### 3. Why use 'throw'?

1. **Validation**: တႃႇၵူတ်ႇထတ်းၶေႃႈမုၼ်း (တူဝ်ယၢင်ႇ: Password ပွတ်းၼႃႇ၊ Email ၽိတ်းပိူင်)။
2. **Logic Control**: တႃႇၵၢတ်ႇ (Stop) ၵၢၼ်ႁဵတ်းသေယၢင်ႇ မိူဝ်ႈသၢႆငၢႆမၼ်းဢမ်ႇထုၵ်ႇတႅတ်ႉ။
3. **Communication**: တႃႇလၢတ်ႈၼႄ Programmer ၵူၼ်းတၢင်ႇၵူၼ်း (ဢမ်ႇၼၼ် တူဝ်ႁဝ်းၶိုၼ်း) ဝႃႈ Function ၼႆႉ ထုၵ်ႇၸႂ်ႉတိုဝ်းၽိတ်းလၢႆးယဝ်ႉ။

---

### 4. Throw vs. Return

* **`return`**: ၸႂ်ႉမိူဝ်ႈၵၢၼ်ႁဵတ်းယဝ်ႉတူဝ်ႈလီ လႄႈ သူင်ႇၵႃႈၶၼ်ဢၼ်မႅၼ်ႈၸွမ်းပိူင်။
* **`throw`**: ၸႂ်ႉမိူဝ်ႈၵၢၼ်ႁဵတ်း "လူႉ" (Fail) လႄႈ လူဝ်ႇၵိုတ်းၵၢၼ်လႅၼ်ႈ Code ၼၼ်ႉၵမ်းလဵဝ်။

---
