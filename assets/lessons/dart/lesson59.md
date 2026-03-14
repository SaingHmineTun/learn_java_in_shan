## 59) Method Overriding and @override

မိူဝ်ႈႁဝ်းသိုပ်ႇၶေႃ (Inheritance) မႃးယဝ်ႉ၊ မၢင်ပွၵ်ႈ Method ဢၼ်ပႃးမႃးတီႈ Parent Class ၼၼ်ႉ မၼ်းဢမ်ႇသၢင်ႇထုၵ်ႇ ဢမ်ႇၼၼ် မၼ်းဢမ်ႇ "ၵႅၼ်ႇ" တႃႇ Subclass ႁဝ်း။ ၼႆႉပဵၼ်တီႈဢၼ် **Method Overriding** ၶဝ်ႈမႃးၸူၺ်း တွၼ်ႈတႃႇႁဝ်းတေ "တႅမ်ႈတူပ်ႉ" (Redefine) Logic မႂ်ႇၼၼ်ႉယဝ်ႉ။

---

### 1. What is Method Overriding?

**Method Overriding** ပဵၼ်ၵၢၼ်ဢၼ် Subclass တႅမ်ႈ Method ဢၼ်မီး **ၸိုဝ်ႈမိူၼ်ၵၼ်** လႄႈ **Parameter မိူၼ်ၵၼ်** တင်း Method ၼႂ်း Parent Class၊ တႃႇႁဵတ်းႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ပႅၵ်ႇပိူင်ႈၵႂႃႇ။

---

### 2. The `@override` Annotation

ၼႂ်း Dart, ႁဝ်းၸႂ်ႉ Keyword **`@override`** ဝႆႉၽၢႆႇၼႃႈ Method ဢၼ်ႁဝ်းတေမႄးၼၼ်ႉ။

* မၼ်းဢမ်ႇၸႂ်ႈဝႃႈ သင်ဢမ်ႇသႂ်ႇမၼ်းတေဢမ်ႇႁဵတ်းၵၢၼ် (မၼ်းတိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ)။
* ၵူၺ်းၵႃႈ မၼ်းၸူၺ်းပၼ်သတိ (Warning) မိူဝ်ႈႁဝ်းတႅမ်ႈၸိုဝ်ႈ Method ၽိတ်း ဢမ်ႇၼၼ် မိူဝ်ႈ Method ၼႂ်း Parent Class ထုၵ်ႇမႄးလႅၵ်ႈလၢႆႈၵႂႃႇ။

**Example:**

```dart
class Animal {
  void makeNoise() {
    print("Some generic animal noise");
  }
}

class Cat extends Animal {
  @override
  void makeNoise() {
    print("Meow! Meow!"); // မႄး Logic ႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင်သိူဝ်/မႅဝ်း
  }
}

class SilentFish extends Animal {
  @override
  void makeNoise() {
    // ႁဝ်းၸၢင်ႈ "တူပ်ႉ" မၼ်းဝႆႉ ဢမ်ႇႁႂ်ႈမၼ်းႁဵတ်းသင်ၵေႃႈလႆႈ
    print("..."); 
  }
}

```

---

### 3. Rules for Overriding (ပိုင်ၵၢၼ်)

တႃႇတေ Override လႆႈၼၼ်ႉ:

1. **Arguments**: Parameter တေလႆႈမိူၼ်ၵၼ် (ဢမ်ႇၼၼ် ပဵၼ် Subtype ၵၼ်)။
2. **Return Type**: တေလႆႈမိူၼ်ၵၼ် ဢမ်ႇၼၼ် ပဵၼ် Subtype ၵၼ်။
3. **Cannot override `static` methods**: Method ဢၼ်ပဵၼ် static တေ Override ဢမ်ႇလႆႈ။

---

### 4. Overriding vs. `super`

မၢင်ပွၵ်ႈႁဝ်းဢမ်ႇၶႂ်ႈ "တႅမ်ႈတူပ်ႉ" ပႅတ်ႈတင်းသဵင်ႈ၊ ႁဝ်းၶႂ်ႈ "ထႅမ်" (Extend) Logic ၵူၺ်း။ ႁဝ်းၸၢင်ႈၸႂ်ႉ `super` ၸူၺ်းၼႂ်း Method ဢၼ်ႁဝ်း Override ၼၼ်ႉလႆႈ။

```dart
class Coffee {
  void make() {
    print("Heating water...");
    print("Adding coffee beans...");
  }
}

class Latte extends Coffee {
  @override
  void make() {
    super.make(); // ႁဵတ်းၸွမ်းပိုင်ၵၢၼ် Coffee ယူဝ်းယူဝ်းဢွၼ်တၢင်း
    print("Adding steamed milk..."); // ၸင်ႇထႅမ်ၼပ်ႉသႂ်ႇ
  }
}

```

---

### Summary Table

| Feature | Description |
| --- | --- |
| **Purpose** | တႃႇမႄး Logic ဢၼ်သိုပ်ႇမႃး ႁႂ်ႈမႅၼ်ႈၸွမ်း Subclass |
| **`@override`** | Annotation တႃႇမၵ်းမၼ်ႈဝႃႈ ၼႆႉပဵၼ်ၵၢၼ်တႅမ်ႈတူပ်ႉ |
| **`super`** | ၸႂ်ႉတႃႇႁွင်ႉ Logic တီႈ Parent Class မႃးၸႂ်ႉၶိုၼ်း |

---
