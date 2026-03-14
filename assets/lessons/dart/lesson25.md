## 25) For-in and forEach Basics

မိူဝ်ႈႁဝ်းႁဵတ်းၵၢၼ်ၸွမ်း **Collections** (မိူၼ်ၼင်ႇ `List`, `Set`, ဢမ်ႇၼၼ် `Map`)၊ Dart မီးလၢႆးဢၼ်ငၢႆႈလိူဝ် Standard `for` loop တႃႇဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃးၸႂ်ႉၵူႈဢၼ်ယဝ်ႉ။ လၢႆးၸိူဝ်းၼႆႉ ႁဵတ်းႁႂ်ႈ Code ႁဝ်းမူတ်းသႂ် လႄႈ လူဢၢၼ်ႇငၢႆႈလိူဝ်ၵဝ်ႇ။

---

### Comparison Table

| Method | Syntax Style | Best Used For (ၸႂ်ႉမိူဝ်ႈလႂ်) |
| --- | --- | --- |
| **`for-in`** | Statement | မိူဝ်ႈၶႂ်ႈဢဝ် Element ဢွၵ်ႇမႃးႁဵတ်းၵၢၼ် တီႈလုၵ်ႈ တီႈဢၼ်။ |
| **`forEach`** | Method | မိူဝ်ႈၶႂ်ႈႁွင်ႉ Function ၼိုင်ႈဢၼ် ပၼ်ၵူႈ Element ၼႂ်း List။ |

---

### 1. The 'for-in' Loop

`for-in` loop ၼႆႉ လူဢၢၼ်ႇငၢႆႈ မိူၼ်လိၵ်ႈဢင်းၵိတ်းယဝ်ႉ။ မၼ်းတေၵႂႃႇဢဝ်ၶေႃႈမုၼ်းၼႂ်း List မႃးသႂ်ႇၼႂ်း Variable ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼၼ်ႉ တီႈဢၼ် တီႈဢၼ် တေႃႇတေယဝ်ႉတူဝ်ႈ။

**Example: Printing items from a List**

```dart
List<String> players = ["Sai Sai", "Kyaw Kyaw", "Su Su"];

for (var player in players) {
  print("Player name: $player");
}

```

* **Why use it?** မၼ်းငၢႆႈလိူဝ် Standard `for` loop ယွၼ်ႉႁဝ်းဢမ်ႇလူဝ်ႇၵုမ်းၵၢၼ် Index (`i`) ႁင်းၵူၺ်း လႄႈ ဢမ်ႇလူဝ်ႇၵူဝ်ဝႃႈတေပၼ်ႇပူၼ်ႉ (Out of bounds) ယဝ်ႉ။

---

### 2. The 'forEach' Method

`forEach` ၼႆႉပဵၼ် **Method** ဢၼ်မီးဝႆႉၼႂ်း Iterable objects (မိူၼ်ၼင်ႇ List)။ မၼ်းတေႁွင်ႉ Anonymous Function မႃးႁဵတ်းၵၢၼ်ပၼ် ၵူႈ Element ယဝ်ႉ။

**Example: Using forEach**

```dart
List<int> numbers = [10, 20, 30];

numbers.forEach((num) {
  print("Number: $num");
});

// လၢႆးတႅမ်ႈပွတ်း (Arrow Function)
numbers.forEach((num) => print("Short: $num"));

```

---

### 3. Usage with Maps

ႁဝ်းၸၢင်ႈၸႂ်ႉ `forEach` တႃႇဢဝ်တင်း **Key** လႄႈ **Value** ဢွၵ်ႇမႃးၸႂ်ႉၵမ်းလဵဝ်လႆႈ။

**Example: Map Iteration**

```dart
Map<String, String> capitalCity = {
  "Thailand": "Bangkok",
  "Japan": "Tokyo",
  "Myanmar": "Naypyidaw"
};

capitalCity.forEach((country, city) {
  print("The capital of $country is $city.");
});

```

---

### 4. Comparison Summary

* **`for-in`**: လီသုတ်း တႃႇၵၢၼ်ႁဵတ်း Logic ဢၼ်မီးလၢႆထႅဝ် ဢမ်ႇၼၼ် မိူဝ်ႈလူဝ်ႇၸႂ်ႉ `break` လႄႈ `continue` (ယွၼ်ႉ `forEach` ဢမ်ႇၸၢင်ႈၸႂ်ႉ break/continue လႆႈ)။
* **`forEach`**: လီသုတ်း တႃႇၵၢၼ်ႁဵတ်း Logic ငၢႆႈငၢႆႈၼႂ်းထႅဝ်လဵဝ် ဢမ်ႇၼၼ် မိူဝ်ႈၶႂ်ႈသူင်ႇ Function ဢၼ်မီးဝႆႉယဝ်ႉ ၵႂႃႇႁဵတ်းၵၢၼ်။
