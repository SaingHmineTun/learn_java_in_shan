# တွၼ်ႈသွၼ် 41: Late-Initialized Properties (`lateinit`)

ၼႂ်း Kotlin၊ ပၵ်းပိူင်မၼ်းပဵၼ် "Variable တေလႆႈမီး Value တႃႇသေႇ ဢမ်ႇၼၼ် ပဵၼ် Nullable"။ ၵူၺ်းၵႃႈ သင်ႁဝ်းဢမ်ႇၶႂ်ႈၸႂ်ႉ `?` (Nullable) သေ ၶႂ်ႈသႂ်ႇ Value ဝၢႆးလင်၊ ႁဝ်းတေၸႂ်ႉ **`lateinit`** ယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းသႂ်ႇ Keyword `lateinit` ဝႆႉၽၢႆႇၼႃႈ `var` ယဝ်ႉ။

```kotlin
class NewsApp {
    // ပွင်ႇဝႃႈ: "ၵဝ်တေမႃးသႂ်ႇ Value ဝၢႆးလင်၊ ယႃႇပႆႇ Error လေႃႇ"
    lateinit var apiToken: String

    fun setup() {
        apiToken = "123-ABC-456" // သႂ်ႇဝၢႆးလင်
    }

    fun fetchData() {
        println("Fetching with $apiToken")
    }
}

```

---

### 2. ပၵ်းပိူင်လမ်ႇလွင်ႈ (The Rules)

တႃႇတေၸႂ်ႉ `lateinit` လႆႈၼၼ်ႉ တေလႆႈမီးၸွမ်းၼင်ႇၼႆ:

* တေလႆႈပဵၼ် **`var`** (ၵွပ်ႈမၼ်းလူဝ်ႇလႅၵ်ႈလၢႆႈ Value ဝၢႆးလင်)။
* တေလႆႈ **ဢမ်ႇၸႂ်ႈ Nullable Type** (မိူၼ်ၼင်ႇ `String?` ၼၼ်ႉၸႂ်ႉဢမ်ႇလႆႈ)။
* တေလႆႈ **ဢမ်ႇၸႂ်ႈ Primitive Types** (မိူၼ်ၼင်ႇ `Int`, `Double`, `Boolean` ၸိူဝ်းၼႆႉၸႂ်ႉဢမ်ႇလႆႈ)။

---

### 3. ၵၢၼ်ထတ်းတူၺ်း (Checking initialization)

သင်ႁဝ်းၵႂႃႇႁွင်ႉၸႂ်ႉ `lateinit var` ဢၼ်ပႆႇလႆႈသႂ်ႇ Value၊ Program ႁဝ်းတေ **Crash** ၵမ်းလဵဝ်လူၺ်ႈ Error `UninitializedPropertyAccessException` ယဝ်ႉ။ ႁဝ်းၸၢင်ႈထတ်းတူၺ်းဢွၼ်တၢင်းလႆႈၼင်ႇၼႆ:

```kotlin
if (this::apiToken.isInitialized) {
    println(apiToken)
}

```

---

### 4. ၵွပ်ႈသင်ၸင်ႇလီ?

* **Avoid Null Checks:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ `!!` ဢမ်ႇၼၼ် `?.` ၵူႈတီႈၵူႈလႅၼ် ၵွပ်ႈ Kotlin ႁူႉဝႃႈမၼ်းဢမ်ႇပဵၼ် Null (ပေႃးသႂ်ႇ Value ယဝ်ႉ)။
* **Framework Friendly:** ၸွႆႈလႆႈၼမ် မိူဝ်ႈတႅမ်ႈ Android (ၼႂ်း `onCreate`) ဢမ်ႇၼၼ် ၸႂ်ႉ Dependency Injection (မိူၼ် Dagger/Hilt)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Late Initialization:** ၵၢၼ်မၵ်းမၼ်ႈ Value ပၼ် Variable ဝၢႆးလင် (ဢမ်ႇၸႂ်ႈၼႂ်း Constructor)။
* **Primitive Types:** မဵဝ်းၶေႃႈမုၼ်းပိုၼ်ႉထၢၼ် (Int, Boolean, etc.) ဢၼ် Kotlin ၸတ်းၵၢၼ်ပႅၵ်ႇတင်း Object။
* **Uninitialized:** ငဝ်းလၢႆးဢၼ် Variable ပႆႇလႆႈႁပ်ႉ Value သင်သေဢၼ်။
* **Reflection (`::`):** ၶိူင်ႈမၢႆဢၼ်ၸႂ်ႉတႃႇထတ်းတူၺ်း ၶေႃႈမုၼ်းပႃႈၼႂ်းၶွင် Variable/Property။

---