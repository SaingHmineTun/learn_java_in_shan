## 42) Transforming Collections (map, where, toList)

ၼႂ်းတွၼ်ႈသိၼ်သုတ်းၶေႃႈ **Module 6** ၼႆႉ ႁဝ်းတေမႃးတူၺ်းလၢႆး "ပိၼ်ႇလႅၵ်ႈ" (Transform) Collection ႁႂ်ႈပဵၼ်ပိူင်မႂ်ႇ ၸွမ်းၼင်ႇႁဝ်းလူဝ်ႇယဝ်ႉ။ ၼႆႉပဵၼ်လၢႆးႁဵတ်းၵၢၼ်ဢၼ်ၵတ်ႉၶႅၼ်ႇလိူဝ်ၵၢၼ်ၸႂ်ႉ `for` loop ယူဝ်းယူဝ်းၼၼ်ႉယဝ်ႉ။

---

### 1. `.where()` - ၵၢၼ်လိူၵ်ႈ (Filtering)

`.where()` ၸႂ်ႉတႃႇလိူၵ်ႈဢဝ်ၶေႃႈမုၼ်း ဢၼ်ၵပ်းၵၢႆႇၸွမ်း Condition ဢၼ်ႁဝ်းပၼ်ဝႆႉ။ မၼ်းတေသူင်ႇ Item ဢၼ်ပဵၼ် `true` ဢွၵ်ႇမႃးပၼ်ယဝ်ႉ။

**Example: Filter even numbers**

```dart
void main() {
  var numbers = [1, 2, 3, 4, 5, 6];
  
  // လိူၵ်ႈဢဝ်ၵူၺ်း မၢႆၵူပ်ႉ (Even numbers)
  var evens = numbers.where((n) => n % 2 == 0);
  
  print(evens); // (2, 4, 6) -> ၼႆႉပဵၼ် Iterable
}

```

---

### 2. `.map()` - ၵၢၼ်လႅၵ်ႈလၢႆႈ (Mapping)

`.map()` ၸႂ်ႉတႃႇ "လႅၵ်ႈ" (Transform) ၶေႃႈမုၼ်းၵူႈဢၼ်ၼႂ်း List ႁႂ်ႈပဵၼ်ပိူင်မႂ်ႇ။ တူဝ်ယၢင်ႇ: လႅၵ်ႈမၢႆၼပ်ႉ ႁႂ်ႈပဵၼ် တူဝ်လိၵ်ႈ။

**Example: Doubling numbers**

```dart
void main() {
  var numbers = [1, 2, 3];
  
  // ဢဝ်မၢႆၼပ်ႉၵူႈတူဝ် မႃးပိုၼ်သွင်
  var doubled = numbers.map((n) => n * 2);
  
  print(doubled); // (2, 4, 6)
}

```

---

### 3. `.toList()` - ၵၢၼ်ပိၼ်ႇပဵၼ် List

မိူဝ်ႈႁဝ်းၸႂ်ႉ `.map()` ဢမ်ႇၼၼ် `.where()`၊ Dart တေသူင်ႇ `Iterable` (ဢၼ်မီးမၢႆ `( )`) ဢွၵ်ႇမႃး။ တႃႇတေဢဝ်မၼ်းၵႂႃႇၸႂ်ႉၼႂ်း UI ဢမ်ႇၼၼ် ၸႂ်ႉ Index လႆႈၼၼ်ႉ ႁဝ်းတေလႆႈပိၼ်ႇမၼ်းပဵၼ် **List** ၶိုၼ်းလူၺ်ႈ `.toList()` ယဝ်ႉ။

**Example:**

```dart
var result = numbers.where((n) => n > 2).toList();
print(result); // [3, 4, 5, 6] -> ယၢမ်းၼႆႉပဵၼ် List တႅတ်ႈတေႃးယဝ်ႉ

```

---

### 4. Method Chaining (ၵၢၼ်ၸႂ်ႉသိုပ်ႇၵၼ်)

ႁဝ်းၸၢင်ႈဢဝ် Methods ၸိူဝ်းၼႆႉ မႃးသိုပ်ႇၵၼ် (Chain) တႃႇႁဵတ်းၵၢၼ်ဢၼ်ယၢပ်ႇယၢပ်ႇ ၼႂ်း Code ထႅဝ်လဵဝ်လႆႈ။

**Example: Filter -> Map -> List**

```dart
void main() {
  var users = ["sai sai", "su su", "kyaw kyaw", "aung aung"];

  // 1. လိူၵ်ႈဢဝ်ၵူၺ်း ၸိုဝ်ႈဢၼ်တႄႇလူၺ်ႈ "s"
  // 2. ပိၼ်ႇၸိုဝ်ႈၼၼ်ႉ ႁႂ်ႈပဵၼ် တူဝ်လူင် (Uppercase)
  // 3. ပိၼ်ႇပဵၼ် List
  var filteredUsers = users
      .where((name) => name.startsWith("s"))
      .map((name) => name.toUpperCase())
      .toList();

  print(filteredUsers); // [SAI SAI, SU SU]
}

```

---

### Summary Table

| Method | Goal (ယိူင်းဢၢၼ်း) | Result Example |
| --- | --- | --- |
| **`.where()`** | ၵၢၼ်လိူၵ်ႈ (Filter) | `(2, 4, 6)` |
| **`.map()`** | ၵၢၼ်လႅၵ်ႈ (Transform) | `("A", "B")` |
| **`.toList()`** | ၵၢၼ်ပိၼ်ႇ (Convert) | `[1, 2, 3]` |
| **`.any()`** | ထတ်းဝႃႈ မီးသေဢၼ်ဢၼ်မႅၼ်ႈႁႃႉ? | `true / false` |
| **`.every()`** | ထတ်းဝႃႈ မႅၼ်ႈၵူႈဢၼ်ႁႃႉ? | `true / false` |

---
