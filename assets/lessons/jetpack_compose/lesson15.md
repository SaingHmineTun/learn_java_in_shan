## Lesson 15: String Manipulation (Shan to English)

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ **Mapping** လႄႈ **Looping** တွၼ်ႈတႃႇလႅၵ်ႈလၢႆႈတူဝ်လိၵ်ႈ (String) ၶႃႈ။

### 1. ႁဵတ်းသင်လူဝ်ႇလႅၵ်ႈလၢႆႈ (Conversion)?
* **Math Logic:** ၼႂ်း Kotlin, `1 + 2` ၼၼ်ႉ ႁဵတ်းလႆႈငၢႆႈလႄႈ ပဵၼ် `3` ၶႃႈ။ ၵွၺ်းၵႃႈ `႑ + ႒` ၼၼ်ႉ ၶွမ်ႇပိဝ်ႇတႃႇတေဝူၼ်ႉဝႃႈ မၼ်းပဵၼ် "လိၵ်ႈ" (Text) ၵူၺ်း၊ မၼ်းတေဢမ်ႇၼပ်ႉသွၼ်ႇပၼ်ၶႃႈ။
* **Shan UI:** ၵူၼ်းၸႂ်ႉၶႂ်ႈႁၼ်လိၵ်ႈတႆး ႐-႙ ႁႂ်ႈမၼ်းပဵၼ်သၽႃႇဝၶႃႈ။

### 2. ၵၢၼ်ၵေႃႇသၢင်ႈ Mapping Table
ႁဝ်းတေဝၢင်းၽႅၼ်ဝႆႉဝႃႈ တူဝ်လိၵ်ႈတႆးဢၼ်လႂ် ၵိုင်ႇၵၼ်တင်း မၢႆၼပ်ႉဢင်းၵိတ်းဢၼ်လႂ်ၶႃႈ။

```kotlin
val shanToEnglishMap = mapOf(
    '႐' to '0', '႑' to '1', '႒' to '2', '႓' to '3', '႔' to '4',
    '႕' to '5', '႖' to '6', '႗' to '7', '႘' to '8', '႙' to '9'
)

val englishToShanMap = shanToEnglishMap.entries.associate { (k, v) -> v to k }
```

### 3. တႅမ်ႈ Translator Function
ႁဝ်းတေတႅမ်ႈ Function 2 ဢၼ် တွၼ်ႈတႃႇလႅၵ်ႈၵႂႃႇလႅၵ်ႈမႃးၶႃႈ။

```kotlin
// 1. လႅၵ်ႈလိၵ်ႈတႆး ပဵၼ် ဢင်းၵိတ်း (တႃႇၼပ်ႉသွၼ်ႇ)
fun String.toEnglishDigits(): String {
    return this.map { shanToEnglishMap[it] ?: it }.joinToString("")
}

// 2. လႅၵ်ႈဢင်းၵိတ်း ပဵၼ် လိၵ်ႈတႆး (တႃႇၼႄ UI)
fun String.toShanDigits(): String {
    return this.map { englishToShanMap[it] ?: it }.joinToString("")
}
```



---

### 4. ၵၢၼ်ၸႂ်ႉတူဝ်တႄႉ ၼႂ်း Logic
တူၺ်း Code တွၼ်ႈတႃႇၼပ်ႉသွၼ်ႇ (Calculation) ဢၼ်ၼႆႉၶႃႈ:

```kotlin
val inputFromUser = "႑႒" // လိၵ်ႈတႆး 12
val englishNumber = inputFromUser.toEnglishDigits() // တေပဵၼ် "12" (String)
val result = englishNumber.toInt() + 10 // 12 + 10 = 22

val finalDisplay = result.toString().toShanDigits() // တေပဵၼ် "႒႒" (လိၵ်ႈတႆး 22)
```

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 15)
1.  ၸၢမ်းၵေႃႇသၢင်ႈ `shanToEnglishMap` ၼႂ်း Project ၸဝ်ႈၵဝ်ႇၶႃႈ။
2.  ၸၢမ်းတႅမ်ႈ Function `toEnglishDigits()` သေ ၸၢမ်း `println("႑႒႓".toEnglishDigits())` တူၺ်းၼႂ်း Logcat ဝႃႈ မၼ်းဢွၵ်ႇ "123" ႁိုဝ်ဢမ်ႇႁွၵ်ႇၶႃႈ။
3.  **Challenge:** ပေႃးၵူၼ်းၸႂ်ႉတႅမ်ႈမၢႆၼပ်ႉဢင်းၵိတ်း "123" သႂ်ႇမႃး ၸဝ်ႈၵဝ်ႇတေလႅၵ်ႈပဵၼ်လိၵ်ႈတႆး "႑႒႓" ၸိူင်ႉႁိုဝ်? (ၸၢမ်းၸႂ်ႉ `toShanDigits()` ၶႃႈ)။