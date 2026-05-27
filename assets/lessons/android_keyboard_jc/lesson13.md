

## Lesson 13: Implementing the Handwriting Engine for Shan

ၼႂ်းတွၼ်ႈလိၵ်ႈၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ **Handwriting (Visual Order) Engine** တႃႇၽႃႇသႃႇတႆးၶႃႈ။ ၸွမ်းၼင်ႇႁဝ်းႁူႉဝႆႉ—လိၵ်ႈတႆး Unicode Standard ၼၼ်ႉ လူဝ်ႇလႆႈတႅမ်ႈ `မႄႈလိၵ်ႈ + သရ` (Typing Order: `ၸ` + `ေ`)။ ၵူၺ်းၵႃႈ ၽူႈၸႂ်ႉတိုဝ်းၶႂ်ႈၼဵၵ်းၸွမ်းလၢႆးတႃႁၼ် `သရ + မႄႈလိၵ်ႈ` (Visual Order: `ေ` + `ၸ`) ၶႃႈ။

ႁဝ်းတေမႃးတႅမ်ႈ Engine ၼႆႉဝႆႉၼႂ်း Kotlin Singleton Object ဢၼ်တေမႃးပႂ်ႉၵုမ်းထတ်း (Intercept) ၵူႈ Key ဢၼ် User ၼဵၵ်း လုၵ်ႉတီႈ UI Layout ၶႃႈ။

---

### 1. လၵ်းၵၢၼ်ႁဵတ်းၵၢၼ်ၶွင် Engine (ZWSP State Machine)

မိူဝ်ႈ User ပိုတ်ႇ Handwriting Mode ဝႆႉ:

1. **မိူဝ်ႈၼဵၵ်းသရ `ေ` (`0x1084`):** ႁဝ်းတေဢမ်ႇသူင်ႇ `ေ` သိုဝ်ႈသိုဝ်ႈ။ ႁဝ်းတေသူင်ႇ `ZWSP (\u200B)` ပႃးၽၢႆႇၼႃႈမၼ်း ၼင်ႇႁႂ်ႈမၼ်းၸုၵ်းဝႆႉတီႈၼႃႈၸေႃးသေ ပၼ် Flag ဝႃႈ `swapConsonant = false` ၶႃႈ။
2. **မိူဝ်ႈၼဵၵ်းမႄႈလိၵ်ႈ (Consonant) ၸွမ်းၽၢႆႇလင်:** Engine တေၵႂႃႇၵုမ်းတူၺ်းဝႃႈ ၽၢႆႇၼႃႈ Cursor ပဵၼ် `ေ` ႁႃႉ? သင်ပဵၼ် `ေ` လႄႈ `swapConsonant` တိုင်ပဵၼ် `false` ယူႇၼႆ -> မၼ်းတေၸိၵ်းပႅတ်ႈ (Delete) `ေ` လႄႈ `ZWSP` ဢွၵ်ႇ (2 ၸိူၼ်း) သေ ဢဝ်တူဝ်မႄႈလိၵ်ႈသူင်ႇၶဝ်ႈၵႂႃႇဢွၼ်တၢင်း ၸင်ႇသူင်ႇ `ေ` ၸွမ်းၽၢႆႇလင် (Auto-Swap) ၶႃႈယဝ်ႉ။

---

### 2. တႅမ်ႈ Code `ShanKeyboardEngine.kt` ၼႂ်း Kotlin

ႁဝ်းတေမႃးပိၼ်ႇ (Convert) Code Java ၶွင်ၸဝ်ႈၵဝ်ႇ ႁႂ်ႈပဵၼ် Kotlin Production Code ဢၼ်ၸႂ်ႉတိုဝ်းလႆႈၵတ်ႉၵတ်ႉ ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.logic

import android.view.inputmethod.InputConnection

object ShanKeyboardEngine {
    
    // States တွၼ်ႈတႃႇပႂ်ႉၵုမ်းလွင်ႈ Swap လိၵ်ႈ
    private var swapConsonant = false
    private var swapMedial = false

    private const val SH_E = 0x1084      // သရ ေ ၶွင်လိၵ်ႈတႆး (4228)
    private const val MY_E = 0x1031      // သရ ေ ၶွင်လိၵ်ႈမၼ်း (4145)
    private const val ASAT = 0x103A      // တူဝ်သတ်း ် (4154)
    private const val ZWSP = 0x200B      // Zero Width Space (8203)

    private val SHAN_CONSONANTS = "ၵၶငၸသၺတထၼပၽၾမယရလဝႁဢၷꧠꩡႀၻꩪꧣၿꩮ"

    fun handleInput(primaryCode: Int, ic: InputConnection, isHandwritingEnabled: Boolean): String? {
        val charBeforeCursor = ic.getTextBeforeCursor(1, 0) ?: ""
        val charCodeBefore = if (charBeforeCursor.isNotEmpty()) charBeforeCursor[0].code else 0

        // 🌟 တွၼ်ႈ 1: မိူဝ်ႈ User ၼဵၵ်းသရ "ေ" ဢွၼ်တၢင်း
        if ((primaryCode == SH_E || primaryCode == MY_E) && isHandwritingEnabled) {
            swapConsonant = false
            swapMedial = false
            // သူင်ႇ ZWSP + ေ ဢွၵ်ႇၵႂႃႇဝႆႉထႃႈၼိူဝ် Text Field
            return "${ZWSP.toChar()}${primaryCode.toChar()}"
        }

        // Standard Unicode Fixes (Reorder ိူ , ို , ႆၢ ၸွမ်းပိူင်သၢင်ႈ Code ၸဝ်ႈၵဝ်ႇ)
        if (charCodeBefore == 0x1030 && primaryCode == 0x102D) { // ိူ
            ic.deleteSurroundingText(1, 0)
            return "${0x102D.toChar()}${0x1030.toChar()}"
        }
        if (charCodeBefore == 0x102F && primaryCode == 0x102D) { // ို
            ic.deleteSurroundingText(1, 0)
            return "${0x102D.toChar()}${0x102F.toChar()}"
        }

        // 🌟 တွၼ်ႈ 2: လႅၼ်ႈပိူင် Handwriting Typing Layout
        if (isHandwritingEnabled) {
            return handleHandwritingLogic(primaryCode, charCodeBefore, ic)
        }

        return primaryCode.toChar().toString()
    }

    private fun handleHandwritingLogic(primaryCode: Int, charCodeBefore: Int, ic: InputConnection): String {
        // သင်ပဵၼ် တူဝ်မၢႆသဵၼ်ႈတၢင်ႇဢၼ် (Tone Marks) ႁႂ်ႈ Reset Flags
        if (isOthers(primaryCode)) {
            swapConsonant = false
            swapMedial = false
            return primaryCode.toChar().toString()
        }

        // မိူဝ်ႈတူဝ်လိၵ်ႈၽၢႆႇၼႃႈ cursor ပဵၼ် သရ "ေ"
        if (charCodeBefore == MY_E || charCodeBefore == SH_E) {
            val isCurrentConsonant = SHAN_CONSONANTS.contains(primaryCode.toChar().toString())
            
            if (isCurrentConsonant) {
                if (!swapConsonant) {
                    swapConsonant = true
                    ic.deleteSurroundingText(2, 0) // ၸိၵ်းပႅတ်ႈ ZWSP + ေ
                    return "${primaryCode.toChar()}${charCodeBefore.toChar()}" // သူင်ႇ "မႄႈလိၵ်ႈ + ေ" (Unicode Standard)
                } else {
                    swapConsonant = false
                    swapMedial = false
                    return primaryCode.toChar().toString()
                }
            }
            
            // ၵုမ်းထိန်း Medial (ျ , ြ)
            if (primaryCode == 0x103B || primaryCode == 0x103C) {
                if (!swapMedial && swapConsonant) {
                    swapMedial = true
                    ic.deleteSurroundingText(1, 0) // Delete ေ ဢွၼ်တၢင်း
                    return "${primaryCode.toChar()}${charCodeBefore.toChar()}" // သူင်ႇ "Medial + ေ"
                }
            }
        }

        return primaryCode.toChar().toString()
    }

    private fun isOthers(code: Int): Boolean {
        return when (code) {
            0x1086, 0x1087, 0x1088, 0x1089, 0x108A, 0x1037, 0x1038, 0x1062, 0x1083, 0x1082 -> true
            else -> false
        }
    }
}

```

---

### 3. ၶေႃႈသပ်းလႅင်း (Breakdown) တွၼ်ႈလုၵ်ႈႁဵၼ်း

* **`ic.deleteSurroundingText(2, 0)`:** တီႈၼႆႈမၼ်းပဵၼ် တူဝ်ၵႄႈပၼ်ႁႃၶႃႈ။ မိူဝ်ႈ User ၼဵၵ်းမႄႈလိၵ်ႈၸွမ်းၽၢႆႇလင်, တီႈၼႃႈၸေႃးမၼ်းမီး `ZWSP` လႄႈ `ေ` ဝႆႉယူႇ 2 Characters။ ႁဝ်းလႆႈၸိၵ်းမၼ်းဢွၵ်ႇပႅတ်ႈ တင်းသွင်တူဝ် သေ ၵမ်းၼၼ်ႉ ၸင်ႇဢဝ် `မႄႈလိၵ်ႈ + ေ` သူင်ႇၶဝ်ႈၵႂႃႇၶိုၼ်း ႁဵတ်းႁႂ်ႈ Application ၽၢႆႇၼွၵ်ႈ (မိူၼ်ၼင်ႇ Facebook) ႁပ်ႉဢဝ် လိၵ်ႈ Unicode ဢၼ်မႅၼ်ႈပိူင် Standard တႅတ်ႈတေႃးၶႃႈ။
* **Kotlin Object Singleton:** ၵၢၼ်ၸႂ်ႉ `object ShanKeyboardEngine` ၼႂ်း Kotlin မၼ်းႁဵတ်းၵၢၼ်ပဵၼ် Singleton ႁင်းမၼ်းၵမ်းလဵဝ် ဢမ်ႇလူဝ်ႇတႅမ်ႈ `getInstance()` မိူၼ်ၼင်ႇ Java ယဝ်ႉၶႃႈ။ မၼ်းတေၸွႆႈႁႂ်ႈ ၵၢၼ်ႁွင်ႉၸႂ်ႉ ၼႂ်း `MaoKeyboardService` မၼ်းသႅၼ်း လႄႈ ၽတ်ႉၽႅဝ်းလိူဝ်ၵဝ်ႇၶႃႈ။

---

### 4. မၢႆတွင်း (Core Takeaways)

* ၵၢၼ်သၢင်ႈ Handwriting Engine မၼ်းပဵၼ်ၵၢၼ် ၵွင်ႉသၢႆ ၼႂ်းၵႄႈ Visual Representation (လၢႆး User ႁၼ်) တင်း Data Layer Standard (Unicode Standard) ယဝ်ႉ။
* ၼႂ်း Lesson 14 ႁဝ်းတေဢဝ် ပိူင်သၢင်ႈ Logic ၼႆႉ ၵႂႃႇၸႂ်ႉသိုပ်ႇတႅမ်ႈပဵၼ် **Handwriting Engine တႃႇလိၵ်ႈမၼ်း (Myanmar Language)** ၶႃႈယဝ်ႉ။

---
