

## Lesson 28: EditorInfo Attributes Dynamic Routing (Smart InputTypes)

ၼႂ်း Android Framework, မိူဝ်ႈ User ၼဵၵ်း TextField, System Android တေသူင်ႇ Object ဢၼ်ပဵၼ် **`EditorInfo`** ၶဝ်ႈမႃးၼႂ်း Service IME Lifecycle ၶႃႈ။ ၼႂ်း `EditorInfo` ၼၼ်ႉ မၼ်းတေမီး Variable ပိူင်လူင် ဢၼ်ပဵၼ် **`inputType`** ဝႆႉၶႃႈ။

တူဝ် `inputType` မၼ်းပဵၼ် **Bitmask Integer** ဢၼ်တတ်းၸႅၵ်ႇ Profile UI Fields ဢွၵ်ႇပဵၼ်:

* **`TYPE_CLASS_NUMBER`**: User တိုၵ်ႉတႅမ်ႈမၢႆၼပ်ႉ Numbers Standard (မိူၼ်ၼင်ႇ ၼႃႈတႅမ်ႈ ၶေႃႈမုၼ်း ၼမ်ႉၼၵ်း/သႅၼ်း)။
* **`TYPE_CLASS_PHONE`**: User တိုၵ်ႉတႅမ်ႈ မၢႆၾူၼ်း Phone Dial Pad Container Field။
* **`TYPE_TEXT_VARIATION_PASSWORD`**: User တိုၵ်ႉတႅမ်ႈ ၶေႃႈလၵ်း (Password Field) ဢၼ်လူဝ်ႇလႆႈ Secure လႄႈ Mask text ဝႆႉ။

---

### 1. Implementing the Smart Router inside `MaoKeyboardService.kt`

ႁဝ်းတေ Override **`onStartInput(attribute: EditorInfo?, restarting: Boolean)`** วႆႉၼႂ်း Service Framework တွၼ်ႈတႃႇ Intercept ဢဝ် Bitmask Configuration ၵမ်းသိုဝ်ႈ ၼင်ႇၼႆၶႃႈၸဝ်ႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.view.inputmethod.EditorInfo
import android.inputmethodservice.InputMethodService
import android.util.Log
import it.saimao.tmkkeyboardpro.data.KeyboardScreen

class MaoKeyboardService : InputMethodService() {

    // States Management (Standard)
    // val currentScreen = mutableStateOf(KeyboardScreen.TEXT)
    // val language = mutableStateOf(Language.SHAN)

    /**
     * 🌟 🌟 CORE SMART ROUTER LIFECYCLE:
     * Android တေႁွင်ႉ Method ၼႆႉ ဢွၼ်တၢင်းသုတ်း ၵူႈပွၵ်ႈမိူဝ်ႈ User ၼဵၵ်း TextField မႂ်ႇ 
     */
    override fun onStartInput(attribute: EditorInfo?, restarting: Boolean) {
        super.onStartInput(attribute, restarting)
        
        if (attribute == null) return

        // 🌟 🌟 BITMASK ANALYSIS MACHINE 🌟 🌟
        val inputClass = attribute.inputType and EditorInfo.TYPE_MASK_CLASS
        val inputVariation = attribute.inputType and EditorInfo.TYPE_MASK_VARIATION

        Log.d("TMK_ROUTER", "InputType Detected: Class=$inputClass | Variation=$inputVariation")

        // 🌟 1. တွၼ်ႈ PERFECT NUM PAD AUTOMATION CONFIGURATION:
        // သင်ပဵၼ် Field မၢႆၼပ်ႉ (NUMBER) ဢမ်ႇၼၼ် Field မၢႆၾူၼ်း (PHONE) ဢမ်ႇၼၼ် Field DATETIME
        if (inputClass == EditorInfo.TYPE_CLASS_NUMBER || 
            inputClass == EditorInfo.TYPE_CLASS_PHONE || 
            inputClass == EditorInfo.TYPE_CLASS_DATETIME) {
            
            Log.d("TMK_ROUTER", "🎯 Target Context is NumPad! Auto-Routing to NumericLayout.")
            
            // 🌟 Force Engine ႁႂ်ႈ Auto-Switch UI ၵႂႃႇၼႃႈ Numeric Layout ၵမ်းသိုဝ်ႈ ႁင်းမၼ်း Automation!
            currentScreen.value = KeyboardScreen.NUMERIC
            return // Stop execution here 
        }

        // 🌟 2. တွၼ်ႈ SMART PASSWORD CONFIGURATION:
        // သင် User ၶဝ်ႈField Password (တႅမ်ႈၶေႃႈလၵ်း)
        if (inputVariation == EditorInfo.TYPE_TEXT_VARIATION_PASSWORD || 
            inputVariation == EditorInfo.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD || 
            inputVariation == EditorInfo.TYPE_TEXT_VARIATION_WEB_PASSWORD) {
            
            Log.d("TMK_ROUTER", "🔒 Password Field Detected! Auto-Switching to English Alpha Layout for Security.")
            
            // 🌟 Auto-Switch ၽႃႇသႃႇပဵၼ် ENGLISH ၵမ်းသိုဝ်ႈ တွၼ်ႈတႃႇ Secure Typing ၸွမ်း Android Standard
            language.value = Language.ENGLISH
            currentScreen.value = KeyboardScreen.TEXT
            return
        }

        // 🌟 3. DEFAULT TEXT FIELD ROUTING:
        // သင်ပဵၼ် Field တႅမ်ႈလိၵ်ႈ Standard (မိူၼ်ၼင်ႇ ၼႃႈ Chat Facebook/Line)
        // ႁႂ်ႈဝိၼ်ၼ်မႃးၼႃႈ Text Alpha (Shan/Myanmar Layout) standard ၸွမ်းပိူင်သၢင်ႈ
        currentScreen.value = KeyboardScreen.TEXT
    }
}

```

---

### 2. Updating IME Action Key Render Engine (Action Ime Options)

ဢၼ်တေႁဵတ်းႁႂ်ႈ Keyboard ႁဝ်းမီး Quality သႅၼ်း Professional တႄႉတႄႉၼၼ်ႉ မၼ်းပဵၼ် **ပုမ်ႇ ⏎ (Enter Key)** ၶႃႈ။ ၼႂ်း Android, ပုမ်ႇ Enter ဢမ်ႇၸိုဝ်ႈဝႃႈတေပဵၼ်ၵူၺ်း ၵၢၼ်လူင်းထႅဝ်မႂ်ႇ (`\n`) ၵူႈပွၵ်ႈၶႃႈ။ သင် User တိုၵ်ႉၸႂ်ႉ Field Search, ပုမ်ႇ Enter လူဝ်ႇၼႄပဵၼ်ပုမ်ႇ **"🔍 Search"**၊ သင်ၶဝ်တိုၵ်ႉတႅမ်ႈမၢႆ Form, လူဝ်ႇၼႄပဵၼ်ပုမ်ႇ **"Next"** ဢမ်ႇၼၼ် **"Done"** ၶႃႈ။

ႁဝ်းတေမႃးထႅမ် Helper Method ဝႆႉၼႂ်း `MaoKeyboardService` တွၼ်ႈတႃႇ Check လွၵ်းၵၢၼ်ၼႆႉ ၶႃႈယဝ်ႉ:

```kotlin
    /**
     * 🌟 Dynamic Action Key Trigger Engine:
     * ပၼ် Engine ႁွင်ႉသူင်ႇ Actions Ime Options ၶဝ်ႈ App ၵမ်းသိုဝ်ႈ မိူဝ်ႈ User ၼဵၵ်းပုမ်ႇ Enter ⏎
     */
    fun performEnterAction() {
        val ic = currentInputConnection ?: return
        val currentImeOptions = currentInputEditorInfo?.imeOptions ?: 0
        val actionId = currentImeOptions and EditorInfo.IME_MASK_ACTION

        when (actionId) {
            EditorInfo.IME_ACTION_SEARCH -> ic.performEditorAction(EditorInfo.IME_ACTION_SEARCH) // Trigger Search App
            EditorInfo.IME_ACTION_GO -> ic.performEditorAction(EditorInfo.IME_ACTION_GO)         // Trigger Web Link Go
            EditorInfo.IME_ACTION_NEXT -> ic.performEditorAction(EditorInfo.IME_ACTION_NEXT)     // Move to Next TextField
            EditorInfo.IME_ACTION_SEND -> ic.performEditorAction(EditorInfo.IME_ACTION_SEND)     // Trigger Send Message Chat
            else -> {
                // Default Case: Default Standard Return Carriage
                ic.commitText("\n", 1)
            }
        }
    }

```

---

### 3. Connection Setup with `NumericLayout` and `Layouts` Enter Action

ၵမ်းၼႆႉ ၼႂ်း `NumericLayout.kt` (လုၵ်ႉတွၼ်ႈ Lesson 25 Refined), တီႈတွၼ်ႈပုမ်ႇ Enter ⏎, တႅၼ်းၵၢၼ် ၸႂ်ႉ `onKeyClick("\n")` ၵဝ်ႇ, ၸဝ်ႈၵဝ်ႇၵႂႃႇမႄး Trigger Framework ႁႂ်ႈလႅၼ်ႈၸွမ်း **`performEnterAction()`** ဝႆႉၼႂ်း Service Context ၼင်ႇၼႆၶႃႈ:

```kotlin
// 🌟 Inside NumericLayout.kt -> Row 4 (Enter Button Setup)
    
    // Enter Key ⏎
    KeyboardKey(
        label = "⏎", 
        theme = theme, 
        keyType = KeyType.ACCENT, 
        modifier = Modifier.weight(1.5f)
    ) { 
        // 🌟 Execute Smart Action Instead of raw character commitment 
        onKeyClick(Keys.KEY_ENTER_ACTION) 
    }

```

သေ ၵႂႃႇမႄးထႅမ် Routing Mapping ဝႆႉၼႂ်း `handleKeyInput` ၶွင် `MaoKeyboardService.kt` ၶႃႈ:

```kotlin
    // Inside handleKeyInput(key: String) switch case matrix:
    Keys.KEY_ENTER_ACTION -> {
        performEnterAction() // 🌟 Smart Route Execute Action Entry Point
    }

```

*(⚠️ ၶေႃႈမၢႆတွၼ်ႈ: ၵႂႃႇထႅမ် `const val KEY_ENTER_ACTION = "action_enter"` ဝႆႉၼႂ်း ၾၢႆႇ `Keys.kt` ၸွမ်းၶႃႈၼႃ)*

---

### မၢႆတွင်း (Core Performance & UX Wins)

* **Seamless User Experience Pipeline:** ၵၢၼ်ၸႂ်ႉ Bitmask Lookup `attribute.inputType and EditorInfo.TYPE_MASK_CLASS` ၸွႆႈႁႂ်ႈ App Keyboard ႁဝ်းမီး Quality ၵတ်ႉၶႅၼ်ႇသုတ်းၶႃႈ။ User တေဢမ်ႇလႆႈမီး Friction ၼႂ်းၵၢၼ် လၢၵ်ႈလႅၵ်ႈ Layout ႁင်းၶေႃယဝ်ႉၶႃႈ။ မိူဝ်ႈၶဝ် ၶဝ်ႈ Field PIN Code Bank, တူဝ် `MaoKeyboardService` တေ Auto-Jump ၼႄ `NumericLayout` ဝႆႉထႃႈ ၶၼ်ၽတ်ႉၽႅဝ်း သွတ်ႈသႅတ်ႈ သုတ်းသုတ်း ၸိူၼ်းမိုဝ်းပၼ်ႇၶႃႈယဝ်ႉ။
* **Contextual Password Guard Shield:** ၵၢၼ် Auto-Switch ၽႃႇသႃႇပဵၼ် English ၵမ်းသိုဝ်ႈ မိူဝ်ႈထူပ်ႇ `TYPE_TEXT_VARIATION_PASSWORD` မၼ်းပဵၼ် **The Top-Grade App Architecture Security Check** ၶႃႈ။ မၼ်းတေႁႄႉၵင်ႈ ဢမ်ႇပၼ် User တႅမ်ႈ Password ၽိတ်း (ယွၼ်ႉဝႃႈ လိၵ်ႈတႆး/လိၵ်ႈမၢၼ်ႈ မီး Engine တူဝ်သွၼ်ႉ ဢၼ်ၸၢင်ႈႁဵတ်းႁႂ်ႈ String Value လႅၵ်ႈလၢႆႈ)၊ သေ ႁပ်ႉႁူႉ Security ၸွမ်း Google Play Store Guidelines တႅတ်ႈတေႃးၶႃႈ။
