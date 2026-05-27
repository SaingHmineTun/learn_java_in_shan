

## Lesson 20: Touch Feedback: Key Sound and Vibrate

ၼႂ်းၵၢၼ်တႅမ်ႈ Keyboard ၼၼ်ႉ မိူဝ်ႈ User ဢဝ်မိုဝ်းၼဵၵ်းပုမ်ႇၶီးပွတ်ႇၼၼ်ႉ သင်ဝႃႈ မၼ်းၵူၺ်းမီး လွင်ႈလႅၵ်ႈသီပုမ်ႇ (Visual Feedback) ၼႆ မၼ်းဢမ်ႇပႆႇပၼ် Feeling မိူၼ်ၼင်ႇပုမ်ႇတႄႉ။ ႁဝ်းလူဝ်ႇလႆႈထႅမ်ပၼ်:

1. **Audio Feedback (Key Sound)**: သဵင် "ၵလႅတ်ႉ" မိူဝ်ႈၼဵၵ်း။
2. **Haptic Feedback (Vibrate)**: လွင်ႈသၼ်ႇပွတ်း (Tactile Vibe) တီႈပၢႆမိုဝ်း။

ၼႂ်း Android, ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉ **`AudioManager`** တႃႇပၼ်သဵင် လႄႈ **`VibratorManager`** (ဢမ်ႇၼၼ် `Vibrator` API ၵဝ်ႇ) တႃႇၵုမ်းထိင်းလွင်ႈသၼ်ႇ ၵမ်းသိုဝ်ႈဝႆႉၼႂ်း Service Context ယဝ်ႉ။

---

### 1. တႅမ်ႈ Code `FeedbackManager.kt`

ႁဝ်းတေသၢင်ႈ Singleton Object ဝႆႉၼႂ်း Package `logic` တႃႇၵုမ်းထိန်း လွင်ႈသဵင် လႄႈ လွင်ႈသၼ်ႇ ႁႂ်ႈမၼ်း သႅၼ်းသႅတ်ႈ လႄႈ ႁွင်ႉၸႂ်ႉငၢႆႈ ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.logic

import android.content.Context
import android.media.AudioManager
import android.os.Build
import android.os.VibrationEffect
import android.os.Vibrator
import android.os.VibratorManager
import android.view.View

object FeedbackManager {

    /**
     * 🌟 1. Handling Audio Feedback (Key Sound)
     */
    fun playKeySound(context: Context) {
        val audioManager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
        
        // ၸႂ်ႉ Sound Effect Standard ၶွင် Android Keyboard (FX_KEYPRESS_STANDARD)
        audioManager.playSoundEffect(AudioManager.FX_KEYPRESS_STANDARD)
    }

    /**
     * 🌟 2. Handling Haptic Feedback (Vibrate)
     */
    fun vibrateKey(context: Context) {
        // ထတ်းသၢင်ႈ API Version (Android 12 API 31+) ယွၼ်ႉ Google လႅၵ်ႈ API သၼ်ႇမႂ်ႇ
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            val vibratorManager = context.getSystemService(Context.VIBRATOR_MANAGER_SERVICE) as VibratorManager
            val vibrator = vibratorManager.defaultVibrator
            
            // သၼ်ႇပွတ်းလႅတ်း (15 Milliseconds) ၸွမ်း Force Layout 30 (Amplitude)
            vibrator.vibrate(VibrationEffect.createOneShot(15, 30))
        } else {
            // Legacy Vibrate API တႃႇၾူၼ်း Version ၵဝ်ႇ
            @Suppress("DEPRECATION")
            val vibrator = context.getSystemService(Context.VIBRATOR_SERVICE) as Vibrator
            if (vibrator.hasVibrator()) {
                vibrator.vibrate(15) // Legacy Milliseconds vibrate
            }
        }
    }
}

```

---

### 2. Wiring Inside `MaoKeyboardService.kt` (Integrating SharedPreferences Settings)

ၵမ်းၼႆႉ ႁဝ်းတေဢဝ် `FeedbackManager` ၵႂႃႇႁွင်ႉၸႂ်ႉ ၼႂ်း `handleKey()` ၶွင် `MaoKeyboardService`။ ႁဝ်းတေလူတ်ႇထတ်းသၢင်ႈပႃး SharedPreferences Preferences ဝႃႈ User ပိုတ်ႇ (Enable) ဢမ်ႇၼၼ် ပိၵ်ႉ (Disable) Key Sound/Vibrate ဝႆႉႁႃႉ တႃႇမၼ်ႈၸႂ်ဝႃႈ မၼ်းလႅၼ်ႈၸွမ်းပိူင် settings တႅတ်ႈတေႃးၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.view.inputmethod.InputConnection
import it.saimao.tmkkeyboardpro.logic.FeedbackManager
import it.saimao.tmkkeyboardpro.utils.SharedPreferenceManager

class MaoKeyboardService : InputMethodService(), ... {

    // ... Code Settings Layout States (လုၵ်ႉတွၼ်ႈ Lesson 19) ...

    private fun handleKey(key: String) {
        val ic: InputConnection = currentInputConnection ?: return

        // 🌟 🌟 TRIGGER FEEDBACK ၵူႈပွၵ်ႈ မိူဝ်ႈ User ၼဵၵ်းပုမ်ႇၶီးပွတ်ႇ
        triggerTouchFeedback()

        // Core Key Routing Logic
        when (key) {
            Keys.KEY_DELETE -> ic.deleteSurroundingText(1, 0)
            "\n" -> ic.commitText("\n", 1)
            " " -> ic.commitText(" ", 1)
            else -> {
                // Route to Shan/Myanmar Handwriting Engine or commit text directly
                ic.commitText(key, 1)
            }
        }
    }

    /**
     * Helper Method တွၼ်ႈတႃႇထတ်း settings လႄႈ ပၼ်သဵင်/သၼ်ႇ
     */
    private fun triggerTouchFeedback() {
        // 1. ဢၢၼ်ႇ Settings Preferences လုၵ်ႉတီႈ Storage (Default ပဵၼ် true တင်းသွင်ဢၼ်)
        val isSoundEnabled = SharedPreferenceManager.isKeySoundEnabled(this)
        val isVibrateEnabled = SharedPreferenceManager.isKeyVibrateEnabled(this)

        // 2. Play Sound
        if (isSoundEnabled) {
            FeedbackManager.playKeySound(this)
        }

        // 3. Play Vibrate
        if (isVibrateEnabled) {
            FeedbackManager.vibrateKey(this)
        }
    }
}

```

---

### 3. မႄးထႅမ် `SharedPreferenceManager.kt`

ႁဝ်းလူဝ်ႇလႆႈၵႂႃႇထႅမ် Functions 2 ဢၼ် တွၼ်ႈတႃႇဢၢၼ်ႇ Settings သဵင်လႄႈသၼ်ႇ ဝႆႉၼႂ်း File Preference Manager ႁဝ်းၶႃႈ:

```kotlin
// ၼႂ်း SharedPreferenceManager.kt
private const val KEY_ENABLE_SOUND = "enable_key_sound"
private const val KEY_ENABLE_VIBRATE = "enable_key_vibrate"

fun isKeySoundEnabled(context: Context): Boolean {
    return context.getSharedPreferences("tmk_keyboard_settings", Context.MODE_PRIVATE)
        .getBoolean(KEY_ENABLE_SOUND, true) // Default ပဵၼ် true
}

fun isKeyVibrateEnabled(context: Context): Boolean {
    return context.getSharedPreferences("tmk_keyboard_settings", Context.MODE_PRIVATE)
        .getBoolean(KEY_ENABLE_VIBRATE, true) // Default ပဵၼ် true
}

```

---

### 4. မၢႆတွင်း (Core Takeaways)

* **`AudioManager.FX_KEYPRESS_STANDARD`**: ၵၢၼ်ၸႂ်ႉ Sound Effect System Standard ၶွင် Android ၸွႆႈႁႂ်ႈ Keyboard ႁဝ်း မီးသဵင်တႅတ်ႈတေႃး ၵူႈ Device လႄႈ မၼ်းတေ Sync ၸွမ်း သႅၼ်းသုင်သဵၼ်ႈသဵင် (System Volume Settings) ၶွင်ၾူၼ်း User ႁင်းမၼ်းၵမ်းလဵဝ်ၶႃႈ။
* **Haptic Precision (`VibrationEffect`)**: ၵၢၼ်သႂ်ႇ Amplitude `30` လႄႈ Duration `15` Milliseconds မၼ်းပဵၼ် **Sweet Spot Calibration** ၶႃႈ။ မၼ်းတေပၼ် Touch Feel ဢၼ်ပွတ်းလႅတ်း သႅၼ်းပုမ်ႇ Premium Keyboard လႄႈ ဢမ်ႇသၼ်ႇႁိုင်ပႅတ်ႈလၢႆလၢႆ ႁဵတ်းႁႂ်ႈ User ၸႂ်ၵတ်းၶႃႈ။

---