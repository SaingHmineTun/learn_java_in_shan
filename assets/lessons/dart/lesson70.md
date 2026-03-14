## 70) Nullable Types (?)

ၼႂ်း Dart **Null Safety**, Variable ၵူႈဢၼ်ထုၵ်ႇပိုၼ်ၽၢဝ်ႇဝႆႉႁႂ်ႈပဵၼ် **Non-nullable** (ပဵၼ် Null ဢမ်ႇလႆႈ) လူၺ်ႈ Default ယဝ်ႉ။ သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈႁႂ်ႈ Variable ၼၼ်ႉ "ႁပ်ႉလႆႈတင်းၵႃႈၶၼ် လႄႈ Null" ၸိုင်၊ ၸဝ်ႈၵဝ်ႇတေလႆႈၸႂ်ႉ **Nullable Type** ယဝ်ႉ။

---

### 1. ပိူင်ၵၢၼ်ၸႂ်ႉမၢႆ `?`

တႃႇသၢင်ႈ Nullable type, ႁဝ်းၵူၺ်းလူဝ်ႇတႅမ်ႈမၢႆ **Question Mark (`?`)** ဝႆႉၽၢႆႇလင် Type ၼၼ်ႉၵူၺ်း။

* **`String`**: တေလႆႈပဵၼ်တူဝ်လိၵ်ႈတႃႇသေႇ (ဢမ်ႇႁပ်ႉ Null)။
* **`String?`**: ပဵၼ်လႆႈတင်း တူဝ်လိၵ်ႈ ဢမ်ႇၼၼ် `null`။

**Example:**

```dart
void main() {
  String name = "Gemini"; // Non-nullable
  // name = null; // ❌ Error!

  String? nickname = "G"; // Nullable
  nickname = null; // ✅ လႆႈယူႇ! ဢမ်ႇမီးပၼ်ႁႃ
}

```

---

### 2. Why use Nullable Types?

မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇ Nullable types ယွၼ်ႉ:

* **Optional Data**: မိူၼ်ၼင်ႇ "ၸိုဝ်ႈၵၢင်" (Middle name) ဢၼ်မၢင်ၵူၼ်းမီး မၢင်ၵူၼ်းဢမ်ႇမီး။
* **Waiting for Data**: မိူဝ်ႈႁဝ်းလူတ်ႇ Data တီႈ Internet, ၼႂ်းဝိၼႃႇတီႇဢွၼ်တၢင်းသုတ်း ၶေႃႈမုၼ်းၼၼ်ႉၸၢင်ႈပဵၼ် `null` ဝႆႉယူႇ။
* **Search Results**: မိူဝ်ႈႁဝ်းႁႃၶေႃႈမုၼ်းသေဢၼ်ဢၼ်သေ "ဢမ်ႇထူပ်း"၊ မၼ်းတေသူင်ႇ `null` ၶိုၼ်းမႃး။

---

### 3. Handling Nullable Types

မိူဝ်ႈ Variable ၼၼ်ႉပဵၼ် Nullable (`?`), Dart တေဢမ်ႇပၼ်ႁဝ်းၸႂ်ႉ Methods ႁင်းမၼ်းၵမ်းလဵဝ် ယွၼ်ႉမၼ်းၵူဝ် App Crash။

```dart
String? city = "Taunggyi";

// print(city.length); // ❌ Error! Dart ဝႃႈ "city ၸၢင်ႈပဵၼ် Null ၼႃ"

if (city != null) {
  print(city.length); // ✅ လႆႈယဝ်ႉ! ယွၼ်ႉႁဝ်းၵူတ်ႇ (Check) ယဝ်ႉ
}

```

---

### 4. Comparison Matrix

| Type | Example | `null` Allowed? | Usage |
| --- | --- | --- | --- |
| **`int`** | `int age = 25;` | ❌ No | Required data |
| **`int?`** | `int? age;` | ✅ Yes | Optional data |
| **`bool`** | `bool isReady = true;` | ❌ No | Binary state |
| **`bool?`** | `bool? isReady;` | ✅ Yes | Unknown state |

---

### Summary

* **Non-nullable**: ပဵၼ် Default, ႁဵတ်းႁႂ်ႈ Code ပူတ်ႉၽေး (Safe)။
* **Nullable (`?`)**: ၸႂ်ႉမိူဝ်ႈႁဝ်းႁူႉဝႃႈ ၶေႃႈမုၼ်းၼၼ်ႉၸၢင်ႈ "ဢမ်ႇမီး" (Absent)။

---
