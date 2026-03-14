## 77) Catching Specific Exceptions with 'on'

မၢင်ပွၵ်ႈ Code ၼႂ်း `try` block ႁဝ်းၸၢင်ႈမီးပၼ်ႁႃလၢႆလၢႆပိူင်။ သင်ႁဝ်းၸႂ်ႉ `catch(e)` ယူႇတႃႇသေႇ၊ ႁဝ်းတေႁပ်ႉမိုဝ်းပၼ်ႁႃၵူႈပိူင် "မိူၼ်ၵၼ်" တင်းသဵင်ႈ။ ၵူၺ်းၵႃႈ ၼႂ်းၵၢၼ်တႅမ်ႈ App တႄႇတႄႇ၊ ႁဝ်းၶႂ်ႈၸႅၵ်ႇလၢႆးၵႄႈပၼ်ႁႃႁႂ်ႈမၼ်းမႅၼ်ႈၸွမ်းပိူင်မၼ်းယဝ်ႉ။

တွၼ်ႈတႃႇႁဵတ်းၼႆ ႁဝ်းၸႂ်ႉ Keyword **`on`** တွၼ်ႈတႃႇမၵ်းမၼ်ႈ Type ၶေႃႈ Exception ဢၼ်ႁဝ်းၶႂ်ႈႁပ်ႉမိုဝ်းၼၼ်ႉယဝ်ႉ။

---

### 1. လၢႆးၸႂ်ႉ Keyword `on`

သင်ႁဝ်းႁူႉၸိုဝ်ႈ Exception ၼၼ်ႉ (မိူၼ်ၼင်ႇ `IntegerDivisionByZeroException` ဢမ်ႇၼၼ် `FormatException`), ႁဝ်းၸၢင်ႈၸႂ်ႉ `on` သေမၵ်းမၼ်ႈလၢႆးၵႄႈပႅၵ်ႇၵၼ်လႆႈ။

**Example:**

```dart
void main() {
  try {
    // 1. ၸၢင်ႈမီး FormatException (သင်ပိၼ်ႇလိၵ်ႈပဵၼ်မၢႆၼပ်ႉၽိတ်း)
    int age = int.parse("25s"); 
    
    // 2. ၸၢင်ႈမီး IntegerDivisionByZeroException
    int result = 10 ~/ 0; 
    
    print(result);
  } on FormatException {
    // တေႁဵတ်းၵၢၼ် ၵူၺ်းမိူဝ်ႈပဵၼ် Format Error
    print("Error: Please enter a valid number!");
  } on IntegerDivisionByZeroException {
    // တေႁဵတ်းၵၢၼ် ၵူၺ်းမိူဝ်ႈၸႅၵ်ႇလူၺ်ႈသုၼ်
    print("Error: You cannot divide by zero!");
  } catch (e) {
    // သင်ပဵၼ် Exception တၢင်ႇပိူင် ဢၼ်ႁဝ်းဢမ်ႇပႆႇလႆႈမၵ်းမၼ်ႈဝႆႉ
    print("An unknown error occurred: $e");
  }
}

```

---

### 2. ပႅၵ်ႇပိူင်ႈၵၼ်ၸိူဝ်းလႂ်?

* **`on [ExceptionType]`**: ၸႂ်ႉမိူဝ်ႈႁဝ်း **ႁူႉၸိုဝ်ႈ** Type မၼ်း လႄႈ ဢမ်ႇလူဝ်ႇၸႂ်ႉ Object `e` (ၶေႃႈၵႂၢမ်း Error)။
* **`on [ExceptionType] catch (e)`**: ၸႂ်ႉမိူဝ်ႈႁဝ်း **ႁူႉၸိုဝ်ႈ** Type မၼ်း လႄႈ **ၶႂ်ႈလႆႈ** Object `e` မႃးၸႂ်ႉၸွမ်း။
* **`catch (e)`**: ၸႂ်ႉတွၼ်ႈတႃႇႁပ်ႉ "ၵူႈလွင်ႈ" (Catch-all) ဢၼ်ဢမ်ႇမႅၼ်ႈၸွမ်း `on` တၢင်းၼိူဝ်။

---

### 3. Why use 'on'?

1. **Specific Feedback**: ပၼ်ၶေႃႈမုၼ်းၸူး User ႁႂ်ႈမႅၼ်ႈၸွမ်းပၼ်ႁႃ (တူဝ်ယၢင်ႇ: "Internet ၶၢတ်ႇ" တႅၼ်းၵၢၼ်လၢတ်ႈဝႃႈ "မီးပၼ်ႁႃသေယၢင်ႇ")။
2. **Cleaner Logic**: ဢမ်ႇလူဝ်ႇၸႂ်ႉ `if (e is FormatException)` ၼႂ်းတွၼ်ႈ `catch`။
3. **Efficiency**: ၸူၺ်းႁႂ်ႈ Program ႁဝ်းႁပ်ႉမိုဝ်းပၼ်ႁႃလႆႈတႅတ်ႉတေႃလိူဝ်ၵဝ်ႇ။

---

**Summary:** ၸႂ်ႉ `on` မိူဝ်ႈၸဝ်ႈၵဝ်ႇႁူႉဝႃႈ "သင်ၽိတ်းပိူင်ၼႆႉ... ႁႂ်ႈႁဵတ်းၼႆ"။

---
