
## Lesson 27: Hardware Keyboard Interoperability Integration

ၼႂ်း Android `InputMethodService` ၼႆႉ မိူဝ်ႈမီး External Physical Keyboard သူင်ႇ Signal Trigger ၶဝ်ႈမႃးၼႆ
System တေသူင်ႇ Key Events ၶဝ်ႈၸူး Callback Standard 3 တူဝ် ၼႆႉယဝ်ႉ:

1. **`onEvaluateInputViewShown()`**: တူဝ်ၼႆႉပဵၼ် Decision Engine တွၼ်ႈတႃႇထတ်းသၢင်ႈဝႃႈ "လူဝ်ႇပိုတ်ႇ ဢမ်ႇၼၼ် လူဝ်ႇပိၵ်ႉ (Hide) ၼႃႈ UI Soft Keyboard ႁဝ်း" ၼႆယဝ်ႉ။
2. **`onKeyDown()`**: Trigger Events မိူဝ်ႈ Hardware Key Micro-switch ထုၵ်ႇၼဵၵ်းလူင်း (Press Down)။
3. **`onKeyUp()`**: Trigger Events မိူဝ်ႈ Hardware Key Micro-switch ထုၵ်ႇပွႆႇ (Release Up)။

---

### 1. Implementing Auto-Hide Layout Control with `onEvaluateInputViewShown`

ႁဝ်းတေ Override `onEvaluateInputViewShown()` ဝႆႉၼႂ်း `MaoKeyboardService.kt` တွၼ်ႈတႃႇ Check ပိူင်သၢင်ႈ Hardware Keyboard Connection Status ၶႃႈ:

```kotlin
    /**
     * 🌟 🌟 CORE HARDWARE DETECTOR LIFECYCLE:
     * Android တေႁွင်ႉ Method ၼႆႉ တွၼ်ႈတႃႇထတ်းသၢင်ႈဝႃႈ "လူဝ်ႇၼႄ ၼႃႈ UI Keyboard ႁဝ်းယူႇႁႃႉ?"
     */
    override fun onEvaluateInputViewShown(): Boolean {
        val config = resources.configuration
        
        // 🌟 ထတ်းသၢင်ႈဝႃႈ မီး Hard Keyboard (Bluetooth/USB) Connected ဝႆႉယူႇႁႃႉ
        // သင်ဝႃႈ Keyboard Configuration မၼ်းပဵၼ် KEYBOARD_QWERTY (မီး Keyboard ၼွၵ်ႈၵျႅၼ်ႇဝႆႉ)
        if (config.keyboard == android.content.res.Configuration.KEYBOARD_QWERTY) {
            Log.d("TMK_HARDWARE", "Hardware Keyboard Detected! Hiding Compose View Soft Panel.")
            
            // Return false တွၼ်ႈတႃႇမၢႆပၼ် System ႁႂ်ႈ Auto-Hide Soft UI Panel ဢွၵ်ႇပႅတ်ႈၸေႃး
            // ႁဵတ်းႁႂ်ႈ User မီးၼႃႈၸေႃးၵႂၢင်ႈ တႃႇဢၢၼ်ႇလိၵ်ႈ ငၢႆႈငၢႆႈ
            return false 
        }
        
        // သင်ဢမ်ႇမီး Hardware Keyboard Connected, ႁႂ်ႈၼႄ UI standard ၸွမ်းပိူင်သၢင်ႈ (Default)
        return super.onEvaluateInputViewShown()
    }

```

---

### 2. Handling Key Events Pass-Through Layout (`onKeyDown` & `onKeyUp`)

သင် User တိုၵ်ႉၼဵၵ်း ပုမ်ႇ Shortcut พิเศษ တီႈ Hardware Keyboard Standard (မိူၼ်ၼင်ႇ ပုမ်ႇ `Back` ဢမ်ႇၼၼ် Volume Control)၊ ႁဝ်းလူဝ်ႇလႆႈ Handle Sync ႁႂ်ႈ System Android တူဝ်ၼွၵ်ႈ ႁပ်ႉႁူႉလႆႈၸွမ်း ဢမ်ႇပိတ်း Block Logic ၶႃႈ:

```kotlin
    import android.view.KeyEvent

    /**
     * 🌟 Handle Hardware Press Down Event Pipeline
     */
    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        val ic = currentInputConnection
        
        // 🌟 UX Optimization: သင် User ၼဵၵ်းပုမ်ႇ BACK (Hardware Arrow Back) မိူဝ်ႈ Keyboard UI ပိုတ်ႇယူႇ
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            // Request System ႁႂ်ႈ Auto-Dismiss ပိတ်းပႅတ်ႈ Keyboard Input View Panel ၵမ်းလဵဝ် 
            requestHideSelf(0)
            return true // Return true ပွင်ႇဝႃႈ ႁဝ်း Handle Event ၼႆႉယဝ်ႉသေ တေဢမ်ႇပၼ် App ၼွၵ်ႈ Crash
        }

        // [Optional Feature Core Mapping]:
        // တီႈၼႆႈ သင်ၸဝ်ႈၵဝ်ႇ ၶႂ်ႈထတ်း Hardware Keys တွၼ်ႈတႃႇ Translate ပဵၼ် လိၵ်ႈတႆး 
        // ၸၢင်ႈထတ်း KeyEvent ၼင်ႇ: keyCode == KeyEvent.KEYCODE_A ၶဝ်ႈၵႂႃႇလႆႈပႃးၶႃႈ။
        
        return super.onKeyDown(keyCode, event)
    }

    /**
     * 🌟 Handle Hardware Release Up Event Pipeline
     */
    override fun onKeyUp(keyCode: Int, event: KeyEvent?): Boolean {
        // Pass Events Through to Android OS Standard 
        return super.onKeyUp(keyCode, event)
    }

```

---

### 3. Setup Configuration Change Broadcast Receiver

ယွၼ်ႉဝႃႈ User ၸၢင်ႈ ပိုတ်ႇ/ပိၵ်ႉ Bluetooth Keyboard မိူဝ်ႈ App တိုၵ်ႉလႅၼ်ႈယူႇ (Hot-plugging) ၼႆလႄႈ
ႁဝ်းလူဝ်ႇလႆႈ Override Method **`onConfigurationChanged()`** တွၼ်ႈတႃႇ Force Update UI Visibility State ၶႃႈယဝ်ႉ:

```kotlin
    import android.content.res.Configuration

    /**
     * 🌟 Trigger ၵူႈပွၵ်ႈ မိူဝ်ႈ User ပိုတ်ႇ/ပိၵ်ႉ Bluetooth, ပိၼ်ႇၼႃႈၸေႃး Landscape, ဢမ်ႇၼၼ် လႅၵ်ႈ Dark Mode 
     */
    override fun onConfigurationChanged(newConfig: Configuration) {
        super.onConfigurationChanged(newConfig)
        
        // Request Device System ႁႂ်ႈ Re-evaluate State Visibility ၶိုၼ်းၵမ်းလဵဝ်
        // မၼ်းတေ Auto-Call onEvaluateInputViewShown() ၶိုၼ်း ႁင်းမၼ်း Automation 
        updateInputViewShown()
    }

```

---

### မၢႆတွင်း (Core Architecture Takeaways)

* **`updateInputViewShown()` Dynamic Automation Sync:** ၵၢၼ်ၸႂ်ႉ `onConfigurationChanged` ႁူမ်ႈတင်း `updateInputViewShown()` မၼ်းပဵၼ် **Bulletproof Integration** ၶႃႈ။ မိူဝ်ႈ User တိုၵ်ႉတႅမ်ႈလိၵ်ႈယူႇသေ ၼဵၵ်းပိုတ်ႇ Switch Bluetooth Keyboard, တူဝ် Android Framework တေ Auto-Detect, သေ Trigger Re-evaluate ႁဵတ်းႁႂ်ႈ Soft UI Panel ႁဝ်း လႅၼ်ႈလူင်း (Auto-Dismiss Hide) ၵမ်းလဵဝ် ၶၼ်ၽတ်ႉၽႅဝ်း သွတ်ႈသႅတ်ႈ သုတ်းသုတ်းၶႃႈ။
* **Screen Estate Preservation Matrix:** လၢႆးဝၢင်း Layout Algorithm ၼႆႉ တေႁဵတ်းႁႂ်ႈ Keyboard **TMK Keyboard Pro** ႁဝ်း မီး Behavior ၵျႅၼ်ႇၶႅၼ်ႇ မိူၼ် App Top-Tier Level standard ပိူၼ်ႈ၊ ယွၼ်ႉမၼ်းၵုမ်းထိန်း ဢမ်ႇပၼ်မီး Views တူဝ်လုၵ်ႉလွၵ်ႇ သွၼ်ႉၵၼ် ႁႂ်ႈၵိၼ်ပိုၼ်ႉတီႈ ၼႃႈၸေႃး (OLED Friendly UI Management) ၶႃႈယဝ်ႉ။
