# တွၼ်ႈသွၼ် 16: ၵၢၼ်လႅၵ်ႈမဵဝ်းၶေႃႈမုၼ်း (Safe Casts `as?` & Manual Casting `as`)

ၼႂ်း Kotlin မီးလၢႆးလႅၵ်ႈ Type ယူႇ 2 ပိူင်: လၢႆးဢၼ်မီးၽေး (Unsafe) လႄႈ လၢႆးဢၼ်ႁူမ်ႇလူမ်ႈ (Safe)။

### 1. Unsafe Cast Operator (`as`)

ၶိူင်ႈမၢႆ **`as`** ၼႆႉ ပဵၼ်ၵၢၼ်သင်ႇလႅၵ်ႈ Type လူၺ်ႈ "တႅတ်ႈတေႃး"။ သင်ဝႃႈမၼ်းလႅၵ်ႈဢမ်ႇလႆႈ (တူဝ်ယၢင်ႇ: ဢဝ် Int ၵႂႃႇလႅၵ်ႈပဵၼ် String)၊ Program တေ **Crash** ၵမ်းလဵဝ်ယဝ်ႉ။

```kotlin
val obj: Any = 123
val str = obj as String // ၼႆႉတေ Error (ClassCastException) ၵွပ်ႈ 123 ဢမ်ႇၸႂ်ႈလိၵ်ႈ

```

### 2. Safe Cast Operator (`as?`)

တႃႇၵႄႉၶႆးပၼ်ႁႃ Crash ၼၼ်ႉ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ **`as?`** ယဝ်ႉ။

* **သင်လႅၵ်ႈလႆႈ:** မၼ်းတေလႅၵ်ႈပၼ်ၵမ်းလဵဝ်။
* **သင်လႅၵ်ႈဢမ်ႇလႆႈ:** မၼ်းတေဢမ်ႇပွႆႇ Error၊ မၼ်းတေပွႆႇၽူၼ်မၼ်းပဵၼ် **`null`** ဝႆႉယဝ်ႉ။

```kotlin
val obj: Any = 123
val str: String? = obj as? String 

println(str) // ၽူၼ်မၼ်းတေဢွၵ်ႇ: null (Program ဢမ်ႇလူႉ)

```

---

### 3. ၸႂ်ႉၵိုၵ်း Elvis Operator

ႁဝ်းၵႆႉၸႂ်ႉ `as?` ၵိုၵ်းၵၼ်တင်း `?:` တႃႇႁႂ်ႈမၼ်းလႅၵ်ႈ Type လႄႈ သႂ်ႇၶေႃႈမုၼ်းတႅၼ်းတၢင်း (Default Value) ၵမ်းလဵဝ်ၶႃႈ။

```kotlin
val obj: Any = 123
val str: String = obj as? String ?: "ဢမ်ႇၸႂ်ႈလိၵ်ႈၶႃႈ"

println(str) // ၽူၼ်မၼ်းတေဢွၵ်ႇ: ဢမ်ႇၸႂ်ႈလိၵ်ႈၶႃႈ

```

---

### 4. ၵၢၼ်လႅၵ်ႈတူဝ်ၼပ်ႉ (Numeric Conversions)

ၼႂ်း Kotlin၊ ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ် `Int` ၵႂႃႇသႂ်ႇၼႂ်း `Long` လႆႈၵမ်းလဵဝ် (ဢမ်ႇမိူၼ် Java)။ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ Function လႅၵ်ႈမၼ်းယဝ်ႉ။

```kotlin
val i: Int = 10
// val l: Long = i // ၼႆႉတေ Error
val l: Long = i.toLong() // ထုၵ်ႇတေႃး

```

Function ဢၼ်ၸႂ်ႉလႆႈမီး: `.toInt()`, `.toLong()`, `.toFloat()`, `.toDouble()`, `.toString()`.

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Casting:** ၵၢၼ်လႅၵ်ႈမဵဝ်းၶေႃႈမုၼ်း (Type) ၼိုင်ႈဢၼ် ၵႂႃႇပဵၼ်ထႅင်ႈဢၼ်ၼိုင်ႈ။
* **ClassCastException:** Error ဢၼ်ပဵၼ်မႃး မိူဝ်ႈလႅၵ်ႈ Type ၽိတ်းပိူင်။
* **Explicit Conversion:** ၵၢၼ်လႅၵ်ႈတူဝ်ၼပ်ႉ လူၺ်ႈၵၢၼ်ႁွင်ႉၸႂ်ႉ Function (မိူၼ်ၼင်ႇ `.toLong()`)။

---