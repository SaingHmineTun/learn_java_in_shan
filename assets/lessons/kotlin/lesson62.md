# တွၼ်ႈသွၼ် 62: Closures (ၵၢၼ်ၶဝ်ႈၸႂ်ႉ Variable ၼွၵ်ႈ Scope)

ၼႂ်း Kotlin၊ Lambda Expression ၸၢင်ႈၶဝ်ႈၸႂ်ႉ (Access) လႄႈ မႄးလႅၵ်ႈလၢႆႈ (Modify) **Variables** ဢၼ်ယူႇၼႂ်း Scope ၽၢႆႇၼွၵ်ႈမၼ်းလႆႈ။ ၵၢၼ်ဢၼ် Lambda "ႁေႃႇ" (Wrap) ဢဝ် Variables ၸိူဝ်းၼၼ်ႉဝႆႉၸွမ်းမၼ်းၼၼ်ႉ ႁွင်ႉဝႃႈ **Closure** ယဝ်ႉ။

### 1. တူဝ်ယၢင်ႇပိုၼ်ႉထၢၼ်

တူၺ်းတွၼ်ႈတႅၵ်ႈၼႆႉၶႃႈ၊ Lambda ယူႇၼႂ်း `{ }` ၵူၺ်းၵႃႈမၼ်းၸၢင်ႈႁၼ် `counter` ဢၼ်ယူႇၽၢႆႇၼွၵ်ႈမၼ်း။

```kotlin
fun main() {
    var counter = 0
    
    val increment = {
        counter++ // ၶဝ်ႈၸႂ်ႉ လႄႈ မႄးၵႃႈ Variable တီႈၼွၵ်ႈ
        println("Current counter: $counter")
    }
    
    increment() // Current counter: 1
    increment() // Current counter: 2
}

```

---

### 2. Closures ၼႂ်း Higher-Order Functions

ၼႆႉယဝ်ႉပဵၼ်တွၼ်ႈဢၼ် "ပႅၵ်ႇပၢင်ႇ" လႄႈ "လီ" သုတ်း။ မိူဝ်ႈႁဝ်းသူင်ႇ Lambda ဢွၵ်ႇမႃးတီႈ Function ၼိုင်ႈဢၼ်၊ မၼ်းတေ **"မၢႆတွင်း"** သၢႆငၢႆ (State) ၼႂ်းဝူင်းၼၼ်ႉဝႆႉတႃႇသေႇ။

```kotlin
fun makeCounter(): () -> Unit {
    var count = 0 // Variable ၼႆႉယူႇၼႂ်း Local Scope ၶွင် makeCounter
    
    return {
        count++
        println("Count is $count")
    }
}

fun main() {
    val myCounter = makeCounter()
    
    myCounter() // Count is 1
    myCounter() // Count is 2
    // တင်းသႅင် makeCounter() ယဝ်ႉတူဝ်ႈၵႂႃႇယဝ်ႉ၊ ၵူၺ်းၵႃႈ 'count' တိုၵ်ႉမီးယူႇၼႂ်း Lambda
}

```

---

### 3. Java vs. Kotlin (လွင်ႈပႅၵ်ႇပၢင်ႇ)

* **ၼႂ်း Java:** ၸဝ်ႈၵဝ်ႇၶဝ်ႈၸႂ်ႉလႆႈၵူၺ်း Variables ဢၼ်ပဵၼ် `final` (လႅၵ်ႈလၢႆႈဢမ်ႇလႆႈ)။
* **ၼႂ်း Kotlin:** ၸဝ်ႈၵဝ်ႇ **လႅၵ်ႈလၢႆႈ (Modify)** ၵႃႈ Variable ၼၼ်ႉလႆႈၵမ်းလဵဝ် (မိူၼ်ၼင်ႇ `counter++`)။ Kotlin တေၸွႆႈၸတ်းၵၢၼ်ဝႆႉပၼ်ၽၢႆႇလင် ႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်လႆႈယူႇယဝ်ႉ။

---

### 4. ၵွပ်ႈသင်ၸင်ႇလမ်ႇလွင်ႈ?

* **Data Encapsulation:** ၸွႆႈႁႂ်ႈႁဝ်းသိမ်း "သၢႆငၢႆ" (State) ဝႆႉၼႂ်း Function လႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ Global Variable။
* **Function Customization:** သၢင်ႈ Function ဢၼ်မီး "မၢႆတွင်း" ႁင်းၵူၺ်း (မိူၼ်ၼင်ႇ ID Generator ဢမ်ႇၼၼ် Cache)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Closure:** ၵၢၼ်ဢၼ် Function "ႁေႃႇ" ဢဝ် Variables တီႈၼွၵ်ႈမႃးဝႆႉၸွမ်းတူဝ်။
* **Outer Scope:** ဝူင်းၶူတ်ႉ (ပိၵ်ႇၵႃ) ဢၼ်ယူႇၽၢႆႇၼွၵ်ႈ Lambda။
* **Capturing Variables:** ၵၢၼ်ဢၼ် Lambda မၢႆတွင်း လႄႈ သိမ်းဢဝ် Variable ၼွၵ်ႈ scope ဝႆႉၼႂ်း Memory။
* **State:** ၶေႃႈမုၼ်း/ၵႃႈ (Value) ဢၼ်မီးဝႆႉၼႂ်းၶၢဝ်းယၢမ်းၼၼ်ႉ။

---