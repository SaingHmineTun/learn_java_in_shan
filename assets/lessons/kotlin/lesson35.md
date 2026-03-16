# တွၼ်ႈသွၼ် 35: Local Functions လႄႈ ၵၢၼ်သိမ်းလပ်ႉၶူတ်ႉ (Encapsulation)

**Local Function** ၵေႃႈပဵၼ် Function ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ "ၼႂ်းပိၵ်ႇၵႃ" `{ }` ၶွင် Function တၢင်ႇဢၼ်ၼၼ်ႉယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းၸၢင်ႈသၢင်ႈ `fun` ႁူမ်ႈဝႆႉၼႂ်း `fun` တူဝ်မႄႈမၼ်းလႆႈၵမ်းလဵဝ်။

```kotlin
fun saveUserToDatabase(name: String, age: Int) {
    // ၼႆႉပဵၼ် Local Function တႃႇထတ်းတူၺ်းၶေႃႈမုၼ်း
    fun validate(value: String, fieldName: String) {
        if (value.isEmpty()) {
            throw IllegalArgumentException("Error: $fieldName is empty!")
        }
    }

    // ႁွင်ႉၸႂ်ႉ Local Function ၼႂ်းၼႆႉၵူၺ်း
    validate(name, "Name")
    
    println("Saving $name to database...")
}

```

---

### 2. Closure (ၵၢၼ်ၶဝ်ႈၸႂ်ႉ Variable ၼွၵ်ႈၸၼ်ႉ)

ၶေႃႈလႅတ်းၽႂ်းၶွင် Local Function ၵေႃႈပဵၼ် မၼ်းၸၢင်ႈၶဝ်ႈၸႂ်ႉ **Parameters** ဢမ်ႇၼၼ် **Variables** ၶွင် Function တူဝ်မႄႈ (Outer Function) လႆႈၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇသူင်ႇပၼ် (Pass) မၼ်းၶဝ်ႈၵႂႃႇယဝ်ႉ။

```kotlin
fun outerFunction(outerParam: String) {
    val localPrefix = "Prefix"

    fun localFunction() {
        // ၸၢင်ႈၸႂ်ႉ outerParam လႄႈ localPrefix လႆႈၵမ်းလဵဝ်
        println("$localPrefix: $outerParam")
    }

    localFunction()
}

```

---

### 3. ၵွပ်ႈသင်ၸင်ႇထုၵ်ႇလီၸႂ်ႉ? (Benefits)

1. **Code Encapsulation:** သင်ဝႃႈၶူတ်ႉတွၼ်ႈၼိုင်ႈ ႁဝ်းၸႂ်ႉမၼ်းၵူၺ်းၼႂ်း Function ၼၼ်ႉဢၼ်လဵဝ်၊ ႁဝ်းၵေႃႈဢမ်ႇလူဝ်ႇဢဝ်မၼ်းၵႂႃႇဝႆႉၽၢႆႇၼွၵ်ႈ ႁႂ်ႈမၼ်းယုင်ႈယၢင်ႇ။
2. **Avoid Code Duplication:** သင်ၼႂ်း Function ယႂ်ႇဢၼ်ၼိုင်ႈ မီးၵၢၼ်ႁဵတ်းၵၢၼ်သမ်ႉၵၼ် 3-4 ပွၵ်ႈ၊ ႁဝ်းၸၢင်ႈၸႅၵ်ႇမၼ်းပဵၼ် Local Function သေႁွင်ႉၸႂ်ႉလႆႈ။
3. **Better Organization:** ၸွႆႈႁႂ်ႈ Function ယႂ်ႇဢၼ်ၼိုင်ႈ တူၺ်းငၢႆႈၶိုၼ်း ၵွပ်ႈႁဝ်းၸႅၵ်ႇ "ပုၼ်ႈၽွၼ်းဢွၼ်ႇ" ဝႆႉၼႂ်းမၼ်းယဝ်ႉ။

---

### 4. ၶေႃႈတွၼ်းသတိ

* **Scope:** ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉ Local Function လႆႈၵူၺ်း "ၽၢႆႇတႂ်ႈ" တႅမ်င်ႈဢၼ်ႁဝ်းသၢင်ႈမၼ်းဝႆႉ ၼႂ်း Function တူဝ်မႄႈၼၼ်ႉၵူၺ်း။
* **Performance:** ဢမ်ႇလူဝ်ႇမႆႈၸႂ်လွင်ႈၶိူင်ႈဢืด (Slow)၊ Kotlin Compiler တေၸတ်းၵၢၼ်ပၼ်ႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်လႅတ်းၽႂ်းယူႇယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Local Function:** Function ဢၼ်တႅမ်ႈဝႆႉၼႂ်း Function တၢင်ႇဢၼ်။
* **Encapsulation:** ၵၢၼ်သိမ်းလပ်ႉၶေႃႈမုၼ်း ဢမ်ႇၼၼ် ၶူတ်ႉဝႆႉ ဢမ်ႇႁႂ်ႈၵူၼ်းတၢင်ႇၵေႃႉႁၼ်လႆႈငၢႆႈငၢႆႈ။
* **Closure:** ၵၢၼ်ဢၼ် Function ဢွၼ်ႇ ၸၢင်ႈ "တွၼ်း" ဢဝ် Variable ၼွၵ်ႈၸၼ်ႉမၼ်းၵႂႃႇၸႂ်ႉလႆႈ။
* **Scope:** ၶွပ်ႇပိူင်ဢၼ် Variable ဢမ်ႇၼၼ် Function ၼိုင်ႈဢၼ် ၸၢင်ႈႁွင်ႉၸႂ်ႉလႆႈ။

---
