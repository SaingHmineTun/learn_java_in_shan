## 61) Abstract Methods

**Abstract Methods** ပဵၼ် Method ဢၼ်မီးၵူၺ်း "ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ" (Declaration) သေ ဢမ်ႇမီး "ၵၢၼ်ႁဵတ်း" (Implementation/Body)။ မၼ်းပဵၼ်ၵၢၼ်ဝၢင်းပိူင်ဝႆႉဝႃႈ "Subclass တေလႆႈမီး Method ၼႆႉဝႆႉဢွၼ်တၢင်း" ၵူၺ်းၵႃႈ လၢႆးႁဵတ်းမၼ်းတႄႉ ႁႂ်ႈ Subclass ၼၼ်ႉ တႅမ်ႈဢဝ်ႁင်းၵူၺ်းယဝ်ႉ။

---

### 1. Abstract Method မီးၼႃႈတႃၸိူင်ႉႁိုဝ်?

မၼ်းတေဢမ်ႇမီးပိၵ်ႉၶႅတ်း `{ }`။ မၼ်းတေယဝ်ႉတူဝ်ႈလူၺ်ႈမၢႆ **Semicolon (`;`)** ၵမ်းလဵဝ်။

**Example:**

```dart
abstract class Appliance {
  // Abstract Method (မီးၵူၺ်းၸိုဝ်ႈ လႄႈ Return type)
  void turnOn(); 

  // Regular Method (မီး body)
  void plugIn() {
    print("Appliance is plugged in.");
  }
}

```

---

### 2. ပိုင်ၵၢၼ်ဢၼ်တေလႆႈတွၼ်း

1. **Must be in Abstract Class**: ၸဝ်ႈၵဝ်ႇတေၸၢင်ႈတႅမ်ႈ Abstract Method လႆႈၼႂ်း **Abstract Class** ၵူၺ်း။
2. **No Body**: မၼ်းဢမ်ႇၸၢင်ႈမီး Code ၼႂ်း `{ }`။
3. **Mandatory Override**: Subclass ဢၼ်ဢမ်ႇၸႂ်ႈ abstract တေလႆႈ **Override** ပၼ် Abstract Methods တင်းသဵင်ႈ ဢၼ်သိုပ်ႇမႃးတီႈ Parent။ သင်ဢမ်ႇတႅမ်ႈပၼ်၊ Dart တေပၼ် Error ၵမ်းလဵဝ်။

---

### 3. Why Use Abstract Methods? (ႁဵတ်းသင်လႄႈၸႂ်ႉ?)

* **Defining a Contract**: မၼ်းပဵၼ်ၵၢၼ်ႁဵတ်း "လိၵ်ႈၵိၼ်ၵႅၼ်ႇ" ဝႆႉဝႃႈ Subclass ၵူႈဢၼ် တေလႆႈမီး Function ၼႆႉ။
* *တူဝ်ယၢင်ႇ:* သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Game၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈမၵ်းမၼ်ႈဝႃႈ Enemy ၵူႈတူဝ် တေလႆႈမီး `attack()`။ ၵူၺ်းၵႃႈ လၢႆး attack မၼ်းတႄႉ တေပႅၵ်ႇၵၼ် (မၢင်တူဝ်ယိုဝ်းၵွင်ႈ၊ မၢင်တူဝ်ၸႂ်ႉလႅဝ်း)။


* **Polymorphism**: မၼ်းႁဵတ်းႁႂ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Method ၼၼ်ႉလႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇႁူႉဝႃႈ မၼ်းပဵၼ် Object တူဝ်လႂ်တႄႉတႄႇ (တေလဵပ်ႈႁဵၼ်းလိုၵ်ႉၼႂ်းတွၼ်ႈ 63)။

---

### 4. တူဝ်ယၢင်ႇ (Practical Code)

```dart
abstract class RemoteControl {
  void changeChannel(int channel); // Abstract method
}

class TVRemote extends RemoteControl {
  @override
  void changeChannel(int channel) {
    print("TV changing to channel $channel");
  }
}

class RadioRemote extends RemoteControl {
  @override
  void changeChannel(int channel) {
    print("Radio frequency tuning to $channel MHz");
  }
}

```

---

### Summary Table

| Feature | Abstract Method | Regular Method |
| --- | --- | --- |
| **Body `{ }**` | ❌ (မီးၵူၺ်း `;`) | ✅ |
| **Override** | Required (တေလႆႈႁဵတ်း) | Optional (လိူၵ်ႈႁဵတ်းလႆႈ) |
| **Location** | Abstract Class ၵူၺ်း | Class လႂ်ၵေႃႈလႆႈ |

---
