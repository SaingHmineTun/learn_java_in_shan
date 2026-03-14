## 54) Computed Properties

**Computed Properties** မၢႆထိုင် Property ဢၼ်ဢမ်ႇလႆႈသိမ်းဝႆႉ (Store) ၼႂ်း Memory တႄႇတႄႇ၊ ၵူၺ်းၵႃႈ မၼ်းပဵၼ်ၵႃႈၶၼ်ဢၼ်ထုၵ်ႇ **"ၵိတ်ႇၼပ်ႉဢွၵ်ႇမႃး" (Calculated)** ၵူႈပွၵ်ႈ မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉမၼ်းယဝ်ႉ။

ၼႂ်း Dart, ႁဝ်းၸႂ်ႉ **Getter** တႃႇသၢင်ႈ Computed Properties ၼႆႉယဝ်ႉ။

---

### 1. Computed Property ႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇမီး Class `Rectangle` (သီႇၸဵင်ႇယၢဝ်း)။ ၸဝ်ႈၵဝ်ႇမီး `width` လႄႈ `height` သိမ်းဝႆႉယူႇယဝ်ႉ။ သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈလႆႈ "ၼႃႈလိၼ်" (Area), ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇသၢင်ႈ Variable မႂ်ႇတႃႇသိမ်း `area` ဝႆႉထႅင်ႈ၊ ယွၼ်ႉမၼ်းၸၢင်ႈၵိတ်ႇၼပ်ႉဢွၵ်ႇမႃးလႆႈၵူႈယၢမ်း တီႈ `width * height`။

**Example:**

```dart
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  // ၼႆႉပဵၼ် Computed Property
  // မၼ်းဢမ်ႇၸႂ်ႉ Memory တႃႇသိမ်း area၊ မၼ်းတေၼပ်ႉပၼ်ၵူႈပွၵ်ႈမိူဝ်ႈႁွင်ႉၸႂ်ႉ
  double get area => width * height;
}

void main() {
  var rect = Rectangle(10, 5);
  print(rect.area); // Output: 50.0

  rect.width = 20;
  print(rect.area); // Output: 100.0 (မၼ်းတေၼပ်ႉပၼ်မႂ်ႇၵမ်းလဵဝ်)
}

```

---

### 2. Why use Computed Properties?

1. **Avoid Redundant Data**: ႁႄႉၵင်ႈၵၢၼ်သိမ်းၶေႃႈမုၼ်းဢၼ် "ယမ်ႉၵၼ်"။ သင်ႁဝ်းသိမ်းတင်း `width`, `height`, လႄႈ `area` ဝႆႉ၊ မၢင်ပွၵ်ႈမိူဝ်ႈႁဝ်းမႄး `width` သေလူင်မႄး `area` ၸိုင် ၶေႃႈမုၼ်းႁဝ်းတေၽိတ်း (Out of sync)။
2. **Memory Efficiency**: လူတ်းယွၼ်ႇၵၢၼ်ၸႂ်ႉ Memory ယွၼ်ႉဢမ်ႇလူဝ်ႇမီး Variable မႃးသိမ်းၵႃႈၶၼ်ဢၼ်ၵိတ်ႇၼပ်ႉဢွၵ်ႇမႃးလႆႈ။
3. **Real-time Updates**: မၼ်းတေပဵၼ်ၵႃႈၶၼ်ဢၼ် "မႂ်ႇသုတ်း" တႃႇသေႇ ၸွမ်းၼင်ႇ Variable တူဝ်ပိုင်ႈ (Dependent variables) မၼ်း။

---

### 3. Computed Property vs Method

ၸဝ်ႈၵဝ်ႇၸၢင်ႈဝူၼ်ႉဝႃႈ "ၸႂ်ႉ Function/Method `getArea()` ဢမ်ႇလႆႈႁႃႉ?"။ လႆႈယူႇၶႃႈ၊ ၵူၺ်းၵႃႈမၼ်းမီးလွင်ႈပႅၵ်ႇၵၼ်ဢိတ်းၼိုင်ႈ:

| Feature | Computed Property (Getter) | Method (Function) |
| --- | --- | --- |
| **Syntax** | `rect.area` (မိူၼ် Variable) | `rect.getArea()` (မိူၼ်ၵၢၼ်ႁဵတ်း) |
| **Usage** | ၸႂ်ႉမိူဝ်ႈပဵၼ် "ၶေႃႈမုၼ်း" (Data) | ၸႂ်ႉမိူဝ်ႈပဵၼ် "ၵၢၼ်ႁဵတ်း" (Action) |
| **Logic** | လူဝ်ႇမီး Logic ဢိတ်းဢိတ်းၵူၺ်း | မီး Logic ယၢပ်ႇယၢပ်ႇလႆႈ |

**Example of Computed String:**

```dart
class User {
  String firstName;
  String lastName;

  User(this.firstName, this.lastName);

  // ပဵၼ် Computed Property တႃႇလႆႈၸိုဝ်ႈတႅမ်ႈ
  String get fullName => "$firstName $lastName";
}

```

---

### 4. Summary

Computed Property ႁဵတ်းႁႂ်ႈ Class ႁဝ်း "လႅတ်းသႅဝ်း" (Smart) လိူဝ်ၵဝ်ႇ။ မၼ်းၸၢင်ႈ "တူင်ႉၼိုင်" (React) ၸွမ်းၶေႃႈမုၼ်းဢၼ်လႅၵ်ႈလၢႆႈၵႂႃႇသေ သူင်ႇၵႃႈၶၼ်ဢၼ်မႅၼ်ႈသုတ်းဢွၵ်ႇမႃးပၼ်တႃႇသေႇ။

---
