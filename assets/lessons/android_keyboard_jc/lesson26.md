

## Lesson 26: Cursor Motion & Selection Coordinates Tracker

ၼႂ်း Android `InputMethodService` ၼႆႉ မိူဝ်ႈ User ၼဵၵ်းလႅၵ်ႈလၢႆႈ Cursor ဢမ်ႇၼၼ် တႅမ်ႈလိၵ်ႈသႂ်ႇ App တၢင်ႇဢၼ်ၼၼ်ႉ
Framework Android တိုၼ်းတေ Trigger Lifecycle Method ဢၼ်ပဵၼ် **`onUpdateSelection()`** ၵူႈပွၵ်ႈ 100% ယဝ်ႉ။

### 1. Understanding the OnUpdateSelection Parameters

ႁဝ်းမႃးထတ်းသၢင်ႈ Parameters Standard ၶွင် `onUpdateSelection` ၵၼ်ဢွၼ်တၢင်း:

* **`oldSelStart` / `oldSelEnd**`: Index တူဝ်မၢႆ Cursor Position (Start/End) ဢၼ်မီးဝႆႉ **ၵွၼ်ႇပႆႇလႅၵ်ႈလၢႆႈ**။
* **`newSelStart` / `newSelEnd**`: Index တူဝ်မႂ်ႇသုတ်း ဢၼ် Cursor ၸုၵ်းဝႆႉ **ယၢမ်းလဵဝ်** ၼိူဝ် TextField App။
* **`candidatesStart` / `candidatesEnd**`: Boundary Variable Selection ၶွင် တူဝ်လိၵ်ႈ ဢၼ်တိုၵ်ႉ Composing State ယူႇ (ၵႆႉၸႂ်ႉၸွမ်း Predictive Suggestion Engine ၶႃႈ)။

> ⚠️ **လၵ်းၵၢၼ် Check Selection:** သင်ဝႃႈ `newSelStart == newSelEnd` မၼ်းပွင်ႇဝႃႈ "Cursor ၸုၵ်းဝႆႉ Standard (No Highlight)" ယဝ်ႉ။ ၵူၺ်းၵႃႈ သင်ဝႃႈ `newSelStart != newSelEnd` မၼ်းပွင်ႇဝႃႈ "User တိုၵ်ႉလၢၵ်ႈ Highlight (Selected Text) ဝႆႉယူႇ" ၶႃႈယဝ်ႉ။

---

### 2. Implementing the Tracker inside `MaoKeyboardService.kt`

ႁဝ်းတေမႃးထႅမ် Variables တွၼ်ႈတႃႇ Keep Tracks လႄႈ Override `onUpdateSelection()` ဝႆႉၼႂ်း Service Framework ၼင်ႇၼႆၶႃႈၸဝ်ႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.inputmethodservice.InputMethodService
import android.util.Log
import android.view.inputmethod.EditorInfo

class MaoKeyboardService : InputMethodService() {

    // 🌟 🌟 Local State Variables တွၼ်ႈတႃႇ Track Alignment
    private var cursorPosition: Int = 0
    private var selectionStart: Int = 0
    private var selectionEnd: Int = 0
    private var isTextSelected: Boolean = false

    /**
     * 🌟 🌟 CORE IME LIFECYCLE CALLBACK:
     * လႅၼ်ႈၵူႈပွၵ်ႈ မိူဝ်ႈ Cursor ၶยับ ဢမ်ႇၼၼ် User လႅၵ်ႈ Position တီႈတႅမ်ႈလိၵ်ႈ
     */
    override fun onUpdateSelection(
        oldSelStart: Int, oldSelEnd: Int,
        newSelStart: Int, newSelEnd: Int,
        candidatesStart: Int, candidatesEnd: Int
    ) {
        super.onUpdateSelection(oldSelStart, oldSelEnd, newSelStart, newSelEnd, candidatesStart, candidatesEnd)

        // 1. Update Core Memory Coordinate Identifiers
        selectionStart = newSelStart
        selectionEnd = newSelEnd
        cursorPosition = newSelEnd // Cursor Core Variable Focus Position
        
        // 2. Check Text Selection (Highlight Text Tracking Configuration)
        isTextSelected = newSelStart != newSelEnd

        // 3. 🌟 Extract Text Context Framework (လၢႆးထတ်းသၢင်ႈတူဝ်လိၵ်ႈ ႁိမ်းႁွမ်း Cursor)
        val ic = currentInputConnection
        if (ic != null) {
            // ဢၢၼ်ႇဢဝ် တူဝ်လိၵ်ႈ ၽၢႆႇလင် Cursor 20 တူဝ် (Surrounding Text Before)
            val textBeforeCursor = ic.getTextBeforeCursor(20, 0)?.toString() ?: ""
            // ဢၢၼ်ႇဢဝ် တူဝ်လိၵ်ႈ ၽၢႆႇၼႃႈ Cursor 20 တူဝ် (Surrounding Text After)
            val textAfterCursor = ic.getTextAfterCursor(20, 0)?.toString() ?: ""

            Log.d("TMK_ENGINE", "Cursor Position: $cursorPosition | Selected: $isTextSelected")
            Log.d("TMK_ENGINE", "Text Before: '$textBeforeCursor' | Text After: '$textAfterCursor'")
            
            // [Side-Effect Note]: တီႈၼႆႈ ႁဝ်းၸၢင်ႈသူင်ႇ 'textBeforeCursor' ၵႂႃႇၸူး 
            // Suggestion Engine Matrix ၼႂ်း Lesson 29 တွၼ်ႈတႃႇ Auto-Predict လိၵ်ႈလႆႈ ၵမ်းလဵဝ်ၶႃႈ!
        }
    }
}

```

---

### 3. Add Extension Utility Methods to Control Cursor Manually

ထႅမ် Helper Methods ၸိူဝ်းၼႆႉ ဝႆႉၼႂ်း `MaoKeyboardService` တွၼ်ႈတႃႇပၼ် Layout Control (မိူၼ်ၼင်ႇ ပုမ်ႇ Arrow Keys ⬅️ ➡️ တီႈၶီးပွတ်ႇ) ၸၢင်ႈ Command Cursor ႁႂ်ႈၶ လႆႈငၢႆႈငၢႆႈၶႃႈ:

```kotlin
    /**
     * 🌟 Helper Method: ၶยับ Cursor ၵႂႃႇၽၢႆႇသၢႆႉ (Left Arrow Trigger)
     */
    fun moveCursorLeft() {
        val ic = currentInputConnection ?: return
        if (cursorPosition > 0) {
            // Send request to system to re-index cursor position back 1 character
            ic.setSelection(cursorPosition - 1, cursorPosition - 1)
        }
    }

    /**
     * 🌟 Helper Method: ၶยับ Cursor ၵႂႃႇၽၢႆႇၶႂႃ (Right Arrow Trigger)
     */
    fun moveCursorRight() {
        val ic = currentInputConnection ?: return
        // We set to shift forward 1 code unit
        ic.setSelection(cursorPosition + 1, cursorPosition + 1)
    }

    /**
     * 🌟 Helper Method: Get Selected Text Content String Standard
     */
    fun getSelectedTextContent(): String {
        val ic = currentInputConnection ?: return ""
        if (!isTextSelected) return ""
        // Request system to fetch highlighted values directly
        return ic.getSelectedText(0)?.toString() ?: ""
    }

```

---

### မၢႆတွင်း (Core Architecture Takeaways)

* **`onUpdateSelection` Runtime Sync:** Callback ၼႆႉ မၼ်းပဵၼ် တူဝ် Bridge ၵျႅၼ်ႇၵၼ်း ၵႄႈၵၢင် App ႁဝ်း လႄႈ App ၼွၵ်ႈ (မိူၼ်ၼင်ႇ Line) ၶႃႈ။ မိူဝ်ႈ User ဢဝ်မိုဝ်းၵႂႃႇၼဵၵ်း တီႈ TextField ၵႄႈၵၢင်တူဝ်လိၵ်ႈ, `onUpdateSelection` တေ Auto-Fire ၵမ်းလဵဝ် သေ Update တူဝ် Variable `cursorPosition` ႁဝ်း ႁႂ်ႈတႅတ်ႈတေႃး ၸွမ်း Real Position ၵမ်းလဵဝ် ၶၼ်ၽတ်ႉၽႅဝ်းၶႃႈ။
* **The Grapheme Cluster Challenge Note:** ယွၼ်ႉ Android ၼပ်ႉ `cursorPosition + 1` ปဵၼ် 1 UTF-16 Code Unit Standard, မိူဝ်ႈ User ၼဵၵ်း Move Cursor ➡ ၽိတ်းဝႆႉ တီႈၵႄႈၵၢင်တူဝ်လိၵ်ႈတႆး ဢၼ်ပႃးမႄး/တူဝ်သွၼ်ႉ (မိူၼ်ၼင်ႇ "ၵ" + "ေ"), Cursor မၼ်းၸၢင်ႈတႅၵ်ႇလု (Split Inside Cluster) ၶႃႈ။ လွၵ်းၵၢၼ် ၵႄႈ Cluster Deletion & Navigation ၼႆႉ ႁဝ်းတေသိုပ်ႇၵႂႃႇ တႅမ်ႈ Engine ၵုမ်းထိန်းမၼ်း ႁႂ်ႈ Advanced သုတ်းသုတ်း ၼႂ်းတွၼ်ႈလိၵ်ႈ BatchEdit (Lesson 31) ၶႃႈယဝ်ႉ။

