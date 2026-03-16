# တွၼ်ႈသွၼ် 18: မဵဝ်းၶေႃႈမုၼ်း Nothing လႄႈ ၶူတ်ႉဢၼ်ၵႂႃႇဢမ်ႇထိုင် (Unreachable Code)

### 1. `Nothing` Type ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ်သင်?

ၼႂ်း Kotlin ၼၼ်ႉ **`Nothing`** ပဵၼ် Type ဢၼ် "ဢမ်ႇမီး Value" သင်သေဢၼ်။ မၼ်းပႅၵ်ႇပၢင်ႇတင်း `Unit` (ဢၼ်မီး Value ၼိုင်ႈဢၼ်) လႄႈ `Any` (ဢၼ်ပဵၼ်လႆႈၵူႈယၢင်ႇ) ယဝ်ႉ။

**`Nothing`** ဝႆႉၸႂ်ႉတႃႇလၢတ်ႈၼႄဝႃႈ: **"Function ၼႆႉ တေဢမ်ႇမီးဝၼ်း ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ (Never returns)"**။

### 2. မိူဝ်ႈလႂ်ႁဝ်းၸႂ်ႉ `Nothing`?

ႁဝ်းၵႆႉၸႂ်ႉမၼ်း ၼႂ်း 2 လွင်ႈပႃႈတႂ်ႈၼႆႉၶႃႈ:

#### ၵ) မိူဝ်ႈ Function ပွႆႇ Error (Throwing an Exception)

သင် Function ႁဝ်း ပွႆႇ Error (Throw Exception) ဢွၵ်ႇမႃး၊ မၼ်းတေဢမ်ႇမီးဝၼ်းႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ။

```kotlin
fun fail(message: String): Nothing {
    throw IllegalArgumentException(message)
}

```

#### ၶ) မိူဝ်ႈမီး Loop ဢၼ်ႁဵတ်းၵၢၼ်ဢမ်ႇယဝ်ႉ (Infinite Loop)

```kotlin
fun infiniteLoop(): Nothing {
    while (true) {
        // ႁဵတ်းၵၢၼ်ၵႂႃႇတႃႇသေႇ ဢမ်ႇမီးဝၼ်းၵိုတ်း
    }
}

```

---

### 3. Unreachable Code (ၶူတ်ႉဢၼ်ၵႂႃႇဢမ်ႇထိုင်)

ၵွပ်ႈပိူဝ်ႈ Kotlin ႁူႉဝႃႈ Function ဢၼ်ပဵၼ် `Nothing` ၼၼ်ႉ တေဢမ်ႇႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ၊ ၶူတ်ႉဢၼ်တႅမ်ႈဝႆႉ **ၽၢႆႇလင်** မၼ်းၼၼ်ႉ တေပဵၼ် **Unreachable Code** (ၶူတ်ႉဢၼ်ဢမ်ႇမီးဝၼ်းလႆႈ Run) ယဝ်ႉ။

```kotlin
fun main() {
    fail("ပဵၼ် Error ယဝ်ႉ!")
    
    // ၶူတ်ႉထႅဝ်ၼႆႉ တေဢမ်ႇမီးဝၼ်းလႆႈ Run ၵွပ်ႈ fail() ႁဵတ်းႁႂ်ႈ Program ၵိုတ်းၵႂႃႇယဝ်ႉ
    println("ၼႆႉပဵၼ် Unreachable Code") 
}

```

---

### 4. ၵၢၼ်ၸႂ်ႉ `Nothing?` တႃႇ Null

မိူဝ်ႈႁဝ်းတႅမ်ႈ `val x = null`၊ Kotlin တေလၢမ်းႁူႉ (Infer) ဝႃႈ Type ၶွင် `x` ၼၼ်ႉ ပဵၼ် **`Nothing?`** ယဝ်ႉ။ မၼ်းပွင်ႇဝႃႈ "တူဝ်ၼႆႉ ဢမ်ႇမီး Value သင် လိူဝ်သေ `null` ၵူၺ်း"။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Nothing:** Type ဢၼ်လၢတ်ႈဝႃႈ Function တေဢမ်ႇမီးဝၼ်းႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ။
* **Unreachable Code:** ၶူတ်ႉတွၼ်ႈဢၼ် Compiler ႁူႉဝႃႈ မၼ်းတေဢမ်ႇမီးဝၼ်းလႆႈႁဵတ်းၵၢၼ်။
* **Exception:** ပၼ်ႁႃ ဢမ်ႇၼၼ် Error ဢၼ်ပဵၼ်မႃး မိူဝ်ႈ Program ႁဵတ်းၵၢၼ်ယူႇ။
* **Infinite Loop:** ၵၢၼ်ႁဵတ်းၵၢၼ်တူပ်ႉၵၼ်ၵႂႃႇၶိူဝ်းၶိူဝ်း ဢမ်ႇမီးဝၼ်းယဝ်ႉ။

---