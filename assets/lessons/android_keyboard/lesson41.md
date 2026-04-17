## **Lesson 41: Battery & Resource Efficiency**

### **1. Why do we need this?**

* **All-Day Usage:** ႁဵတ်းႁႂ်ႈ User ၸႂ်ႉ Keyboard လႆႈတင်းဝၼ်း လူၺ်ႈဢမ်ႇလူဝ်ႇမႆႈၸႂ် လွင်ႈႁႅင်းၽူၼ်းမူတ်း။
* **Lower Heat:** လူတ်ႇယွၼ်ႇၵၢၼ်ႁဵတ်းၵၢၼ် CPU ၼင်ႇႁိုဝ်ၾူၼ်းတေဢမ်ႇလိူတ်ႇ (Overheat) မိူဝ်ႈတႅမ်ႈလိၵ်ႈႁိုင်။
* **System Priority:** Android System တေဢမ်ႇ "ဢဝ်တၢႆ" (Kill) App ႁဝ်း။

---

### **2. Implementing Smart Idle States**

Keyboard ဢမ်ႇလူဝ်ႇႁဵတ်းၵၢၼ် တႃႇသေႇ။ မၼ်းလူဝ်ႇႁဵတ်းၵၢၼ် မိူဝ်ႈ User တိုၵ်ႉၼိပ်ႉယူႇၵွၺ်းၶႃႈ။

#### **A. Stopping Animations & Handlers**

သင်ၸဝ်ႈၵဝ်ႇမီး Animation (မိူၼ်ၼင်ႇ Cursor blinking ဢမ်ႇၼၼ် Loading suggestions)၊ ႁဝ်းလူဝ်ႇပိၵ်ႉမၼ်းမိူဝ်ႈ Keyboard ထုၵ်ႇသိမ်း (Hidden) ၶႃႈ။

```kotlin
override fun onWindowShown() {
    super.onWindowShown()
    // တႄႇ Animation ဢမ်ႇၼၼ် Timer ၸိူဝ်းလူဝ်ႇၸႂ်ႉ
    startSuggestionTimer()
}

override fun onWindowHidden() {
    super.onWindowHidden()
    // ပိၵ်ႉၵၢၼ်ႁဵတ်းၵၢၼ်တင်းမူတ်း ၼင်ႇႁိုဝ် CPU တေလႆႈလိုဝ်ႈ (Deep Sleep)
    stopSuggestionTimer()
    handler.removeCallbacksAndMessages(null) 
}
```

---

### **3. Efficient Resource Loading**

ၵၢၼ်လူတ်ႇ Icons ဢမ်ႇၼၼ် Fonts ၼၵ်းၼၵ်း ၶဝ်ႈၼႂ်း Memory ၵူႈပွၵ်ႈ ႁဵတ်းႁႂ်ႈ Battery မူတ်းဝႆးၶႃႈ။

* **Singleton Pattern:** ၸႂ်ႉ Singleton တွၼ်ႈတႃႇ `Typeface` (Fonts) လႄႈ `SharedPreference` ၼင်ႇႁိုဝ်တေလူတ်ႇ "ၵမ်းလဵဝ်" သေၸႂ်ႉလႆႈတင်း App ၶႃႈ။
* **Avoid OnDraw Calculations:** ၼႂ်း `onDraw()` ၶွင် Custom View၊ ယႃႇပႆႇသၢင်ႈ `Paint()` ဢမ်ႇၼၼ် `Path()` မႂ်ႇ။ ႁႂ်ႈသၢင်ႈဝႆႉၼႂ်း Constructor ၵမ်းလဵဝ်ၶႃႈ။



---

### **4. Reducing Haptic & Sound Overhead**

ၵၢၼ်သၼ်ႇ (Vibration) လႄႈ သဵင် (Sound) ပဵၼ်တွၼ်ႈဢၼ်ၵိၼ်ႁႅင်းသေပိူၼ်ႈၶႃႈ။

* **Batch Processing:** သင်မၼ်းၼဵၵ်းဝႆးပူၼ်ႉတီႈ (မိူၼ်ၼင်ႇ Auto-repeat delete) ၼႆ ႁဝ်းၸၢင်ႈ "Skip" လွင်ႈသၼ်ႇ ၼင်ႇႁိုဝ်တေဢမ်ႇၸႂ်ႉ Vibration Motor ၼမ်ပူၼ်ႉတီႈ။
* **Check Settings First:** ၸႅတ်ႈတူၺ်း Boolean ၼႂ်း Settings ၵွၼ်ႇတေႁွင်ႉ `Vibrator` Service ၼင်ႇႁိုဝ်တေဢမ်ႇသဵၼ်ႈ CPU Cycles လၢႆလၢႆၶႃႈ။

---

### **5. Garbage Collection Awareness (Memory Cleanup)**

မိူဝ်ႈ Memory တဵမ်၊ Android တေႁွင်ႉ GC (Garbage Collector) မႃးလၢင်ႉ၊ သင်ၼၼ် CPU တေလႆႈႁဵတ်းၵၢၼ်ၼၵ်းသေ ၵိၼ်ႁႅင်းၼမ်ၶႃႈ။

1. **Primitive Types:** ၸႂ်ႉ `IntArray` တႅၼ်း `Array<Int>` ၼင်ႇႁိုဝ်တေလူတ်ႇယွၼ်ႇ Object Boxing။
2. **OnTrimMemory:** ၸႂ်ႉ `onTrimMemory(level)` တွၼ်ႈတႃႇပွႆႇ (Release) Cache ဢၼ်ဢမ်ႇလူဝ်ႇၸႂ်ႉ မိူဝ်ႈ System တိုၵ်ႉၶၢတ်ႇ Memory ၶႃႈ။



---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Sleep when Hidden:** ပိၵ်ႉ Handlers/Animations တင်းမူတ်းၼႂ်း `onWindowHidden`။
* **Load Once:** ၸႂ်ႉ Singleton တွၼ်ႈတႃႇ Fonts လႄႈ Resources ၼၵ်းၼၵ်း။
* **Minimize Vibrations:** ၵုမ်းထိင်းၵၢၼ်ၸႂ်ႉ Vibration Motor ႁႂ်ႈသၢင်ႇထုၵ်ႇ။

---