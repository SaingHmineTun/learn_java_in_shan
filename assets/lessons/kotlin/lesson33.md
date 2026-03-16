# တွၼ်ႈသွၼ် 33: ၵၢၼ်ႁပ်ႉ Value လၢႆတူဝ် (vararg) လႄႈ Spread Operator

### 1. `vararg` (Variable Arguments)

မိူဝ်ႈႁဝ်းသႂ်ႇ Keyword `vararg` ဝႆႉၽၢႆႇၼႃႈ Parameter၊ Kotlin တေႁၼ်မၼ်းပဵၼ် **Array** ၼႂ်း Function ၼၼ်ႉယဝ်ႉ။

```kotlin
fun printAll(vararg messages: String) {
    for (m in messages) {
        println(m)
    }
}

// ႁွင်ႉၸႂ်ႉလႆႈလၢႆလၢႆပိူင်
printAll("မႂ်ႇသုင်")
printAll("A", "B", "C", "D")

```

---

### 2. Spread Operator (`*`)

သင်ဝႃႈႁဝ်းမီး **Array** ဝႆႉယဝ်ႉ သေၶႂ်ႈသူင်ႇၶဝ်ႈၵႂႃႇၼႂ်း Function ဢၼ်ပဵၼ် `vararg`၊ ႁဝ်းဢမ်ႇၸၢင်ႈသူင်ႇ Array ၵႂႃႇၵမ်းလဵဝ်လႆႈ (ၵွပ်ႈမၼ်းလူဝ်ႇ String လၢႆလၢႆတူဝ်၊ ဢမ်ႇၸႂ်ႈ String Array တူဝ်လဵဝ်)။

ႁဝ်းလူဝ်ႇၸႂ်ႉၶိူင်ႈမၢႆ **`*` (Asterisk)** ဝႆႉၽၢႆႇၼႃႈ Array ၼၼ်ႉ။ မၼ်းတေ "သႄႇ" (Spread) ၶေႃႈမုၼ်းၼႂ်း Array ဢွၵ်ႇမႃးပဵၼ်တူဝ်ၽႂ်ႇတူဝ်မၼ်းယဝ်ႉ။

```kotlin
val list = arrayOf("Apple", "Banana", "Cherry")

// printAll(list) // Error! (ၵွပ်ႈမၼ်းပဵၼ် Array)
printAll(*list)   // မၢၼ်ႇမႅၼ်ႈ! (မၼ်းတေသူင်ႇ "Apple", "Banana", "Cherry" ၵႂႃႇ)

```

---

### 3. ၶေႃႈပၵ်းပိူင် လႄႈ ၶေႃႈတွၼ်းသတိ

* **မီးလႆႈ 1 ဢၼ်ၵူၺ်း:** ၼႂ်း Function ၼိုင်ႈဢၼ် မီး `vararg` လႆႈၵူၺ်း ၼိုင်ႈတီႈယဝ်ႉ။
* **Named Arguments:** သင်ဝႃႈမီး Parameter ထႅင်ႈဢၼ်ၼိုင်ႈ ယူႇၽၢႆႇလင် `vararg`၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ Named Argument တႃႇသူင်ႇၶေႃႈမုၼ်းပၼ်တူဝ်ၼၼ်ႉယဝ်ႉ။

```kotlin
fun log(vararg entries: String, prefix: String) { ... }

log("A", "B", "C", prefix = "LOG")

```

---

### 4. ၵွပ်ႈသင်ၸင်ႇလီ?

* **Clean Code:** ႁဵတ်းႁႂ်ႈႁဝ်းသူင်ႇၶေႃႈမုၼ်းလႆႈငၢႆႈငၢႆႈ မိူၼ်ၼင်ႇ `listOf(1, 2, 3)` ၼၼ်ႉၵေႃႈ ၼႂ်းမၼ်းၸႂ်ႉ `vararg` ယဝ်ႉ။
* **Flexible:** ၸွႆႈႁႂ်ႈ Function ႁဝ်းႁပ်ႉ Input လႆႈၵူႈ قတ်ႈ (Quantity)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **vararg:** Variable-length arguments (Parameter ဢၼ်မီးတၢင်းယၢဝ်းဢမ်ႇၼႅၼ်ႇၼေႃး)။
* **Spread Operator (`*`):** ၶိူင်ႈမၢႆဢၼ် "ၵၢႆ" ၶေႃႈမုၼ်းၼႂ်း Array ဢွၵ်ႇမႃးပဵၼ် Arguments တူဝ်ၽႂ်ႇတူဝ်မၼ်း။
* **Array:** ၸုမ်းၶေႃႈမုၼ်း ဢၼ်မီးမဵဝ်းလဵဝ်ၵၼ် (မိူၼ် String Array, Int Array)။

---