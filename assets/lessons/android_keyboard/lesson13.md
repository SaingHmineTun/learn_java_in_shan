## **Lesson 13: Fixing Navigation Bar Overlay (Android 15+)**

### **Overview (ႁူဝ်ၶေႃႈ)**
မိူဝ်ႈ Android 15 ဢွၵ်ႇမႃး၊ System တေႁဵတ်းႁႂ်ႈ Apps တင်းသဵင်ႈပဵၼ် **Edge-to-Edge** ႁင်းၵူၺ်းမၼ်း။ 
တွၼ်ႈတႃႇ Keyboard Service (IME) ၼႆႉ ႁဝ်းလူဝ်ႇၸတ်းၵၢၼ် **Window Insets** ၼင်ႇႁိုဝ် Keyboard ႁဝ်းတေ "ၸွၵ်ႉ" ၶိုၼ်ႈမႃးယူႇၼိူဝ် Gesture Bar ၶႃႈ။

---

### **1. The XML "Quick Fix" (Padding)**

လၢႆးငၢႆႈသေပိူၼ်ႈ (ၵွၺ်းၵႃႈ ဢမ်ႇ Dynamic) ပဵၼ်ၵၢၼ်သႂ်ႇ Padding ဝႆႉၼႂ်း `keyboard_root.xml` ၶႃႈ။

**res/layout/keyboard_root.xml**
```xml
<LinearLayout 
    ...
    android:orientation="vertical"
    android:paddingBottom="25dp"> ...
</LinearLayout>
```
*Note: လၢႆးၼႆႉၸၢင်ႈမီးပၼ်ႁႃ တီႈၾူၼ်းပၢၼ်ၵဝ်ႇ ဢၼ်မီး Navigation Buttons (Back, Home, Recent) ယႂ်ႇယႂ်ႇၶႃႈ။*

---

### **2. The Professional Fix (Window Insets)**

လၢႆးဢၼ်လီသေပိူၼ်ႈ ပဵၼ်ၵၢၼ်ၸႂ်ႉ Kotlin Code တႃႇထတ်းတူၺ်းဝႃႈ Navigation Bar မီးတင်းသုင်ၵႃႈႁိုဝ် သေ "တဵၵ်း" Padding ၶိုၼ်ႈၵမ်းသိုဝ်ႈၶႃႈ။

မႄးၼႂ်း **`onCreateInputView`** ၶွင် `ShanKeyboardService.kt`:

```kotlin
override fun onCreateInputView(): View {
    currentInputView = layoutInflater.inflate(R.layout.keyboard_root, null)

    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
        currentInputView.setOnApplyWindowInsetsListener { view, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())

            // သႂ်ႇ Padding ၽၢႆႇတႂ်ႈ ၸွမ်းၼင်ႇတၢင်းသုင်ၶွင် Navigation Bar တႄႉတႄႉ
            view.setPadding(0, 0, 0, systemBars.bottom)

            insets
        }
    }

    keysContainer = currentInputView.findViewById(R.id.keys_container)
    loadLayout(R.layout.layout_en)
    
    return root
}
```

---

### **3. Update Window Logic**

ၼႂ်း `InputMethodService`၊ ႁဝ်းလူဝ်ႇလၢတ်ႈၼႄ System ဝႃႈ Keyboard ႁဝ်းၼႆႉ ဢမ်ႇလူဝ်ႇလႅၼ်ႈၶဝ်ႈၵႂႃႇတႂ်ႈ System Bars ၶႃႈ။

ထႅမ်သႂ်ႇၼႂ်း **`ShanKeyboardService.kt`**:

```kotlin
override fun onWindowShown() {
    super.onWindowShown()
    // ႁဵတ်းႁႂ်ႈ Window ၶွင် Keyboard ဢမ်ႇလႅၼ်ႈၶဝ်ႈၵႂႃႇတႂ်ႈ Navigation Bar
    window?.window?.let { window ->
        WindowCompat.setDecorFitsSystemWindows(window, true)
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **The Problem:** Android 15 တဵၵ်းၸႂ်ႉ Edge-to-Edge ႁဵတ်းႁႂ်ႈ Keyboard လႅၼ်ႈၶဝ်ႈၵႂႃႇတႂ်ႈ Navigation Bar။
* **The Fix:** ၸႂ်ႉ `OnApplyWindowInsetsListener` တႃႇႁႃတၢင်းသုင် Navigation Bar သေ သႂ်ႇ Padding ႁင်းၵူၺ်း (Dynamic Padding)။
* **Benefit:** Keyboard ႁဝ်းတေတူၺ်းႁၼ်ႁၢင်ႈလီ ၵူႈ Android version၊ ဢမ်ႇဝႃႈတေၸႂ်ႉ Gesture (သဵၼ်ႈတၢင်းတႂ်ႈ) ဢမ်ႇၼၼ် Navigation Buttons ၶႃႈ။

---

ယၢမ်းလဵဝ် Keyboard ၸဝ်ႈၵဝ်ႇတေတူတ်ႉၶိုၼ်ႈမႃးယူႇၼိူဝ် Gesture Bar ၼၼ်ႉယဝ်ႉၶႃႈ!

**Are you ready for Module 3: "Input Logic & Interaction"???** ႁဝ်းတေမႃးတႄႇတႅမ်ႈ Code ႁႂ်ႈတုမ်ႇၼဵၵ်ႉၸိူဝ်းၼၼ်ႉ ႁဵတ်းၵၢၼ်လႆႈတႄႉတႄႉၶႃႈယဝ်ႉ!