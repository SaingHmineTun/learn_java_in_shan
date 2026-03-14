## 22) Switch Statements

**Switch statements** ၼႆႉ မိူၼ်တင်း `if-else` ဢၼ်မီးလၢႆလၢႆၸၼ်ႉ (Multiple else-if)၊ ၵူၺ်းၵႃႈ မၼ်းထုၵ်ႇဒီၸၢႆးဝႆႉ တႃႇတႅၵ်ႈလိူင်းၵႃႈၶၼ် Variable ဢၼ်လဵဝ်ၵၼ် တေႃႇလၢႆလၢႆ Case ႁႂ်ႈလူဢၢၼ်ႇငၢႆႈ လႄႈ ႁဵတ်းၵၢၼ်ၽႂ်းလိူဝ်ယဝ်ႉ။

---

### Switch Structure Table

| Keyword | Usage (လၢႆးၸႂ်ႉ) | Description |
| --- | --- | --- |
| **`switch`** | ပိုတ်ႇလွင်ႈထတ်းသၢင် | Variable ဢၼ်ႁဝ်းၶႂ်ႈတူၺ်းၵႃႈၶၼ် |
| **`case`** | လွၵ်းတၢင်းလိူၵ်ႈ | ၵႃႈၶၼ်ဢၼ်ႁဝ်းၶႂ်ႈတႅၵ်ႈလိူင်းၸွမ်း |
| **`break`** | ၵိုတ်းၵၢၼ်ႁဵတ်း | ၸီႉသင်ႇႁႂ်ႈဢွၵ်ႇၼႂ်း Switch (မိူဝ်ႈႁူႉၽူၼ်မၼ်းယဝ်ႉ) |
| **`default`** | တီႈၵိုတ်းသုတ်း | သင်ဢမ်ႇတူၵ်းၼႂ်း Case ဢၼ်လႂ်သေဢၼ် |

---

### 1. Basic Switch Statement

ၸႂ်ႉတႃႇတႅၵ်ႈလိူင်း String ဢမ်ႇၼၼ် Integer ဢၼ်မီးၵႃႈၶၼ်တႅတ်ႈတေႃး။

**Example: Day of the week**

```dart
String day = "Monday";

switch (day) {
  case "Monday":
    print("Start of the work week!");
    break; // လူဝ်ႇသႂ်ႇ break တႃႇၵိုတ်းၵၢၼ်ထတ်းသၢင် Case တၢင်ႇဢၼ်
  case "Friday":
    print("Weekend is coming!");
    break;
  case "Sunday":
    print("Rest day.");
    break;
  default:
    print("Just another day."); // သင်ဢမ်ႇမႅၼ်ႈ Case တီႈၼိူဝ်
}

```

---

### 2. Grouping Cases

သင်ႁဝ်းမီးလၢႆ Case ဢၼ်ၶႂ်ႈႁႂ်ႈဢွၵ်ႇၽူၼ် (Result) မိူၼ်ၵၼ် ႁဝ်းၸၢင်ႈဢဝ်မႃးဝႆႉၸပ်းၵၼ်လႆႈ။

**Example: Rating Category**

```dart
int rating = 4;

switch (rating) {
  case 1:
  case 2:
    print("Bad Rating");
    break;
  case 3:
    print("Average Rating");
    break;
  case 4:
  case 5:
    print("Good Rating"); // Rating 4 လႄႈ 5 တေဢွၵ်ႇဢၼ်ၼႆႉ
    break;
  default:
    print("Invalid Rating");
}

```

---

### 3. Switch Expressions (New in Dart 3.0+)

ၼႂ်း Dart ၸၼ်ႉမႂ်ႇ (3.0 ၶိုၼ်ႈၵႂႃႇ) ႁဝ်းၸၢင်ႈၸႂ်ႉ Switch ၼႂ်းလၢႆး **Expression** တႃႇသူင်ႇၵႃႈၶၼ် (Return value) ပၼ် Variable လႆႈၵမ်းလဵဝ် ၼင်ႇ Ternary Operator ယဝ်ႉ။

**Example: Modern Switch**

```dart
int statusCode = 200;

String message = switch (statusCode) {
  200 => "Success",
  404 => "Not Found",
  500 => "Server Error",
  _   => "Unknown Error", // _ တႅၼ်း default
};

print(message); // Output: Success

```

---

### 4. Comparison: if-else vs switch

| Feature | if-else | switch |
| --- | --- | --- |
| **Condition Type** | ၸႂ်ႉလႆႈ Range (เช่น `> 10`, `< 5`) | ၸႂ်ႉၵႃႈၶၼ်တႅတ်ႈတေႃး (Fixed values) |
| **Readability** | လူယၢပ်ႇ သင်မီး Else-if လၢႆပိူင် | လူငၢႆႈ မိူဝ်ႈတႅၵ်ႈ Variable ဢၼ်လဵဝ် |
| **Performance** | ၵွႆးထတ်းသၢင်ၸွမ်းၸၼ်ႉ | ၽႂ်းလိူဝ် မိူဝ်ႈမီး Case လၢႆလၢႆဢၼ် |
