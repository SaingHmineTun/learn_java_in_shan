## 13) Type Conversion (Parsing & Casting)

မၢင်ပွၵ်ႈ ႁဝ်းလူဝ်ႇလႅၵ်ႈလၢႆႈ Type ၶေႃႈမုၼ်း ဢၼ်ၼိုင်ႈ ၵႂႃႇၸူးထႅင်ႈဢၼ်ၼိုင်ႈ (တူဝ်ယၢင်ႇ: လႅၵ်ႈလိၵ်ႈပဵၼ်မၢႆၼပ်ႉ) တႃႇတေဢဝ်ၵႂႃႇၵိတ်ႇၼပ်ႉလႆႈ။ ၼႂ်း Dart မီးလၢႆးႁဵတ်းယူႇ 2 ပိူင်လူင်:

### 1. Parsing (String to Number)

ၸႂ်ႉမိူဝ်ႈႁဝ်းမီး "လိၵ်ႈ" (String) ဢၼ်ပဵၼ်တူဝ်ၼပ်ႉ သေၶႂ်ႈလႅၵ်ႈပဵၼ် "မၢႆၼပ်ႉ" (num/int/double) တေႉတေႉ။

* **String to int:** ၸႂ်ႉ `int.parse()`
```dart
String ageText = "25";
int age = int.parse(ageText); 
print(age + 5); // ၽူၼ်မၼ်း: 30

```


* **String to double:** ၸႂ်ႉ `double.parse()`
```dart
String priceText = "1500.50";
double price = double.parse(priceText);

```



> **သတိ:** သင်ဝႃႈ String ၼၼ်ႉ ဢမ်ႇၸႂ်ႈမၢႆၼပ်ႉ (တူဝ်ယၢင်ႇ: `int.parse("abc")`) မၼ်းတေ Crash (Error) ယဝ်ႉ။ တႃႇတေႁႂ်ႈ Safe လိူဝ်ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ `int.tryParse()` ဢၼ်တေသူင်ႇ `null` ပၼ် တႅၼ်း Error ၼၼ်ႉယဝ်ႉ။

### 2. Conversion (Number to String)

ၸႂ်ႉ Method **`.toString()`** တႃႇလႅၵ်ႈလၢႆႈ Type တၢင်ႇပိူင် ႁႂ်ႈပဵၼ်လိၵ်ႈ (String)။

```dart
int score = 100;
String scoreString = score.toString();

double pi = 3.14159;
String piString = pi.toStringAsFixed(2); // "3.14" (လိူၵ်ႈဢဝ်ၸုၵ်းလၢႆတူဝ်)

```

### 3. Type Casting (as keyword)

Casting ၼႆႉ ဢမ်ႇၸႂ်ႈလွင်ႈလႅၵ်ႈလၢႆႈၵႃႈၶၼ် (Value)၊ ၵူၺ်းၵႃႈ မၼ်းပဵၼ်လွင်ႈလၢတ်ႈၼႄ Compiler ဝႃႈ "Object ဢၼ်ၼႆႉ ပဵၼ် Type ၼႆႉဢိူဝ်ႈ"။ ၵမ်းၼမ်ၸႂ်ႉမိူဝ်ႈႁဝ်းႁဵတ်းၵၢၼ်ၸွမ်း `dynamic` ဢမ်ႇၼၼ် Classes (Inheritance)။

```dart
dynamic value = "Hello Dart";
String text = value as String; // မၵ်းမၼ်ႈဝႃႈ value ၼႆႉပဵၼ် String ယဝ်ႉ

```

---

**Congratulations!** ယဝ်ႉယဝ်ႉၶႃႈ တႃႇ **Module 2: Variables & Types**။ မိူဝ်ႈလႂ်ႁၢင်ႈႁႅၼ်းယဝ်ႉၵေႃႈ ႁဝ်းတေၸၢင်ႈသိုပ်ႇၵႂႃႇတီႈ **Module 3: Operators & Expressions** ဢၼ်တေတႄႇလူၺ်ႈ **Lesson 14: Arithmetic Operators** ၼၼ်ႉယဝ်ႉၶႃႈ!