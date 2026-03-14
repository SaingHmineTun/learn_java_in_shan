## 44) Instance Variables and Fields

မိူဝ်ႈႁဝ်းပိုၼ်ၽၢဝ်ႇ Variable ဝႆႉၼႂ်း Class၊ ႁဝ်းႁွင်ႉမၼ်းဝႃႈ **Fields** ဢမ်ႇၼၼ် **Instance Variables** ယဝ်ႉ။ မၼ်းပဵၼ် "ၶေႃႈမုၼ်း" ဢၼ် Object ၵူႈတူဝ်တေမီးဝႆႉ ပဵၼ်တူဝ်ပဵၼ်တွၼ်ႈမၼ်းယဝ်ႉ။

---

### 1. Instance Variables မၢႆထိုင်သင်?

မၼ်းပဵၼ် Variable ဢၼ်မီးၸႂ်ယူႇၸွမ်း **Instance** (Object)။ သင်ႁဝ်းသၢင်ႈ Object သွင်တူဝ်၊ Instance Variable ၼႂ်း Object တူဝ်ၼိုင်ႈ တေဢမ်ႇၵပ်းၵၢႆႇၸွမ်း ထႅင်ႈတူဝ်ၼိုင်ႈ။

**Example:**

```dart
class Player {
  String? name; // Field / Instance Variable
  int health = 100; // Field with default value
}

void main() {
  var p1 = Player();
  p1.name = "Warrior";
  p1.health = 80;

  var p2 = Player();
  p2.name = "Mage";
  // p2.health တိုၵ်ႉပဵၼ် 100 ယူႇ၊ မၼ်းဢမ်ႇလႅၵ်ႈလၢႆႈၸွမ်း p1
}

```

---

### 2. Types of Fields

ၼႂ်း Dart, ႁဝ်းမီးလၢႆးပိုၼ်ၽၢဝ်ႇ Field လၢႆလၢႆပိူင် ၸွမ်းၼင်ႇလွင်ႈလူဝ်ႇၸႂ်ႉတူၺ်း:

| Type of Field | Syntax Example | Description |
| --- | --- | --- |
| **Nullable** | `String? name;` | ၵႃႈၶၼ်တႄႇမၼ်းပဵၼ် `null` |
| **Initialized** | `int age = 18;` | မီးၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်ဝႆႉၵမ်းလဵဝ် |
| **Late** | `late String bio;` | ပိုၼ်ၽၢဝ်ႇဝႆႉဢွၼ်တၢင်း၊ တေမႃးပၼ်ၵႃႈၶၼ်မၼ်း "ဝၢႆးလုၼ်း" |
| **Final** | `final String id;` | ပၼ်ၵႃႈၶၼ်လႆႈ "ပွၵ်ႈလဵဝ်" ၵူၺ်း (လႅၵ်ႈလၢႆႈၶိုၼ်းဢမ်ႇလႆႈ) |

---

### 3. The `late` Keyword

မၢင်ပွၵ်ႈႁဝ်းႁူႉဝႃႈ Variable ၼၼ်ႉ တေဢမ်ႇပဵၼ် `null` တႄႇတႄႇ၊ ၵူၺ်းၵႃႈ ႁဝ်းပႆႇၸၢင်ႈပၼ်ၵႃႈၶၼ်မၼ်းလႆႈ မိူဝ်ႈတႄႇသၢင်ႈ Class။ ႁဝ်းၸၢင်ႈၸႂ်ႉ `late` တႃႇလၢတ်ႈပၼ် Dart ဝႃႈ "ယႃႇပႆႇပၼ် Error၊ ၵဝ်တေပၼ်ၵႃႈၶၼ်မၼ်း မိူဝ်ႈပႆႇၸႂ်ႉမၼ်းၼၼ်ႉယူႇ"။

**Example:**

```dart
class Profile {
  late String description;

  void load() {
    description = "I love coding!";
  }
}

```

---

### 4. Getters and Setters (Implicit)

ၼႂ်း Dart, ၵူႈ Field တင်းသဵင်ႈ တေမီး **Getter** လႄႈ **Setter** ၼႂ်းတူဝ်မၼ်းဝႆႉယူႇယဝ်ႉ။

* မိူဝ်ႈႁဝ်းႁွင်ႉ `print(obj.name)`, ႁဝ်းတိုၵ်ႉၸႂ်ႉ **Getter**။
* မိူဝ်ႈႁဝ်းပၼ်ၵႃႈၶၼ် `obj.name = "Sai"`, ႁဝ်းတိုၵ်ႉၸႂ်ႉ **Setter**။

---

### Summary Table

| Property | Instance Variable |
| --- | --- |
| **Location** | ယူႇၼႂ်း Class ၵူၺ်းၵႃႈ ၽၢႆႇၼွၵ်ႈ Method |
| **Access** | ၸႂ်ႉ Dot operator (`.`) ၼႂ်း Object |
| **Default** | သင်ဢမ်ႇပၼ်ၵႃႈၶၼ် တေပဵၼ် `null` (သင်ပဵၼ် nullable) |
| **Lifetime** | မီးၸႂ်ယူႇတေႃႇ Object ၼၼ်ႉတေထုၵ်ႇယႃႉပႅတ်ႈ |

---
