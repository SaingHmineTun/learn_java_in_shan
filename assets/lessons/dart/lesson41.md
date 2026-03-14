## 41) Spread Operators (...) and Collection If

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးတူၺ်း "ၶိူင်ႈမိုဝ်းၶိူဝ်း" (Advanced Tools) ဢၼ်တေႁဵတ်းႁႂ်ႈၵၢၼ်သၢင်ႈ List ဢမ်ႇၼၼ် Map ႁဝ်းမီးပၢႆးဝူၼ်ႉ (Logic) လႄႈ ငၢႆႈလိူဝ်ၵဝ်ႇယဝ်ႉ။

---

### 1. Spread Operator (`...`)

**Spread Operator** (မၢႆၸုၵ်း 3 တူဝ်) ၸႂ်ႉတႃႇ "ထွၵ်ႇ" (Spread) ၶေႃႈမုၼ်းဢၼ်မီးၼႂ်း Collection ၼိုင်ႈဢၼ် သႂ်ႇၼႂ်းထႅင်ႈဢၼ်ၼိုင်ႈ။ မၼ်းမိူၼ်တင်းႁဝ်းဢဝ်ၶေႃႈမုၼ်းၼႂ်းထူင်ၼိုင်ႈ မႃးထွၵ်ႇသႂ်ႇၼႂ်းထူင်လူင်ယဝ်ႉ။

**Example: Merging Lists**

```dart
void main() {
  var colors = ["Red", "Green"];
  var moreColors = ["Blue", ...colors]; // ဢဝ် Red, Green မႃးထႅမ်သႂ်ႇ

  print(moreColors); // [Blue, Red, Green]
}

```

* **Null-aware Spread (`...?`)**: သင်ဝႃႈ List ဢၼ်ႁဝ်းတေဢဝ်မႃးထွၵ်ႇသႂ်ႇၼၼ်ႉ ပဵၼ် `null`၊ ႁဝ်းၸႂ်ႉ `...?` တႃႇႁႄႉၵင်ႈ Error ယဝ်ႉ။

---

### 2. Collection If

**Collection If** ႁဵတ်းႁႂ်ႈႁဝ်းၸၢင်ႈၸႂ်ႉ `if` ၼႂ်းၵၢၼ်သၢင်ႈ List လႆႈၵမ်းလဵဝ်။ သင် Condition မႅၼ်ႈ (True)၊ မၼ်းၸင်ႇတေထႅမ် Item ၼၼ်ႉသႂ်ႇပၼ်။

**Example:**

```dart
void main() {
  bool isPremium = true;
  
  var menu = [
    "Home",
    "News",
    if (isPremium) "VIP Content", // တေမႃးၵေႃႈတေႃႇမိူဝ်ႈ isPremium ပဵၼ် true
  ];

  print(menu); 
}

```

---

### 3. Collection For

မိူၼ်တင်း Collection If ၼင်ႇၵဝ်ႇ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ Loop `for` ၼႂ်းၵၢၼ်သၢင်ႈ List လႆႈ။

**Example:**

```dart
void main() {
  var numbers = [1, 2, 3];
  
  // သၢင်ႈ List မႂ်ႇ လူၺ်ႈၵၢၼ်ဢဝ် numbers မႃးပၼ်ႇ
  var doubled = [
    0,
    for (var n in numbers) n * 2
  ];

  print(doubled); // [0, 2, 4, 6]
}

```

---

### 4. Summary Table

| Feature | Syntax | Usage (လၢႆးၸႂ်ႉ) |
| --- | --- | --- |
| **Spread** | `...list` | ဢဝ်ၶေႃႈမုၼ်းၼႂ်း List ၵဝ်ႇ မႃးသႂ်ႇ List မႂ်ႇ |
| **Null-Spread** | `...?list` | ထွၵ်ႇၶေႃႈမုၼ်း (သင် List ၼၼ်ႉဢမ်ႇၸႂ်ႈ null) |
| **Collection If** | `if (cond) item` | ထႅမ် Item သႂ်ႇၸွမ်းၼင်ႇလွင်ႈတၢင်း (Condition) |
| **Collection For** | `for (i in list) i` | ထႅမ် Item လၢႆလၢႆဢၼ် လူၺ်ႈၵၢၼ်ပၼ်ႇ Loop |

---

