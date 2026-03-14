## 48) Initializer Lists

**Initializer Lists** ပဵၼ်လၢႆးၵၢၼ်ပၼ်ၵႃႈၶၼ် (Initialize) Variable ၼႂ်း Constructor ဢၼ်ႁဵတ်းၵၢၼ် **ဢွၼ်တၢင်း** Code ၼႂ်း Constructor Body (`{ }`) တေလႅၼ်ႈ။ မၼ်းမီးၸိုဝ်ႈသဵင်ၼမ် ၼႂ်းၵၢၼ်ၸတ်းၵၢၼ် `final` variables လႄႈ ၵၢၼ်ၵူတ်ႇထတ်း (Validation) ၶေႃႈမုၼ်းဢွၼ်တၢင်းယဝ်ႉ။

---

### 1. Syntax Overview

ႁဝ်းၸႂ်ႉမၢႆ **`:`** (Colon) ဝႆႉၽၢႆႇလုၼ်ႈ Parameter list တႃႇတႄႇ Initializer List ယဝ်ႉ။

**Example:**

```dart
class Point {
  final double x;
  final double y;
  final double distanceFromOrigin;

  // Initializer List ၸႂ်ႉတႃႇၵိတ်ႇၼပ်ႉၵႃႈၶၼ် ဢွၼ်တၢင်းသၢင်ႈ Object
  Point(double x, double y)
      : x = x,
        y = y,
        distanceFromOrigin = x * x + y * y; 
}

```

---

### 2. Why Use Initializer Lists?

မၼ်းမီးလွင်ႈတၢင်းလမ်ႇလွင်ႈယူႇ 3 ပိူင်:

#### A) Setting `final` Variables

သင် Variable ၼၼ်ႉပဵၼ် `final` သေ ၸဝ်ႈၵဝ်ႇဢမ်ႇၸၢင်ႈၸႂ်ႉ `this.x` (Direct assignment) လႆႈ ယွၼ်ႉလူဝ်ႇၵိတ်ႇၼပ်ႉသင်သေယၢင်ဢွၼ်တၢင်း၊ ၸဝ်ႈၵဝ်ႇတေလႆႈၸႂ်ႉ Initializer List ယဝ်ႉ။

#### B) Validation (Assert)

ႁဝ်းၸၢင်ႈၸႂ်ႉ `assert` တႃႇၵူတ်ႇထတ်းဝႃႈ ၶေႃႈမုၼ်းဢၼ် User သူင်ႇမႃးၼၼ်ႉ ထုၵ်ႇမႅၼ်ႈၸွမ်းပိူင်ႁဝ်းႁႃႉ။

**Example:**

```dart
class Age {
  int years;

  // သင် years လဵၵ်ႉလိူဝ် 0, Program တေတင်ႈယုၵ်ႉ (Error) ၵမ်းလဵဝ်
  Age(this.years) : assert(years >= 0, "Age cannot be negative!");
}

```

#### C) Redirecting to Super Class

မိူဝ်ႈႁဝ်းလဵပ်ႈႁဵၼ်းလွင်ႈ Inheritance, Initializer List တေၸႂ်ႉတႃႇသူင်ႇၵႃႈၶၼ်ၵႂႃႇပၼ် **Super Class** (Class ပေႃႈမႄႇ) ယဝ်ႉ။

---

### 3. Order of Execution

မိူဝ်ႈၸဝ်ႈၵဝ်ႇသၢင်ႈ Object ၼိုင်ႈဢၼ်၊ Dart တေႁဵတ်းၵၢၼ်ၸွမ်းလမ်ႇดับၼင်ႇၼႆ:

1. **Initializer List** (ႁဵတ်းၵၢၼ်ဢွၼ်တၢင်းသုတ်း)
2. **Superclass's Constructor** (သူင်ႇၵႂႃႇၸူး Class ပေႃႈမႄႇ)
3. **Main Class Constructor Body** (ႁဵတ်းၵၢၼ်ၼႂ်း `{ }` ဝၢႆးလုၼ်ႈသုတ်း)

---

### 4. Comparison: Body vs Initializer List

| Feature | Inside `{ }` (Body) | Initializer List `:` |
| --- | --- | --- |
| **Final variables** | ပၼ်ၵႃႈၶၼ်ဢမ်ႇလႆႈ | ပၼ်ၵႃႈၶၼ်လႆႈ |
| **Execution** | ႁဵတ်းဝၢႆးလုၼ်ႈ | ႁဵတ်းဢွၼ်တၢင်း |
| **Validation** | ၸႂ်ႉ if-else လႆႈ | ၸႂ်ႉ assert လႆႈ |

---
