# တွၼ်ႈသွၼ် 63: Inline Functions လႄႈ Performance

မိူဝ်ႈႁဝ်းၸႂ်ႉ Higher-Order Functions (Function ဢၼ်ႁပ်ႉ Lambda), Kotlin တေလႆႈသၢင်ႈ **Object** မႃးတႃႇ Lambda ၼၼ်ႉယူႇတႃႇသေႇ။ သင်ႁဝ်းႁွင်ႉၸႂ်ႉမၼ်းၼႂ်း Loop ၼပ်ႉလၢၼ်ႉပွၵ်ႈ၊ မၼ်းတေႁဵတ်းႁႂ်ႈ Memory ယုင်ႈယၢင်ႇယဝ်ႉ။

### 1. ပၼ်ႁႃ: Overheads ၶွင် Lambda

ၵူႈပွၵ်ႈဢၼ်ႁဝ်းသူင်ႇ Lambda ၶဝ်ႈၵႂႃႇ၊ Kotlin (ၼႂ်း JVM) တေလႆႈသၢင်ႈ Instance ၶွင် Function Interface ၼၼ်ႉဝႆႉၼႂ်း Memory (Heap)။ ၼႆႉႁွင်ႉဝႃႈ **Runtime Overhead** ယဝ်ႉ။

### 2. Logic ၶွင် `inline` (ၵၢၼ်ၵေႃပီႉၶူတ်ႉ)

မိူဝ်ႈႁဝ်းသႂ်ႇ Keyword **`inline`** ဝႆႉၽၢႆႇၼႃႈ `fun`၊ Compiler တေဢမ်ႇသၢင်ႈ Object ပၼ် Lambda ယဝ်ႉ။ မၼ်းတေ **"ၵေႃပီႉ (Copy)"** ၶူတ်ႉၼႂ်း Lambda ၼၼ်ႉ ၵႂႃႇဝႆႉတီႈဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉမၼ်းၵမ်းလဵဝ် မိူဝ်ႈ Compile ယဝ်ႉ။

```kotlin
// 1. မၵ်းမၼ်ႈပဵၼ် inline
inline fun execute(action: () -> Unit) {
    println("Before action")
    action()
    println("After action")
}

fun main() {
    // 2. မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ
    execute { println("Hello Inline!") }
}

```

**မိူဝ်ႈ Compile ယဝ်ႉ (Behind the scenes), ၶူတ်ႉတေပဵၼ်ၼင်ႇၼႆ:**

```kotlin
fun main() {
    println("Before action")
    println("Hello Inline!") // ၶူတ်ႉ Lambda ထုၵ်ႇၵေႃပီႉမႃးဝႆႉတီႈၼႆႉ
    println("After action")
}

```

---

### 3. ၶေႃႈလီၶွင် `inline`

* **Performance:** ဢမ်ႇလူဝ်ႇသၢင်ႈ Object မႂ်ႇ၊ ၸွႆႈလူတ်းယေႃႈၵၢၼ်ၸႂ်ႉ Memory (GC overhead)။
* **Non-local returns:** ၼႂ်း Inline function, ႁဝ်းၸၢင်ႈၸႂ်ႉ `return` တႃႇဢွၵ်ႇတီႈ Function မႄႈ (main) လႆႈၵမ်းလဵဝ် (ဢၼ် Lambda ပၵ်းပၵ်းႁဵတ်းဢမ်ႇလႆႈ)။

### 4. မိူဝ်ႈလႂ် "ဢမ်ႇထုၵ်ႇလီ" ၸႂ်ႉ `inline`?

* **Function ယၢဝ်းလူင်:** သင် Function ၼၼ်ႉမီးၶူတ်ႉၼမ်၊ ၵၢၼ်ၵေႃပီႉမၼ်းၵႂႃႇၵူႈတီႈ တေႁဵတ်းႁႂ်ႈ File App (Binary) ႁဝ်းယႂ်ႇလူင်ပူၼ်ႉတီႈ။
* **ဢမ်ႇမီး Lambda Parameter:** သင် Function ႁဝ်းဢမ်ႇႁပ်ႉ Lambda၊ ၵၢၼ်ၸႂ်ႉ `inline` တေဢမ်ႇမီးၽွၼ်းလီသင်။

---

### 5. `noinline` လႄႈ `crossinline`

* **`noinline`**: သင် Function ႁပ်ႉ Lambda သွင်တူဝ်၊ ၵူၺ်းၵႃႈႁဝ်းၶႂ်ႈ `inline` ၵူၺ်းတူဝ်လဵဝ်၊ ႁဝ်းၸႂ်ႉ Keyword ၼႆႉပိတ်းဝႆႉလႆႈ။
* **`crossinline`**: ၸႂ်ႉမိူဝ်ႈ Lambda ၼၼ်ႉတေထုၵ်ႇသူင်ႇၵႂႃႇႁဵတ်းၵၢၼ်ၼႂ်းထႅင်ႈ Scope ၼိုင်ႈ (မိူၼ်ၼင်ႇ Background Thread)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Inline Function:** Function ဢၼ် Compiler တေၵေႃပီႉၶူတ်ႉမၼ်းၵႂႃႇဝႆႉတီႈ Call site။
* **Overhead:** ၶၼ်ၸၢႆႇ/ၵၢၼ်ၸႂ်ႉ Memory ဢၼ်ဢမ်ႇလူဝ်ႇမီးၵေႃႈလႆႈ။
* **Compile-time:** ၶၢဝ်းယၢမ်းဢၼ်ပိၼ်ႇၶူတ်ႉႁဝ်း ပဵၼ် Machine Code။
* **Call Site:** တီႈဢၼ်ႁဝ်းတႅမ်ႈၸိုဝ်ႈ Function တႃႇႁွင်ႉၸႂ်ႉမၼ်း။

---