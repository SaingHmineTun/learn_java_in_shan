# တွၼ်ႈသွၼ် 71: The Power of Sequences (Lazy Processing)

ၼႂ်း Kotlin, Collections (List, Set) ႁဵတ်းၵၢၼ်ပဵၼ် **"Eager"** (ႁဵတ်းၵမ်းလဵဝ်)၊ ၵူၺ်းၵႃႈ Sequences ႁဵတ်းၵၢၼ်ပဵၼ် **"Lazy"** (ပႂ်ႉႁဵတ်းမိူဝ်ႈလူဝ်ႇ) ယဝ်ႉ။

### 1. Eager Evaluation (List)

မိူဝ်ႈႁဝ်းၸႂ်ႉ `filter` လႄႈ `map` ၸွမ်း List:

1. မၼ်းတေ `filter` ၵူႈတူဝ်ၼႂ်း List ပၼ်ယဝ်ႉတူဝ်ႈ သေသိမ်းဝႆႉၼႂ်း **Intermediate List** (List ၸူဝ်ႈၶၢဝ်း)။
2. ၸင်ႇဢဝ် List ၸူဝ်ႈၶၢဝ်းၼၼ်ႉ မႃးႁဵတ်း `map` ထႅင်ႈၵူႈတူဝ်။

> **ပၼ်ႁႃ:** သင် List မီး 1,000,000 တူဝ်၊ မၼ်းတေလႆႈသၢင်ႈ List မႂ်ႇယႂ်ႇယႂ်ႇ ၶိုၼ်ႈမႃးၼႂ်း Memory လၢႆပွၵ်ႈ။

### 2. Lazy Evaluation (Sequence)

မိူဝ်ႈႁဝ်းၸႂ်ႉ `asSequence()`:

1. မၼ်းတေဢမ်ႇႁဵတ်းသင်တေႃႇပေႃးႁဝ်းႁွင်ႉဢဝ် Result (Terminal Operation)။
2. မၼ်းတေဢဝ် "တူဝ်ၼိုင်ႈ" (One element) ၵႂႃႇႁဵတ်းတေႃႇပေႃးယဝ်ႉ Chain ၼၼ်ႉ (Filter -> Map) ၸင်ႇၵႂႃႇဢဝ်တူဝ်ထႅပ်ႈ။

> **ၽွၼ်းလီ:** ဢမ်ႇလူဝ်ႇသၢင်ႈ List ၸူဝ်ႈၶၢဝ်း၊ ၸႂ်ႉ Memory ဢေႇလိူဝ်။

---

### 3. တူဝ်ယၢင်ႇတႅၵ်ႈၵၼ် (Visualizing the Flow)

```kotlin
val numbers = listOf(1, 2, 3, 4)

// --- လၢႆး List (Eager) ---
numbers.filter { println("Filter $it"); it % 2 == 0 }
       .map { println("Map $it"); it * 2 }

// Flow: Filter 1, Filter 2, Filter 3, Filter 4 -> ၸင်ႇမႃး Map 2, Map 4

// --- လၢႆး Sequence (Lazy) ---
numbers.asSequence()
       .filter { println("Filter $it"); it % 2 == 0 }
       .map { println("Map $it"); it * 2 }
       .toList() // Terminal Operation

// Flow: Filter 1 -> Filter 2 -> Map 2 -> Filter 3 -> Filter 4 -> Map 4

```

---

### 4. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ Sequence?

1. **Large Collections:** မိူဝ်ႈၶေႃႈမုၼ်းၼမ် (ၼပ်ႉႁူဝ်ႁဵင်/ႁူဝ်လၢၼ်ႉ)။
2. **Complex Chaining:** မိူဝ်ႈမီးၵၢၼ် `filter`, `map`, `flatten` တပ်ႉၵၼ်လၢႆလၢႆၸၼ်ႉ။
3. **Early Exit:** မိူဝ်ႈႁဝ်းလူဝ်ႇႁႃၵူၺ်း "တူဝ်ဢွၼ်တၢင်းသုတ်း" (မိူၼ်ၼင်ႇ `.first()`)။ Sequence တေၵတ်းယင်ႉၵမ်းလဵဝ် မိူဝ်ႈႁၼ်တူဝ်ဢၼ်လူဝ်ႇယဝ်ႉ၊ ဢမ်ႇလူဝ်ႇတူၺ်းတူဝ်တၢင်ႇ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Eager Evaluation:** ၵၢၼ်ႁဵတ်းၵၢၼ်ၵူႈတွၼ်ႈ ႁႂ်ႈယဝ်ႉတူဝ်ႈၵမ်းလဵဝ်။
* **Lazy Evaluation:** ၵၢၼ်ယၼ်ႇၶၢဝ်းယၢမ်းၵၢၼ်ႁဵတ်းၵၢၼ် တေႃႇပေႃးလူဝ်ႇၸႂ်ႉ Result တႄႉတႄႉ။
* **Intermediate Operation:** Function ဢၼ်သူင်ႇ Sequence ဢွၵ်ႇမႃး (မိူၼ်ၼင်ႇ `map`, `filter`)။
* **Terminal Operation:** Function ဢၼ်ႁဵတ်းႁႂ်ႈ Sequence တႄႇႁဵတ်းၵၢၼ် သေသူင်ႇ Result ဢွၵ်ႇမႃး (မိူၼ်ၼင်ႇ `toList()`, `first()`, `sum()`)။

---