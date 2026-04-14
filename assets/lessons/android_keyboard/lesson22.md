## **Lesson 22: The Reordering Engine**

### **Overview (ႁူဝ်ၶေႃႈ)**
Overview (ႁူဝ်ၶေႃႈ)
ၼႂ်းလိၵ်ႈတႆး (လႄႈ လိၵ်ႈမၢၼ်ႈ)၊ မီးတူဝ်လိၵ်ႈမၢင်မဵဝ်း ဢၼ်ႁဝ်းၼိပ်ႉ "ၽၢႆႇလင်" ၵွၺ်းၵႃႈ မၼ်းလူဝ်ႇၼႄ "ၽၢႆႇၼႃႈ" ၶႃႈ။ တူဝ်ဢၼ်လွင်ႈယႂ်ႇသေပိူၼ်ႈ ပဵၼ် "ေ" (Shan Vowel E) ၶႃႈယဝ်ႉ။
ပိူင် Standard Unicode ၼၼ်ႉ ႁဝ်းတေလႆႈတႅမ်ႈ Consonant (ၵ) + Vowel (ေ) = ၵေ။ 
ၵွၺ်းၵႃႈ ၵူၼ်းၸႂ်ႉၵမ်ႉၼမ် ယၢမ်ႈတႅမ်ႈၸွမ်းပိူင်တႅမ်ႈလိၵ်ႈ ဢၼ်ၼဵၵ်ႉ "ေ" ဢွၼ်တၢင်းယဝ်ႉ ၸင်ႇၼိပ်ႉ "ၵ" ၶႃႈ။ 
သင် Keyboard ႁဝ်းဢမ်ႇမီး Reordering Engine ၼႆ လိၵ်ႈတေလႅၼ်ႈၽိတ်း လႄႈ ၵူၼ်းၸႂ်ႉတေယုင်ႈၶႃႈ။
---

### **1. The Reordering Engine Class**

ႁဝ်းတေၸႂ်ႉ Class ၼႆႉ တႃႇတႅတ်ႈတေႃး Rules တင်းသဵင်ႈ ဢၼ်လႅၵ်ႈလၢႆႈတူဝ်လိၵ်ႈ (Swap Logic) ၶႃႈ။

```kotlin
package it.saimao.tmkkeyboardpro.logic

import android.view.inputmethod.InputConnection

class ShanReorderingEngine(private val ic: InputConnection) {

    companion object {
        const val MY_E = 0x1031      // ေ (Myanmar E)
        const val SH_E = 0x1084      // ႄ (Shan AE - note: double check your hex)
        const val ASAT = 0x103A      // ် (Asat)
        const val ZWSP = '\u200B'    // Zero Width Space
    }

    // Flags တႃႇတွတ်းၸႂ်ဝႃႈ တိုၵ်ႉမီးလွင်ႈလႅၵ်ႈတီႈ (Swap) ဝႆႉယူႇႁႃႉ
    private var isConsonantSwapped = false
    private var isMedialSwapped = false

    fun handleInput(primaryCode: Int): String? {
        val charBefore = ic.getTextBeforeCursor(1, 0)?.toString() ?: ""
        val charCodeBefore = if (charBefore.isNotEmpty()) charBefore[0].code else -1

        // 1. Common Reordering Rules (Always Apply)
        checkReorderingRules(charCodeBefore, primaryCode)?.let { return it }

        // 2. Handwriting / Visual Typing Mode Logic (ေ + ၵ -> ၵေ)
        return handleVisualOrdering(charCodeBefore, primaryCode)
    }

    private fun checkReorderingRules(prev: Int, current: Int): String? {
        return when {
            // Reorder ေႂ (Asat + Medial Wa -> Wa + Asat)
            prev == ASAT && current == 0x1082 -> {
                ic.deleteSurroundingText(1, 0)
                "${0x1082.toChar()}${ASAT.toChar()}"
            }
            // Reorder ႆၢ (Tone-5 + AA -> AA + Tone-5)
            prev == 0x1086 && current == 0x1062 -> {
                ic.deleteSurroundingText(1, 0)
                "${0x1062.toChar()}${0x1086.toChar()}"
            }
            // Reorder ိူ (U + II -> II + U)
            prev == 0x1030 && current == 0x102D -> {
                ic.deleteSurroundingText(1, 0)
                "${0x102D.toChar()}${0x1030.toChar()}"
            }
            else -> null
        }
    }

    private fun handleVisualOrdering(prev: Int, current: Int): String {
        val currentChar = current.toChar()

        // သင်ၼိပ်ႉ "ေ" ဢွၼ်တၢင်း (Start of leading vowel logic)
        if (current == MY_E || current == SH_E) {
            isConsonantSwapped = false
            isMedialSwapped = false
            return "$ZWSP$currentChar"
        }

        // သင်တူဝ်ၽၢႆႇၼႃႈပဵၼ် "ေ"
        if (prev == MY_E || prev == SH_E) {
            when {
                isShanConsonant(current) -> {
                    if (!isConsonantSwapped) {
                        ic.deleteSurroundingText(2, 0) // Delete ZWSP + E
                        isConsonantSwapped = true
                        return "$currentChar${prev.toChar()}"
                    }
                }
                isShanMedial(current) -> {
                    if (isConsonantSwapped && !isMedialSwapped) {
                        ic.deleteSurroundingText(1, 0) // Delete E
                        isMedialSwapped = true
                        return "$currentChar${prev.toChar()}"
                    }
                }
            }
        }

        // Default state reset
        if (isOthers(current)) {
            isConsonantSwapped = false
            isMedialSwapped = false
        }

        return currentChar.toString()
    }

    private fun isShanConsonant(code: Int) = code in 0x1000..0x1021 || code in 0xAA60..0xAA7A
    private fun isShanMedial(code: Int) = code == 0x103B || code == 0x103C
    private fun isOthers(code: Int) = code in listOf(0x1086, 0x1087, 0x1088, 0x1089, 0x108A, 0x1062)

    fun handleShanDelete() {

        // 1. ထတ်းတူၺ်းတူဝ်လိၵ်ႈ 2 တူဝ် ၽၢႆႇၼႃႈ Cursor
        val before = ic.getTextBeforeCursor(2, 0) ?: ""

        if (before.length >= 2) {
            val firstChar = before[0] // တူဝ်ထႅၼ်ႈ 2 (secPrev)
            val secondChar = before[1] // တူဝ်ထႅၼ်ႈ 1 (charBeforeCursor)

            when {
                // Case A: သင်ပဵၼ် [ZWSP + ေ] -> လူတ်းပႅတ်ႈတင်းသွင်တူဝ်
                secondChar.code == 0x1031 && firstChar.code == 8203 -> {
                    ic.deleteSurroundingText(2, 0)
                    resetReorderFlags()
                }
                // Case B: သင်ပဵၼ် [ၵ + ေ] (Swap ယဝ်ႉ) -> လူတ်းပႅတ်ႈတင်းသွင်တူဝ်
                // ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတေလႅၵ်ႈတူဝ် Consonant မႂ်ႇလႆႈငၢႆႈ
                (secondChar.code == 0x1031) && isShanConsonant(firstChar.code) -> {
                    ic.deleteSurroundingText(2, 0)
                    // လူတ်းယဝ်ႉ ၸၢင်ႈထႅမ်သႂ်ႇ ZWSP + ေ ၶိုၼ်း ၼင်ႇႁိုဝ်တေတႅမ်ႈ Consonant မႂ်ႇလႆႈၵမ်းလဵဝ်
                    ic.commitText("\u200B\u1031", 1)
                    resetReorderFlags()
                }
                else -> {
                    ic.deleteSurroundingText(1, 0)
                }
            }
        } else {
            // Default Delete
            ic.deleteSurroundingText(1, 0)
        }
    }

    private fun resetReorderFlags() {
        isConsonantSwapped = false
        isMedialSwapped = false
    }

}
```

---

### **2. Integration in ShanKeyboardService**

ယၢမ်းလဵဝ် ၼႂ်း `ShanKeyboardService` ႁဝ်း၊ ႁဝ်းၵွၺ်းလူဝ်ႇႁွင်ႉၸႂ်ႉ Engine ၼႆႉၵွၺ်းၶႃႈ။

```kotlin
// ၼႂ်း Class ShanKeyboardService
private val shanEngine = ShanReorderingEngine()

fun handleKeyPress(text: String) {
    val ic = currentInputConnection ?: return
    val primaryCode = if (text.isNotEmpty()) text.first().code else -1

    if (currentLanguage == "SHN" && primaryCode != -1) {
        // သူင်ႇ Code ၶဝ်ႈၵႂႃႇၼႂ်း Engine သေ ႁွင်ႉဢဝ် Result မၼ်းမႃး
        val result = shanEngine.handleInput(primaryCode, ic)
        if (result != null) {
            ic.commitText(result, 1)
        }
    } else {
        // English ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈတၢင်ႇဢၼ်
        ic.commitText(text, 1)
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Engine Class:** ၸွႆႈႁႂ်ႈ Logic ၵၢၼ်တႅမ်ႈလိၵ်ႈတႆး လႄႈ လိၵ်ႈမၢၼ်ႈ သႅၼ်ႇလႅင်း (Encapsulated)။
* **ZWSP Logic:** ၸွႆႈႁႂ်ႈတူဝ်လိၵ်ႈ "ေ" ၼႄႁၢင်ႈလႆႈ တီႈၼႃႈၸေႃး ဢမ်ႇဝႃႈတေပႆႇမီး Consonant ၵေႃႈယဝ်ႉ။
* **Code Quality:** လၢႆးၼႆႉ ႁဵတ်းႁႂ်ႈ Keyboard ႁဝ်း မႅၼ်ႈၸွမ်းပိူင် Unicode Standard 100% ၶႃႈ။

---