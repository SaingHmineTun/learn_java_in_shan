# တွၼ်ႈသွၼ် 39: Initializer Blocks (`init`) လႄႈ လုၵ်ႉၵၢၼ်ႁဵတ်းၵၢၼ်

### 1. Initializer Block (`init`) ပဵၼ်သင်?

`init` ပဵၼ်တွၼ်ႈၶူတ်ႉဢၼ်တေ **ႁဵတ်းၵၢၼ်ၵမ်းလဵဝ်** ဝၢႆးသၢင်ႈ Object (Instance) ယဝ်ႉ။ ႁဝ်းၸၢင်ႈမီး `init` လၢႆလၢႆဢၼ်ၼႂ်း Class လဵဝ်ၵၼ်လႆႈ။

```kotlin
class Smartphone(val brand: String) {
    
    // init block တေႁဵတ်းၵၢၼ်မိူဝ်ႈသၢင်ႈ Object
    init {
        println("Smartphone $brand တိုၵ်ႉပိုတ်ႇယူႇ...")
    }

    init {
        println("ၵၢၼ်တႅတ်ႈတေႃး (Validation) ယဝ်ႉတူဝ်ႈယဝ်ႉ")
    }
}

```

---

### 2. လုၵ်ႉၵၢၼ်ႁဵတ်းၵၢၼ် (Execution Order)

လွင်ႈၼႆႉလမ်ႇလွင်ႈတႄႉတႄႉၶႃႈ။ မိူဝ်ႈႁဝ်းသၢင်ႈ Object၊ Kotlin တေႁဵတ်းၸွမ်းလုၵ်ႉ (Order) ၼင်ႇၼႆ:

1. **Primary Constructor:** မၵ်းမၼ်ႈ Properties ဢၼ်ယူႇတီႈႁူဝ် Class။
2. **Property Initializers & `init` Blocks:** ႁဵတ်းၵၢၼ်ၸွမ်းလုၵ်ႉ ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ "ၼိူဝ်လူင်းတႂ်ႈ" ၼႂ်းတူဝ် Class။
3. **Secondary Constructor:** ႁဵတ်းပဵၼ်ဢၼ်သုတ်းသုတ်း (သင်ဝႃႈႁွင်ႉၸႂ်ႉမၼ်း)။

```kotlin
class OrderTest(val name: String) {
    // 1. Property Initializer
    val firstProperty = "First: $name".also(::println)

    // 2. Init block
    init {
        println("Second: Init block")
    }

    // 3. Secondary Constructor
    constructor(name: String, id: Int) : this(name) {
        println("Third: Secondary constructor")
    }
}

```

---

### 3. ၵွပ်ႈသင်ၸင်ႇလူဝ်ႇမီး `init`?

* **Validation:** တႃႇထတ်းတူၺ်းဝႃႈ ၶေႃႈမုၼ်းဢၼ်သူင်ႇၶဝ်ႈမႃးၼၼ်ႉ မၢၼ်ႇမႅၼ်ႈႁႃႉ (မိူၼ်ၼင်ႇ `age` တေလႆႈဢမ်ႇယေႃႈလိူဝ် 0)။
* **Complex Logic:** တႃႇတင်ႈၵႃႈ (Setup) သင်သေဢၼ် ဢၼ်ဢမ်ႇၸၢင်ႈတႅမ်ႈဝႆႉၼႂ်းထႅဝ်လဵဝ်လႆႈ။
* **Logging:** တႃႇမၢႆတွင်း (Log) ဝႃႈ Object တူဝ်ၼႆႉ သၢင်ႈယဝ်ႉတူဝ်ႈမိူဝ်ႈလႂ်။

---

### 4. ၶေႃႈတွၼ်းသတိ

* ၼႂ်း `init` block ႁဝ်းၸၢင်ႈၶဝ်ႈၸႂ်ႉ Parameter ၶွင် Primary Constructor လႆႈၵမ်းလဵဝ် တင်းသႅင်ဝႃႈမၼ်းဢမ်ႇမီး `val`/`var` ၽၢႆႇၼႃႈၵေႃႈယဝ်ႉ။
* ၵူၺ်းၵႃႈ ၼႂ်း Method တၢင်ႇဢၼ် (Function) ၼၼ်ႉ တေၸႂ်ႉလႆႈၵူၺ်း တူဝ်ဢၼ်မီး `val`/`var` သႂ်ႇဝႆႉယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Initializer Block:** တွၼ်ႈၶူတ်ႉ (`init`) ဢၼ်ႁဵတ်းၵၢၼ်မိူဝ်ႈသၢင်ႈ Object။
* **Execution Order:** လုၵ်ႉ/လၢႆးၸွမ်းၵၼ် ၶွင်ၵၢၼ်ႁဵတ်းၵၢၼ်။
* **Property Initializer:** ၵၢၼ်မၵ်းမၼ်ႈ Value ပၼ် Variable တီႈထႅဝ်ဢၼ်သၢင်ႈမၼ်း။
* **Validation:** ၵၢၼ်ၵတ်ႉထတ်း ၶေႃႈမုၼ်းႁႂ်ႈမၢၼ်ႇမႅၼ်ႈ။

---