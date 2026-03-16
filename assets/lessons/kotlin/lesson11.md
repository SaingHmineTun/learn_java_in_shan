# တွၼ်ႈသွၼ် 11: ၶေႃႈမုၼ်းဢၼ်ပဵၼ် Null လႆႈ လႄႈ ဢမ်ႇလႆႈ (Nullable vs. Non-Nullable)

ၼႂ်း Kotlin ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈတႅတ်ႈတေႃးဝႃႈ Variable ဢၼ်ႁဝ်းသၢင်ႈမႃးၼၼ်ႉ ႁပ်ႉပဵၼ် `null` လႆႈႁႃႉ ဢမ်ႇလႆႈ။

### 1. Non-Nullable Types (ပိူင်ငဝ်ႈ ဢၼ်ပဵၼ် Null ဢမ်ႇလႆႈ)

ပိူင်ငဝ်ႈ (Default) ၶွင် Kotlin ၼႆႉ Variable ၵူႈဢၼ် **တေလႆႈမီးၶေႃႈမုၼ်းတႃႇသေႇ**။ သင်ႁဝ်းဢဝ် `null` သႂ်ႇပၼ်မၼ်း၊ Compiler တေႁႄႉဝႆႉသေ ဢမ်ႇပၼ် Run ယဝ်ႉ။

```kotlin
var name: String = "Sai Sai"
// name = null  // ၼႆႉတေ Error!! ၵွပ်ႈဝႃႈ String ပဵၼ် Non-nullable

```

### 2. Nullable Types (ပိူင်ဢၼ်ႁပ်ႉ Null လႆႈ)

သင်ႁဝ်းၶႂ်ႈႁႂ်ႈ Variable ႁဝ်း ၸၢင်ႈပဵၼ် `null` လႆႈ (မိူၼ်ၼင်ႇ ၶေႃႈမုၼ်းဢၼ်ပႆႇႁူႉၸႅင်ႈ)၊ ႁဝ်းတေလႆႈသႂ်ႇၶိူင်ႈမၢႆ **`?` (Question Mark)** ဝႆႉၽၢႆႇလင် Type မၼ်းယဝ်ႉ။

```kotlin
var nickname: String? = "Sai"
nickname = null  // ႁဵတ်းလႆႈ! ၵွပ်ႈမီး "?" ၽၢႆႇလင် String

```

---

### 3. ပႅၵ်ႇပၢင်ႇၵၼ်ၸိူဝ်ႉႁိူဝ် မိူဝ်ႈၸႂ်ႉၵၢၼ်?

Kotlin တေပၼ်ႁဝ်းၸႂ်ႉ Variable ဢၼ်ပဵၼ် Nullable ၼၼ်ႉ ယၢပ်ႇသေ Non-nullable ဢိတ်းၼိုင်ႈ တႃႇလွင်ႈႁူမ်ႇလူမ်ႈ (Safety) ယဝ်ႉ။

* **Non-Nullable:** ၸႂ်ႉလႆႈၵမ်းလဵဝ် ဢမ်ႇလူဝ်ႇၵူဝ်။
* **Nullable:** ပႆႇၸၢင်ႈၸႂ်ႉ Function မၼ်းလႆႈၵမ်းလဵဝ် ၵွပ်ႈ Kotlin တေလၢတ်ႈဝႃႈ "ၵဝ်ႇၵူဝ်မၼ်းပဵၼ် null သေ Program လူႉ"။

**တူဝ်ယၢင်ႇ:**

```kotlin
val name: String = "Keng Tung"
println(name.length)  // ႁဵတ်းလႆႈၵမ်းလဵဝ်

val city: String? = null
// println(city.length) // ၼႆႉတေ Error!! Kotlin တေၸႂ်ႉႁဝ်း "Check Null" ဢွၼ်တၢင်း

```

---

### 4. လွၵ်းလၢႆးမၢႆတွင်းငၢႆႈငၢႆႈ

* **`String`** = လိၵ်ႈဢၼ်တေလႆႈမီးတႃႇသေႇ (100% မၼ်ႈၸႂ်)။
* **`String?`** = လိၵ်ႈဢၼ် "ဢမ်ႇၼၼ်" ၸၢင်ႈပဵၼ်လွၵ်းလၢႆႇ (Null)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Nullable:** ဢၼ်ၸၢင်ႈပဵၼ် null လႆႈ (မီး `?` ၵိုၵ်းဝႆႉ)။
* **Non-Nullable:** ဢၼ်တေလႆႈမီးၶေႃႈမုၼ်းတႃႇသေႇ။
* **Null Check:** ၵၢၼ်ထတ်းတူၺ်းဝႃႈ ၶေႃႈမုၼ်းၼၼ်ႉ ပဵၼ် null ႁႃႉ ဢမ်ႇပဵၼ်။

---