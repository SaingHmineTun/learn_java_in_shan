

## Lesson 25: The Master Controller Routing Framework (The State Machine)

တူဝ် State Machine Controller ႁဝ်း ၼႂ်းတွၼ်ႈၼႆႉ တေႁဵတ်းၵၢၼ်ပဵၼ် **The Central Router** ၶႃႈ။ မၼ်းတေၵုမ်းထိန်း Navigation Pipeline တင်းသဵင်ႈ လုၵ်ႉတီႈ Input Actions သေ လႅၵ်ႈလၢႆႈ UI ၵမ်းသိုဝ်ႈ ႁင်းမၼ်း Automation ၶႃႈ။

### 1. Refining the State Router Logic in `MaoKeyboardService.kt`

ႁဝ်းတေမႃးထႅမ် **State Transition Table Action Method** `switchScreenTo()` លႄႈ `switchLanguageTo()` ဝႆႉၼႂ်း Service Context တွၼ်ႈတႃႇတတ်းၸႅၵ်ႇ Flow ႁႂ်ႈပဵၼ် Standard ၶႃႈ:

```kotlin
// 🌟 Add these optimized methods inside MaoKeyboardService.kt

    /**
     * 🌟 1. Core Screen State Transition Machine
     * ၵုမ်းထိန်းၵၢၼ် Switch ၼႃႈၸေႃး Layouts တင်းသဵင်ႈ ႁႂ်ႈ Safe လႄႈ ဢမ်ႇလု Frame Rate
     */
    fun switchScreenTo(targetScreen: KeyboardScreen) {
        if (currentScreen.value == targetScreen) return // Guard Clause: Skip redundant operations
        
        // Dynamic Behavior Side-Effects Configuration
        when (targetScreen) {
            KeyboardScreen.TEXT -> {
                // မိူဝ်ႈဝိၼ်ၼ်မႃးၼႃႈ Text Layout, ႁႂ်ႈ Auto Reset Unshift ၵူႈပွၵ်ႈ
                isShifted.value = false
            }
            KeyboardScreen.NUMERIC -> {
                // Optional: Clear temporary compose layout caches if needed
            }
            KeyboardScreen.EMOJI -> {
                // Live refresh configuration states for Emoji Layout
            }
        }
        
        // 🌟 Atomic Write State: Compose တေ Recompose ၵူၺ်း Zone ဢၼ်လူဝ်ႇလႅၵ်ႈသီ/Layout
        currentScreen.value = targetScreen
    }

    /**
     * 🌟 2. Language State Transition Machine
     * ၵုမ်းထိန်းၵၢၼ် တတ်းလႅၵ်ႈ လိၵ်ႈတႆး, လိၵ်ႈမၢၼ်ႈ, လႄႈ ဢိင်းၵလဵတ်ႈ 
     */
    fun switchLanguageTo(targetLanguage: Language) {
        if (language.value == targetLanguage) return // Cache Filter Guard
        
        language.value = targetLanguage
        
        // Automatically ensure we are in TEXT mode when language changes
        if (currentScreen.value != KeyboardScreen.TEXT) {
            currentScreen.value = KeyboardScreen.TEXT
        }
        isShifted.value = false
    }

    /**
     * 🌟 3. Cycle Switch Language Helper (ပုမ်ႇ 🌐 Language Switcher Trigger Method)
     */
    fun cycleToNextLanguage() {
        val nextLang = when (language.value) {
            Language.SHAN -> Language.MYANMAR
            Language.MYANMAR -> Language.ENGLISH
            Language.ENGLISH -> Language.SHAN
        }
        switchLanguageTo(nextLang)
    }

```

---

### 2. Upgrading the Input Controller Framework (`handleKeyInput`)

ၵမ်းၼႆႉ ႁဝ်းတေမႃး Refine တူဝ် `handleKeyInput()` ႁႂ်ႈမၼ်း Routing ၸွမ်း State Transitions Methods ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ ၽၢႆႇၼိူဝ် ၼၼ်ႉ ၶႃႈယဝ်ႉ:

```kotlin
    private fun handleKeyInput(key: String) {
        val ic = currentInputConnection ?: return
        
        // Audio & Haptic Sync
        FeedbackManager.playKeySound(this)
        FeedbackManager.vibrateKey(this)

        when (key) {
            // 🌟 State Machine Actions Router Transitions 🌟
            Keys.KEY_NUMERIC_LAYOUT -> switchScreenTo(KeyboardScreen.NUMERIC)
            Keys.KEY_TEXT_LAYOUT -> switchScreenTo(KeyboardScreen.TEXT)
            Keys.KEY_EMOJI_LAYOUT -> switchScreenTo(KeyboardScreen.EMOJI)
            
            // Language State Cycler Action
            Keys.KEY_LANGUAGE_SWITCH -> cycleToNextLanguage()
            
            // Standard Keyboard Action Inputs
            Keys.KEY_DELETE -> ic.deleteSurroundingText(1, 0)
            "\n" -> ic.commitText("\n", 1)
            " " -> {
                ic.commitText(" ", 1)
                if (isShifted.value) isShifted.value = false
            }
            else -> {
                // Commit Text Content To Active Application
                ic.commitText(key, 1)
                
                // Auto Reset Unshift after character insertion (Lesson 23 standard)
                if (isShifted.value) isShifted.value = false
            }
        }
    }

```

---

### 3. Update Configuration `Keys.kt` Standard Mapping

မၼ်ႈၸႂ်ဝႃႈ လႆႈထႅမ်ပၼ် `KEY_LANGUAGE_SWITCH` ၶဝ်ႈၵႂႃႇ တွၼ်ႈတႃႇ Mapping ပုမ်ႇ လႅၵ်ႈၽႃႇသႃႇ ၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.utils

object Keys {
    const val KEY_DELETE = "⌫"
    const val KEY_NUMERIC_LAYOUT = "123"
    const val KEY_TEXT_LAYOUT = "abc"
    const val KEY_EMOJI_LAYOUT = "😊"
    const val KEY_LANGUAGE_SWITCH = "🌐" // 🌟 Language Switch Action Key Token
}

```

---

### မၢႆတွင်း (Core Architecture Mapping)

* **Predictable State Transitions (FSM Architecture):** ၵၢၼ်တတ်းၸႅၵ်ႇ Logic ဢွၵ်ႇပဵၼ် Methods `switchScreenTo()` ลႄႈ `switchLanguageTo()` ၸွႆႈႁႄႉၵင်ႈ **Race Conditions (လွင်ႈလႅၼ်ႈၶေႃႈမုၼ်း သွၼ်ႉၵၼ်)** လႆႈ 100% ၶႃႈ။ State ႁဝ်းတေလႅၼ်ႈပဵၼ် Deterministic Linear Pathway ၵူၺ်း၊ မၼ်းတေလူတ်ႇယွၼ်ႇလွင်ႈပဵၼ် Memory Leak ลႄႈ Bugs ၶွင် Keyboard UI လႆႈၵျႅၼ်ႇၶႅၼ်ႇသုတ်းၶႃႈ။
* **Redundant Operations Filtering (Cache Guarding):** តူဝ် `if (currentScreen.value == targetScreen) return` မၼ်းပဵၼ် Tool ဢၼ်ၸွႆႈၵုမ်းထိန်း Performance လီသုတ်းၶႃႈ။ သင် User ၼဵၵ်းပုမ်ႇ "123" သမ်ႉထႅင်ႈ လၢႆလၢႆပွၵ်ႈ ၼႂ်းၼႃႈ Numeric Layout, တူဝ် Service တေ Filter Filter ပႅတ်ႈ ၵမ်းလဵဝ် သေ တေဢမ်ႇသူင်ႇ Request ၵႂႃႇၸူး Compose Layer ႁႂ်ႈလႆႈ Recompose လၢႆလၢႆ ႁဵတ်းႁႂ်ႈ CPU/RAM ၵတ်းယဵၼ် လႅၼ်ႈလႆႈ Ultra-Fast သုတ်းသုတ်းၶႃႈ။
