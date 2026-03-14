## 36) Lists: Indexing and Growable Lists

**List** (ဢမ်ႇၼၼ် ၼႂ်း Language တၢင်ႇဢၼ်ႁွင်ႉဝႃႈ Array) ပဵၼ်ၵၢၼ်သိမ်းၶေႃႈမုၼ်းလၢႆလၢႆဢၼ် ၶပ်ႉဝႆႉလီငၢမ်းယဝ်ႉ (Ordered sequence)။ ၼႂ်း Dart၊ List ပဵၼ် Collection ဢၼ်ႁဝ်းၸႂ်ႉၼမ်သုတ်းယဝ်ႉ။

---

### 1. Zero-Based Indexing

လွင်ႈလမ်ႇလွင်ႈသုတ်း ဢၼ်တေလႆႈတွၼ်းဝႆႉၵေႃႈပဵၼ် **"မၢႆၼပ်ႉ Index တႄႇတီႈ 0 တႃႇသေႇ"**။ ၼႂ်းၵမ်ႇၽႃႇ Programming ႁဝ်းဢမ်ႇတႄႇၼပ်ႉတီႈ 1 ၶႃႈ။

* ဢၼ်ထီႉၼိုင်ႈ = Index 0
* ဢၼ်ထီႉသွင် = Index 1
* ဢၼ်ထီႉသၢမ် = Index 2

**Example:**

```dart
void main() {
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  
  print(fruits[0]); // Output: Apple
  print(fruits[2]); // Output: Cherry
}

```

---

### 2. Growable Lists (List ဢၼ်ယိုတ်ႈလႆႈ)

ၼႂ်း Dart၊ List ဢၼ်ႁဝ်းသၢင်ႈလူၺ်ႈမၢႆ `[]` ၼၼ်ႉ ပဵၼ် **Growable** တႃႇသေႇ။ မၢႆထိုင်ဝႃႈ ႁဝ်းၸၢင်ႈထႅမ်ၶေႃႈမုၼ်းသႂ်ႇ (Add) ဢမ်ႇၼၼ် ထွၼ်ဢွၵ်ႇ (Remove) ႁႂ်ႈတၢင်းယၢဝ်းမၼ်းလႅၵ်ႈလၢႆႈလႆႈၸွမ်းၼင်ႇလူဝ်ႇယဝ်ႉ။

**Example:**

```dart
void main() {
  List<int> numbers = [10, 20];
  
  // ႁဝ်းၸၢင်ႈထႅမ်ၶေႃႈမုၼ်းသႂ်ႇလႆႈ တေႃႇ memory တေတဵမ်
  numbers.add(30); 
  print(numbers); // [10, 20, 30]
}

```

---

### 3. Basic List Properties

ပဵၼ် Properties (ၵုၼ်းလၵ်းသၼ) ဢၼ်ႁဝ်းၸႂ်ႉတႃႇၵူတ်ႇထတ်း List ႁဝ်း:

| Property | Description | Result Example |
| --- | --- | --- |
| **`.length`** | တၢင်းယၢဝ်း (မီးၶေႃႈမုၼ်းလၢႆဢၼ်) | `3` |
| **`.first`** | ဢဝ်ၶေႃႈမုၼ်း တူဝ်ဢွၼ်တၢင်းသုတ်း | `"Apple"` |
| **`.last`** | ဢဝ်ၶေႃႈမုၼ်း တူဝ်လုၼ်ႈသုတ်း | `"Cherry"` |
| **`.isEmpty`** | ထတ်းသၢင်ဝႃႈ မၼ်းပဵၼ် List ပဝ်ႇႁႃႉ? | `false` |
| **`.reversed`** | ပိၼ်ႇလမ်ႇดับ (ၵူၺ်းၵႃႈ တေလႆႈၸႂ်ႉ .toList()) | `(Cherry, Banana, Apple)` |

---

### 4. Updating Values (ၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း)

ႁဝ်းၸၢင်ႈလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း တီႈ Index ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉၵမ်းလဵဝ် လူၺ်ႈၵၢၼ်ၸႂ်ႉမၢႆ `=`။

```dart
List<String> colors = ["Red", "Green", "Blue"];
colors[1] = "Yellow"; // လႅၵ်ႈ Green (Index 1) ႁႂ်ႈပဵၼ် Yellow
print(colors); // [Red, Yellow, Blue]

```

---

### ၶေႃႈသတိ (Range Error)

သင်ၸဝ်ႈၵဝ်ႇၵႂႃႇႁွင်ႉ Index ဢၼ်ဢမ်ႇမီး (တူဝ်ယၢင်ႇ: List မီး 3 ဢၼ် ၵူၺ်းၵႂႃႇႁွင်ႉ Index 5)၊ Dart တေပၼ် Error ဢၼ်ႁွင်ႉဝႃႈ **`RangeError (index)`** ယဝ်ႉ။ ၼႆႉပဵၼ် Error ဢၼ် Developer မႂ်ႇမႂ်ႇ ထူပ်းၼမ်သုတ်းယဝ်ႉ။

---
