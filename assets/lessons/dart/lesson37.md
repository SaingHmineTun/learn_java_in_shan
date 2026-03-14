## 37) Essential List Methods (add, remove, sort)

မိူဝ်ႈႁဝ်းမီး List ယဝ်ႉ၊ ၵၢၼ်ၵုမ်းၵၢၼ် (Manipulate) ၶေႃႈမုၼ်းၼႂ်းၼၼ်ႉ ပဵၼ်တွၼ်ႈဢၼ်လမ်ႇလွင်ႈသုတ်း။ Dart မီး **Methods** ဝႆႉလၢႆဢၼ် တႃႇႁႂ်ႈႁဝ်းထႅမ်၊ ထွၼ်၊ လႄႈ ၸတ်းလမ်ႇดับၶေႃႈမုၼ်းလႆႈငၢႆႈငၢႆႈ။

---

### 1. Adding Elements (ၵၢၼ်ထႅမ်ၶေႃႈမုၼ်း)

ႁဝ်းၸၢင်ႈထႅမ်ၶေႃႈမုၼ်းသႂ်ႇလႆႈ တင်းပဵၼ်ဢၼ်လဵဝ် ဢမ်ႇၼၼ် ထႅမ်ပဵၼ်ၸုမ်းၵမ်းလဵဝ်ၵေႃႈလႆႈ။

* **`.add(value)`**: ထႅမ်ၶေႃႈမုၼ်း 1 ဢၼ် သႂ်ႇၽၢႆႇလုၼ်ႈသုတ်း။
* **`.addAll([list])`**: ထႅမ် List တၢင်ႇဢၼ် သႂ်ႇၽၢႆႇလုၼ်ႈသုတ်း။
* **`.insert(index, value)`**: ထႅမ်ၶေႃႈမုၼ်းသႂ်ႇ တီႈဢွင်ႈတီႈ (Index) ဢၼ်ႁဝ်းၶႂ်ႈလႆႈတႅတ်ႈတေႃး။

**Example:**

```dart
List<String> cart = ["Milk", "Bread"];

cart.add("Eggs");               // ["Milk", "Bread", "Eggs"]
cart.addAll(["Apple", "Mango"]); // ["Milk", "Bread", "Eggs", "Apple", "Mango"]
cart.insert(1, "Sugar");        // ["Milk", "Sugar", "Bread", ...]

```

---

### 2. Removing Elements (ၵၢၼ်ထွၼ်ၶေႃႈမုၼ်း)

ႁဝ်းၸၢင်ႈထွၼ်ၶေႃႈမုၼ်းဢွၵ်ႇ လူၺ်ႈၵၢၼ်ၸႂ်ႉ "ၸိုဝ်ႈ" ဢမ်ႇၼၼ်ၸႂ်ႉ "Index" မၼ်းယဝ်ႉ။

* **`.remove(value)`**: ထွၼ်ဢွၵ်ႇလူၺ်ႈၵၢၼ်ၸႂ်ႉ "ၵႃႈၶၼ်" (Value)။
* **`.removeAt(index)`**: ထွၼ်ဢွၵ်ႇလူၺ်ႈၵၢၼ်ၸႂ်ႉ "Index" (မၢႆၼပ်ႉ)။
* **`.clear()`**: ယႃႉပႅတ်ႈၶေႃႈမုၼ်းတင်းသဵင်ႈၼႂ်း List (ႁႂ်ႈပဵၼ် List ပဝ်ႇ)။

**Example:**

```dart
List<int> nums = [10, 20, 30, 40];

nums.remove(20);    // [10, 30, 40]
nums.removeAt(0);  // [30, 40] (ထွၼ် 10 ဢွၵ်ႇ)

```

---

### 3. Sorting and Finding (ၵၢၼ်ၸတ်းလမ်ႇดับ လႄႈ ၵၢၼ်ႁႃ)

* **`.sort()`**: ၸတ်းလမ်ႇดับၶေႃႈမုၼ်း (သင်ပဵၼ်မၢႆၼပ်ႉ တေတႄႇတီႈလဵၵ်ႉၵႂႃႇယႂ်ႇ၊ သင်ပဵၼ် String တေၸတ်းၸွမ်း A-Z)။
* **`.contains(value)`**: ၵူတ်ႇထတ်းဝႃႈ မီးၶေႃႈမုၼ်းၼၼ်ႉယူႇၼႂ်း List ႁႃႉ? (သူင်ႇ `true/false` ဢွၵ်ႇမႃး)။
* **`.indexOf(value)`**: ႁႃဝႃႈ ၶေႃႈမုၼ်းၼၼ်ႉ ယူႇဝႆႉတီႈ Index မၢႆလႂ်။

**Example:**

```dart
List<String> dev = ["Z", "A", "C"];
dev.sort(); // ["A", "C", "Z"]

print(dev.contains("A")); // true
print(dev.indexOf("C"));  // 1

```

---

### 4. Summary Table

| Method | What it does | Example |
| --- | --- | --- |
| **`add`** | ထႅမ် 1 ဢၼ် (Last) | `list.add(5)` |
| **`insert`** | ထႅမ်သႂ်ႇတီႈ Index တႅတ်ႈတေႃး | `list.insert(0, 10)` |
| **`remove`** | ထွၼ်လူၺ်ႈၵႃႈၶၼ် | `list.remove("Apple")` |
| **`removeAt`** | ထွၼ်လူၺ်ႈ Index | `list.removeAt(2)` |
| **`sort`** | ၸတ်းလမ်ႇดับ | `list.sort()` |

---
