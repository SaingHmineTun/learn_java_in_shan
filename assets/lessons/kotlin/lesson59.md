# တွၼ်ႈသွၼ် 59: Function Types လႄႈ Type Aliases

### 1. Function Types (ၶိုၼ်းတူၺ်းပိူင်မၼ်း)

မိူၼ်ၼင်ႇႁဝ်းႁဵၼ်းမႃး၊ Function ၵူႈဢၼ်မီး **Type** မၼ်း။ မၼ်းမၵ်းမၼ်ႈဝႃႈ "တေႁပ်ႉသင် (Input)" လႄႈ "တေသူင်ႇသင် (Output)"။

* `() -> Unit` : ဢမ်ႇႁပ်ႉသင်၊ ဢမ်ႇသူင်ႇသင်။
* `(Int, Int) -> Int` : ႁပ်ႉ Int သွင်တူဝ်၊ သူင်ႇဢွၵ်ႇ Int။
* `(String) -> Boolean` : ႁပ်ႉ String၊ သူင်ႇဢွၵ်ႇ True/False။

---

### 2. ပၼ်ႁႃ: Function Types ဢၼ်ယၢဝ်းလူင်

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇမီး Function ဢၼ်ႁပ်ႉ Logic ယၢဝ်းယၢဝ်းၼင်ႇၼႆ:

```kotlin
fun processUser(id: Int, callback: (String, Int, Boolean) -> Unit) {
    // ... logic ...
    callback("Sai Sai", 25, true)
}

```

သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `(String, Int, Boolean) -> Unit` ၼႆႉယူႇၼႂ်းလၢႆလၢႆတီႈ၊ ၶူတ်ႉတေတူၺ်းယုင်ႈယၢင်ႇ လႄႈ သင်ၶႂ်ႈမႄး (မိူၼ်ၼင်ႇထႅမ် Parameter) ၵေႃႈတေယၢပ်ႇယဝ်ႉ။

---

### 3. Type Aliases (ၵၢၼ်ပၼ်ၸိုဝ်ႈတႅၼ်း)

**Type Alias** ပွင်ႇဝႃႈ "ၵၢၼ်ပၼ်ၸိုဝ်ႈမႂ်ႇ ႁႂ်ႈ Type ဢၼ်မီးဝႆႉယဝ်ႉ"။ မၼ်းဢမ်ႇၸႂ်ႈၵၢၼ်သၢင်ႈ Type မႂ်ႇ၊ မၼ်းၵူၺ်းပဵၼ် **Nickname** (ၸိုဝ်ႈလဵၼ်ႈ) တႃႇႁႂ်ႈႁဝ်းဢၢၼ်ႇၶူတ်ႉငၢႆႈယဝ်ႉ။

ႁဝ်းၸႂ်ႉ Keyword `typealias`:

```kotlin
// ပၼ်ၸိုဝ်ႈတႅၼ်းဝႃႈ 'AuthCallback'
typealias AuthCallback = (String, Int, Boolean) -> Unit

// ယၢမ်းၼႆႉ ႁဝ်းၸႂ်ႉၸိုဝ်ႈၼႆႉ တႅၼ်း Type ယၢဝ်းယၢဝ်းၼၼ်ႉလႆႈယဝ်ႉ
fun loginUser(id: Int, onComplete: AuthCallback) {
    onComplete("User01", 200, true)
}

```

---

### 4. ၶေႃႈလီၶွင် Type Aliases

* **Readability:** ၶူတ်ႉဢၢၼ်ႇပွင်ႇငၢႆႈလိူဝ်ၵဝ်ႇ။ `AuthCallback` လၢတ်ႈၼႄလွင်ႈတၢင်း (Meaning) လိူဝ်သေ `(String, Int) -> Unit`။
* **Maintainability:** သင်လူဝ်ႇလႅၵ်ႈလၢႆႈ Function Type (မိူၼ်ၼင်ႇ လႅၵ်ႈ `Int` ပဵၼ် `Long`)၊ ႁဝ်းမႄးတီႈ `typealias` တီႈလဵဝ်ၵူၺ်း၊ ၵူႈတီႈဢၼ်ၸႂ်ႉမၼ်းယူႇ တေလႅၵ်ႈၸွမ်းႁင်းၵူၺ်း။
* **Avoid Duplication:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Type ယၢဝ်းယၢဝ်းသမ်ႉသမ်ႉဝႃႈဝႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Function Type:** ပိူင်ၶွင် Function ဢၼ်မၵ်းမၼ်ႈ Input လႄႈ Output။
* **Type Alias:** ၸိုဝ်ႈတႅၼ်း (Nickname) ဢၼ်ပၼ်ပၼ် Type တႃႇႁႂ်ႈဢၢၼ်ႇငၢႆႈ။
* **Code Readability:** တၢင်းၵတ်ႉၼႂ်းၵၢၼ်ဢၢၼ်ႇၶူတ်ႉသေ ပွင်ႇၸႂ်လွင်ႈတၢင်းမၼ်းၵမ်းလဵဝ်။
* **Refactoring:** ၵၢၼ်မႄးပူၵ်းသၢင်ႈၶူတ်ႉ ႁႂ်ႈမၼ်းလီလိူဝ်ၵဝ်ႇ လူၺ်ႈဢမ်ႇလႅၵ်ႈလၢႆႈ Logic မၼ်း။

---