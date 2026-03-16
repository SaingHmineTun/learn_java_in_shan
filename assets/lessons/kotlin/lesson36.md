# တွၼ်ႈသွၼ် 36: Infix Notation တႃႇႁႂ်ႈၶူတ်ႉဢၢၼ်ႇပွင်ႇငၢႆႈ

**Infix Function** ႁဵတ်းႁႂ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Function လႆႈလူၺ်ႈ **ဢမ်ႇလူဝ်ႇသႂ်ႇ "ၸုၵ်း" `.` (Dot) လႄႈ "ဝူင်းလႅမ်" `( )` (Parentheses)** ယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းလူဝ်ႇသႂ်ႇ Keyword **`infix`** ဝႆႉၽၢႆႇၼႃႈ `fun` သေ မၼ်းတေလႆႈပဵၼ် **Extension Function** ဢမ်ႇၼၼ် **Member Function** တႃႇသေႇ။

```kotlin
// သၢင်ႈ Infix Function တႃႇထႅမ်ၸိုဝ်ႈၽူႈၸူႉၵၼ်
infix fun String.marry(spouse: String): String {
    return "$this and $spouse are married!"
}

fun main() {
    // လၢႆးႁွင်ႉၸႂ်ႉပိူင်ပၵ်း (Normal)
    val res1 = "Sai".marry("Nang")
    
    // လၢႆးႁွင်ႉၸႂ်ႉပိူင် Infix (တူၺ်းငၢႆႈသေ)
    val res2 = "Sai" marry "Nang"
    
    println(res2) // ၽူၼ်မၼ်း: Sai and Nang are married!
}

```

---

### 2. ပၵ်းပိူင် 3 ၶေႃႈ ဢၼ်လူဝ်ႇမီး (Requirements)

တႃႇတေပဵၼ် Infix Function လႆႈၼၼ်ႉ တေလႆႈမီးၸွမ်းၼင်ႇၼႆ:

1. တေလႆႈပဵၼ် **Member Function** ဢမ်ႇၼၼ် **Extension Function**။
2. တေလႆႈမီး **Parameter ဢၼ်လဵဝ်ၵူၺ်း** (Only one parameter)။
3. Parameter ၼၼ်ႉ တေလႆႈဢမ်ႇၸႂ်ႈ `vararg` လႄႈ တေလႆႈဢမ်ႇမီး Default Value။

---

### 3. တူဝ်ယၢင်ႇဢၼ်ႁဝ်းႁၼ်ယူႇၵူႈဝၼ်း

ၼႂ်း Kotlin ႁဝ်းၸႂ်ႉ Infix Function ယူႇတႃႇသေႇ လူၺ်ႈဢမ်ႇႁူႉတူဝ် မိူၼ်ၼင်ႇ:

* `1..10 step 2` (တွၼ်ႈသွၼ် 22) - `step` ၼႆႉပဵၼ် Infix ယဝ်ႉ။
* `"key" to "value"` (ၸႂ်ႉသၢင်ႈ Map) - `to` ၼႆႉၵေႃႈပဵၼ် Infix ယဝ်ႉ။

---

### 4. ၵွပ်ႈသင်ၸင်ႇလီ? (Readable DSLs)

* **DSL (Domain Specific Language):** ၸွႆႈႁႂ်ႈႁဝ်းသၢင်ႈၶူတ်ႉ ဢၼ်တူၺ်းမိူၼ်လိၵ်ႈလၢတ်ႈ တႃႇၸႂ်ႉၼႂ်းၵၢၼ်သင်သင်ၼိုင်ႈ (မိူၼ်ၼင်ႇ တႅမ်ႈၶူတ်ႉတူၺ်း Test ဢမ်ႇၼၼ် တႅမ်ႈ UI)။
* **Mathematical Feeling:** ႁဵတ်းႁႂ်ႈၶိူင်ႈမၢႆၼပ်ႉသၢင်ႈ ဢၼ်ႁဝ်းသၢင်ႈမႃးႁင်းၵူၺ်း တူၺ်းသႅၼ်ႈသႂ်။

```kotlin
// တူဝ်ယၢင်ႇ DSL ဢွၼ်ႇ
val status = "User" isStatus "Active"

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Infix Notation:** လၢႆးတႅမ်ႈၶူတ်ႉ ဢၼ်ဝႆႉ Function ယူႇၼႂ်းၵႄႈ Arguments သွင်တူဝ်။
* **DSL (Domain Specific Language):** ၽႃႇသႃႇၶူတ်ႉ ဢၼ်ဢွၵ်ႇပႅၼ်းဝႆႉ တႃႇၸႂ်ႉၵၢၼ်လွင်ႈလႂ်လွင်ႈၼိုင်ႈတႅတ်ႈတေႃး။
* **Member Function:** Function ဢၼ်ယူႇၼႂ်း Class။
* **Receiver:** Object ဢၼ်ယူႇၽၢႆႇသၢႆႉ ၶွင် Infix Function။

---