## **Lesson 43: Final Beta Testing & Stability Fixes**

### **1. Why do we need this?**

* **Fragmentation:** ၾူၼ်း Android ၼႆႉ မီးသႅၼ်းၼမ်ၼႃႇ (Samsung, Oppo, Vivo, Pixel) ၶႃႈ။ ႁဝ်းလူဝ်ႇမၼ်ႈၸႂ်ဝႃႈ Keyboard ႁဝ်းဢွၵ်ႇမႃးႁၢင်ႈလီၵူႈၶိူင်ႈၶႃႈ။
* **Edge-to-Edge Issues:** ၾူၼ်းမႂ်ႇမႂ်ႇ (Android 15+) မီး Navigation Bar ဢၼ် "သႂ်"၊ ႁဝ်းလူဝ်ႇၸႅတ်ႈဝႃႈ Keyboard ႁဝ်းဢမ်ႇၺႃးၶတ်း (Overlap) ၶႃႈ။
* **User Confidence:** ၵူၼ်းၸႂ်ႉတေဢမ်ႇထွၼ် App ၸဝ်ႈၵဝ်ႇပႅတ်ႈ သင်မၼ်းဢမ်ႇမီး "Bugs" လႄႈ ဢမ်ႇ "လပ်း" (Crash) ၶႃႈ။

---

### **2. Testing Across Different Screen Sizes**

Keyboard ႁဝ်းၸၢင်ႈတူၺ်းလီၼႂ်းၾူၼ်းႁဝ်း၊ ၵွၺ်းၵႃႈၼႂ်း Tablet ဢမ်ႇၼၼ် ၾူၼ်းၸေႃးယႂ်ႇ (Foldables) မၼ်းၸၢင်ႈယိုတ်ႈပူၼ်ႉတီႈၶႃႈ။

* **Aspect Ratio Check:** ၸႅတ်ႈတူၺ်းၼႂ်း Screen ဢၼ်ပဵၼ် 16:9 (ၾူၼ်းၵဝ်ႇ) လႄႈ 21:9 (ၾူၼ်းယၢဝ်း)။
* **Density Check:** ၸႅတ်ႈတူၺ်းၼႂ်းၾူၼ်းဢၼ်မီး DPI တႅမ်ႇ (Low-end devices) ၼင်ႇႁိုဝ်တူဝ်လိၵ်ႈတေဢမ်ႇလဵၵ်ႉပူၼ်ႉတီႈၶႃႈ။



---

### **3. Stability Fixes: Common Keyboard Crashes**

မီးပၼ်ႁႃမၢင်လွင်ႈဢၼ် Keyboard ၵႆႉထူပ်းၺႃး၊ ႁဝ်းလူဝ်ႇ "Catch" (ၺွပ်ႉ) မၼ်းဝႆႉၶႃႈ:

#### **A. Null InputConnection**
မၢင်ပွၵ်ႈ App တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ Game) ပိၵ်ႉ InputConnection ဝႆႉ၊ သင်ႁဝ်းသူင်ႇလိၵ်ႈၵႂႃႇမၼ်းတေ Crash ၶႃႈ။

```kotlin
// လၢႆးၵႄႈ: ၸႅတ်ႈတူၺ်း Null တႃႇသေႇ
val ic = currentInputConnection
ic?.let {
    it.commitText(text, 1)
} ?: run {
    Log.e("TMK", "InputConnection is null!")
}
```

#### **B. Orientation Changes**
မိူဝ်ႈ User ပိၼ်ႇၾူၼ်း (Landscape/Portrait), Keyboard လူဝ်ႇလႆႈ `invalidate()` ၼင်ႇႁိုဝ် Layout တေဢမ်ႇ Broken ၶႃႈ။

---

### **4. Handling Android 15+ System Insets**

Android 15+ မီး Navigation ဢၼ်ပဵၼ် Gesture ၶႃႈ။ ႁဝ်းလူဝ်ႇသၢင်ႈ **"Padding"** ဝႆႉၽၢႆႇတႂ်ႈ Keyboard ၼင်ႇႁိုဝ်တုမ်ႇ Space Bar တေဢမ်ႇၵႂႃႇၺႃးတုမ်ႇ Home ၶွင် System ၶႃႈ။

* **Test Plan:** ၸႂ်ႉ Emulator Android 15 သေၸႅတ်ႈတူၺ်းဝႃႈ Keyboard ႁဝ်းမီး "Gap" (တီႈလၢတ်ႈ) ဝႆႉၽၢႆႇတႂ်ႈႁႃႉ ၼင်ႇႁိုဝ် User တေၼိပ်ႉငၢႆႈၶႃႈ။



---

### **5. Beta Distribution (ၵၢၼ်ၸၢမ်းတူၺ်းတႄႉတႄႉ)**

ၵွၼ်ႇတေပိုၼ်ၽႄႈတင်းလုမ်ႈၾႃႉၼၼ်ႉ ႁဝ်းလူဝ်ႇသူင်ႇပၼ် "ၸုမ်းဢွၼ်ႇ" ၸၢမ်းၸႂ်ႉၵွၼ်ႇၶႃႈ:

1. **Internal Testing:** သူင်ႇ APK ပၼ်ၸုမ်း **Thung Mao Kham** ၸၢမ်းၸႂ်ႉ 10 ၵေႃႉ။
2. **Google Play Console (Closed Testing):** သူင်ႇပၼ် User ဢၼ်ႁဝ်းလိူၵ်ႈဝႆႉ (Whitelist) လူၺ်ႈ Email။
3. **Collect Feedback:** ၸႅတ်ႈတူၺ်း Logcat လႄႈ Feedback ၶဝ်ဝႃႈ "တုမ်ႇလႂ်ၼဵၵ်းယၢပ်ႇ?" ဢမ်ႇၼၼ် "လိၵ်ႈတႆးတူဝ်လႂ်ဢွၵ်ႇၽိတ်း?" ၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Multi-Device Test:** ၸႅတ်ႈၼႂ်းၾူၼ်းလၢႆလၢႆသႅၼ်း လႄႈ လၢႆ Android Versions ၶႃႈ။
* **Defensive Coding:** ၸႅတ်ႈ Null Safety တွၼ်ႈတႃႇ `InputConnection` တႃႇသေႇၶႃႈ။
* **Inset Padding:** မႄး Keyboard ႁႂ်ႈ Support ၾူၼ်းမႂ်ႇမႂ်ႇ (Gesture Navigation)။

---
