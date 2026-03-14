## 47) Parameterized and Named Constructors

ၼႂ်း Dart, ႁဝ်းဢမ်ႇၸၢင်ႈမီး Constructor ဢၼ်ၸိုဝ်ႈမိူၼ်ၵၼ်လၢႆဢၼ် (Constructor Overloading) မိူၼ်ၼင်ႇၼႂ်း Java ဢမ်ႇၼၼ် C++။ တႃႇတေၵႄႈလႅတ်ႈလွင်ႈၼႆႉ၊ Dart ပၼ်ႁဝ်းသၢင်ႈ **Named Constructors** ယဝ်ႉ။

---

### 1. Parameterized Constructors

ၼႆႉပဵၼ် Constructor ဢၼ်ႁဝ်းလဵပ်ႈႁဵၼ်းမႃးၼႂ်းတွၼ်ႈ 46။ မၼ်းႁပ်ႉဢဝ်ၵႃႈၶၼ် (Arguments) တႃႇမႃးသၢင်ႈ Object။ ႁဝ်းၸၢင်ႈၸႂ်ႉလႆႈတင်း:

* **Positional Parameters**: `Point(this.x, this.y);`
* **Named Parameters**: `Point({required this.x, required this.y});`

---

### 2. Named Constructors

**Named Constructor** ႁဵတ်းႁႂ်ႈႁဝ်းသၢင်ႈ Object လႆႈလၢႆလၢႆလၢႆး (Multiple ways) ၼႂ်း Class လဵဝ်ၵၼ် လူၺ်ႈၵၢၼ်ပၼ် "ၸိုဝ်ႈ" ပႅၵ်ႇၵၼ်ယဝ်ႉ။

**Syntax:** `ClassName.constructorName(parameters)`

**Example: Class Color**

```dart
class Color {
  int r, g, b;

  // Default Parameterized Constructor
  Color(this.r, this.g, this.b);

  // Named Constructor တွၼ်ႈတႃႇသီလမ် (Black)
  Color.black() : r = 0, g = 0, b = 0;

  // Named Constructor တွၼ်ႈတႃႇသီၶၢဝ် (White)
  Color.white() : r = 255, g = 255, b = 255;
}

void main() {
  var customColor = Color(120, 50, 200);
  var blackColor = Color.black(); // သၢင်ႈငၢႆႈငၢႆႈလူၺ်ႈ Named Constructor
  var whiteColor = Color.white();
}

```

---

### 3. Why use Named Constructors?

1. **Clarity**: ႁဵတ်းႁႂ်ႈႁဝ်းႁူႉဝႃႈ Object ၼၼ်ႉသၢင်ႈမႃးတႃႇသင် (မိူၼ်ၼင်ႇ `User.fromJson()`)။
2. **Multiple Ways to Initialize**: မၢင်ပွၵ်ႈႁဝ်းၶႂ်ႈသၢင်ႈ Object လူၺ်ႈၶေႃႈမုၼ်းဢၼ်ပႅၵ်ႇၵၼ်။
3. **Readability**: Code ႁဝ်းတေလူငၢႆႈလိူဝ်ၵဝ်ႇ။

---

### 4. Redirecting Constructors

မၢင်ပွၵ်ႈ Named Constructor ႁဝ်း ၵူၺ်းၶႂ်ႈ "သူင်ႇၵၢၼ်" (Redirect) ၵႂႃႇပၼ် Constructor တူဝ်ပိုင်ႈ (Main Constructor) ႁႂ်ႈႁဵတ်းၵၢၼ်ပၼ်။

**Example:**

```dart
class Rectangle {
  int width, height;

  Rectangle(this.width, this.height);

  // သင်ပဵၼ် Square, width လႄႈ height တေလႆႈမိူၼ်ၵၼ်
  // ႁဝ်းသူင်ႇ (Redirect) ၵႂႃႇၸူး Rectangle(s, s)
  Rectangle.square(int s) : this(s, s); 
}

```

---

### Summary

* **Parameterized**: ၸႂ်ႉတႃႇပၼ်ၵႃႈၶၼ် Fields မိူဝ်ႈသၢင်ႈ Object။
* **Named**: ၸႂ်ႉတႃႇသၢင်ႈ Object လၢႆလၢႆပိူင် ၼႂ်း Class လဵဝ်ၵၼ် (ႁဵတ်းႁႂ်ႈ Code သႅၼ်ႈသႂ်)။

---
