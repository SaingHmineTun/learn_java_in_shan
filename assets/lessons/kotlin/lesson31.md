# တွၼ်ႈသွၼ် 31: Function ထႅဝ်လဵဝ် လႄႈ ၵၢၼ်သူင်ႇၽူၼ်လႅတ်းႁင်းၵူၺ်း (Single-Expression Functions)

မိူဝ်ႈ Function ႁဝ်းမီးၵၢၼ်ႁဵတ်းၵၢၼ်ၵူၺ်း "ထႅဝ်လဵဝ်" (ၼပ်ႉသၢင်ႈယဝ်ႉသေ Return ၵမ်းလဵဝ်)၊ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈပိၵ်ႇၵႃ `{ }` လႄႈ ဢမ်ႇလူဝ်ႇတႅမ်ႈ Keyword `return` ၵေႃႈလႆႈယဝ်ႉ။

### 1. လၢႆးလႅၵ်ႈတႅမ်ႈ (Syntax Transformation)

တူၺ်းလွင်ႈပႅၵ်ႇပၢင်ႇၵၼ် ၼႂ်းတူဝ်ယၢင်ႇတူဝ်ၼပ်ႉသွၼ်ႉ (Double) ၼႆႉၶႃႈ:

* **လၢႆးတႅမ်ႈပိူင်လူင် (Block Body):**

```kotlin
fun double(x: Int): Int {
    return x * 2
}

```

* **လၢႆးတႅမ်ႈထႅဝ်လဵဝ် (Expression Body):**
  ႁဝ်းၸႂ်ႉၶိူင်ႈမၢႆ **`=`** တႅၼ်းတၢင်းပိၵ်ႇၵႃ လႄႈ `return` ယဝ်ႉ။

```kotlin
fun double(x: Int): Int = x * 2

```

---

### 2. Implicit Returns (ၵၢၼ်သူင်ႇ Value ႁင်းၵူၺ်း)

ၼႂ်း Single-expression function ၼၼ်ႉ၊ ၶေႃႈမုၼ်းဢၼ်ယူႇၽၢႆႇၶႂႃၶွင်ၶိူင်ႈမၢႆ **`=`** တေပဵၼ် **Return Value** ႁင်းၵူၺ်းမၼ်း (Implicitly)။ ႁဝ်းဢမ်ႇလူဝ်ႇသင်ႇ `return` ၵွပ်ႈ Compiler ႁူႉဝႃႈ ၼႆႉပဵၼ်ၽူၼ်လႅတ်းဢၼ်ႁဝ်းၶႂ်ႈလႆႈယဝ်ႉ။

### 3. Type Inference (ဢမ်ႇလူဝ်ႇလၢတ်ႈ Return Type)

ၵွပ်ႈဝႃႈ Compiler ႁူႉဝႃႈၽၢႆႇၶႂႃၼၼ်ႉ ပဵၼ် Type သင်၊ ႁဝ်းၸၢင်ႈတတ်း **Return Type** ဢွၵ်ႇပႅတ်ႈလႆႈထႅင်ႈ (Optional)။

```kotlin
// တူၺ်းငၢႆႈ လႄႈ သႅၼ်ႈသႂ်သုတ်းသုတ်း
fun double(x: Int) = x * 2 

```

*(Compiler တေႁူႉႁင်းၵူၺ်းဝႃႈ `x * 2` ပဵၼ် `Int`၊ ၵွပ်ႈၼၼ် Function ၼႆႉတေပဵၼ် Return Type `Int` ယဝ်ႉ။)*

---

### 4. ၸႂ်ႉၵိုၵ်းတင်း 'if' လႄႈ 'when'

ၵွပ်ႈ `if` လႄႈ `when` ၼႂ်း Kotlin ပဵၼ် **Expression** (ပၼ် Value လႆႈ)၊ ႁဝ်းၸၢင်ႈၸႂ်ႉမၼ်းသၢင်ႈ Function ထႅဝ်လဵဝ် ဢၼ်ၵတ်ႉၶႅၼ်ႇလႆႈယဝ်ႉ။

```kotlin
// ၸႂ်ႉ if ပဵၼ် Expression
fun max(a: Int, b: Int) = if (a > b) a else b

// ၸႂ်ႉ when ပဵၼ် Expression
fun getTempDescription(temp: Int) = when {
    temp < 15 -> "Cold"
    temp < 25 -> "Warm"
    else -> "Hot"
}

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Single-Expression Function:** Function ဢၼ်မီးၵၢၼ်ၼပ်ႉသၢင်ႈထႅဝ်လဵဝ် သေၸႂ်ႉၶိူင်ႈမၢႆ `=` တႅၼ်းပိၵ်ႇၵႃ။
* **Implicit Return:** ၵၢၼ်သူင်ႇၽူၼ်လႅတ်းဢွၵ်ႇမႃး ႁင်းၵူၺ်း (ဢမ်ႇလူဝ်ႇတႅမ်ႈ Keyword `return`)။
* **Type Inference:** လွင်ႈလႅတ်းၽႂ်းၶွင် Compiler ဢၼ်လၢမ်းႁူႉမဵဝ်းၶေႃႈမုၼ်း (Type) လႆႈႁင်းၵူၺ်း။
* **Concise:** ၵၢၼ်တႅမ်ႈၶူတ်ႉႁႂ်ႈဢိတ်းဢွၼ်ႇ ၵူၺ်းၵႃႈ လႆႈတီႈပွင်ႇၵူမ်ၵူႈ။

---