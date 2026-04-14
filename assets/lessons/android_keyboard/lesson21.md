## **Lesson 21: Haptic and Audio Feedback: Programming Vibration and Sounds**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၵၢၼ်တႅမ်ႈလိၵ်ႈၼႂ်းၼႃႈၸေႃး (Touchscreen) ၼၼ်ႉ မၼ်းဢမ်ႇမိူၼ် Keyboard တႄႉ ဢၼ်မီးတုမ်ႇၼဵၵ်ႉပႅၼ်ဢွၵ်ႇမႃး။ 
ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတေႁူႉဝႃႈ ၶဝ်ၼဵၵ်ႉၺႃးတုမ်ႇယဝ်ႉတႄႉတႄႉၼၼ်ႉ ႁဝ်းလူဝ်ႇထႅမ်သႂ်ႇ **Haptic Feedback** (တူင်ႉၼိုင်) လႄႈ **Audio Feedback** (သဵင်) ၶႃႈ။

---

### **1. Implementing Haptic Feedback (Vibration)**

လၢႆးဢၼ်ငၢႆႈသေပိူၼ်ႈ လႄႈ ဢမ်ႇၵိၼ် Battery ၼမ် ပဵၼ်ၵၢၼ်ၸႂ်ႉ `performHapticFeedback` ၶႃႈ။

```kotlin
fun triggerVibration(view: View) {
    // ၸႅတ်ႈတူၺ်းဝႃႈ ၵူၼ်းၸႂ်ႉပိုတ်ႇ Vibration ဝႆႉၼႂ်း Settings ႁႃႉ?
    val prefs = PreferenceManager.getDefaultSharedPreferences(this)
    val isVibrateEnabled = prefs.getBoolean("vibrate_on_keypress", true)

    if (isVibrateEnabled) {
        view.performHapticFeedback(
            HapticFeedbackConstants.KEYBOARD_TAP,
            HapticFeedbackConstants.FLAG_IGNORE_GLOBAL_SETTING // ႁႂ်ႈမၼ်းတူင်ႉ ဢမ်ႇဝႃႈ System တေပိၵ်ႉဝႆႉၵေႃႈယဝ်ႉ
        )
    }
}
```

---

### **2. Implementing Audio Feedback (Sound)**

တွၼ်ႈတႃႇသဵင် "Click" ၼၼ်ႉ ႁဝ်းၸႂ်ႉ **`AudioManager`** ဢၼ်မီးဝႆႉၼႂ်း Android System ၶႃႈ။

```kotlin
fun playClickSound() {
    val am = getSystemService(AUDIO_SERVICE) as AudioManager
    val prefs = PreferenceManager.getDefaultSharedPreferences(this)
    val isSoundEnabled = prefs.getBoolean("sound_on_keypress", true)

    if (isSoundEnabled) {
        // လိူၵ်ႈသဵင်ၸွမ်းၼင်ႇ Keyboard Standard
        val soundType = AudioManager.FX_KEYPRESS_STANDARD
        am.playSoundEffect(soundType)
    }
}
```

---

### **3. Integrating into the Dispatcher**

ႁဝ်းတေဢဝ် Function သွင်ဢၼ်ၼႆႉ ၵႂႃႇသႂ်ႇၼႂ်း `handleKeyPress` (Lesson 15) ၼင်ႇႁိုဝ်ၵူႈတုမ်ႇၼဵၵ်ႉ တေမီးသဵင် လႄႈ တူင်ႉၼိုင်ၶႃႈ။

```kotlin
private fun handleKeyPress(viewId: Int, text: String, view: View) {
    // 1. Trigger Feedback
    triggerVibration(view)
    playClickSound()

    // 2. Handle Logic (Delete, Shift, Text...)
    when (viewId) {
        R.id.key_del -> sendDelete()
        // ... (Logic တၢင်ႇဢၼ်) ...
        else -> sendText(text)
    }
}
```

---

### **4. Pro Tip: Customizing Vibration Intensity**

တွၼ်ႈတႃႇ **TMK Keyboard Pro**၊ သင်ၸဝ်ႈၵဝ်ႇလူဝ်ႇႁႂ်ႈၵူၼ်းၸႂ်ႉ လႅၵ်ႈလႆႈလွင်ႈတူင်ႉၼိုင် ႁႅင်း/ဢူၼ်ႈ (Intensity)၊ ၸဝ်ႈၵဝ်ႇတေလႆႈၸႂ်ႉ `Vibrator` class ၶႃႈ။

```kotlin
fun customVibrate(ms: Long) {
    val vibrator = getSystemService(VIBRATOR_SERVICE) as Vibrator
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
        vibrator.vibrate(VibrationEffect.createOneShot(ms, VibrationEffect.DEFAULT_AMPLITUDE))
    } else {
        vibrator.vibrate(ms) // Version ၵဝ်ႇ
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **HapticFeedbackConstants:** ၸွႆႈႁႂ်ႈႁဝ်းၸႂ်ႉ Vibration ပိူင် Standard ဢၼ် Android ၸတ်းၵၢၼ်ဝႆႉပၼ်ယဝ်ႉ။
* **AudioManager:** ၸွႆႈႁႂ်ႈမီးသဵင် Click ဢၼ်ၵူၼ်းၸႂ်ႉယိၼ်းယႅမ်ႈ (Familiar)။
* **User Control:** တေလႆႈသႂ်ႇတၢင်းလိူၵ်ႈ (Settings) ႁႂ်ႈၵူၼ်းၸႂ်ႉ ပိၵ်ႉ/ပိုတ်ႇ လႆႈၸွမ်းၸႂ်ၶႃႈ။

---

**Congratulations!** ႁဝ်းယဝ်ႉတူဝ်ႈ **Module 3: Core Input & Event Handling** ယဝ်ႉၶႃႈ!

ယၢမ်းလဵဝ် Keyboard ႁဝ်း:
1.  သူင်ႇလိၵ်ႈလႆႈ၊ လူတ်းလိၵ်ႈလႆႈ။
2.  မီး Pop-up တူဝ်လိၵ်ႈသိူၼ်ႈ (Slide & Release)။
3.  လႅၵ်ႈ Shift လႄႈ Caps Lock လႆႈ။
4.  ထူၺ်း Spacebar လႅၵ်ႈ Cursor လႆႈ။
5.  မီးသဵင် လႄႈ တူင်ႉၼိုင်။

**Are you ready for Module 4: "Shan Language Intelligence"?** ႁဝ်းတေမႃးတႄႇ **Lesson 22: "Shan Character Encoding: Standardizing Unicode Output"** ၶႃႈယဝ်ႉ! တွၼ်ႈၼႆႉတေပဵၼ်တွၼ်ႈတႃႇၵတ်ႉၶႄပၼ်ႁႃ "လိၵ်ႈဢမ်ႇၸႅၼ်ႇ" ဢမ်ႇၼၼ် "လိၵ်ႈယုင်ႈ" ၶႃႈၼႃ!