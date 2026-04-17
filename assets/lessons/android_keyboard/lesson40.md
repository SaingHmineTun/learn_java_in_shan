## **Lesson 40: Performance Tuning & View Recycling**

### **1. Why do we need this?**

* **Lag-Free Typing:** ႁဵတ်းႁႂ်ႈတုမ်ႇၼဵၵ်ႉ (Keys) လႅၼ်ႈၸွမ်းမိုဝ်း ဢမ်ႇ Lag မိူဝ်ႈတႅမ်ႈလိၵ်ႈဝႆး။
* **Battery Saving:** ၵၢၼ် Recycle View ၸွႆႈလူတ်ႇယွၼ်ႇၵၢၼ်ၸႂ်ႉ CPU ႁဵတ်းႁႂ်ႈ Keyboard ဢမ်ႇၵိၼ်ႁႅင်းၼမ်။
* **Memory Efficiency:** ႁႄႉၵင်ႈပၼ်ႁႃ Keyboard "ၵိုတ်း" (Crash) ယွၼ်ႉ Memory တဵမ် (Out of Memory).

---

### **2. Implementing View Caching (The Pro Way)**

လၢႆးဢၼ်ၶႅမ်ႉလီသုတ်ႉ တွၼ်ႈတႃႇ Keyboard App တႄႉ ပဵၼ်ၵၢၼ်သိမ်း View ဢၼ် Inflate ယဝ်ႉဝႆႉၼႂ်း **`HashMap`** ၼင်ႇႁိုဝ်တေဢမ်ႇလူဝ်ႇသၢင်ႈမႂ်ႇၵူႈပွၵ်ႈၶႃႈ။

#### **A. Add Layout Cache in `KeyboardService.kt`**

```kotlin
// သိမ်း Views ဝႆႉၼႂ်း Memory ၼင်ႇႁိုဝ်တေ Reuse လႆႈ
private val layoutCache = HashMap<Int, View>()

private fun getOrCreateLayout(layoutId: Int): View {
    // 1. ၸႅတ်ႈတူၺ်းၼႂ်း Cache ၵွၼ်ႇ
    if (layoutCache.containsKey(layoutId)) {
        return layoutCache[layoutId]!!
    }

    // 2. သင်ဢမ်ႇမီး ၸင်ႇ Inflate မႂ်ႇ (ၼၵ်း CPU ဢိတ်းၼိုင်ႈ)
    val newView = layoutInflater.inflate(layoutId, null)
    
    // 3. သိမ်းဝႆႉၼႂ်း Cache တွၼ်ႈတႃႇဢဝ်မႃးၸႂ်ႉၶိုၼ်းၵမ်းလဵဝ်
    layoutCache[layoutId] = newView
    return newView
}
```

---

### **3. Kotlin Logic: Smart View Switching**

မိူဝ်ႈ User လႅၵ်ႈ Layout (မိူၼ်ၼင်ႇ လုၵ်ႉတီႈ ABC သေလႅၵ်ႈၵႂႃႇ Symbols)၊ ႁဝ်းတေၸႂ်ႉ Cache ၼႆႉမႃးတႅၼ်းတီႈၶႃႈ။

```kotlin
fun switchLayout(layoutId: Int) {
    val layoutView = getOrCreateLayout(layoutId)
    
    // Reset View State ၵွၼ်ႇတေဢဝ်ဢွၵ်ႇၼႄ
    layoutView.apply {
        invalidate() // ႁႂ်ႈမၼ်း Draw မႂ်ႇ
        requestLayout()
    }

    setInputView(layoutView) // ၼႄ Layout ဢၼ်ယူႇၼႂ်း Cache
}
```

---

### **4. Introduction to View Hierarchy Optimization**

တွၼ်ႈတႃႇႁႂ်ႈ Performance လီသုတ်း၊ ႁဝ်းလူဝ်ႇမႄး Layout XML ႁဝ်းႁႂ်ႈမၼ်း "Flat" (ဢမ်ႇသၢင်ႈထႅဝ်သွၼ်ႉၵၼ်ၼမ်) ၶႃႈ။

* **Use ConstraintLayout:** ၸႂ်ႉ ConstraintLayout တႅၼ်း LinearLayout ဢၼ်သွၼ်ႉၵၼ် (Nested Layouts)။
* **Avoid Overdraw:** ယႃႇပႆႇသႂ်ႇ Background Colors သွၼ်ႉၵၼ်လၢႆၸၼ်ႉ (မိူၼ်ၼင်ႇ သႂ်ႇသီၼိူဝ် KeyboardView ယဝ်ႉ သမ်ႉသႂ်ႇၼိူဝ် Key Button ထႅင်ႈ)။
* **View Stub:** တွၼ်ႈတႃႇ View ဢၼ်ဢမ်ႇၵႆႉလႆႈၸႂ်ႉ (မိူၼ်ၼင်ႇ Popup Preview)၊ ႁႂ်ႈၸႂ်ႉ `ViewStub` တႅၼ်း ၼင်ႇႁိုဝ်မၼ်းတေ Inflate မိူဝ်ႈလူဝ်ႇၸႂ်ႉတႄႉတႄႉၵွၺ်းၶႃႈ။

---

### **5. Garbage Collection & Cleanup (လွင်ႈလွတ်ႈၽေး)**

ယွၼ်ႉႁဝ်းသိမ်း Views ဝႆႉၼႂ်း Cache လႄႈ ႁဝ်းလူဝ်ႇလၢင်ႉမၼ်းပႅတ်ႈ မိူဝ်ႈ Keyboard ပိၵ်ႉ ၼင်ႇႁိုဝ်တေဢမ်ႇပဵၼ် **Memory Leak** ၶႃႈ:

1. **onDestroy:** မိူဝ်ႈ Service တၢႆ၊ ႁႂ်ႈႁွင်ႉ `layoutCache.clear()`.
2. **OnTrimMemory:** ၸႅတ်ႈတူၺ်း `onTrimMemory` System Level သေလၢင်ႉ Cache သင် Android လူဝ်ႇ Memory ၼမ်ၼမ်။
3. **Bitmap Recycling:** သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ Icons ၼမ်၊ မၼ်ႈၸႂ်ဝႃႈ Icons ၸိူဝ်းၼၼ်ႉ ထုၵ်ႇ Optimize Size ဝႆႉယဝ်ႉၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Reuse over Create:** ၵၢၼ်ၸႂ်ႉ View ၵဝ်ႇ ဝႆးသေၵၢၼ်သၢင်ႈ View မႂ်ႇ။
* **Flat Layout:** ၸႂ်ႉ `ConstraintLayout` ၸွႆႈႁႂ်ႈ Render ဝႆးလိူဝ်။
* **Memory Management:** ၵၢၼ်လၢင်ႉ Cache ၼႂ်း `onDestroy` ႁဵတ်းႁႂ်ႈ App ၸဝ်ႈၵဝ်ႇ "Clean" လႄႈ မၼ်ႈၵႅၼ်ႇၶႃႈ။

---