## **Lesson 37: Keyboard Preview Tool: Real-time Testing inside Settings**

### **1. Designing the Preview UI (fragment_settings.xml)**

ႁဝ်းတေထႅမ်သႂ်ႇ **Preview Card** ဝႆႉၽၢႆႇၼိူဝ်သုတ်း ၼႂ်း `NestedScrollView` ၶွင် `fragment_settings.xml` ၶႃႈ။

```xml
<com.google.android.material.card.MaterialCardView
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:layout_marginBottom="16dp"
    app:cardCornerRadius="16dp"
    app:cardElevation="4dp"
    app:strokeWidth="1dp"
    app:strokeColor="?attr/colorPrimaryContainer">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="vertical"
        android:padding="16dp">

        <TextView
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="Test Your Keyboard"
            android:textAppearance="@style/TextAppearance.Material3.TitleSmall"
            android:textColor="?attr/colorPrimary" />

        <com.google.android.material.textfield.TextInputLayout
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_marginTop="12dp"
            android:hint="Type something in Shan..."
            app:endIconMode="clear_text">

            <com.google.android.material.textfield.TextInputEditText
                android:id="@+id/et_preview"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:inputType="textMultiLine"
                android:minLines="2"
                android:gravity="top"
                android:textAppearance="@style/TextAppearance.Material3.BodyLarge" />
        </com.google.android.material.textfield.TextInputLayout>

        <TextView
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginTop="8dp"
            android:text="If you see boxes [ ], please download Shan font below."
            android:textAppearance="@style/TextAppearance.Material3.LabelSmall"
            android:textColor="?attr/colorError" />

    </LinearLayout>
</com.google.android.material.card.MaterialCardView>
```

---

### **2. Applying the Shan Font to Preview Area**

ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတေႁၼ်လိၵ်ႈတႆးၼႂ်းၼႃႈ Settings ၵမ်းလဵဝ် (ပၢႆးဝူၼ်ႉလဵဝ်ၵၼ်တင်း Keyboard)၊ ႁဝ်းလူဝ်ႇတမ်း Typeface ပၼ် `et_preview` ၶႃႈ။

```kotlin
// ၼႂ်း SettingsFragment.kt
override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
    super.onViewCreated(view, savedInstanceState)
    
    // ... (logic တၢင်ႇဢၼ်) ...
    
    setupPreviewArea()
}

private fun setupPreviewArea() {
    // 1. ဢဝ် Font ဢၼ် Active ယူႇယၢမ်းလဵဝ်မႃးတမ်းပၼ်
    val typeface = FontManager.getActiveTypeface(requireContext())
    if (typeface != null) {
        binding.etPreview.typeface = typeface
    }

    // 2. ႁဵတ်းႁႂ်ႈ Keyboard ပိုတ်ႇမႃးၵမ်းလဵဝ် မိူဝ်ႉၼိပ်ႉၺႃး EditText
    binding.etPreview.requestFocus()
}
```

---

### **3. Auto-Refresh on Return (Crucial Step)**

မိူဝ်ႈၵူၼ်းၸႂ်ႉၵႂႃႇလူတ်ႇ Font မႂ်ႇၼႂ်း `FontFragment` သေပွၵ်ႈမႃးၼႃႈ Settings ၶိုၼ်း၊ ႁဝ်းလူဝ်ႇႁႂ်ႈ `et_preview` လႅၵ်ႈ Font ၸွမ်းၵမ်းလဵဝ်ၶႃႈ။

```kotlin
override fun onResume() {
    super.onResume()
    // ၵူႈပွၵ်ႈဢၼ်ပွၵ်ႈမႃးၼႃႈၼႆႉ ႁႂ်ႈ Update Font ထႅင်ႈပွၵ်ႈၼိုင်ႈ
    setupPreviewArea()
}
```

---

### **4. Final Touch: Requesting Focus**

တွၼ်ႈတႃႇႁႂ်ႈၵူၼ်းၸႂ်ႉၼိပ်ႉ Test လႆႈဝႆး၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈသႂ်ႇ Logic ႁႂ်ႈ Keyboard ပိုတ်ႇမႃး (Pop up) ႁင်းၵူၺ်းမိူဝ်ႈၶဝ်ၶဝ်ႈမႃးၼႃႈ Settings ၶႃႈ။

```kotlin
private fun showSoftKeyboard(view: View) {
    if (view.requestFocus()) {
        val imm = requireContext().getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
        imm.showSoftInput(view, InputMethodManager.SHOW_IMPLICIT)
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Real-time Feedback:** ၵူၼ်းၸႂ်ႉၸၢင်ႈ Test တူၺ်းလႆႈဝႃႈ Font/Keyboard ၶဝ်ႁဵတ်းၵၢၼ်ယူႇတႄႉ။
* **Context Consistency:** ၵၢၼ်ၸႂ်ႉ `Typeface` လဵဝ်ၵၼ်တင်း Keyboard ႁဵတ်းႁႂ်ႈၼႃႈ Settings တူၺ်းႁၼ် Professional လႄႈ မိူၼ်ၵၼ်တင်း System တင်းမူတ်းၶႃႈ။
* **Error Prevention:** လိၵ်ႈသပ်းလႅင်း (Error label) ၸွႆႈပိုတ်ႇပၼ်တၢင်းႁၼ်ထိုင် ႁႂ်ႈၶဝ်ၵႂႃႇလူတ်ႇ Font သင်ၶဝ်ႁၼ်လိၵ်ႈပဵၼ်လွၵ်းၶႃႈ။

---