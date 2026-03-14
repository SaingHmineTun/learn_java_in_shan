## 46) The Default Constructor

မိူဝ်ႈႁဝ်းသၢင်ႈ Object ၼိုင်ႈဢၼ် (တူဝ်ယၢင်ႇ: `var p = Person();`), ႁဝ်းတိုၵ်ႉႁွင်ႉၸႂ်ႉ Function ဢၼ်လႅတ်းသႅဝ်းဝႆႉၼိုင်ႈပိူင် ဢၼ်ႁွင်ႉဝႃႈ **Constructor** ယဝ်ႉ။ မၼ်းပဵၼ် Function ဢွၼ်တၢင်းသုတ်း ဢၼ်တေႁဵတ်းၵၢၼ် မိူဝ်ႈ Object ထုၵ်ႇသၢင်ႈဢွၵ်ႇမႃး။

---

### 1. What is a Default Constructor?

သင်ႁဝ်းဢမ်ႇတႅမ်ႈ Constructor သေဢၼ်ၼႂ်း Class ႁဝ်း၊ Dart တေႁဵတ်းပၼ် **Default Constructor** (ဢၼ်ဢမ်ႇမီး Parameter သင်) ဝႆႉပၼ်ႁင်းၵူၺ်းမၼ်းယဝ်ႉ။ မၼ်းပဵၼ် Constructor ဢၼ် "ဢမ်ႇႁၼ်တူဝ်" ၵူၺ်းၵႃႈ မၼ်းႁဵတ်းႁႂ်ႈႁဝ်းသၢင်ႈ Object လႆႈ။

**Structure:**

* ၸိုဝ်ႈမၼ်းတေလႆႈ **မိူၼ်တင်းၸိုဝ်ႈ Class** ပိူင်လဵဝ်ၵူၺ်း။
* မၼ်းဢမ်ႇမီး Return Type (ယွၼ်ႉမၼ်းသူင်ႇ Object တူဝ်မၼ်းဢွၵ်ႇမႃးယူႇယဝ်ႉ)။

---

### 2. Manual Default Constructor

ႁဝ်းၸၢင်ႈတႅမ်ႈ Constructor ႁင်းၵူၺ်းႁဝ်း တႃႇပၼ်ၵႃႈၶၼ် (Initialize) တီႈ Fields ဢမ်ႇၼၼ် တႃႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်သင်သေယၢင် မိူဝ်ႈ Object တႄႇမီးၸႂ်။

**Example:**

```dart
class Robot {
  String name = "Generic Robot";

  // ၼႆႉပဵၼ် Default Constructor ဢၼ်ႁဝ်းတႅမ်ႈႁင်းၵူၺ်း
  Robot() {
    print("A new robot is being manufactured!");
  }
}

void main() {
  var myBot = Robot(); // တေ Output: A new robot is being manufactured!
}

```

---

### 3. Generative Constructor with Parameters

ၼႂ်းၵၢၼ်တႅမ်ႈ App တႄႇတႄႇ၊ ႁဝ်းၵႆႉၶႂ်ႈပၼ်ၶေႃႈမုၼ်းသႂ်ႇ မိူဝ်ႈႁဝ်းသၢင်ႈ Object ၵမ်းလဵဝ်။

**Example (Traditional way):**

```dart
class Person {
  String name;

  Person(String name) : this.name = name; 
  // ၼႆႉႁွင်ႉဝႃႈ Initializer List (တေလဵပ်ႈႁဵၼ်းတွၼ်ႈ 48)
}

```

---

### 4. Dart Shortcut: Formal Parameters

Dart မီးလၢႆးတႅမ်ႈ ဢၼ်ပွတ်းသေ ပဵၼ်ပိူင် (Standard) သုတ်း တွၼ်ႈတႃႇၵၢၼ်ပၼ်ၵႃႈၶၼ် Fields ၼႂ်း Constructor ယဝ်ႉ။ ႁဝ်းၸႂ်ႉ **`this.fieldName`** ၼႂ်း Parameter list လႆႈၵမ်းလဵဝ်။

**Example (Dart way):**

```dart
class Point {
  int x;
  int y;

  // ပွတ်း လႄႈ လူငၢႆႈ
  Point(this.x, this.y); 
}

void main() {
  var p = Point(10, 20); // x တေပဵၼ် 10, y တေပဵၼ် 20 ၵမ်းလဵဝ်
  print("Position: ${p.x}, ${p.y}");
}

```

---

### ၶေႃႈသတိ (The "No-Name" Rule)

သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Constructor ဢၼ်မီး Parameter ဝႆႉယဝ်ႉ (ၸိူင်ႉၼင်ႇ `Point(this.x, this.y)`), Dart တေ **ဢမ်ႇသၢင်ႈ** Default Constructor ဢၼ်ပဝ်ႇ (`Point()`) ဝႆႉပၼ်ထႅင်ႈယဝ်ႉ။ သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈၸႂ်ႉတင်းသွင်ပိူင်၊ ၸဝ်ႈၵဝ်ႇတေလႆႈတႅမ်ႈဢွၵ်ႇမႃးတင်းသွင်ဢၼ် (ဢမ်ႇၼၼ် ၸႂ်ႉ Named Constructor)။

---
