## **Lesson 5: Initializing the Input View: onCreateInputView and Inflater Logic**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ပေႃးဝႃႈ `CandidateView` ပဵၼ်တွၼ်ႈၼိူဝ်ယဝ်ႉ၊ **Input View** ၵေႃႈပဵၼ် "ႁူဝ်ၸႂ်" ၶွင် Keyboard ႁဝ်းၶႃႈယဝ်ႉ။ 
မၼ်းပဵၼ်တွၼ်ႈဢၼ်မီးတုမ်ႇ (Keys) တင်းသဵင်ႈယဝ်ႉၶႃႈ။ 
ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးၸႂ်ႉ **`onCreateInputView()`** တႃႇပိုတ်ႇ (Inflate) ႁၢင်ႈၾၢင်ၶီးပွတ်ႇ လႄႈ တႄႇတင်ႈ **`KeyboardView`** ႁႂ်ႈမၼ်းႁူႉၸၵ်းၾၢႆႇတုမ်ႇၼဵၵ်ႉ XML ႁဝ်းၶႃႈ။

---

### **1. ၵၢၼ်သၢင်ႈ Main Input Layout (XML)**

ႁဝ်းတေလႆႈမီးၾၢႆႇ XML တႃႇႁႄႉ (Container) တုမ်ႇၼိပ်ႉႁဝ်းဝႆႉ။ ၼႂ်းပိူင် Traditional ၼႆႉ ႁဝ်းၸႂ်ႉ `KeyboardView` ဢၼ်ပဵၼ် Standard View ၶွင် Android ၶႃႈ။

#### **Step 1: res/layout/keyboard_main.xml**

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="vertical">

    <android.inputmethodservice.KeyboardView
        android:id="@+id/keyboard_view"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_gravity="bottom"
        android:keyBackground="@drawable/key_background"
        android:keyTextColor="#FFFFFF"
        android:paddingTop="2dp"
        android:paddingBottom="2dp"
        android:focusable="true"
        android:clickable="true" />

</LinearLayout>
```

---

### **2. ၵၢၼ် Inflate လႄႈ Setup ၼႂ်း Service (Kotlin)**

ၼႂ်း `ShanKeyboardService.kt` ႁဝ်းတေလႆႈႁွင်ႉၸႂ်ႉ `layoutInflater` သေ ၵွင်ႉမၼ်းသႂ်ႇၸွမ်း `OnKeyboardActionListener` တႃႇႁူႉဝႃႈ ၵူၼ်းၸႂ်ႉၼိပ်ႉတုမ်ႇလႂ်ၶႃႈ။

#### **Step 2: Update `ShanKeyboardService.kt`**

```kotlin
class ShanKeyboardService : InputMethodService(), KeyboardView.OnKeyboardActionListener {

    private lateinit var keyboardView: KeyboardView
    private lateinit var englishKeyboard: Keyboard

    override fun onCreateInputView(): View {
        // 1. Inflate Layout ပိုၼ်ႉထၢၼ်
        val view = layoutInflater.inflate(R.layout.keyboard_main, null)
        keyboardView = view.findViewById(R.id.keyboard_view)

        // 2. သၢင်ႈ Keyboard Object (ဢဝ်မႃးတီႈ XML ဢၼ်ႁဝ်းတေတႅမ်ႈၼႂ်း Module 2)
        englishKeyboard = Keyboard(this, R.xml.keys_english)

        // 3. တမ်းၵႃႈပၼ် KeyboardView
        keyboardView.keyboard = englishKeyboard
        keyboardView.setOnKeyboardActionListener(this)

        return view
    }

    // --- တွၼ်ႈၸတ်းၵၢၼ် မိူဝ်ႈၼိပ်ႉတုမ်ႇ ---
    override fun onKey(primaryCode: Int, keyCodes: IntArray?) {
        val ic = currentInputConnection ?: return
        
        when (primaryCode) {
            Keyboard.KEYCODE_DELETE -> {
                ic.deleteSurroundingText(1, 0)
            }
            Keyboard.KEYCODE_SHIFT -> {
                // Logic တွၼ်ႈတႃႇ Shift တေသွၼ်ၼႂ်း Module 3
            }
            else -> {
                // သူင်ႇတူဝ်လိၵ်ႈၶဝ်ႈၵႂႃႇၼႂ်း App တၢင်ႇဢၼ်
                ic.commitText(primaryCode.toChar().toString(), 1)
            }
        }
    }

    // Override methods တၢင်ႇဢၼ် (ထုၵ်ႇလႆႈမီးဝႆႉ ၸွမ်းၼင်ႇ Interface)
    override fun onPress(p0: Int) {}
    override fun onRelease(p0: Int) {}
    override fun onText(p0: CharSequence?) {}
    override fun swipeLeft() {}
    override fun swipeRight() {}
    override fun swipeDown() {}
    override fun swipeUp() {}
}
```

---

### **3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇ Inflater Logic?**



* **Dynamic Loading:** မၼ်းၸွႆႈႁႂ်ႈႁဝ်းလႅၵ်ႈ Layout (မိူၼ်ၼင်ႇ လႅၵ်ႈလိၵ်ႈတႆး ပဵၼ် ဢင်းၵိတ်ႉ) လႆႈၽၢႆၶႃႈ။
* **Decoupling:** ႁဝ်းၸၢင်ႈမႄးႁၢင်ႈ (UI) ၼႂ်း XML ႁင်းၵူၺ်း သေ ဢမ်ႇလူဝ်ႇမႄး Code Kotlin ၼမ်ၶႃႈ။
* **InputConnection:** တွၼ်ႈၼႆႉပဵၼ်တီႈဢၼ်ႁဝ်း "ၵွင်ႉ" တုမ်ႇၼိပ်ႉႁဝ်း ၸူး `currentInputConnection` တႃႇသူင်ႇလိၵ်ႈၶႃႈယဝ်ႉ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **`onCreateInputView`**: ပဵၼ် Method တႃႇတႄႇပိုတ်ႇႁၢင်ႈၶီးပွတ်ႇ။
* **`KeyboardView`**: ပဵၼ် Widget ဢၼ်တေၼႄ Keys ၸွမ်းၼင်ႇ XML Resource ဢၼ်ႁဝ်းပၼ်မၼ်း။
* **`OnKeyboardActionListener`**: ပဵၼ် Interface ဢၼ်တေပႂ်ႉၵူတ်ႇထတ်း (Listen) ၵၢၼ်ၼိပ်ႉတုမ်ႇ။

---

**Are you ready to move to Lesson 6: "Keyboard Window & Insets: Managing Screen Heights & Overlay"???** (ႁဝ်းတေမႃးၸတ်းၵၢၼ် လွင်ႈတင်းသုင်ၶီးပွတ်ႇ ႁႂ်ႈမၼ်းပိုတ်ႇဢွၵ်ႇမႃးလႆႈၶႅမ်ႉလႅပ်ႈ ၵူႈၼႃႈၸေႃးၶႃႈ!)