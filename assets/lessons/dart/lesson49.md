## 49) Constant Constructors (Flutter Optimization)

ၼႂ်း Dart, **Constant Constructors** ပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်မီးဢႃႇၼႃႇၼမ်သုတ်း တႃႇႁဵတ်းႁႂ်ႈ App ႁဝ်းလႅၼ်ႈဝႆး (Performance Optimization)။ မၼ်းႁဵတ်းႁႂ်ႈ Object ဢၼ်ႁဝ်းသၢင်ႈၼၼ်ႉ ပဵၼ် "ၵႃႈၶၼ်ၵိုမ်းတေႇ" (Compile-time constant) ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈလႆႈထႅင်ႈယဝ်ႉ။

---

### 1. ပိူင်ၵၢၼ်သၢင်ႈ Constant Constructor

တႃႇတေတႅမ်ႈ Constant Constructor လႆႈၼၼ်ႉ မၼ်းမီးပိူင် (Rules) ယူႇ 2 ၶေႃႈ:

1. Class ၼၼ်ႉ တေလႆႈမီး Fields ဢၼ်ပဵၼ် **`final`** တင်းသဵင်ႈ။
2. ၽၢႆႇၼႃႈ Constructor တေလႆႈသႂ်ႇ Keyword **`const`** ဝႆႉ။

**Example:**

```dart
class Point {
  final int x;
  final int y;

  // ၼႆႉပဵၼ် Constant Constructor
  const Point(this.x, this.y);
}

```

---

### 2. တႃႇတေၸႂ်ႉ (Usage)

မိူဝ်ႈႁဝ်းသၢင်ႈ Object, ႁဝ်းၵေႃႈတေလႆႈသႂ်ႇ `const` ဝႆႉၽၢႆႇၼႃႈၼင်ႇၵဝ်ႇ တႃႇမၵ်းမၼ်ႈဝႃႈ ႁဝ်းၶႂ်ႈလႆႈ Constant Object တႄႇတႄႇ။

```dart
void main() {
  var p1 = const Point(1, 2);
  var p2 = const Point(1, 2);

  // ၼႂ်း Memory, p1 လႄႈ p2 တေပဵၼ် Object တူဝ်လဵဝ်ၵၼ်ၵမ်းလဵဝ်!
  print(identical(p1, p2)); // Output: true
}

```

---

### 3. Canonical Instances (လွင်ႈလီသုတ်း)

မိူဝ်ႈႁဝ်းၸႂ်ႉ `const`, Dart တေၵူတ်ႇထတ်းတူၺ်းၼႂ်း Memory ဝႃႈ "မီး Object ဢၼ်မီးၵႃႈၶၼ်မိူၼ်ၼႆႉဝႆႉယဝ်ႉႁႃႉ?"။

* သင်မီးဝႆႉယဝ်ႉ: မၼ်းတေဢဝ်တူဝ်ၵဝ်ႇၼၼ်ႉမႃးၸႂ်ႉၶိုၼ်း (Reuse)။
* သင်ပႆႇမီး: မၼ်းၸင်ႇတေသၢင်ႈမႂ်ႇ။

လၢႆးႁဵတ်းၵၢၼ်ၼႆႉ ႁွင်ႉဝႃႈ **Canonicalization** ယဝ်ႉ။ မၼ်းၸူၺ်းလူတ်းယွၼ်ႇၵၢၼ်ၸႂ်ႉ RAM လႄႈ လူတ်းယွၼ်ႇၵၢၼ်ႁဵတ်းၵၢၼ်ၶေႃႈ Garbage Collector (GC) ၼမ်ၼႃႇ။

---

### 4. Why is this important for Flutter?

ၼႂ်း Flutter, Widgets ၵမ်ႈၼမ်ပဵၼ် Classes ဢၼ်မီး Constant Constructors။ မိူဝ်ႈ App ႁဝ်း Rebuild (ပိၼ်ႇလႅၵ်ႈၼႃႈၸေႃး), Flutter တေဢမ်ႇသၢင်ႈ Widget မႂ်ႇ သင်ဝႃႈမၼ်းပဵၼ် `const`။ မၼ်းတေဢဝ်တူဝ်ၵဝ်ႇမႃးၸႂ်ႉၶိုၼ်း၊ ႁဵတ်းႁႂ်ႈ App ႁဝ်းလႅၼ်ႈဝႆး (Smooth) လႄႈ ဢမ်ႇၶပ်ႉ (Jank) ယဝ်ႉ။

**Flutter Example:**

```dart
// Widget ၼႆႉ တေဢမ်ႇထုၵ်ႇသၢင်ႈမႂ်ႇ မိူဝ်ႈ Screen rebuild
const Text("Hello World", style: TextStyle(fontSize: 20));

```

---

### 5. Summary Table

| Feature | Regular Constructor | Constant Constructor |
| --- | --- | --- |
| **Keyword** | ဢမ်ႇလူဝ်ႇ | `const` |
| **Fields** | `var` ဢမ်ႇၼၼ် `final` | တေလႆႈပဵၼ် `final` တႃႇသေႇ |
| **Memory** | သၢင်ႈ Object မႂ်ႇၵူႈပွၵ်ႈ | ၸႂ်ႉ Object တူဝ်ၵဝ်ႇၶိုၼ်း (သင်ၵႃႈၶၼ်မိူၼ်ၵၼ်) |
| **Speed** | Runtime | Compile-time (ဝႆးလိူဝ်) |

---