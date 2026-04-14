## **Lesson 23: Tone Mark Stacking Rules: Preventing Broken Shan Characters**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၼႂ်းလိၵ်ႈတႆးႁဝ်း၊ **တူၼ်းသဵင် (Tone Marks)** မိူၼ်ၼင်ႇ `ႇ`, `း`, `ႉ`, `ၾ`, `ြ` ၸိူဝ်းၼႆႉ မၼ်းမီးဢွင်ႈတီႈတမ်းဝႆႉ ဢၼ်တႅတ်ႈတေႃး။ 
ပၼ်ႁႃဢၼ်ၵူၼ်းၸႂ်ႉၵႆႉၺႃးသေပိူၼ်ႈ ပဵၼ်ၵၢၼ်ၼဵၵ်ႉ တူၼ်းသဵင် "သွၼ်ႉ" ၵၼ် (Stacking) ယဝ်ႉ။ 
မိူၼ်ၼင်ႇ တႅမ်ႈ `ၵ` ယဝ်ႉ သမ်ႉၼဵၵ်း `ႃ` သွင်ပွၵ်ႈ ဢမ်ႇၼၼ် ၼဵၵ်းယၵ်း (`ႇ`) သွင်ပွၵ်ႈ သွၼ်ႉၵၼ်။

သင်ႁဝ်းပွႆႇႁႂ်ႈမၼ်းသပ်ႉၵၼ်ၼႆ လိၵ်ႈတေ "လူႉ" (Broken Unicode) သေ တေဢွၵ်ႇမႃးပဵၼ် **Dotted Circle (◌)** ၶႃႈယဝ်ႉ။ ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးတႅမ်ႈ "Validator" တႃႇႁႄႉၵတ်ႉပၼ်ႁႃၼႆႉၶႃႈ။

---

### **1. The "Broken Character" Problem**

မိူဝ်ႈ Unicode Rendering Engine (ၼႂ်း Android) ႁၼ်တူဝ်လိၵ်ႈ ဢၼ်ဢမ်ႇၸွမ်းပိူင် (Invalid Sequence)၊ မၼ်းတေၼႄႁၢင်ႈ ဝူင်းမူၼ်းၸႅၼ်ႇၸႅၼ်ႇ ၼင်ႇႁိုဝ်တေႁူႉဝႃႈ လိၵ်ႈတိုၵ်ႉလူႉယူႇ။



---

### **2. Defining Tone Mark Groups**

ဢွၼ်တၢင်းသုတ်း၊ ႁဝ်းလူဝ်ႇၸႅၵ်ႇ တူၼ်းသဵင်လႄႈသရ ဢွၵ်ႇပဵၼ်မူႇ (Groups) ၼင်ႇႁိုဝ်တေႁူႉဝႃႈ တူဝ်လႂ် "သွၼ်ႉ" ၵၼ်လႆႈ ဢမ်ႇလႆႈၶႃႈ။

```kotlin
object ShanScript {
    // ဝၼ်ၵျုၵ်ႉၽၢႆႇလင် (Tone Marks: ႇ း ႉ ၾ ြ)
    val TONES = setOf('\u1087', '\u1088', '\u1089', '\u108A', '\u1037', '\u1038')
    
    // တၢင်ႇလၢႆ/တိုတ်း (Upper Vowels: ိ ီ ု ူ ေ ႄ)
    val UPPER_VOWELS = setOf('\u102D', '\u102E', '\u102F', '\u1030')
    
    // ဢႃ (AA: ႃ ၢ)
    val AA_VOWELS = setOf('\u1062', '\u1083')
}
```

---

### **3. Implementing the Stacking Validator**

ႁဝ်းတေထႅမ်သႂ်ႇ Logic ၼႆႉ ၼႂ်း **`ShanReorderingEngine`** ၶႃႈ။ မၼ်းတေၸႅတ်ႈတူၺ်းတူဝ်ၽၢႆႇၼႃႈ Cursor (Prev Char) သေ ထတ်းတူၺ်းတူဝ်ဢၼ်တိုၵ်ႉတေၼိပ်ႉ (Current Char) ၶႃႈ။

```kotlin
fun isInvalidSequence(prev: Int, current: Int): Boolean {
    val prevChar = prev.toChar()
    val currChar = current.toChar()

    return when {
        // Rule 1: ယႃႇႁႂ်ႈၼိပ်ႉ ဝၼ်ၵျုၵ်ႉ မိူၼ်ၵၼ် သွင်ပွၵ်ႈ (No double tones)
        prevChar == currChar && (ShanScript.TONES.contains(currChar)) -> true
        
        // Rule 2: သင်မီး ဝၼ်ၵျုၵ်ႉဝႆႉယဝ်ႉ ယႃႇႁႂ်ႈသႂ်ႇ ဝၼ်ၵျုၵ်ႉထႅင်ႈ (No stacking tones)
        ShanScript.TONES.contains(prevChar) && ShanScript.TONES.contains(currChar) -> true
        
        // Rule 3: သင်မီး တၢင်ႇလၢႆ/တိုတ်း ဝႆႉယဝ်ႉ ယႃႇႁႂ်ႈသႂ်ႇ တၢင်ႇလၢႆ/တိုတ်း ထႅင်ႈ
        ShanScript.UPPER_VOWELS.contains(prevChar) && ShanScript.UPPER_VOWELS.contains(currChar) -> true

        else -> false
    }
}
```

---

### **4. Applying the Filter**

မိူဝ်ႈႁွင်ႉၸႂ်ႉ `handleInput`၊ သင်မၼ်းပဵၼ် `InvalidSequence` ႁဝ်းတေ **"Ignore"** (ဢမ်ႇသူင်ႇလိၵ်ႈ) ပႅတ်ႈၵမ်းသိုဝ်ႈၶႃႈ။

```kotlin
fun handleInput(primaryCode: Int, ic: InputConnection): String? {
    val charBefore = ic.getTextBeforeCursor(1, 0)?.toString() ?: ""
    val charCodeBefore = if (charBefore.isNotEmpty()) charBefore[0].code else -1

    // *** ထတ်းတူၺ်းဝႃႈ လိၵ်ႈတေလူႉႁႃႉ? ***
    if (isInvalidSequence(charCodeBefore, primaryCode)) {
        // တူင်ႉၼိုင် (Vibrate) ဢိတ်းၼိုင်ႈ ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတေႁူႉဝႃႈ ၼိပ်ႉၽိတ်းယဝ်ႉ
        return null 
    }

    // သင်ဢမ်ႇၽိတ်း ၸင်ႇႁဵတ်းၵၢၼ် Reordering ပၢႆးၼႃႈ...
    return handleVisualOrdering(charCodeBefore, primaryCode, ic)
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Prevention is better than cure:** ၵၢၼ် "Block" ပႅတ်ႈ ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉ ဢမ်ႇလႆႈမႃးၼင်ႇလူတ်းလိၵ်ႈ (Delete) ၶိုၼ်းမိူဝ်ႈတႅမ်ႈၽိတ်း။
* **Data Integrity:** ၸွႆႈႁႂ်ႈ Data ဢၼ်သူင်ႇၶဝ်ႈ App ပဵၼ် Unicode ဢၼ်သႅၼ်ႇလႅင်း လႄႈ ထုၵ်ႇမႅၼ်ႈၸွမ်းပိူင် 100% ၶႃႈ။
* **User Feedback:** ၵၢၼ်သႂ်ႇ Vibration ဢူၼ်ႈဢူၼ်ႈ မိူဝ်ႈၼိပ်ႉ Invalid Sequence ႁဵတ်းႁႂ်ႈ Keyboard ႁဝ်းတူၺ်းႁၼ် Smart လိူဝ်ၵဝ်ႇၶႃႈ။

---
