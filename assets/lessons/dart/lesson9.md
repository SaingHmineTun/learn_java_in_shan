## 9) Strings and Booleans

### 1. String (လိၵ်ႈ)

ၸႂ်ႉတႃႇသိမ်း ၶေႃႈၵႂၢမ်း ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈလၢႆလၢႆတူဝ်။ တေလႆႈသႂ်ႇဝႆႉၼႂ်း Quotes (`'` ဢမ်ႇၼၼ် `"`)။

* **String Interpolation**: ၼႆႉပဵၼ်လၢႆး "ဢဝ် Variable သႂ်ႇၼႂ်းလိၵ်ႈ" လႆႈငၢႆႈငၢႆႈ လူၺ်ႈၸႂ်ႉမၢႆ **`$`**။ သင်ပဵၼ် Expression ဢၼ်ယၢဝ်း ႁဝ်းၸၢင်ႈၸႂ်ႉ `${}` ယဝ်ႉ။

```dart
String name = "Sai Sai";
int age = 20;

// ၸႂ်ႉ $ တႃႇ Variable လဵဝ်
print("My name is $name."); 

// ၸႂ်ႉ ${} တႃႇ Expression
print("Next year I will be ${age + 1} years old."); 

```

* **String Concatenation**: ႁဝ်းၸၢင်ႈဢဝ် String သွင်ဢၼ်မႃးသိုပ်ႇၵၼ် လူၺ်ႈၸႂ်ႉမၢႆ **`+`** ဢမ်ႇၼၼ် ဝႆႉမၼ်းၸပ်းၵၼ်ၵေႃႈလႆႈ။

```dart
String s1 = "Hello " + "World";
String s2 = "Hello " "World"; // ၽူၼ်မၼ်းမိူၼ်ၵၼ်

```

* **Multi-line String**: သင်ၶႂ်ႈတႅမ်ႈလိၵ်ႈလၢႆထႅဝ် ႁဝ်းၸၢင်ႈၸႂ်ႉ Triple Quotes (`'''` ဢမ်ႇၼၼ် `"""`)။

```dart
String multi = '''
ၼႆႉပဵၼ်လိၵ်ႈ
ဢၼ်မီးလၢႆလၢႆထႅဝ်
ၼႂ်း Variable ဢၼ်လဵဝ်။
''';

```

### 2. Boolean (bool)

ၸႂ်ႉတႃႇသိမ်း ၵႃႈၶၼ်ဢၼ်မီး 2 ယၢင်ႇၵူၺ်း - ၼၼ်ႉပဵၼ် **`true`** (ထုၵ်ႇ/ၸႅတ်ႈ) လႄႈ **`false`** (ၽိတ်း/ဢမ်ႇၸႅတ်ႈ)။

* ၼႂ်း Dart ၼၼ်ႉ `bool` ၼႆႉ ပႅၵ်ႇပိူင်ႈတင်းလႅင်ႉၵႂၢမ်းတၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ JavaScript)။ ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ် Number `1` ဢမ်ႇၼၼ် `0` မႃးၸႂ်ႉတိုင်ႈတႅၼ်း Boolean လႆႈ။
* မၼ်းလမ်ႇလွင်ႈသုတ်း တႃႇၸႂ်ႉၼႂ်းလွင်ႈတႅတ်ႈသိၼ်ၸႂ် (Conditional Logic) မိူၼ်ၼင်ႇ `if` statements။

```dart
bool isTall = true;
bool isFinished = false;

if (isTall) {
  print("You are tall!");
}

```