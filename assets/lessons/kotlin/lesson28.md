# တွၼ်ႈသွၼ် 28: ပိူင်သၢင်ႈ Function (Parameters and Return Types)

ၼႂ်း Kotlin ႁဝ်းၸႂ်ႉ Keyword **`fun`** တႃႇသၢင်ႈ Function ယဝ်ႉ။

### 1. Anatomy of a Function (ပိူင်သၢင်ႈ Function)

ပိူင်သၢင်ႈမၼ်းမီးယူႇ 4 တွၼ်ႈလမ်ႇလွင်ႈ:

1. **Function Name:** ၸိုဝ်ႈဢၼ်ႁဝ်းတေႁွင်ႉၸႂ်ႉ (ၸႂ်ႉ camelCase)။
2. **Parameters:** ၶေႃႈမုၼ်းဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇ (Input)၊ လူဝ်ႇမီးတင်း ၸိုဝ်ႈ လႄႈ Type။
3. **Return Type:** မဵဝ်းၶေႃႈမုၼ်းဢၼ်မၼ်းတေသူင်ႇဢွၵ်ႇမႃး (Output)။
4. **Body:** ၶူတ်ႉၼႂ်းပိၵ်ႇၵႃ `{ }` ဢၼ်တေႁဵတ်းၵၢၼ်။

```kotlin
// တူဝ်ယၢင်ႇ: Function တႃႇၼပ်ႉႁူမ်ႈတူဝ်ၼပ်ႉ 2 တူဝ်
fun addNumbers(a: Int, b: Int): Int {
    val sum = a + b
    return sum
}

```

---

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ Function (Calling a Function)

မိူဝ်ႈႁဝ်းသၢင်ႈယဝ်ႉ၊ ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉမၼ်းလႆႈ လူၺ်ႈၵၢၼ်သႂ်ႇၸိုဝ်ႈမၼ်း လႄႈ သူင်ႇ Value (Arguments) ၶဝ်ႈၵႂႃႇ။

```kotlin
fun main() {
    val result = addNumbers(10, 20)
    println("ၽူၼ်ႁူမ်ႈပဵၼ်: $result") // ၽူၼ်မၼ်း: 30
}

```

---

### 3. Parameters ၼႂ်း Kotlin ပဵၼ် `val`

ၶေႃႈလမ်ႇလွင်ႈဢၼ်ၼိုင်ႈၵေႃႈပဵၼ် Parameters ဢၼ်သူင်ႇၶဝ်ႈမႃးၼၼ်ႉ မၼ်းပဵၼ် **Immutable (Read-only)** တႃႇသေႇ။ ႁဝ်းဢမ်ႇၸၢင်ႈၵႂႃႇလႅၵ်ႈလၢႆႈ Value မၼ်းၼႂ်း Function လႆႈ။

```kotlin
fun test(x: Int) {
    // x = 10 // ၼႆႉတေ Error ၵွပ်ႈ x ပဵၼ် val
}

```

---

### 4. Function ဢၼ်ဢမ်ႇမီး Return Value

သင်ဝႃႈ Function ႁဝ်း ၵူၺ်းသင်ႇႁဵတ်းၵၢၼ် (မိူၼ်ၼင်ႇ Print လိၵ်ႈ) သေ ဢမ်ႇလႆႈသူင်ႇ Value သင်ဢွၵ်ႇမႃး၊ Return Type မၼ်းတေပဵၼ် **`Unit`** ယဝ်ႉ (ႁဝ်းတေႁဵၼ်းၸႅင်ႈလႅင်းၼႂ်းတွၼ်ႈ 32)။

```kotlin
fun sayHi(name: String): Unit {
    println("မႂ်ႇသုင် $name")
}

// ဢမ်ႇၼၼ် ဢမ်ႇတႅမ်ႈ : Unit ၵေႃႈလႆႈ
fun sayHello(name: String) {
    println("Hello $name")
}

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Function:** တွၼ်ႈၶူတ်ႉဢၼ်ၸႅၵ်ႇဝႆႉ တႃႇႁဵတ်းၵၢၼ်သင်သင်ၼိုင်ႈ။
* **Parameter:** Variable ဢၼ်မၵ်းမၼ်ႈဝႆႉၼႂ်း Function တႃႇႁပ်ႉၶေႃႈမုၼ်း (Input definition)။
* **Argument:** Value တႄႉတႄႉ ဢၼ်ႁဝ်းသူင်ႇပၼ် Function မိူဝ်ႈႁွင်ႉၸႂ်ႉ (Actual value)။
* **Return Type:** မဵဝ်းၶေႃႈမုၼ်းဢၼ် Function ပၼ်ဢွၵ်ႇမႃး ဝၢႆးႁဵတ်းၵၢၼ်ယဝ်ႉ။

---