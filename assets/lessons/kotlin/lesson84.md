# တွၼ်ႈသွၼ် 84: Deep Dive `apply` and `also`

### 1. `apply` (ၸႂ်ႉ `this` တႃႇတင်ႈၵႃႈ Object)

`apply` ပဵၼ်တူဝ်ဢၼ်လီသုတ်း တႃႇၸႂ်ႉ "Initialize" ဢမ်ႇၼၼ် "Configure" Object မိူဝ်ႈႁဝ်းတိုၵ်ႉသၢင်ႈမၼ်းမႂ်ႇ။

* **လၢႆးႁဵတ်းၵၢၼ်:** ၶဝ်ႈၵႂႃႇယူႇၼႂ်းတူဝ် Object သေမႄး Properties မၼ်း။
* **Return Value:** သူင်ႇ **Object တူဝ်ၼၼ်ႉ** ၶိုၼ်းမႃး (The receiver object)။

```kotlin
val newIntent = Intent().apply {
    action = "ACTION_VIEW"
    data = Uri.parse("https://google.com")
    // ဢမ်ႇလူဝ်ႇတႅမ်ႈ return၊ မၼ်းတေသူင်ႇ Intent() ၶိုၼ်းမႃးၵမ်းလဵဝ်
}

```

---

### 2. `also` (ၸႂ်ႉ `it` တႃႇႁဵတ်းၵၢၼ်ဢိၼ်းဢွႆႇ)

`also` ၵႆႉၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈႁဵတ်းသေမဵဝ်း ဢၼ်ဢမ်ႇၵဵဝ်ႇၶွင်ႉတင်းၵၢၼ်မႄး Properties ၶွင် Object ၼၼ်ႉတႄႉတႄႉ၊ မိူၼ်ၼင်ႇ ၵၢၼ် Log ၶေႃႈမုၼ်း ဢမ်ႇၼၼ် Validation။

* **လၢႆးႁဵတ်းၵၢၼ်:** "ႁဵတ်းဢၼ်ၼႆႉ **ပႃး (also)** ၼႃ" ဢမ်ႇလႅၵ်ႈလၢႆႈ Object။
* **Return Value:** သူင်ႇ **Object တူဝ်ၼၼ်ႉ** ၶိုၼ်းမႃး။

```kotlin
val numberList = mutableListOf(1, 2, 3)
    .also { println("Populating list: $it") }
    .apply { add(4) }
    .also { println("List after update: $it") }

```

---

### 3. ပႅၵ်ႇပၢင်ႇၵၼ်ၸိူဝ်ႉႁိုဝ်? (Comparison Table)

| Feature | `apply` | `also` |
| --- | --- | --- |
| **Context Object** | `this` (Receiver) | `it` (Argument) |
| **Return Value** | Object တူဝ်ၼၼ်ႉ | Object တူဝ်ၼၼ်ႉ |
| **Use Case** | တင်ႈၵႃႈ (Configuration) | ႁဵတ်း Side effects (Logging/Printing) |
| **Reading Style** | "Apply these settings to the object" | "And also do this with the object" |

---

### 4. ၵွပ်ႈသင်ၸင်ႇထုၵ်ႇလီၸႂ်ႉ? (Chain of Operations)

ၵွပ်ႈတင်းသွင်တူဝ်သူင်ႇ Object ၶိုၼ်းမႃး၊ ႁဝ်းၸၢင်ႈတႅမ်ႈၶူတ်ႉပဵၼ်သၢႆ (Chaining) လႆႈသႅၼ်ႈသႂ်တႄႉတႄႉ။

```kotlin
// တူဝ်ယၢင်ႇ: သၢင်ႈ File၊ မၵ်းမၼ်ႈ Permissions ယဝ်ႉၵေႃႈ Log ၵမ်းလဵဝ်
val file = File("data.txt").apply {
    setReadable(true)
    setWritable(true)
}.also {
    println("File created: ${it.name}")
}

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Initialization:** ၵၢၼ်သၢင်ႈ လႄႈ တင်ႈၵႃႈပိုၼ်ႉထၢၼ်ပၼ် Object။
* **Side Effect:** ၵၢၼ်ႁဵတ်းၵၢၼ်ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈၵႃႈ (Value) ၶွင် Object ၼၼ်ႉတႄႉတႄႉ (မိူၼ်ၼင်ႇ Print ၶေႃႈၵႂၢမ်း)။
* **Fluent Interface (Chaining):** လၢႆးတႅမ်ႈၶူတ်ႉဢၼ်ႁွင်ႉၸႂ်ႉ Function သိုပ်ႇၵၼ်ၵႂႃႇလႆႈတေႃႇၼႃႈတေႃႇလင်။
* **Receiver (`this`):** Object ဢၼ်ႁဝ်းၶဝ်ႈၵႂႃႇယူႇၼႂ်းတူဝ်မၼ်း။

---