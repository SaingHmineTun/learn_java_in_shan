

## Lesson 14: Implementing the Handwriting Engine for Myanmar

ၼႂ်းတွၼ်ႈလိၵ်ႈၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ **Handwriting (Visual Order) Engine** တႃႇၽႃႇသႃႇမၼ်း (Myanmar Language) ၶႃႈ။ ၼႂ်းပိူင်သၢင်ႈလိၵ်ႈမၼ်း, မိူဝ်ႈ User တႅမ်ႈလိၵ်ႈသျၼ်ႉ Pali (မိူၼ်ၼင်ႇ `က္ေ`) ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈပိုၼ်ႉထၢၼ် (မိူၼ်ၼင်ႇ `ေ` + `က`) ၼၼ်ႉ Engine ႁဝ်းလူဝ်ႇလႆႈမီး `Stack` တႃႇၵဵပ်းဝႆႉ တူဝ် Medials လႄႈ ပႂ်ႉ Swap ႁႂ်ႈပဵၼ် Unicode Typing Order (`က` + `ေ`) ဝႆႉၽၢႆႇလင် ၶႃႈယဝ်ႉ။

---

### 1. ပိူင်သၢင်ႈ State Machine ၶွင်လိၵ်ႈမၼ်း

ၼႂ်း Kotlin ႁဝ်းတေၸႂ်ႉ `object` Singleton သေ ပိၼ်ႇ Code Matrix Logic ၶွင်ၸဝ်ႈၵဝ်ႇ ႁႂ်ႈမၼ်ႈၵႅၼ်ႇ လႄႈ ၸႂ်ႉလႆႈငၢႆႈ ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.logic

import android.view.inputmethod.InputConnection

object MyanmarKeyboardEngine {

    // 🌟 Setup States & Arrays Stack ၸွမ်းပိူင်သၢင်ႈ Java ၶွင်ၸဝ်ႈၵဝ်ႇ
    private var swapConsonant = false
    private var swapMedial = false
    private var hasZWSP = false
    private var evowelVirama = false
    private var medialCount = 0
    private val medialStack = IntArray(3)

    private const val MY_E = 0x1031      // သရ ေ (4145)
    private const val TEMP = 8203        // ZWSP (Zero Width Space)
    private const val VIRAMA = 0x1039    // တူဝ်ၸပ်း ္ (4153)
    private const val ASAT = 4154        // တူဝ်သတ်း ်

    fun handleInput(primaryCode: Int, ic: InputConnection, isHandwritingEnabled: Boolean): String {
        // 🌟 တွၼ်ႈ 1: မိူဝ်ႈ User ၼဵၵ်းသရ "ေ" ဢွၼ်တၢင်း
        if (primaryCode == MY_E && isHandwritingEnabled) {
            val twoCharBefore = ic.getTextBeforeCursor(2, 0) ?: ""
            var outText = primaryCode.toChar().toString()

            // ၵုမ်းထတ်းဝႃႈ ၽၢႆႇၼႃႈ ဢမ်ႇပႆႇမီး တူဝ်သတ်း + Virama ္
            if (!(twoCharBefore.length == 2 && twoCharBefore[0] == 0x103A.toChar() && twoCharBefore[1] == VIRAMA.toChar())) {
                outText = "${TEMP.toChar()}${primaryCode.toChar()}" // သႂ်ႇ ZWSP ဝႆႉထႃႈ
                hasZWSP = true
            }

            // Reset flags ၵူႈဢၼ်
            swapConsonant = false
            medialCount = 0
            swapMedial = false
            evowelVirama = false
            return outText
        }

        val charBeforeCursor = ic.getTextBeforeCursor(1, 0) ?: ""
        if (charBeforeCursor.isEmpty()) {
            resetFlags()
            return primaryCode.toChar().toString()
        }

        val charCodeBefore = charBeforeCursor[0].code

        // 🌟 Autocorrect Rules (ၸွမ်းၼင်ႇ Java Setup ၶွင်ၸဝ်ႈၵဝ်ႇ)
        if (charCodeBefore == 0x1036 && primaryCode == 0x102F) { // dot_above + au
            ic.deleteSurroundingText(1, 0)
            return "${0x102F.toChar()}${0x1036.toChar()}"
        }
        if (charCodeBefore == 0x1005 && primaryCode == 0x103B) { //စ + ျ = ဇ
            ic.deleteSurroundingText(1, 0)
            return 0x1008.toChar().toString()
        }
        if (charCodeBefore == 0x1025 && primaryCode == 0x102C) { // ဥ + ာ = ဉာ
            ic.deleteSurroundingText(1, 0)
            return "${0x1009.toChar()}${0x102C.toChar()}"
        }
        if (charCodeBefore == 0x1025 && primaryCode == 0x102E) { // ဥ + ီ = ဦ
            ic.deleteSurroundingText(1, 0)
            return 4134.toChar().toString()
        }
        if (charCodeBefore == 0x1025 && primaryCode == 0x103A) { // ဥ + ် = ဉျ
            ic.deleteSurroundingText(1, 0)
            return "${0x1009.toChar()}${0x103A.toChar()}"
        }
        if (charCodeBefore == 0x103A && primaryCode == 0x1037) { // ် + ့ = ့ + ်
            ic.deleteSurroundingText(1, 0)
            return "${0x1037.toChar()}${0x103A.toChar()}"
        }

        // လႅၼ်ႈပိူင် Handwriting/PrimeBook Function
        if (isHandwritingEnabled) {
            return primeBookFunction(primaryCode, ic, charCodeBefore)
        }

        return primaryCode.toChar().toString()
    }

    private fun primeBookFunction(primaryCode: Int, ic: InputConnection, charCodeBefore: Int): String {
        // ၵုမ်းထိန်း Pali Stacked Virama State
        if (primaryCode == VIRAMA && swapConsonant) {
            swapConsonant = false
            evowelVirama = true
            return primaryCode.toChar().toString()
        }

        if (evowelVirama) {
            if (isConsonant(primaryCode)) {
                swapConsonant = true
                ic.deleteSurroundingText(2, 0)
                evowelVirama = false
                return "${VIRAMA.toChar()}${primaryCode.toChar()}${MY_E.toChar()}"
            } else {
                evowelVirama = false
            }
        }

        if (isOthers(primaryCode)) {
            resetFlags()
            return primaryCode.toChar().toString()
        }

        if (charCodeBefore != MY_E) {
            return primaryCode.toChar().toString()
        }

        if (isConsonant(primaryCode) && swapConsonant) {
            swapConsonant = false
            swapMedial = false
            medialCount = 0
            return primaryCode.toChar().toString()
        }

        if (isConsonant(primaryCode)) {
            return if (!swapConsonant) {
                swapConsonant = true
                reorderEVowel(primaryCode, ic)
            } else {
                swapConsonant = false
                primaryCode.toChar().toString()
            }
        }

        if (isMedial(primaryCode)) {
            if (isValidMedial(primaryCode)) {
                medialStack[medialCount] = primaryCode
                medialCount++
                swapMedial = true
                return reorderEVowel(primaryCode, ic)
            }
        }

        return primaryCode.toChar().toString()
    }

    private fun reorderEVowel(primaryCode: Int, ic: InputConnection): String {
        if (hasZWSP) {
            ic.deleteSurroundingText(2, 0)
            hasZWSP = false
        } else {
            ic.deleteSurroundingText(1, 0)
        }
        return "${primaryCode.toChar()}${MY_E.toChar()}"
    }

    private fun isValidMedial(primaryCode: Int): Boolean {
        if (!swapConsonant) return false
        if (!swapMedial) return true
        if (medialCount > 2) return false
        if (medialStack[medialCount - 1] == 0x103E) return false // Ha medial
        if (medialStack[medialCount - 1] == 0x103D && primaryCode != 0x103E) return false
        
        return (medialStack[medialCount - 1] != 0x103B || primaryCode != 0x103C) &&
                (medialStack[medialCount - 1] != 0x103C || primaryCode != 0x103B) &&
                (medialStack[medialCount - 1] != 0x103B || primaryCode != 0x103B) &&
                (medialStack[medialCount - 1] != 0x103C || primaryCode != 0x103C)
    }

    private fun isConsonant(code: Int): Boolean = code in 4096..4129

    private fun isMedial(code: Int): Boolean = code in 4155..4158

    private fun isOthers(code: Int): Boolean = code in listOf(0x102B, 0x102C, 0x1037, 0x1038)

    private fun resetFlags() {
        swapConsonant = false
        medialCount = 0
        swapMedial = false
        evowelVirama = false
    }
}

```

---

### 2. မၢႆတွင်း (Core Takeaways)

* **`isConsonant` & `isMedial` Range:** ၼႂ်း Kotlin, ႁဝ်းၸၢင်ႈၸႂ်ႉ `code in 4096..4129` တႃႇထတ်းသၢင်ႈ Range ၶွင် Unicode Character ၵမ်းသိုဝ်ႈ ဢဝ်လွင်ႈတႅမ်ႈ Code မၼ်းသႅၼ်းသႅတ်ႈ လႄႈ ဢၢၼ်ႇပွင်ႇၸႂ်ငၢႆႈလိူဝ် Java ၶႃႈ။
* **E-Vowel Reordering Rule (`reorderEVowel`):** လၢႆးႁဵတ်းၵၢၼ်မၼ်း မိူၼ်ၵၼ်တင်းတွၼ်ႈလိၵ်ႈတႆးၶႃႈ။ မိူဝ်ႈမၼ်းတတ်းၸႅၵ်ႇႁၼ် `hasZWSP` ပဵၼ် `true` (ယွၼ်ႉၼဵၵ်း `ေ` ဝႆႉဢွၼ်တၢင်း) ၼၼ်ႉ မၼ်းတေၸိၵ်းပႅတ်ႈ 2 Characters သေ ဢဝ်တူဝ်မႄႈလိၵ်ႈ ဢမ်ႇၼၼ် တူဝ် Medial ဢၼ် User ၼဵၵ်းမႂ်ႇၼၼ်ႉ သွတ်ႇသႂ်ႇဝႆႉ ၽၢႆႇၼႃႈ `ေ` ၵမ်းသိုဝ်ႈ ႁင်းမၼ်းၶႃႈ။

---