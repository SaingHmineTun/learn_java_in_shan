## **Lesson 6: Keyboard Window & Insets: Managing Screen Heights & Overlay**

---

### **Overview (ႁူဝ်ၶေႃႈ)**

မိူဝ်ႈႁဝ်းပိုတ်ႇ Keyboard ၼၼ်ႉ Android System တေလႆႈၸတ်းၵၢၼ်လွင်ႈ "Window" (ၼႃႈၸေႃး) ၶႃႈ။
သင်ႁဝ်းဢမ်ႇၸတ်းၵၢၼ် **Insets** (လွင်ႈၵိၼ်ၼႃႈၸေႃး) လႄႈ **Height** (တင်းသုင်) ႁႂ်ႈလီၼႆ Keyboard
ႁဝ်းၸၢင်ႈၵႂႃႇႁႄႉ (Overlay) ပႅတ်ႈ Text Field ဢၼ်ႁဝ်းတိုၵ်ႉတႅမ်ႈယူႇၼၼ်ႉၶႃႈ။

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေလႆႈပွင်ႇၸႂ်ဝႃႈ Keyboard ႁဝ်းမီးတင်းသုင်ၵႃႈႁိုဝ် လႄႈ မၼ်းတေ "တဵၵ်း" App
တၢင်ႇဢၼ်ၶိုၼ်ႈၵႂႃႇလၢႆးႁိုဝ် ၼင်ႇႁိုဝ်တေတူၺ်းႁၼ်လိၵ်ႈဢၼ်တႅမ်ႈယူႇၼၼ်ႉၶႃႈ။

---

### **1. Handling Keyboard Height in Custom XML**

ယွၼ်ႉႁဝ်းဢမ်ႇၸႂ်ႉ `KeyboardView` ယဝ်ႉ၊ တင်းသုင် (Height) ၶွင် Keyboard ႁဝ်းတေၵုမ်းထိင်းဝႆႉၼႂ်း *
*`keyboard_root.xml`** လႄႈ Layout ၶွင် Keys ႁဝ်းၶႃႈ။

* **Fixed Height:** မၵ်းမၼ်ႈ `layout_height` ၼႂ်း XML ႁႂ်ႈမၼ်းတႅတ်ႈတေႃး (မိူၼ်ၼင်ႇ 280dp)။
* **Dynamic Height:** ၸႂ်ႉ `wrap_content` ၼင်ႇႁိုဝ်မၼ်းတေပႅၼ်ဢွၵ်ႇမႃးၸွမ်း Keys ဢၼ်ႁဝ်းဝၢင်းဝႆႉ။

---

### **2. Soft Input Modes & Window Insets**

မိူဝ်ႈ Keyboard ၽႅၼ်ႇဢွၵ်ႇမႃး၊ Android တေၸႂ်ႉ Window Insets တႃႇလၢတ်ႈၼႄ App ၽၢႆႇလင်ဝႃႈ "ယၢမ်းလဵဝ်
ၼႃႈၸေႃးႁူတ်းၵႂႃႇယဝ်ႉ"။

* **`adjustResize`**: System တေတဵၵ်း App ၶိုၼ်း ၼင်ႇႁိုဝ်တေတူၺ်းႁၼ် Cursor ဢၼ်တႅမ်ႈယူႇ။
* **`adjustPan`**: System တေ "ဢူၼ်ၵၢႆႇ" (Slide) ၼႃႈၸေႃး App ၶိုၼ်ႈၵႂႃႇၽၢႆႇၼိူဝ်။

တွၼ်ႈတႃႇ **TMK Keyboard Pro** ႁဝ်းၼႆႉ ႁဝ်းလူဝ်ႇၸတ်းၵၢၼ်ၼႂ်း **`ShanKeyboardService.kt`** ၼင်ႇၼႆ:

```kotlin
override fun onEvaluateFullscreenMode(): Boolean {
    // ပိၵ်ႉ Fullscreen Mode ဝႆႉ ၼင်ႇႁိုဝ်တေတူၺ်းႁၼ် App ၽၢႆႇလင်ယူႇတႃႇသေႇ
    // (တွၼ်ႈတႃႇ Landscape mode ၵေႃႈ ႁဝ်းတေတူၺ်းႁၼ်လိၵ်ႈယူႇ)
    return false
}

override fun onUpdateExtractingVisibility(ei: EditorInfo?) {
    // ႁဵတ်းႁႂ်ႈ Keyboard ဢမ်ႇၵိၼ်ၼႃႈၸေႃးတင်းသဵင်ႈ မိူဝ်ႈတႅမ်ႈ Landscape
    setExtractViewShown(false)
}
```

---

### **3. Managing Navigation Bar Overlay**

ၾူၼ်းပၢၼ်မႂ်ႇမႂ်ႇၼႆႉ မီး Gesture Navigation (သဵၼ်ႈတၢင်းတႂ်ႈ)။ သင်ႁဝ်းဢမ်ႇသႂ်ႇ Padding၊ Keyboard
ႁဝ်းတေၵႂႃႇတိတ်းၸပ်းၼႃႈၸေႃးၽၢႆႇတႂ်ႈသေ တေတႅမ်ႈယၢပ်ႇၶႃႈ။

**Solution:** သႂ်ႇ **`android:paddingBottom`** ၼႂ်း `keyboard_root.xml` ၶႃႈ။

#### **Updated keyboard_root.xml Snippet:**

```xml

<LinearLayout android:background="#1A1A1A" android:layout_height="wrap_content"
    android:paddingBottom="10dp">
    
</LinearLayout>
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Fixed Height:** ၸွႆႈႁႂ်ႈ Keyboard တူၺ်းၼိမ် (Stable UI)။
* **Fullscreen Mode:** ၵၢၼ်ပိၵ်ႉမၼ်း (Return false) ၸွႆႈႁႂ်ႈ User Experience (UX) လီလိူဝ်။
* **Padding:** ၸတ်းၵၢၼ်လွင်ႈ Gesture Bar ၼင်ႇႁိုဝ်တေၼဵၵ်ႉတုမ်ႇ လႆႈငၢႆႈၶႃႈ။

---