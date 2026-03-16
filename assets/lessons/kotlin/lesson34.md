# တွၼ်ႈသွၼ် 34: Extension Functions

**Extension Function** ႁဵတ်းႁႂ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Function ဢၼ်ႁဝ်းသၢင်ႈမႃး ၼႂ်းလၢႆး `object.function()` လႆႈ မိူၼ်မၼ်းပဵၼ်ၶွင် Class ၼၼ်ႉတႄႉတႄႉယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းလူဝ်ႇသႂ်ႇ **ၸိုဝ်ႈ Class** ဝႆႉၽၢႆႇၼႃႈၸိုဝ်ႈ Function ဢၼ်ႁဝ်းတေၸႂ်ႉ (ႁွင်ႉဝႃႈ Receiver Type)။

```kotlin
// ထႅမ် Function 'addExclamation' ပၼ် String Class
fun String.addExclamation(): String {
    return this + "!"
}

fun main() {
    val name = "Sai"
    // ႁွင်ႉၸႂ်ႉလႆႈမိူၼ်မၼ်းပဵၼ် Method ၼႂ်း String တႄႉတႄႉ
    println(name.addExclamation()) // ၽူၼ်မၼ်း: Sai!
}

```

---

### 2. Keyword `this`

ၼႂ်း Extension Function၊ Keyword **`this`** တေမၢႆတွင်းထိုင် **Object တူဝ်ဢၼ်ႁွင်ႉၸႂ်ႉ** Function ၼၼ်ႉယဝ်ႉ (Receiver Object)။

```kotlin
// တူဝ်ယၢင်ႇ: ထႅမ် Function ပၼ် Int
fun Int.isEven(): Boolean = this % 2 == 0

println(10.isEven()) // true
println(7.isEven())  // false

```

---

### 3. ၵွပ်ႈသင်ၸင်ႇလီ? (The Power of Extensions)

1. **Clean Code:** ႁဵတ်းႁႂ်ႈၶူတ်ႉဢၢၼ်ႇပွင်ႇၸႂ်ငၢႆႈ လႄႈ ၸႅင်ႈလႅင်း (Readable)။
2. **Library Enhancement:** ႁဝ်းၸၢင်ႈထႅမ် Function ပၼ် Class ဢၼ်ႁဝ်းဢမ်ႇမီးသုၼ်ႇမႄး Code (မိူၼ်ၼင်ႇ Class ၼႂ်း Android SDK ဢမ်ႇၼၼ် 3rd Party Libraries)။
3. **No More Utils:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ `StringUtils.format(name)` ႁႂ်ႈယုင်ႈယၢင်ႇ၊ ၸႂ်ႉ `name.format()` လႆႈၵမ်းလဵဝ်။

---

### 4. ၶေႃႈတွၼ်းသတိ (Important Rules)

* **ဢမ်ႇၸၢင်ႈၸႂ်ႉ Private:** Extension Function ဢမ်ႇၸၢင်ႈၶဝ်ႈၸႂ်ႉ Variable ဢၼ်ပဵၼ် `private` ဢမ်ႇၼၼ် `protected` ၼႂ်း Class ၼၼ်ႉလႆႈ။
* **Static Resolution:** Extension Function ဢမ်ႇၸႂ်ႈၵၢၼ်မႄး Class တႄႉတႄႉ။ မၼ်းပဵၼ်ၵၢၼ်ႁဵတ်း Static Method ယူႇၽၢႆႇလင် (Under the hood)။
* **Shadowing:** သင် Class ၼၼ်ႉ မီး Method ၸိုဝ်ႈမိူၼ်ၵၼ်တင်း Extension ဢၼ်ႁဝ်းသၢင်ႈ၊ Kotlin တေလိူၵ်ႈၸႂ်ႉ **Method တူဝ်ဢၼ်မီးၼႂ်း Class** ဢွၼ်တၢင်းတႃႇသေႇ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Receiver Type:** Class ဢၼ်ႁဝ်းတေထႅမ် Function ပၼ် (မိူၼ်ၼင်ႇ `String`)။
* **Receiver Object:** Object တူဝ်တႄႉတႄႉ ဢၼ်ႁွင်ႉၸႂ်ႉ Function (မိူၼ်ၼင်ႇ `"Sai"`)။
* **Inheritance:** ၵၢၼ်သိုပ်ႇပွင် Class (ၵၢၼ်ၸႂ်ႉ `open class` လႄႈ `extends`) ဢၼ် Extension Function ဢမ်ႇလူဝ်ႇၸႂ်ႉ။
* **Static Resolution:** ၵၢၼ်တတ်းသိၼ်ၸႂ်ႉ Function တႄႇတီႈၸၼ်ႉ Compile (ဢမ်ႇၸႂ်ႈ Runtime)။

---