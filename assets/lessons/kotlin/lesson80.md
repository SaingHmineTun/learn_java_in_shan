
# တွၼ်ႈသွၼ် 80: Inline Classes (Value Classes)

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇၶႂ်ႈသၢင်ႈ Class တႃႇၵုမ်းၵမ် "မၢႆပတ်ႉသပိုတ်ႇ" (ID) ဢမ်ႇၼၼ် "ၵႃႈငိူၼ်း" (Password) ႁႂ်ႈမၼ်း Type Safe၊ ၵူၺ်းၵႃႈ ၸဝ်ႈၵဝ်ႇၵေႃႈဢမ်ႇၶႂ်ႈႁႂ်ႈမၼ်းၵိၼ် Memory မိူၼ် Class ပၵ်းပၵ်း။ ၼႆႉယဝ်ႉပဵၼ်တီႈဢၼ် Value Class တေမႃးၸွႆႈၶႃႈ။

### 1. ပၼ်ႁႃ: Wrap တူဝ်ၼပ်ႉလူၺ်ႈ Class ပၵ်းပၵ်း

မိူဝ်ႈႁဝ်းသၢင်ႈ `class Password(val value: String)`၊ ၵူႈပွၵ်ႈဢၼ်ႁဝ်းသၢင်ႈ Object မၼ်း၊ Kotlin တေလႆႈၸႂ်ႉ Memory တႃႇသိမ်း Object ၼၼ်ႉတႄႉတႄႉ (Heap allocation)။ သင်မီး Password ၼပ်ႉႁူဝ်ႁဵင်တူဝ်၊ မၼ်းတေႁဵတ်းႁႂ်ႈ App ၼၵ်း။

### 2. လၢႆးၵႄႈ: @JvmInline value class

မိူဝ်ႈႁဝ်းသႂ်ႇ `value class`၊ Kotlin Compiler တေ "ယႃႉ" Class ၼၼ်ႉပႅတ်ႈ မိူဝ်ႈမၼ်းပဵၼ် Bytecode သေ ဢဝ်ၵႃႈ (Value) ၼႂ်းမၼ်းၼၼ်ႉမႃးၸႂ်ႉၵမ်းလဵဝ်။

* **တွၼ်ႈတႅမ်ႈ:** ၸဝ်ႈၵဝ်ႇႁၼ်မၼ်းပဵၼ် Class (မီး Type Safety)။
* **တွၼ်ႈ Run:** မၼ်းပဵၼ်ၵူၺ်း Primitive Type (မိူၼ်ၼင်ႇ String ဢမ်ႇၼၼ် Int) ဢၼ်ဢမ်ႇၼၵ်း Memory။

```kotlin
@JvmInline
value class Password(val s: String)

fun main() {
    // ၼႂ်းၶူတ်ႉ Kotlin ႁဝ်းႁၼ်မၼ်းပဵၼ် Class
    val securePassword = Password("123456")
    
    // ၵူၺ်းၵႃႈ မိူဝ်ႈ Run၊ မၼ်းတေပဵၼ်ၵူၺ်း String "123456" 
    // ဢမ်ႇမီး Object Overhead!
    println(securePassword.s)
}

```

---

### 3. ပၵ်းပိူင်ၶွင် Value Classes

* တေလႆႈမီး **Property လဵဝ်** ၵူၺ်း (Primary constructor)။
* တေလႆႈပဵၼ် **Read-only** (`val`)။
* တေလႆႈသႂ်ႇ `@JvmInline` (တႃႇ Kotlin/JVM)။
* ၸၢင်ႈမီး `init` block လႄႈ Functions ၼႂ်းတူဝ်မၼ်းလႆႈယူႇ။

---

### 4. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ?

* **Domain Types:** မိူၼ်ၼင်ႇ `UserId`, `OrderId` (တႃႇႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈသူင်ႇ ID ၽိတ်းတူဝ်)။
* **Measurement Units:** မိူၼ်ၼင်ႇ `Minutes`, `Millis`, `Kilograms` (တႃႇဝႄႉၵၢၼ်ဢဝ်ၼႃႉထီႉမႃးၼပ်ႉႁူမ်ႈတင်းၸူဝ်ႈမွင်း)။

```kotlin
value class Minutes(val count: Int)

fun waitFor(time: Minutes) {
    // ...
}

// waitFor(10) // ❌ Error: တေလႆႈသူင်ႇ Minutes ၵူၺ်း
waitFor(Minutes(10)) // ✅ Safe လႄႈ Fast

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Overhead:** ၵၢၼ်ၸႂ်ႉ Memory ဢမ်ႇၼၼ် ၶၢဝ်းယၢမ်း CPU ဢၼ်ပူၼ်ႉလိူဝ်ၵၢၼ်လူဝ်ႇၸႂ်ႉတႄႉ (Inline class ၸွႆႈလူတ်းယေႃႈလွင်ႈၼႆႉ)။
* **Primitive Type:** Type ပိုၼ်ႉထၢၼ် (မိူၼ်ၼင်ႇ Int, Long) ဢၼ်ဢမ်ႇၸႂ်ႈ Object။
* **Type Safety:** ၵၢၼ်မၵ်းမၼ်ႈ Type ႁႂ်ႈထုၵ်ႇမႅၼ်ႈ ႁႂ်ႈဝႄႉလႆႈ Bugs ၼႂ်းၵၢၼ်တႅမ်ႈၶူတ်ႉ။
* **Wrapper Class:** Class ဢၼ်ႁေႃႇၶေႃႈမုၼ်းတူဝ်ၼိုင်ႈဝႆႉ (မိူၼ်ၼင်ႇ ဢဝ် Class မႃးႁေႃႇ String)။

---