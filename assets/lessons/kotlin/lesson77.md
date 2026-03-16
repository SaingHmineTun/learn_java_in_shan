# တွၼ်ႈသွၼ် 77: Generic Constraints

**Generic Constraint** ပဵၼ်ၵၢၼ် "မၵ်းမၼ်ႈၶွပ်ႇၶဵတ်း" ပၼ် `<T>`။ မၼ်းတေႁဵတ်းႁႂ်ႈႁဝ်းၸႂ်ႉ Function ဢမ်ႇၼၼ် Property ၶွင် Type ၼၼ်ႉလႆႈ ၼႂ်းတူဝ် Generic Class/Function ႁဝ်းယဝ်ႉ။

### 1. Upper Bound (ၶွပ်ႇၶဵတ်းၸၼ်ႉသုင်)

လၢႆးဢၼ်ၵႆႉၸႂ်ႉသုတ်းၵေႃႈပဵၼ်ၵၢၼ်ၸႂ်ႉ `:` ဝႆႉၽၢႆႇလင် `T`။ မၼ်းပွင်ႇဝႃႈ `T` တေလႆႈပဵၼ် Type ဢၼ်မၵ်းမၼ်ႈဝႆႉ ဢမ်ႇၼၼ် ပဵၼ်လုၵ်ႈလၢၼ် (Sub-type) မၼ်းၵူၺ်း။

* **တူဝ်ယၢင်ႇ:** သၢင်ႈ Function ၼပ်ႉႁူမ်ႈတူဝ်ၼပ်ႉ။ ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈဝႃႈ `T` တေလႆႈပဵၼ် `Number` ၵူၺ်း။

```kotlin
// T : Number ပွင်ႇဝႃႈ T ပဵၼ်လႆႈၵူၺ်း Int, Double, Float...
fun <T : Number> calculateDouble(value: T): Double {
    return value.toDouble() * 2.0
}

fun main() {
    println(calculateDouble(10))    // ✅ Int ပဵၼ် Number
    println(calculateDouble(5.5))   // ✅ Double ပဵၼ် Number
    // calculateDouble("Sai")       // ❌ Error! String ဢမ်ႇၸႂ်ႈ Number
}

```

---

### 2. Multiple Constraints (where)

မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈလၢႆယၢင်ႇ (မိူၼ်ၼင်ႇ တေလႆႈပဵၼ် `Person` လႄႈ တေလႆႈ `Comparable` ပႃး)။ ႁဝ်းတေၸႂ်ႉ Keyword `where` ဝႆႉၽၢႆႇလင် Function ယဝ်ႉ။

```kotlin
fun <T> copyAndCompare(item: T) where T : CharSequence, T : Comparable<T> {
    if (item.length > 5) {
        // ႁဵတ်းသင်သေမဵဝ်း
    }
}

```

---

### 3. ၵွပ်ႈသင်ၸင်ႇလူဝ်ႇမၵ်းမၼ်ႈ?

* **Accessing Properties:** သင်ႁဝ်းဢမ်ႇမၵ်းမၼ်ႈဝႃႈ `T : Number`၊ ႁဝ်းတေႁွင်ႉၸႂ်ႉ `.toDouble()` ဢမ်ႇလႆႈ ၵွပ်ႈ Compiler ဢမ်ႇႁူႉဝႃႈ `T` ၼၼ်ႉမီး Function ၼၼ်ႉႁႃႉ။
* **Type Safety:** ႁႄႉၵင်ႈဢမ်ႇပၼ်ၵူၼ်းၸႂ်ႉ (Developer) သူင်ႇၶေႃႈမုၼ်းဢၼ်ဢမ်ႇၵဵဝ်ႇၶွင်ႉၶဝ်ႈမႃး။
* **Specific Logic:** ၸွႆႈႁႂ်ႈႁဝ်းတႅမ်ႈ Logic ဢၼ်လူဝ်ႇၸႂ်ႉတၢင်းၵတ်ႉၶွင် Type တူဝ်ၼၼ်ႉလႆႈ။

---

### 4. Recursive Generics

ၼႆႉပဵၼ်လၢႆးၸႂ်ႉဢၼ် "Advanced" ဢိၼ်းၼိုင်ႈ၊ ၸိူင်ႉၼင်ႇၵၢၼ်မၵ်းမၼ်ႈႁႂ်ႈ `T` တႅၵ်ႈၵၼ် (Compare) လႆႈၸွမ်းတူဝ်မၼ်းၵေႃႈ:

```kotlin
fun <T : Comparable<T>> findMax(a: T, b: T): T {
    return if (a > b) a else b
}

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Upper Bound:** ၶွပ်ႇၶဵတ်းၸၼ်ႉသုင် (Type တူဝ်လူင်ဢၼ် `T` တေလႆႈသိုပ်ႇပူၺ်း)။
* **Multiple Constraints:** ၵၢၼ်မၵ်းမၼ်ႈသၢႆငၢႆလၢႆလၢႆယၢင်ႇ ႁႂ်ႈ `T` တေလႆႈပဵၼ်ၸွမ်း။
* **Type Safety:** လွင်ႈမၼ်ႈၸႂ်ဝႃႈ Type ၶေႃႈမုၼ်းထုၵ်ႇမႅၼ်ႈၸွမ်းပိူင်။
* **Where Clause:** တွၼ်ႈဢၼ်ၸႂ်ႉတႅမ်ႈမၵ်းမၼ်ႈသၢႆငၢႆလၢႆယၢင်ႇ ၼႂ်း Kotlin။

---