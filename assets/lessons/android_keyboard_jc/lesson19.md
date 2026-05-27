

## Lesson 19: Managing Theme States via Shared Preferences

ၼႂ်းၵၢၼ်တႅမ်ႈ SharedPreferences တႃႇ Keyboard Service ၼၼ်ႉ မၼ်းမီးၶေႃႈသတိပိူင်ၼိုင်ႈယဝ်ႉ။
ယွၼ်ႉဝႃႈ Keyboard ႁဝ်း မၼ်းလႅၼ်ႈဝႆႉပဵၼ် `Service` (Background Process) သေ မၼ်းဢမ်ႇၸႂ် `Activity` (UI Screen Standard)၊ 
ယွၼ်ႉၼၼ်လႄႈ ၵၢၼ်ႁွင်ႉ `Context` တႃႇဢၢၼ်ႇ Storage လူဝ်ႇလႆႈမႅၼ်ႈၸွမ်းပိူင် Context ၶွင် Service ယဝ်ႉ။

---

### 1. တႅမ်ႈ Code `SharedPreferenceManager.kt`

ႁဝ်းတေသၢင်ႈ Helper Extension File ဝႆႉၼႂ်း Package `utils` တႃႇႁႂ်ႈႁွင်ႉၸႂ်ႉငၢႆႈငၢႆႈ ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.utils

import android.content.Context
import android.content.SharedPreferences

object SharedPreferenceManager {
    private const val PREF_NAME = "tmk_keyboard_settings"
    private const val KEY_THEME_ID = "selected_theme_id"
    private const val KEY_HANDWRITING = "handwriting_system"

    private fun getPreferences(context: Context): SharedPreferences {
        return context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE)
    }

    /**
     * 🌟 ၵဵပ်းသိမ်း ID ၶွင် Theme ဢၼ် User လိူၵ်ႈမႂ်ႇ
     */
    fun saveThemeId(context: Context, themeId: String) {
        getPreferences(context).edit().putString(KEY_THEME_ID, themeId).apply()
    }

    /**
     * 🌟 ဢၢၼ်ႇဢဝ် ID ၶွင် Theme (Default ပဵၼ် tmk_dark)
     */
    fun getThemeId(context: Context): String {
        return getPreferences(context).getString(KEY_THEME_ID, "tmk_dark") ?: "tmk_dark"
    }

    /**
     * Helper Function တွၼ်ႈတႃႇ Handwriting Mode (လုၵ်ႉတွၼ်ႈ Lesson 13/14)
     */
    fun getHandWritingSystem(context: Context): Boolean {
        return getPreferences(context).getBoolean(KEY_HANDWRITING, false)
    }
}

```

---

### 2. Wiring Up Inside `MaoKeyboardService.kt` (The Reactive Wiring)

ၵမ်းၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ `MutableState` ၶွင် `currentTheme` ဝႆႉၼႂ်း `MaoKeyboardService` သေ ႁွင်ႉလူတ်ႇ SharedPreferences တီႈ `onCreate()`။ မိူဝ်ႈ User ၼဵၵ်းလႅၵ်ႈ Theme, ႁဝ်းတေ Update State သေ ၵဵပ်းသိမ်းပႃး ၼႂ်း Storage ၵမ်းလဵဝ် ႁင်းမၼ်းၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.view.View
import androidx.compose.ui.platform.ComposeView
import androidx.compose.runtime.mutableStateOf
import it.saimao.tmkkeyboardpro.activities_services.MaoKeyboardService
import it.saimao.tmkkeyboardpro.data.theme.KeyboardThemesRepository
import it.saimao.tmkkeyboardpro.utils.SharedPreferenceManager
import androidx.compose.foundation.layout.*
import androidx.compose.ui.Modifier

class MaoKeyboardService : InputMethodService(), ... {

    // ... Code Setup Layout States (လုၵ်ႉတွၼ်ႈ Lesson 16) ...

    // 🌟 1. သၢင်ႈ Compose State တႃႇၵုမ်းထိန်း Active Theme Object ၼႂ်း Service Layer
    private val currentTheme = mutableStateOf(KeyboardThemesRepository.themes[0])

    override fun onCreate() {
        super.onCreate()
        // ... Setup Lifecycle ...

        // 🌟 2. ဢၢၼ်ႇဢဝ် Theme ID ဢၼ် User ၵဵပ်းဝႆႉၵဝ်ႇ လုၵ်ႉတီႈ SharedPreferences
        val savedThemeId = SharedPreferenceManager.getThemeId(this)
        currentTheme.value = KeyboardThemesRepository.getThemeById(savedThemeId)
    }

    override fun onCreateInputView(): View {
        // ... Setup DecorView & safeDrawingPadding (Lesson 16) ...

        return ComposeView(this).apply {
            setContent {
                Box(
                    modifier = Modifier
                        .height(keyboardHeight.value)
                        .fillMaxWidth()
                        .safeDrawingPadding()
                ) {
                    // 🌟 3. Passing currentTheme.value ၶဝ်ႈၵႂႃႇၼႂ်း Layout
                    // မိူဝ်ႈ currentTheme.value လႅၵ်ႈလၢႆႈ, Compose တေ Auto-Recompose လႅၵ်ႈသီ ၵမ်းလဵဝ် 
                    when (language.value) {
                        Language.SHAN -> {
                            ShanLayout(theme = currentTheme.value) { key ->
                                handleKey(key)
                            }
                        }
                        Language.MYANMAR -> {
                            MyanmarLayout(theme = currentTheme.value) { key ->
                                handleKey(key)
                            }
                        }
                        else -> {
                            EnglishLayout(theme = currentTheme.value) { key ->
                                handleKey(key)
                            }
                        }
                    }
                }
            }
        }
    }
}

```

---

### 3. မၢႆတွင်း (Core Takeaways)

* **`.apply()` vs `.commit()**`: ၼႂ်း SharedPreferences Editor, ႁဝ်းၸႂ်ႉ `.apply()`။ မၼ်းပွင်ႇဝႃႈ Android တေၵႂႃႇတႅမ်ႈ Disk Storage ဝႆႉၽၢႆႇလင်ပဵၼ် Asynchronous Process ႁင်းမၼ်း။ ၼႆႉတေႁႄႉၵင်ႈပၼ်ႁႃ UI Lag ၼိူဝ် ၼႃႈ Keyboard ၶႃႈ။
* **Single Source of Truth:** တူဝ် `currentTheme` State ဝႆႉၼႂ်း Service Context တူဝ်လဵဝ်ၵူၺ်း။ မိူဝ်ႈႁဝ်းႁွင်ႉ `switchTheme()` ပႅတ်ႈ, UI တေ Recompose လႅၵ်ႈသီတိုင် 10 Themes လႆႈ ၶၼ်ၽတ်ႉၽႅဝ်း သုတ်းသုတ်းၶႃႈ။

---