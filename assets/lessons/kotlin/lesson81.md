# တွၼ်ႈသွၼ် 81: Type Aliases

**Type Alias** ပဵၼ်ၵၢၼ်မၵ်းမၼ်ႈၸိုဝ်ႈမႂ်ႇ (Alternative Name) ပၼ် Type ဢၼ်မီးယူႇယဝ်ႉ။ မၼ်းဢမ်ႇလႆႈသၢင်ႈ Type မႂ်ႇတႄႉတႄႉ၊ မၼ်းၵူၺ်းပဵၼ်ၵၢၼ် "လႅၵ်ႈၸိုဝ်ႈ" တႃႇႁႂ်ႈ Developer ဢၢၼ်ႇငၢႆႈယဝ်ႉ။

### 1. ပၼ်ႁႃ: Complex Types (Type ဢၼ်ယုင်ႈယၢင်ႇ)

မၢင်ပွၵ်ႈ ႁဝ်းမီး Type ဢၼ်ယၢဝ်းတႄႉတႄႉ မိူၼ်ၼင်ႇ Nested Collections ဢမ်ႇၼၼ် Function Types ဢၼ်မီး Parameter ၼမ်ၼမ်။

```kotlin
// တူၺ်းဝႃႈ မၼ်းဢၢၼ်ႇယၢပ်ႇၵိူတ်ႇ
fun updateMap(map: MutableMap<String, MutableList<User>>) { 
    /* ... */ 
}

```

### 2. လၢႆးၵႄႈ: ၸႂ်ႉ `typealias`

ႁဝ်းၸၢင်ႈတင်ႈၸိုဝ်ႈဢၼ်မီး "တီႈပွင်ႇ" (Meaningful name) ပၼ်မၼ်းလႆႈ။

```kotlin
typealias UserMap = MutableMap<String, MutableList<User>>

// ၵမ်းၼႆႉ ၶူတ်ႉႁဝ်းတေတူၺ်းသႅၼ်ႈသႂ်ၶိုၼ်ႈ
fun updateMap(map: UserMap) { 
    /* ... */ 
}

```

---

### 3. လၢႆးၸႂ်ႉဢၼ်ၵႆႉႁၼ် (Common Use Cases)

#### **A. တႃႇ Function Types (Callbacks)**

မိူဝ်ႈၸဝ်ႈၵဝ်ႇသူင်ႇ Lambda ၶဝ်ႈၵႂႃႇၼႂ်း Function၊ ၸိုဝ်ႈ Type မၼ်းၸၢင်ႈယုင်ႈယၢင်ႇ။

```kotlin
typealias AuthCallback = (Boolean, String?) -> Unit

fun login(onResult: AuthCallback) {
    onResult(true, "Success")
}

```

#### **B. တႃႇ Nested Classes**

သင် Class ၼိုင်ႈ ယူႇၼႂ်း Class ၼိုင်ႈ ယၢဝ်းယၢဝ်း၊ ႁဝ်းႁဵတ်းႁႂ်ႈမၼ်းပွတ်းလႆႈ။

```kotlin
typealias FileInfo = MyProject.FileSystem.Internal.FileInfo

```

---

### 4. တူဝ်တႅၵ်ႈ: Type Alias vs Value Class

| တွၼ်ႈတႅၵ်ႈ | Type Alias | Value Class (Lesson 80) |
| --- | --- | --- |
| **New Type?** | ❌ No (ၵူၺ်းပဵၼ်ၸိုဝ်ႈတႅၼ်း) | ✅ Yes (ပဵၼ် Type မႂ်ႇတႄႉတႄႉ) |
| **Type Safety** | ❌ Low (String တိုၵ်ႉပဵၼ် String) | ✅ High (Password ဢမ်ႇၸႂ်ႈ String) |
| **Performance** | ✅ No overhead | ✅ Optimized |
| **Goal** | Readability (တႃႇဢၢၼ်ႇငၢႆႈ) | Safety & Speed (တႃႇ Safe လႄႈ ဝႆး) |

> **Pro Tip:** သင်ၸဝ်ႈၵဝ်ႇၵူၺ်းၶႂ်ႈႁႂ်ႈ "ဢၢၼ်ႇငၢႆႈ" ၼႆ ၸႂ်ႉ **Type Alias**။ သင်ၶႂ်ႈႁႂ်ႈ "Type Safe" (မိူၼ်ၼင်ႇ ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈဢဝ် UserId မႃးလေႃးတင်း OrderId) ၼႆ ၸႂ်ႉ **Value Class** ယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Alias:** ၸိုဝ်ႈတႅၼ်း ဢမ်ႇၼၼ် ၸိုဝ်ႈလဵၼ်ႈ။
* **Redundancy:** လွင်ႈသုၵ်ႉယုင်ႈ/လွင်ႈတႅမ်ႈသမ်ႉၵၼ် ဢၼ်ဢမ်ႇလူဝ်ႇမီးၵေႃႈလႆႈ။
* **Readability:** တၢင်းၵတ်ႉဢၼ်ၶူတ်ႉၸၢင်ႈဢၢၼ်ႇပွင်ႇၸႂ်လႆႈငၢႆႈ။
* **Function Type:** ပိူင်ၶေႃႈမုၼ်းဢၼ်မၵ်းမၼ်ႈ လွၵ်းလၢႆးႁပ်ႉ/သူင်ႇ ၶွင် Lambda/Function။

---