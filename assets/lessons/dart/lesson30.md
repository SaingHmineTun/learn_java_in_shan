## 30) Named Parameters and {required}

**Named Parameters** ပဵၼ်လၢႆးသူင်ႇ Parameter ဢၼ်လမ်ႇလွင်ႈသုတ်းၼႂ်း Dart လႄႈ Flutter ယဝ်ႉ။ မၼ်းႁဵတ်းႁႂ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Function လႆႈငၢႆႈလိူဝ် ယွၼ်ႉႁဝ်းဢမ်ႇလူဝ်ႇတွၼ်းလမ်ႇดับ (Position) မၼ်း၊ ႁဝ်းၵူၺ်းလူဝ်ႇႁွင်ႉၸွမ်း "ၸိုဝ်ႈ" မၼ်းယဝ်ႉ။

---

### Syntax Comparison Table

| Feature | Positional Parameters           | Named Parameters |
| --- |---------------------------------| --- |
| **Syntax** | `func(int a, int b)`            | `func({int? a, int? b})` |
| **Calling** | `func(10, 20)`                  | `func(a: 10, b: 20)` |
| **Order** | တေလႆႈမႅၼ်ႈၸွမ်းတီႈယူႇ           | တႅမ်ႈဢၼ်လႂ်ဢွၼ်တၢင်းၵေႃႈလႆႈ |
| **Readability** | လူယၢပ်ႇ (ဢမ်ႇႁူႉဝႃႈ 10 ပဵၼ်သင်) | လူငၢႆႈ (ႁူႉဝႃႈ a ပဵၼ် 10) |

---

### 1. Basic Named Parameters `{}`

တႃႇတေတႅမ်ႈ Named Parameters၊ ႁဝ်းတေလႆႈဢဝ် Parameters ဝႆႉၼႂ်း **Curly Braces `{}**` ယဝ်ႉ။ ၸွမ်းၼင်ႇပိူင် (By default)၊ Named Parameters ၼႆႉပဵၼ် **Optional** (တေသူင်ႇ ဢမ်ႇသူင်ႇၵေႃႈလႆႈ)၊ လႄႈ ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈ Type မၼ်းႁႂ်ႈပဵၼ် Nullable (`?`) ဢမ်ႇၼၼ် မီး Default Value ယဝ်ႉ။

**Example:**

```dart
void printAddress({String? city, String? street}) {
  print("Street: $street, City: $city");
}

void main() {
  // ႁွင်ႉၸႂ်ႉလူၺ်ႈၵၢၼ်သႂ်ႇ "ၸိုဝ်ႈ:" ၽၢႆႇၼႃႈၵႃႈၶၼ်
  printAddress(city: "Yangon", street: "Pyay Road");
  
  // ဢမ်ႇလူဝ်ႇမႅၼ်ႈၸွမ်းလမ်ႇดับၵေႃႈလႆႈ
  printAddress(street: "Main St", city: "Mandalay");
}

```

---

### 2. The `required` Keyword

မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈၸႂ်ႉ Named Parameters (တႃႇႁႂ်ႈလူငၢႆႈ) ၵူၺ်းၵႃႈ ႁဝ်းၶႂ်ႈႁႂ်ႈ User **တေလႆႈသူင်ႇ** ၶေႃႈမုၼ်းမႃးၼႄႉၼႄႉ။ ယၢမ်းၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Keyword **`required`** ဝႆႉၽၢႆႇၼႃႈ Parameter ၼၼ်ႉယဝ်ႉ။

**Example:**

```dart
void createUser({required String username, required String password, int? age}) {
  print("User: $username Created!");
}

void main() {
  createUser(username: "saisai", password: "123"); // မႅၼ်ႈ
  // createUser(username: "saisai"); // ၽိတ်း! လူဝ်ႇ password
}

```

---

### 3. Mixing Positional and Named

ႁဝ်းၸၢင်ႈၸႂ်ႉတင်းသွင်ပိူင် ပူၼ်ႇၵၼ်လႆႈ။ ၵူၺ်းၵႃႈ Positional တေလႆႈယူႇၽၢႆႇၼႃႈ တႃႇသေႇ။

**Example:**

```dart
void postMessage(String author, {required String text}) {
  print("$author posted: $text");
}

void main() {
  postMessage("Admin", text: "Hello World");
}

```

---

### 4. Why use Named Parameters?

1. **Readability**: မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Function ဢၼ်မီး Input လၢႆလၢႆဢၼ် (တူဝ်ယၢင်ႇ: သႂ်ႇသီ၊ သႂ်ႇတၢင်းၵႂၢင်ႈ၊ သႂ်ႇတၢင်းသုင်)၊ ၵၢၼ်ၸႂ်ႉ Named Parameters တေႁဵတ်းႁႂ်ႈႁဝ်းႁူႉၵမ်းလဵဝ်ဝႃႈ မၢႆၼပ်ႉၼၼ်ႉ မၢႆထိုင်သင်။
2. **Flexibility**: ႁဝ်းၸၢင်ႈထႅမ် Parameter မႂ်ႇမႂ်ႇသႂ်ႇၼႂ်း Function လႆႈ လူၺ်ႈဢမ်ႇႁဵတ်းႁႂ်ႈ Code ၵဝ်ႇဢၼ်ႁွင်ႉၸႂ်ႉဝႆႉၼၼ်ႉ ၵွႆ (Error)။

---
