

## Lesson 24: Pure Jetpack Compose Emoji & Numeric Layout Engines

တႃႇတေႁဵတ်းႁႂ်ႈ Service ႁဝ်း ႁူႉဝႃႈယၢမ်းလဵဝ်လူဝ်ႇၼႄ Layout လႂ် ၼိူဝ်ၼႃႈၸေႃး၊ ႁဝ်းတေၸႂ်ႉ `enum class` တႃႇတတ်းၸႅၵ်ႇ Screen State သေ ၸႂ်ႉ `ComposeView` တႃႇထတ်းသၢင်ႈ Rendering Dynamic Context ၶႃႈ။

### 1. သၢင်ႈ `KeyboardScreen.kt` Enum Class

ၵႂႃႇသၢင်ႈ ၾၢႆႇ Kotlin ဢၼ်မႂ်ႇဝႆႉၼႂ်း package ႁဝ်း (မိူၼ်ၼင်ႇ `it.saimao.tmkkeyboardpro.data`) တႃႇမၢႆတွၼ်ႈ Screen States:

```kotlin
package it.saimao.tmkkeyboardpro.data

enum class KeyboardScreen {
    TEXT,       // Layout တႅမ်ႈလိၵ်ႈ (Shan, Myanmar, English Standard)
    NUMERIC,    // Layout 4-Row Symbols & Numbers ဢၼ်ႁဝ်း Refined ဝႆႉ
    EMOJI       // Layout Scrollable Tab View Emoji 60 FPS
}

```

---

### 2. Wiring Up Core State Machine ၼႂ်း `MaoKeyboardService.kt`

ၵမ်းၼႆႉ ႁဝ်းတေမႃးမႄးထႅမ် Setup `currentScreen` State ဝႆႉၼႂ်း `onCreateInputView()` သေ Passing Trigger Actions ၶဝ်ႈၵႂႃႇၼႂ်း Layouts ၵူႈတူဝ် ၼင်ႇၼႆၶႃႈၸဝ်ႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.view.View
import android.inputmethodservice.InputMethodService
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.safeDrawingPadding
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.ComposeView
import it.saimao.tmkkeyboardpro.data.KeyboardScreen
import it.saimao.tmkkeyboardpro.keyboards.EmojiLayout
import it.saimao.tmkkeyboardpro.languages.NumericLayout
import it.saimao.tmkkeyboardpro.languages.ShanLayout
import it.saimao.tmkkeyboardpro.languages.MyanmarLayout
import it.saimao.tmkkeyboardpro.languages.EnglishLayout
import it.saimao.tmkkeyboardpro.utils.SharedPreferenceManager
import it.saimao.tmkkeyboardpro.themes.KeyboardThemesRepository
import it.saimao.tmkkeyboardpro.utils.FeedbackManager

class MaoKeyboardService : InputMethodService() {

    // 🌟 Master State Controllers
    private val currentScreen = mutableStateOf(KeyboardScreen.TEXT)
    private val language = mutableStateOf(Language.SHAN)
    private val currentTheme = mutableStateOf(KeyboardThemesRepository.themes.first())
    private val isShifted = mutableStateOf(false)

    override fun onStartInputView(editorInfo: android.view.inputmethod.EditorInfo?, restarting: Boolean) {
        super.onStartInputView(editorInfo, restarting)
        
        // Auto Reset ႁႂ်ႈဝိၼ်ၼ်မႃးၼႃႈ Text Layout ၵူႈပွၵ်ႈမိူဝ်ႈ Keyboard ပိုတ်ႇမႂ်ႇ
        currentScreen.value = KeyboardScreen.TEXT
        isShifted.value = false

        // Load Theme from SharedPreferences (Guard Optimized Lookup)
        val latestThemeId = SharedPreferenceManager.getThemeId(this)
        if (currentTheme.value.id != latestThemeId) {
            currentTheme.value = KeyboardThemesRepository.getThemeById(latestThemeId)
        }
    }

    override fun onCreateInputView(): View {
        return ComposeView(this).apply {
            setContent {
                Box(modifier = Modifier.safeDrawingPadding()) {
                    
                    // 🌟 🌟 Dynamic Screen Switcher Routing Matrix
                    when (currentScreen.value) {
                        KeyboardScreen.NUMERIC -> {
                            NumericLayout(
                                theme = currentTheme.value,
                                onKeyClick = { key -> handleKeyInput(key) }
                            )
                        }
                        
                        KeyboardScreen.EMOJI -> {
                            EmojiLayout(
                                theme = currentTheme.value,
                                onClicked = { key -> handleKeyInput(key) }
                            )
                        }
                        
                        KeyboardScreen.TEXT -> {
                            // Render Text Alpha Layouts ၸွမ်းၼင်ႇ Language State
                            when (language.value) {
                                Language.SHAN -> ShanLayout(theme = currentTheme.value, isShifted = isShifted.value) { handleKeyInput(it) }
                                Language.MYANMAR -> MyanmarLayout(theme = currentTheme.value, isShifted = isShifted.value) { handleKeyInput(it) }
                                Language.ENGLISH -> EnglishLayout(theme = currentTheme.value, isShifted = isShifted.value) { handleKeyInput(it) }
                            }
                        }
                    }
                }
            }
        }
    }

    /**
     * 🌟 Unified Key Routing Input System
     */
    private fun handleKeyInput(key: String) {
        val ic = currentInputConnection ?: return
        
        // Play Audio & Haptic Feedback Standard
        FeedbackManager.playKeySound(this)
        FeedbackManager.vibrateKey(this)

        when (key) {
            // Layout Router Action Keys
            Keys.KEY_NUMERIC_LAYOUT -> {
                currentScreen.value = KeyboardScreen.NUMERIC
            }
            Keys.KEY_TEXT_LAYOUT -> {
                currentScreen.value = KeyboardScreen.TEXT
            }
            Keys.KEY_EMOJI_LAYOUT -> {
                currentScreen.value = KeyboardScreen.EMOJI
            }
            
            // Standard Text Manipulations
            Keys.KEY_DELETE -> ic.deleteSurroundingText(1, 0)
            "\n" -> ic.commitText("\n", 1)
            " " -> {
                ic.commitText(" ", 1)
                if (isShifted.value) isShifted.value = false
            }
            else -> {
                ic.commitText(key, 1)
                // Auto reset shift standard
                if (isShifted.value) isShifted.value = false
            }
        }
    }
}

```

---

### 3. Key Mapping Constants Validation (`Keys.kt`)

မၼ်ႈၸႂ်ဝႃႈ ၼႂ်း `it.saimao.tmkkeyboardpro.utils.Keys` standard ၸဝ်ႈၵဝ်ႇ မီး Key Code Identifiers ၸႅင်ႈလႅင်း ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.utils

object Keys {
    const val KEY_DELETE = "⌫"
    const val KEY_NUMERIC_LAYOUT = "123"
    const val KEY_TEXT_LAYOUT = "abc"
    const val KEY_EMOJI_LAYOUT = "😊"
}

```

---

### မၢႆတွင်း (Core Infrastructure Wins)

* **Declarative Memory Allocation:** ၵၢၼ်ၸႂ်ႉ Compose State Architecture တီႈ `currentScreen` ႁဵတ်းႁႂ်ႈ Keyboard Frame Rate ႁဝ်းၼิ่ง လႄႈ ၽတ်ႉၽႅဝ်းသုတ်းၶႃႈ။ မိူဝ်ႈ User ၼဵၵ်းပုမ်ႇ "123" inside `ShanLayout`, မၼ်းတေသူင်ႇ Action `KEY_NUMERIC_LAYOUT` ၵမ်းသိုဝ်ႈ၊ သေ ႁဵတ်းႁႂ်ႈ `currentScreen.value` လႅၵ်ႈလၢႆႈ။ Compose Runtime တေ Auto-Swap ဢဝ် `NumericLayout` မႃး Render တႅၼ်းၵမ်းလဵဝ် တႄႇဢမ်ႇလူဝ်ႇႁွင်ႉ `setContentView()` ဢမ်ႇၼၼ် Inflate Views standard ၵဝ်ႇ ဢၼ်ၵိၼ်ႁႅင်း CPU ၼၼ်ႉၶႃႈ။
* **Automated Reset State Bridge:** ၵၢၼ်ဝၢင်း `currentScreen.value = KeyboardScreen.TEXT` ဝႆႉၼႂ်း `onStartInputView()` မၼ်းပဵၼ် **UX Best Practice** ၶႃႈ။ မၼ်းၸွႆႈမၼ်ႈၸႂ်ဝႃႈ သင် User ပိတ်း Keyboard ၵႂႃႇ မိူဝ်ႈတိုၵ်ႉလိူၵ်ႈ Emoji ဝႆႉယူႇ၊ သေ မိူဝ်ႈၶိုၼ်းၵႂႃႇပိုတ်ႇတႅမ်ႈလိၵ်ႈထႅင်ႈပွၵ်ႈၼႂ်း App တၢင်ႇဢၼ်, Keyboard ႁဝ်းတေ Auto-Show ၼႃႈတႅမ်ႈလိၵ်ႈ (abc Text Layout) ဢွၼ်တၢင်းသုတ်း ၵူႈပွၵ်ႈ 100% ၶႃႈ။


