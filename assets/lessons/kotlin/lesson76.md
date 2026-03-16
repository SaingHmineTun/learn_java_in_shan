# တွၼ်ႈသွၼ် 76: Generics (Type Parameters <T>)

**Generics** ပွင်ႇဝႃႈ "ၵၢၼ်သၢင်ႈ Class ဢမ်ႇၼၼ် Function ဢၼ်ပႆႇမၵ်းမၼ်ႈ Type မၼ်းတႄႉတႄႉ"။ ႁဝ်းတေၸႂ်ႉတူဝ်လိၵ်ႈတႅၼ်း (Type Parameter) ဝႆႉဢွၼ်တၢင်း၊ ယဝ်ႉၸင်ႇမႃးမၵ်းမၼ်ႈ Type တႄႉမၼ်း မိူဝ်ႈႁွင်ႉၸႂ်ႉယဝ်ႉ။

### 1. ပၼ်ႁႃ: သင်ဢမ်ႇမီး Generics

သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈသၢင်ႈ Class တႃႇသိမ်းၶေႃႈမုၼ်း (Box):

* လူဝ်ႇသိမ်း Int -> တႅမ်ႈ `IntBox`
* လူဝ်ႇသိမ်း String -> တႅမ်ႈ `StringBox`

> **ၽွၼ်းเสีย:** ၶူတ်ႉသုၵ်ႉယုင်ႈ လႄႈ တႅမ်ႈသမ်ႉၵၼ်လၢႆတီႈ (Code Duplication)။

### 2. လၢႆးၵႄႈ: ၸႂ်ႉ Generics `<T>`

ႁဝ်းၸႂ်ႉ `<T>` (တႅၼ်းၶေႃႈၵႂၢမ်း **Type**) တႃႇလၢတ်ႈဝႃႈ "တူဝ်ၼႆႉ တေပဵၼ် Type သင်ၵေႃႈလႆႈ"။

```kotlin
// T ပဵၼ် Type Parameter (ၸိုဝ်ႈတႅၼ်း)
class Box<T>(val content: T)

fun main() {
    // ၵမ်းၼႆႉ Box တူဝ်လဵဝ် ၸႂ်ႉလႆႈတင်းหมด
    val intBox = Box<Int>(100)
    val stringBox = Box<String>("Hello")
    val doubleBox = Box(3.14) // Kotlin တေႁူႉ (Infer) ႁင်းၵူၺ်းဝႃႈပဵၼ် Double
}

```

---

### 3. Generic Functions

ႁဝ်းဢမ်ႇၵူၺ်းၸႂ်ႉလႆႈၸွမ်း Class၊ ႁဝ်းၸၢင်ႈၸႂ်ႉၸွမ်း Function ၵေႃႈလႆႈယဝ်ႉ။

```kotlin
fun <T> printContent(item: T) {
    println("Item is: $item")
}

fun main() {
    printContent(10)      // T တေပဵၼ် Int
    printContent("Sai")   // T တေပဵၼ် String
}

```

---

### 4. ၵွပ်ႈသင်ၸင်ႇထုၵ်ႇလီၸႂ်ႉ?

* **Code Reusability:** တႅမ်ႈၶူတ်ႉပွၵ်ႈလဵဝ် ၸႂ်ႉလႆႈၵူႈ Type။
* **Type Safety:** Compiler တေၸွႆႈထတ်းတူၺ်းဝႃႈ ႁဝ်းၸႂ်ႉ Type ထုၵ်ႇမႅၼ်ႈႁႃႉ (ဢမ်ႇမိူၼ် `Any` ဢၼ်ၸၢင်ႈႁဵတ်းႁႂ်ႈ App Crash ငၢႆႈ)။
* **Clean Code:** လူတ်းယေႃႈၵၢၼ်တႅမ်ႈၶူတ်ႉသမ်ႉၵၼ်။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Type Parameter (`<T>`):** တူဝ်လိၵ်ႈဢၼ်ၸႂ်ႉတႅၼ်း Type ၸူဝ်ႈၶၢဝ်း (ၵႆႉၸႂ်ႉ T, E, K, V)။
* **Type Argument:** Type တႄႉတႄႉ ဢၼ်ႁဝ်းသူင်ႇၶဝ်ႈၵႂႃႇမိူဝ်ႈႁွင်ႉၸႂ်ႉ (မိူၼ်ၼင်ႇ `Int`, `String`)။
* **Reusability:** တၢင်းၵတ်ႉဢၼ်ၶူတ်ႉၸၢင်ႈဢဝ်မႃးၸႂ်ႉသမ်ႉလႆႈ လၢႆလၢႆပိူင်။
* **Type Inference:** ၵၢၼ်ဢၼ် Kotlin Compiler ႁူႉလႆႈႁင်းၵူၺ်းဝႃႈ Type ၼၼ်ႉပဵၼ်သင် လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈလၢတ်ႈ။

---