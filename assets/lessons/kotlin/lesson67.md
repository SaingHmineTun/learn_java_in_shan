# တွၼ်ႈသွၼ် 67: Aggregates (sum, average, count, and reduce/fold)

မိူဝ်ႈႁဝ်းမီး List ၶွင်တူဝ်ၼပ်ႉ၊ Kotlin မီး Function ပိုၼ်ႉထၢၼ် ဢၼ်ႁဵတ်းႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Loop ၼပ်ႉႁင်းၵူၺ်းယဝ်ႉ။

### 1. Function ပိုၼ်ႉထၢၼ် (The Basics)

* **`sum()`**: ၼပ်ႉႁူမ်ႈၵူႈတူဝ်ၶဝ်ႈၵၼ်။
* **`average()`**: ႁႃၵႃႈၵၢင် (Mean)။
* **`count()`**: ၼပ်ႉတူၺ်းဝႃႈမီးၵိူတ်ႇတူဝ် (ၸၢင်ႈသႂ်ႇ Condition လႆႈ)။
* **`maxOrNull()` / `minOrNull()**`: ႁႃတူဝ်ယႂ်ႇသုတ်း လႄႈ တူဝ်ဢေႇသုတ်း။

```kotlin
val numbers = listOf(1, 2, 3, 4, 5)

println(numbers.sum())          // 15
println(numbers.average())      // 3.0
println(numbers.count())        // 5
println(numbers.count { it > 3 }) // 2 (လိူၵ်ႈၼပ်ႉၵူၺ်းတူဝ်ယႂ်ႇလိူဝ် 3)

```

---

### 2. `reduce` လႄႈ `fold` (ၵၢၼ်ႁူမ်ႈလူၺ်ႈတူဝ်ၵဝ်ႇ)

သင် Function ပိုၼ်ႉထၢၼ် ဢမ်ႇၵုမ်ႇထူၼ်ႈ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ `reduce` လႄႈ `fold` တႃႇတႅမ်ႈ Logic ၵၢၼ်ႁူမ်ႈၶေႃႈမုၼ်းႁင်းၵူၺ်းလႆႈ။

#### **A. `reduce**`

မၼ်းတေတႄႇဢဝ်တူဝ်ၵမ်းၼႃႈသုတ်း (Index 0) ပဵၼ်ၵႃႈတႄႇ (Initial Value) သေ ႁူမ်ႈၵႂႃႇၸူးတူဝ်ထႅပ်ႈ။

> **မၢႆတွင်း:** သင် List ပဝ်ႇ (Empty)၊ `reduce` တေ Error (Throw Exception)။

```kotlin
val combined = numbers.reduce { acc, next -> acc + next }
// 1 + 2 = 3
// 3 + 3 = 6 ... ၵႂႃႇၸိူဝ်းၼႆႉ

```

#### **B. `fold**`

မိူၼ်တင်း `reduce` ၵူၺ်းၵႃႈ ႁဝ်းမၵ်းမၼ်ႈ **"ၵႃႈတႄႇ" (Initial Value)** လႆႈႁင်းၵူၺ်း။

> **မၢႆတွင်း:** ၸႂ်ႉလႆႈတင်း List ဢၼ်ပဝ်ႇယူႇ (မၼ်းတေ Return ၵႃႈတႄႇၼၼ်ႉဢွၵ်ႇမႃး)။

```kotlin
// တႄႇတီႈ 100 သေ ႁူမ်ႈၶဝ်ႈၵႂႃႇ
val folded = numbers.fold(100) { acc, next -> acc + next } 
// ၽົນဢွၵ်ႇ: 115

```

---

### 3. ပႅၵ်ႇပၢင်ႇၵၼ်ၸိူဝ်ႉႁိုဝ်?

| Function | Initial Value | Empty List |
| --- | --- | --- |
| **`reduce`** | ၸႂ်ႉတူဝ်ၼႃႈသုတ်းၼႂ်း List | ❌ Crash (Exception) |
| **`fold`** | ႁဝ်းမၵ်းမၼ်ႈပၼ် (0, 100, "") | ✅ Safe (Returns Initial) |

---

### 4. ၵၢၼ်ၸႂ်ႉတႄႉ (Real World Example)

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး List ၶွင် `Product` သေ ႁဝ်းၶႂ်ႈၼပ်ႉႁူမ်ႈ "ၵႃႈၶၼ်" (Total Price) တင်းหมด:

```kotlin
data class Product(val name: String, val price: Double)

val cart = listOf(Product("Milk", 2.5), Product("Bread", 1.5))

// ၸႂ်ႉ fold တႃႇၼပ်ႉႁူမ်ႈ ၵႃႈတႄႇပဵၼ် 0.0
val total = cart.fold(0.0) { acc, product -> acc + product.price }
println("Total Price: $total") // 4.0

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Aggregate:** ၵၢၼ်ႁူမ်ႈၶေႃႈမုၼ်းလၢႆတူဝ် ႁႂ်ႈပဵၼ်ၵႃႈလဵဝ်။
* **Accumulator (acc):** တူဝ်သိမ်းၵႃႈႁူမ်ႈ ဢၼ်တေသူင်ႇတေႃႇၵႂႃႇၸၼ်ႉထႅပ်ႈ။
* **Initial Value:** ၵႃႈတႄႇဢွၼ်တၢင်းသုတ်း ၼႂ်းၵၢၼ်ၼပ်ႉ။
* **Terminal Operation:** Function ဢၼ်ႁဵတ်းႁႂ်ႈၵၢၼ်ၸတ်းၵၢၼ် List ယဝ်ႉတူဝ်ႈ သေသူင်ႇ Result ဢွၵ်ႇမႃး။

---