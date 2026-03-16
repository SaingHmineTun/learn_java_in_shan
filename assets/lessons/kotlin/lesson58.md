# တွၼ်ႈသွၼ် 58: Higher-Order Functions (ၵၢၼ်သူင်ႇ Function ပဵၼ် Argument)

**Higher-Order Function** ပွင်ႇဝႃႈ Function ဢၼ်မီးတၢင်းၵတ်ႉယူႇ 2 ယၢင်ႇ (ဢၼ်လႂ်ဢၼ်ၼိုင်ႈၵေႃႈယဝ်ႉ):

1. ႁပ်ႉဢဝ် **Function တၢင်ႇဢၼ်** ပဵၼ် Parameter (Argument)။
2. သူင်ႇဢွၵ်ႇ (**Return**) Function ၼိုင်ႈဢၼ် ၵႂႃႇပဵၼ် Result။

ဝၼ်းၼႆႉ ႁဝ်းတေမႃးတူၺ်းလွင်ႈၵၢၼ် **သူင်ႇ (Passing)** ဢွၼ်တၢင်းၶႃႈ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

တႃႇတေႁပ်ႉ Function လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈ **Function Type** ဝႆႉၼႂ်း Parameter ယဝ်ႉ။

```kotlin
// Function ၼႆႉႁပ်ႉ String ၼိုင်ႈတူဝ် လႄႈ Logic (Function) ၼိုင်ႈတူဝ်
fun repeatTask(times: Int, action: (Int) -> Unit) {
    for (i in 1..times) {
        action(i) // ႁွင်ႉၸႂ်ႉ Function ဢၼ်သူင်ႇၶဝ်ႈမႃး
    }
}

```

---

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Usage)

ႁဝ်းၸၢင်ႈသူင်ႇ Lambda ၶဝ်ႈၵႂႃႇလႆႈၵမ်းလဵဝ်:

```kotlin
fun main() {
    // သူင်ႇ Lambda ၶဝ်ႈၵႂႃႇ (ၸႂ်ႉ Trailing Lambda Syntax)
    repeatTask(3) { index ->
        println("ႁဵတ်းၵၢၼ်ပွၵ်ႈၵမ်း $index")
    }
}

```

### 3. ၵွပ်ႈသင်ၸင်ႇလီ? (The Power of Flexibility)

Higher-order functions ႁဵတ်းႁႂ်ႈၶူတ်ႉႁဝ်း **Generic** (ၸႂ်ႉလႆႈၵူႈလွင်ႈ) လိူဝ်ၵဝ်ႇ။ တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၼပ်ႉၶေႃႈမုၼ်း (Calculator) ၼႆႉၶႃႈ:

```kotlin
fun rollDice(logic: (Int) -> String) {
    val result = (1..6).random()
    println(logic(result)) // Logic တေပႅၵ်ႇၵၼ် ၸွမ်းၼင်ႇႁဝ်းသူင်ႇၶဝ်ႈ
}

fun main() {
    // ပွၵ်ႈၼႆႉ သူင်ႇ Logic တႃႇပိၼ်ႇပဵၼ်ၶေႃႈၵႂၢမ်း
    rollDice { "You rolled a $it" }
    
    // ပွၵ်ႈၼႆႉ သူင်ႇ Logic တႃႇထတ်းတူၺ်းဝႃႈ ၵျၼႄႇ (Lucky)
    rollDice { if (it == 6) "Lucky!" else "Try again" }
}

```

---

### 4. တူဝ်ယၢင်ႇၼႂ်း Kotlin Standard Library

ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Higher-order function ယူႇၵူႈဝၼ်း လူၺ်ႈဢမ်ႇႁူႉတူဝ်ယဝ်ႉ၊ မိူၼ်ၼင်ႇ:

* `filter { ... }`
* `map { ... }`
* `forEach { ... }`

ၸိူဝ်းၼႆႉတင်းหมด ပဵၼ် Function ဢၼ်ႁပ်ႉဢဝ် Logic (Lambda) ၶွင်ၸဝ်ႈၵဝ်ႇ ၵႂႃႇႁဵတ်းၵၢၼ်ပၼ်ၼၼ်ႉယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Higher-Order Function:** Function ဢၼ် "သုင်လိူဝ်" Function ပၵ်းပၵ်း ၵွပ်ႈမၼ်းၸတ်းၵၢၼ် Function တၢင်ႇဢၼ်လႆႈ။
* **Function Type:** ပိူင်ၶွင် Function ဢၼ်မၵ်းမၼ်ႈ Input လႄႈ Output (မိူၼ်ၼင်ႇ `(Int) -> Unit`)။
* **Callback:** ၸိုဝ်ႈဢၼ်ၵႆႉလေႇႁွင်ႉ Lambda ဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇ ႁႂ်ႈမၼ်း "ႁွင်ႉၶိုၼ်း" မိူဝ်ႈၵၢၼ်ယဝ်ႉ။
* **Abstraction:** ၵၢၼ်ယႅၵ်ႈ "လွၵ်းလၢႆးႁဵတ်း" ဢွၵ်ႇတီႈ "Logic ပၵ်းပၵ်း"။

---