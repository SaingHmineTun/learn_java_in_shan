# တွၼ်ႈသွၼ် 70: Sorting Collections

ၼႂ်း Kotlin, ၵၢၼ် Sorting ၼႆႉငၢႆႈတႄႉတႄႉ ၵွပ်ႈမၼ်းမီး Function ဢၼ်ႁၢင်ႈႁႅၼ်းဝႆႉပၼ်ယဝ်ႉ။

### 1. ၵၢၼ်ၸတ်းပိုၼ်ႉထၢၼ် (Natural Order)

သင်ပဵၼ် List ၶွင်တူဝ်ၼပ်ႉ ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈ၊ ႁဝ်းၸႂ်ႉ `sorted()` လႆႈၵမ်းလဵဝ်။

* **`sorted()`**: ၸတ်းဢွၼ်ႇၵႂႃႇႁႃယႂ်ႇ (Ascending)။
* **`sortedDescending()`**: ၸတ်းယႂ်ႇမႃးႁႃဢွၼ်ႇ (Descending)။

```kotlin
val numbers = listOf(5, 2, 8, 1)
val asc = numbers.sorted()           // [1, 2, 5, 8]
val desc = numbers.sortedDescending() // [8, 5, 2, 1]

```

---

### 2. `sortedBy` (ၸတ်းၸွမ်း Property)

မိူဝ်ႈႁဝ်းမီး List ၶွင် Object (မိူၼ်ၼင်ႇ User ဢမ်ႇၼၼ် Product), ႁဝ်းတေလႆႈလၢတ်ႈဝႃႈ "ၶႂ်ႈၸတ်းၸွမ်းသင်?" လူၺ်ႈၵၢၼ်ၸႂ်ႉ `sortedBy` ယဝ်ႉ။

```kotlin
data class Fruit(val name: String, val weight: Int)

val fruits = listOf(Fruit("Apple", 10), Fruit("Banana", 5), Fruit("Cherry", 8))

// ၸတ်းၸွမ်း "ၼမ်ႉၼၵ်း" (Weight)
val byWeight = fruits.sortedBy { it.weight }
// Result: Banana (5), Cherry (8), Apple (10)

```

---

### 3. Custom Comparators (ၵၢၼ်ၸတ်းပိူင်သုၵ်ႉယုင်ႈ)

သင်ႁဝ်းလူဝ်ႇၸတ်းလၢႆလၢႆၸၼ်ႉ (မိူၼ်ၼင်ႇ ၸတ်းၸွမ်းၸိုဝ်ႈဢွၼ်တၢင်း၊ သင်ၸိုဝ်ႈမိူၼ်ၵၼ် ၸင်ႇၸတ်းၸွမ်းဢႃႇယု), ႁဝ်းၸႂ်ႉ `compareBy` လႆႈယဝ်ႉ။

```kotlin
val sortedList = users.sortedWith(
    compareBy<User> { it.name }.thenBy { it.age }
)

```

---

### 4. မၢႆတွင်းလမ်ႇလွင်ႈ: Sorted vs Mutable Sort

* **`sorted()`**: မၼ်းတေသူင်ႇ **List မႂ်ႇ** ဢွၵ်ႇမႃး (Immutable approach)။ List တူဝ်ၵဝ်ႇတေဢမ်ႇလႅၵ်ႈလၢႆႈ။
* **`sort()`**: မၼ်းတေၸတ်းၶေႃႈမုၼ်း **ၼႂ်း List တူဝ်ၵဝ်ႇ** ၼၼ်ႉၵမ်းလဵဝ် (Mutable list only)။

> **Pro Tip:** ၼႂ်း Kotlin ႁဝ်းမၵ်းမၼ်ႈ `sorted()` လိူဝ် ၵွပ်ႈမၼ်းလူတ်းယေႃႈ Bugs ဢၼ်ၵိူတ်ႇမႃးတီႈၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း (Side effects) ယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Ascending:** ၵၢၼ်ၸတ်းၶပ်ႉတီႈဢွၼ်ႇၵႂႃႇႁႃယႂ်ႇ (A-Z, 1-10)။
* **Descending:** ၵၢၼ်ၸတ်းၶပ်ႉတီႈယႂ်ႇမႃးႁႃဢွၼ်ႇ (Z-A, 10-1)။
* **Comparator:** ပၵ်းပိူင် ဢၼ်ၸႂ်ႉတႅၵ်ႈတူၺ်းၶေႃႈမုၼ်း 2 တူဝ် ဝႃႈတူဝ်လႂ်ထုၵ်ႇလီယူႇၼႃႈ။
* **Natural Order:** လႅမ်ႇတပ်ႉပိုၼ်ႉထၢၼ် (မိူၼ်ၼင်ႇ 1 မႃးဢွၼ်တၢင်း 2)။

---