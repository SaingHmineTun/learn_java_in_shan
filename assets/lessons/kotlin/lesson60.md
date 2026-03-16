# တွၼ်ႈသွၼ် 60: Returning Functions from Other Functions

ၼႂ်း Kotlin၊ Function ဢမ်ႇၵူၺ်းႁပ်ႉ Parameter လႆႈၵူၺ်း၊ မၼ်းတိုၵ်ႉၸၢင်ႈသူင်ႇ (**Return**) Logic (Lambda) ဢွၵ်ႇမႃး ႁႂ်ႈႁဝ်းဢဝ်ၵႂႃႇၸႂ်ႉတီႈတၢင်ႇလႆႈထႅင်ႈယဝ်ႉ။ ၼႆႉမိူၼ်ၼင်ႇ "ၵၢၼ်သၢင်ႈၸၢၵ်ႈ (Factory)" ဢၼ်ႁဵတ်းဢွၵ်ႇ Logic ပႅၵ်ႇပႅၵ်ႇၵၼ် ၸွမ်းၼင်ႇႁဝ်းလူဝ်ႇၼၼ်ႉယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းတေလႆႈမၵ်းမၼ်ႈ **Return Type** ပဵၼ် **Function Type** ၼႂ်း Function Header ယဝ်ႉ။

```kotlin
// Function ၼႆႉႁပ်ႉ String သေ သူင်ႇဢွၵ်ႇ Function (String) -> String
fun getGreetingLogic(type: String): (String) -> String {
    return when (type) {
        "formal" -> { name -> "Good day, Mr./Ms. $name" }
        "casual" -> { name -> "Yo $name! What's up?" }
        else -> { name -> "Hello $name" }
    }
}

```

---

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Usage)

မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Function မႄႈ၊ မၼ်းတေသူင်ႇ Logic မႃးပၼ်ႁဝ်း။ ႁဝ်းၸၢင်ႈသိမ်း Logic ၼၼ်ႉဝႆႉသေ ႁွင်ႉၸႂ်ႉမိူဝ်ႈလႂ်ၵေႃႈလႆႈယဝ်ႉ။

```kotlin
fun main() {
    // 1. ႁွင်ႉဢဝ် Logic တႃႇၵၢၼ် Casual
    val greetMe = getGreetingLogic("casual")
    
    // 2. ၸႂ်ႉ Logic ၼၼ်ႉ (သူင်ႇ String ၶဝ်ႈၵႂႃႇ)
    println(greetMe("Sai")) // ၽူၼ်မၼ်း: Yo Sai! What's up?
    
    // ႁွင်ႉၸႂ်ႉၵမ်းလဵဝ်ၵေႃႈလႆႈ (Double parenthesis)
    println(getGreetingLogic("formal")("Kyaw")) // Good day, Mr./Ms. Kyaw
}

```

---

### 3. ၵွပ်ႈသင်ၸင်ႇလီ? (The Power of Factories)

ၵၢၼ်သူင်ႇ Function ဢွၵ်ႇမႃးၼႆႉ ၸွႆႈႁႂ်ႈႁဝ်းသၢင်ႈ **"Logic Factory"** လႆႈ။

* **Customization:** သၢင်ႈ Logic ဢၼ်ပႅၵ်ႇၵၼ် ၸွမ်းၼင်ႇ Configuration (မိူၼ်ၼင်ႇ တူဝ်ၼပ်ႉၶွၼ်ႇ (Tax Calculator) ဢၼ်ပႅၵ်ႇၵၼ်ၸွမ်းမိူင်း)။
* **Lazy Execution:** ႁဝ်းသၢင်ႈ Logic ဝႆႉယဝ်ႉ၊ ၵူၺ်းၵႃႈ "ပႆႇႁဵတ်းၵၢၼ်" တေႃႇပေႃးႁဝ်းလူဝ်ႇမၼ်းတႄႉတႄႉ။

```kotlin
fun getTaxCalculator(taxRate: Double): (Double) -> Double {
    return { amount -> amount * taxRate }
}

val thaiTax = getTaxCalculator(0.07)
println(thaiTax(100.0)) // 7.0

```

---

### 4. ၶေႃႈတွၼ်းသတိ

မိူဝ်ႈႁဝ်းသူင်ႇ Function ဢွၵ်ႇမႃး၊ မၼ်းတေ "မၢႆတွင်း" (Capture) ၶေႃႈမုၼ်းဢၼ်ယူႇၸွမ်းႁိမ်းႁွမ်းမၼ်းဝႆႉ (ၼႆႉႁွင်ႉဝႃႈ **Closures** ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်းတွၼ်ႈ 62)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Return Type:** မဵဝ်းၶေႃႈမုၼ်းဢၼ် Function သူင်ႇဢွၵ်ႇမႃး (တီႈၼႆႉပဵၼ် Function Type)။
* **Function Factory:** Function ဢၼ်မီးၼႃႈတီႈသၢင်ႈ လႄႈ သူင်ႇဢွၵ်ႇ Function တၢင်ႇဢၼ်။
* **Lazy Execution:** ၵၢၼ်ယၼ်ႇၶၢဝ်းယၢမ်းၵၢၼ်ႁဵတ်းၵၢၼ် တေႃႇပေႃးလူဝ်ႇတႄႉတႄႉ။
* **High-Order Function:** (ၶိုၼ်း) Function ဢၼ်ႁပ်ႉ ဢမ်ႇၼၼ် သူင်ႇ Function တၢင်ႇဢၼ်။

---