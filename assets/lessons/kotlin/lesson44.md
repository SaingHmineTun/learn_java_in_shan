# တွၼ်ႈသွၼ် 44: Object Declarations လႄႈ Singletons

မိူဝ်ႈႁဝ်းတႅမ်ႈ `object` တႅၼ်း `class`၊ Kotlin တေႁဵတ်းပၼ်သွင်ယၢင်ႇ:

1. မၵ်းမၼ်ႈ **Class** မႂ်ႇဢၼ်ၼိုင်ႈ။
2. သၢင်ႈ **Instance (Object)** တူဝ်လဵဝ်ၵူၺ်းပၼ်ႁင်းၵူၺ်း (Singleton)။

### 1. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းဢမ်ႇလူဝ်ႇ Constructor ၵွပ်ႈဝႃႈႁဝ်းဢမ်ႇၸၢင်ႈသၢင်ႈမၼ်းမႂ်ႇ (မၼ်းမီးတူဝ်လဵဝ်ယဝ်ႉ)။

```kotlin
object DatabaseConfig {
    val name = "MainDB"
    val version = 1
    
    fun connect() {
        println("Connecting to $name...")
    }
}

```

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Usage)

ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉမၼ်းလႆႈၵမ်းလဵဝ် လူၺ်ႈၵၢၼ်ၸႂ်ႉၸိုဝ်ႈမၼ်း၊ ဢမ်ႇလူဝ်ႇၸႂ်ႉ `()` တႃႇသၢင်ႈမၼ်းမႂ်ႇ။

```kotlin
fun main() {
    // ႁွင်ႉၸႂ်ႉလႆႈၵမ်းလဵဝ် မိူၼ် Static ၼႂ်း Java
    DatabaseConfig.connect()
    println(DatabaseConfig.version)
}

```

---

### 3. ပၵ်းပိူင်လမ်ႇလွင်ႈ

* **Thread-Safe:** Kotlin ၸတ်းၵၢၼ်ပၼ်ႁႂ်ႈ Singleton ၼႆႉသၢင်ႈဢွၵ်ႇမႃးလႆႈတူဝ်လဵဝ်တႄႉတႄႉ ၼႂ်းၶၢဝ်းယၢမ်းဢၼ်ထုၵ်ႇလီ (Lazy initialization)။
* **No Constructors:** ဢမ်ႇၸၢင်ႈမီး Primary ဢမ်ႇၼၼ် Secondary Constructor။
* **Inheritance:** `object` ၸၢင်ႈသိုပ်ႇပွင် (Inherit) တီႈ Class တၢင်ႇဢၼ် ဢမ်ႇၼၼ် Interface လႆႈ။

---

### 4. ၵွပ်ႈသင်ၸင်ႇလီ? (Use Cases)

1. **Global Constants:** သိမ်းၵႃႈ Variable ဢၼ်ၸႂ်ႉၵူႈတီႈ။
2. **Utility Functions:** ၸုမ်း Function ဢၼ်ၵုမ်းထိင်းလွင်ႈလႂ်လွင်ႈၼိုင်ႈ (မိူၼ်ၼင်ႇ `MathUtils`)။
3. **Repository Pattern:** ၼႂ်းၵၢၼ်တႅမ်ႈ App၊ ၵႆႉၸႂ်ႉ `object` တႃႇၵုမ်းထိင်းၵၢၼ်သူင်ႇၶေႃႈမုၼ်း (Data Source)။

---

### 5. Object Expressions (Anonymous Objects)

မၢင်ပွၵ်ႈႁဝ်းဢမ်ႇၶႂ်ႈပၼ်ၸိုဝ်ႈမၼ်း၊ ၵူၺ်းၵႃႈၶႂ်ႈသၢင်ႈ Object ၸူဝ်ႈၵတ်ႉ တႃႇၸႂ်ႉတႅၼ်း Interface သင်သေဢၼ်။

```kotlin
val mouseListener = object : MouseAdapter() {
    override fun mouseClicked(e: MouseEvent) {
        // ...
    }
}

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Singleton:** Design Pattern ဢၼ်မၵ်းမၼ်ႈႁႂ်ႈ Class ၼိုင်ႈဢၼ်မီး Object လႆႈတူဝ်လဵဝ်ၵူၺ်း။
* **Object Declaration:** ၵၢၼ်မၵ်းမၼ်ႈ Singleton လူၺ်ႈၸႂ်ႉ Keyword `object`။
* **Thread-Safe:** လွင်ႈႁႄႉၵင်ႈပၼ်ႁႃ မိူဝ်ႈမီးၵၢၼ်ႁဵတ်းၵၢၼ်လၢႆလၢႆဢၼ်ၼႂ်းၶၢဝ်းလဵဝ်ၵၼ်။
* **Anonymous Object:** Object ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ၊ သၢင်ႈၸႂ်ႉၵမ်းလဵဝ် (Object Expression)။

---