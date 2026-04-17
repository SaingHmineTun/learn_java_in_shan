## **Lesson 26: Zero-Width Space Insertion: Managing Line Breaks**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ပၼ်ႁႃလူင်ဢၼ်ၼိုင်ႈတွၼ်ႈတႃႇလိၵ်ႈတႆး လႄႈ လိၵ်ႈမၢၼ်ႈၼႂ်း Digital Platform ၼႆႉ ပဵၼ်လွင်ႈ **Line Breaking** (ၵၢၼ်တတ်းထႅဝ်) ယဝ်ႉၶႃႈ။
ယွၼ်ႉလိၵ်ႈႁဝ်းဢမ်ႇၸႂ်ႉ Space (ဢွင်ႈဝၢင်ႇ) ၼႂ်းၵႄႈၶေႃႈၵႂၢမ်းမိူၼ်လိၵ်ႈဢင်းၵိတ်ႉလႄႈ System ၸင်ႇဢမ်ႇႁူႉဝႃႈ တေလႆႈတတ်းထႅဝ်တီႈလႂ် ႁဵတ်းႁႂ်ႈလိၵ်ႈႁဝ်း "တူၵ်းၶွပ်ႇ" ဢမ်ႇၼၼ် တတ်းၽိတ်းၶႃႈ။
ၼင်ႇႁိုဝ်တေၵႄႈလႆႈၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **ZWSP (Zero-Width Space)** ဢၼ်မီး Unicode `\u200B` ၶႃႈ။ မၼ်းပဵၼ် Space ဢၼ်တူၺ်းဢမ်ႇႁၼ် ၵွၺ်းၵႃႈ မၼ်းၸွႆႈလၢတ်ႈၼႄ System ဝႃႈ "တီႈၼႆႈ တတ်းထႅဝ်လႆႈယဝ်ႉ" ၼႆၶႃႈ။



---

### **1. The Hidden Helper: ZWSP (\u200B)**

* **Visible Space (" "):** ႁဵတ်းႁႂ်ႈမီးဢွင်ႈဝၢင်ႇ ဢၼ်ႁၼ်လႆႈ။
* **Zero-Width Space ("\u200B"):** ဢမ်ႇမီးဢွင်ႈဝၢင်ႇ ၵွၺ်းၵႃႈ မီး "Logic" တႃႇတတ်းထႅဝ်။

---

### **2. Implementing Auto-Insertion Logic**

ႁဝ်းတေလႆႈသႂ်ႇ ZWSP ဝႆႉၽၢႆႇၼႃႈ တူဝ်လိၵ်ႈဢၼ်တႄႇ "ၶေႃႈၵႂၢမ်းမႂ်ႇ"။ ၼႂ်းလိၵ်ႈတႆး၊ ၵမ်ႉၼမ်ပဵၼ်တူဝ် Consonant (ၵ-ႁ) ၶႃႈ။ ႁဝ်းတေမႃးထႅမ်သႂ်ႇၼႂ်း **`ShanLanguageEngine`** ၶႃႈ။

```kotlin
fun insertWithZWSP(text: String, ic: InputConnection) {
    val charBefore = ic.getTextBeforeCursor(1, 0)?.toString() ?: ""
    val asat = "\u103A" // ်

    // 1. သင်ၼဵၵ်း ASAT (်) -> လူဝ်ႇၵႂႃႇလၢင်ႉ ZWSP ဢၼ်ၸၢင်ႈမီးၽၢႆႇၼႃႈ Consonant
    if (text == asat) {
        handleAsat(ic)
        return
    }

    // 2. Logic သႂ်ႇ ZWSP တွၼ်ႈတႃႇ Consonant
    if (isShanCharacter(charBefore) && isConsonant(text)) {
        ic.commitText("\u200B$text", 1)
    } else {
        ic.commitText(text, 1)
    }
}

private fun handleAsat(ic: InputConnection) {
    val asat = "\u103A"
    // ထတ်းတူၺ်း 2 တူဝ်ၽၢႆႇၼႃႈ (မိူၼ်ၼင်ႇ \u200B + ၵ)
    val before = ic.getTextBeforeCursor(2, 0)?.toString() ?: ""

    if (before.length == 2 && before[0] == '\u200B') {
        // သင်မီး ZWSP ဝႆႉၽၢႆႇၼႃႈ Consonant တႄႉတႄႉ
        val consonant = before[1].toString()

        // လူတ်းပႅတ်ႈတင်းသွင်တူဝ် (ZWSP + Consonant)
        ic.deleteSurroundingText(2, 0)

        // သူင်ႇ Consonant ၶိုၼ်း (ဢမ်ႇပႃး ZWSP) သေၸင်ႇသႂ်ႇ ASAT
        ic.commitText(consonant + asat, 1)
    } else {
        // သင်ဢမ်ႇမီး ZWSP ဝႆႉၵေႃႈ သူင်ႇ ASAT ၵႂႃႇယူႇယူႇ
        ic.commitText(asat, 1)
    }
}
```

---

### **3. Smart Handling for Punctuation**

မိူဝ်ႈႁဝ်းၼဵၵ်ႉ **"။" ** ဢမ်ႇၼၼ် **"၊"**၊ ႁဝ်းလူဝ်ႇသႂ်ႇ ZWSP ၸွမ်းၽၢႆႇလင် ၼင်ႇႁိုဝ်မၼ်းတေတတ်းထႅဝ်လႆႈငၢႆႈၶႃႈ။

```kotlin
when (text) {
    "။", "၊" -> ic.commitText("$text\u200B", 1)
    else -> insertWithZWSP(text, ic)
}
```

---

### **4. Why this makes your keyboard "Pro"?**

1.  **Beautiful Layouts:** လိၵ်ႈဢၼ်တႅမ်ႈလူၺ်း Keyboard ၸဝ်ႈၵဝ်ႇ တေၼႄႁၢင်ႈလီၼႂ်း Facebook/Messenger၊ လိၵ်ႈတေဢမ်ႇတူၵ်းၶွပ်ႇ (Text Clipping)။
2.  **User Convenience:** ၵူၼ်းၸႂ်ႉဢမ်ႇလူဝ်ႇမႃးၼိပ်ႉ Space ႁင်းၵူၺ်း၊ Keyboard ႁဵတ်းပၼ်ၵမ်းလဵဝ်။
3.  **Searchability:** ZWSP ဢမ်ႇႁဵတ်းႁႂ်ႈၵၢၼ် "Search" လိၵ်ႈၽိတ်းၵႂႃႇ (Different from Zawgyi approach)။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **ZWSP (\u200B):** ပဵၼ် "ဢွင်ႈဝၢင်ႇဢမ်ႇႁၼ်ႁၢင်ႈ" ဢၼ်ၸွႆႈတတ်းထႅဝ် (Line Break)။
* **Auto-Trigger:** သႂ်ႇပၼ်မိူဝ်ႈၼိပ်ႉတူဝ် Consonant ဢမ်ႇၼၼ် ၽၢႆႇလင်ၶေႃႈၵႂၢမ်း။
* **Readability:** ၸွႆႈႁႂ်ႈလိၵ်ႈတႆးၼႂ်း Digital World တူၺ်းႁၼ်ၸႅင်ႈလႅင်း လႄႈ Professional တႄႉတႄႉၶႃႈ။

---