## 50) Factory Constructors

**Factory Constructor** ပဵၼ် Constructor ပိူင်လူးၵတ်ႉ (Special) ဢၼ်ပႅၵ်ႇပိူင်ႈတင်း Constructor ယူဝ်းယူဝ်း။ ၼႂ်း Constructor ယူဝ်းယူဝ်း၊ မၼ်းတေ **သၢင်ႈ Object မႂ်ႇ** ပၼ်တႃႇသေႇ။ ၵူၺ်းၵႃႈ Factory Constructor တႄႉ မၼ်းမီး "ပၢႆးဝူၼ်ႉ" (Logic) သေ မၼ်းၸၢင်ႈလိူၵ်ႈဝႃႈ တေသူင်ႇ Object တူဝ်လႂ်ၶိုၼ်းပၼ်ယဝ်ႉ။

---

### 1. တူဝ်လႅၵ်ႈလၢႆႈဢၼ်လမ်ႇလွင်ႈ

1. **ဢမ်ႇသၢင်ႈ Object မႂ်ႇတႃႇသေႇ**: မၼ်းၸၢင်ႈသူင်ႇ Object တူဝ်ဢၼ်မီးဝႆႉယူႇယဝ်ႉ (Existing instance) ၶိုၼ်းပၼ်လႆႈ။
2. **သူင်ႇ Subclass ၶိုၼ်းလႆႈ**: မၼ်းၸၢင်ႈသူင်ႇ Object ဢၼ်ပဵၼ် "လုၵ်ႈလၢင်း" (Subtype) ၶိုၼ်းပၼ်လႆႈ။
3. **ၸႂ်ႉ Keyword `factory**`: တေလႆႈသႂ်ႇဝႆႉၽၢႆႇၼႃႈၸိုဝ်ႈ Constructor။
4. **ဢမ်ႇၸၢင်ႈၸႂ်ႉ `this**`: ယွၼ်ႉမၼ်းပႆႇသၢင်ႈ Object တူဝ်မၼ်းတႄႇတႄႇ၊ မၼ်းၸင်ႇဢမ်ႇၸၢင်ႈၸီႉၸူး `this` လႆႈ။

---

### 2. Common Use Cases (လၢႆးၸႂ်ႉတူဝ်ယၢင်ႇ)

#### A) Singleton Pattern (သၢင်ႈပွၵ်ႈလဵဝ် ၸႂ်ႉၵူႈတီႈ)

ႁဝ်းၸႂ်ႉ Factory တႃႇမၵ်းမၼ်ႈဝႃႈ Class ၼၼ်ႉ တေမီး Object လႆႈၵူၺ်း **ၼိုင်ႈတူဝ်** ၼႂ်း App တင်းသဵင်ႈ (တူဝ်ယၢင်ႇ: Database connection ဢမ်ႇၼၼ် App Settings)။

```dart
class Logger {
  final String name;
  static final Map<String, Logger> _cache = {};

  // Factory constructor တေၵႂႃႇႁႃတူၺ်းၼႂ်း cache ဢွၼ်တၢင်း
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!; // သူင်ႇတူဝ်ၵဝ်ႇၶိုၼ်း
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger; // သၢင်ႈမႂ်ႇသေသူင်ႇပၼ်
    }
  }

  // Private constructor တႃႇၸႂ်ႉၼႂ်း Class ၵူၺ်း
  Logger._internal(this.name);
}

```

#### B) Creating Subclasses (သၢင်ႈလုၵ်ႈလၢင်း)

ႁဝ်းၸႂ်ႉ Factory တႃႇလိူၵ်ႈသၢင်ႈ Object ၸွမ်းၼင်ႇၶေႃႈမုၼ်းဢၼ်သူင်ႇမႃး။

```dart
abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle();
    if (type == 'square') return Square();
    throw 'Unknown shape';
  }
}

class Circle implements Shape {}
class Square implements Shape {}

```

---

### 3. Comparison: Generative vs Factory

| Feature | Generative (Regular) | Factory |
| --- | --- | --- |
| **Returns** | New instance of current class | Any instance (New, Cached, or Subclass) |
| **Return Statement** | Cannot use `return` | Must use `return` |
| **This keyword** | Available | Not available |
| **Instantiation** | Always creates new memory | Can reuse memory |

---

### 4. Why use it?

* **Encapsulation**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈသိပ်း (Hide) လၢႆးၵၢၼ်သၢင်ႈ Object ဢၼ်ယၢပ်ႇယၢပ်ႇဝႆႉၼႂ်း Factory။
* **Performance**: ၸႂ်ႉ Cache တႃႇလူတ်းယွၼ်ႇၵၢၼ်သၢင်ႈ Object ဢၼ်ဢမ်ႇလူဝ်ႇ။
* **Flexibility**: ပၼ်အခွင့်အရေး တႃႇပိၼ်ႇလႅၵ်ႈတူဝ် Object ဢၼ်တေသူင်ႇၶိုၼ်းပၼ် လူၺ်ႈဢမ်ႇလူဝ်ႇမႄး Code တီႈ User ႁွင်ႉၸႂ်ႉ။

---
