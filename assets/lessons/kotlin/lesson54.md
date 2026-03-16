# တွၼ်ႈသွၼ် 54: Class Delegation (ၸႂ်ႉ Keyword `by`)

ၼႂ်းတွၼ်ႈ 53 ႁဝ်းႁူႉယဝ်ႉဝႃႈ Composition လီလိူဝ် Inheritance။ ၵူၺ်းၵႃႈ Composition မီးၶေႃႈသုမ်းဢၼ်ၼိုင်ႈပဵၼ် **Boilerplate** (ႁဝ်းတေလႆႈတႅမ်ႈ Function တႃႇသူင်ႇတေႃႇပုၼ်ႈၽွၼ်း - Manual Forwarding)။ Kotlin ၸင်ႇပၼ် Keyword **`by`** မႃးတႃႇႁဵတ်းၵၢၼ်ၼႆႉပၼ်ႁင်းၵူၺ်းယဝ်ႉ။

### 1. Delegation ပွင်ႇဝႃႈသင်?

**Delegation** ပွင်ႇဝႃႈ "ၵၢၼ်ဢၢပ်ႈပုၼ်ႈၽွၼ်း"။ မၼ်းပွင်ႇဝႃႈ Class A ႁပ်ႉ Interface ၼိုင်ႈဢၼ်မႃး၊ ၵူၺ်းၵႃႈ မၼ်းဢမ်ႇတႅမ်ႈ Logic ႁင်းၵူၺ်း၊ မၼ်းဢၢပ်ႈပုၼ်ႈၽွၼ်းပၼ် Class B ပဵၼ်ၵေႃႉႁဵတ်းတႅၼ်းယဝ်ႉ။

### 2. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းၸႂ်ႉ Keyword **`by`** ဝႆႉၼႂ်း Class Header ယဝ်ႉ။

```kotlin
interface Printer {
    fun printMessage(message: String)
}

class InkjetPrinter : Printer {
    override fun printMessage(message: String) {
        println("Printing: $message (using Inkjet)")
    }
}

// Class Delegation: ဢၢပ်ႈပုၼ်ႈၽွၼ်း Printer ၵူႈယၢင်ႇပၼ် 'p'
class OfficeApp(p: Printer) : Printer by p 

fun main() {
    val myPrinter = InkjetPrinter()
    val app = OfficeApp(myPrinter)
    
    // app ၸၢင်ႈႁွင်ႉ printMessage() လႆႈၵမ်းလဵဝ် 
    // လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈ override ၼႂ်း OfficeApp
    app.printMessage("Hello Kotlin") 
}

```

---

### 3. ၵွပ်ႈသင်ၸင်ႇလီလိူဝ် Manual Composition?

သင်ဝႃႈ Interface ႁဝ်းမီး Function ယူႇ 10 ဢၼ်:

* **Manual Composition:** ႁဝ်းတေလႆႈတႅမ်ႈ `override` တင်း 10 ဢၼ် သေႁွင်ႉ `p.function1()`, `p.function2()`... ၵႂႃႇၸိူဝ်းၼၼ်ႉ။
* **Class Delegation (`by`):** ႁဝ်းတႅမ်ႈ `by p` ထႅဝ်လဵဝ်ၵူၺ်း၊ Kotlin တေတႅမ်ႈ Function တင်း 10 ဢၼ်ၼၼ်ႉဝႆႉပၼ်ယူႇၽၢႆႇလင် (Generated) ႁင်းၵူၺ်းယဝ်ႉ။

---

### 4. ၵၢၼ် Override ၼႂ်း Delegation

တင်းသႅင်ဝႃႈႁဝ်းဢၢပ်ႈပုၼ်ႈၽွၼ်းပၼ်ပိူၼ်ႈယဝ်ႉ၊ ၵူၺ်းၵႃႈ သင်ႁဝ်းၶႂ်ႈမႄး (Override) မၢင် Function ႁင်းၵူၺ်းၵေႃႈ ႁဝ်းတိုၵ်ႉတႅမ်ႈလႆႈယူႇၶႃႈ။

```kotlin
class SpecialApp(p: Printer) : Printer by p {
    // Override ၵူၺ်းဢၼ်ၼႆႉ၊ ဢၼ်တၢင်ႇၸိူဝ်းပၼ် 'p' ႁဵတ်းတႅၼ်း
    override fun printMessage(message: String) {
        println("Special Print: $message")
    }
}

```

---

### 5. ၵွပ်ႈသင်ၸင်ႇလမ်ႇလွင်ႈ?

* **Decorator Pattern:** ၸွႆႈႁႂ်ႈႁဝ်းထႅမ် "တၢင်းၵတ်ႉ" (Feature) ပၼ် Class ဢၼ်မီးဝႆႉယဝ်ႉ လႆႈငၢႆႈငၢႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇသိုပ်ႇပွင် (Inherit)။
* **Avoid Inheritance Hell:** ႁႄႉၵင်ႈပၼ်ႁႃ Class ဢၼ်ၸၼ်ႉသုင်ပူၼ်ႉတီႈ သေမႄးယၢပ်ႇ။
* **Clean Code:** ၶူတ်ႉသႅၼ်ႈသႂ် ဢမ်ႇမီးၶူတ်ႉသမ်ႉ (Boilerplate-free)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Delegation:** ၵၢၼ်ဢၢပ်ႈပုၼ်ႈၽွၼ်း ႁႂ်ႈတူဝ်တၢင်ႇဢၼ်ႁဵတ်းတႅၼ်း။
* **Delegate:** တူဝ်ဢၼ်ႁပ်ႉပုၼ်ႈၽွၼ်းၵႂႃႇႁဵတ်း (ၼႂ်းတူဝ်ယၢင်ႇပဵၼ် `p`)။
* **Boilerplate:** ၶူတ်ႉဢၼ်လူဝ်ႇတႅမ်ႈသမ်ႉသမ်ႉဝႃႈဝႃႈ ဢၼ်ဢမ်ႇမီး Logic မႂ်ႇ။
* **Decorator Pattern:** လၢႆးသၢင်ႈ Class မႂ်ႇ ဢၼ်မီးတၢင်းၵတ်ႉထႅမ်မႃး ၼိူဝ် Class တူဝ်ၵဝ်ႇ။

---