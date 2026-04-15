## **Lesson 39: User Analytics and Feedback Systems**

### **1. Why do we need this?**

* **Improve Quality:** ႁဝ်းတေႁူႉလႆႈဝႃႈ ၾူၼ်းလူင်ႉ (Model) လႂ် ဢၼ်မီးပၼ်ႁႃတင်း Keyboard ႁဝ်း။
* **User Connection:** ႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉႁူႉဝႃႈ ႁဝ်းတိုၵ်ႉမႄး (Update) App ယူႇတႃႇသေႇ။
* **Crash Tracking:** မိူဝ်ႈ App "လပ်း" (Crash) ၵႂႃႇ၊ ႁဝ်းလူဝ်ႇလႆႈႁူႉဝႃႈ မၼ်းလပ်းယွၼ်ႉ Code ထႅဝ်လႂ်။

---

### **2. Implementing Feedback via Intent (The Simple Way)**

လၢႆးဢၼ်ငၢႆႈ လႄႈ မီးၼမ်ႉၵတ်ႉသုတ်း တွၼ်ႈတႃႇ Keyboard App ဢွၼ်ႇတႄႉ ပဵၼ်ၵၢၼ်သူင်ႇ Email ဢမ်ႇၼၼ် Telegram
ၶႃႈယဝ်ႉ။

#### **A. Add Feedback Button in `fragment_settings.xml`**

```xml

<com.google.android.material.card.MaterialCardView android:id="@+id/btn_feedback"
    android:layout_width="match_parent" android:layout_height="wrap_content"
    android:layout_marginTop="16dp" app:cardCornerRadius="16dp" app:cardElevation="2dp">

    <LinearLayout android:layout_width="match_parent" android:layout_height="wrap_content"
        android:gravity="center_vertical" android:padding="16dp">

        <ImageView android:layout_width="24dp" android:layout_height="24dp"
            android:src="@drawable/ic_feedback" app:tint="?attr/colorPrimary" />

        <TextView android:layout_width="0dp" android:layout_height="wrap_content"
            android:layout_marginStart="16dp" android:layout_weight="1"
            android:text="Send Feedback / Report Bug"
            android:textAppearance="@style/TextAppearance.Material3.BodyLarge" />

    </LinearLayout>
</com.google.android.material.card.MaterialCardView>
```

---

### **3. Kotlin Logic: Automatic System Info Collection**

မိူဝ်ႈၵူၼ်းၸႂ်ႉသူင်ႇ Feedback၊ ႁဝ်းလူဝ်ႇႁူႉပႃး **Android Version** လႄႈ **Phone Model** ၶဝ်
ၼင်ႇႁိုဝ်ႁဝ်းတေၵႄႈ Bug လႆႈငၢႆႈၶႃႈ။

```kotlin
// ၼႂ်း SettingsFragment.kt
private fun sendFeedback() {
    val deviceName = android.os.Build.MODEL
    val androidVersion = android.os.Build.VERSION.RELEASE
    val appVersion = getString(R.string.version)

    val info = "\n\n--- Device Info ---\n" +
            "Model: $deviceName\n" +
            "Android: $androidVersion\n" +
            "App: $appVersion"

    val intent = Intent(Intent.ACTION_SENDTO).apply {
        data = Uri.parse("mailto:saimao@tmkgroup.com") // ဢီးမေးလ်ၸဝ်ႈၵဝ်ႇ
        putExtra(Intent.EXTRA_SUBJECT, "TMK Keyboard Feedback")
        putExtra(Intent.EXTRA_TEXT, "Type your feedback here...$info")
    }

    try {
        startActivity(intent)
    } catch (e: Exception) {
        Toast.makeText(context, "No Email app found!", Toast.LENGTH_SHORT).show()
    }
}
```

---

### **4. Introduction to Firebase Crashlytics (Pro Tool)**

သင်ၸဝ်ႈၵဝ်ႇတေတၢင်ႇ Play Store၊ ၵဝ်ၶႃႈပၼ်တၢင်းႁၼ်ထိုင် ႁႂ်ႈၸႂ်ႉ **Firebase Crashlytics** ၶႃႈ။
မၼ်းတေသူင်ႇ Report ပၼ်ၸဝ်ႈၵဝ်ႇႁင်းၵူၺ်း မိူဝ်ႈ App ၵူၼ်းၸႂ်ႉ Crash ၵႂႃႇ။

* **Step 1:** ၵွင်ႉ App ၸဝ်ႈၵဝ်ႇၸူး Firebase Console။
* **Step 2:** ထႅမ်သႂ်ႇ SDK ၼႂ်း `build.gradle`:
  ```gradle
  implementation("com.google.firebase:firebase-crashlytics-ktx")
  implementation("com.google.firebase:firebase-analytics-ktx")
  ```
* **Benefit:** ၸဝ်ႈၵဝ်ႇတေႁၼ် "Stack Trace" (Code ထႅဝ်ဢၼ်ၽိတ်း) ၼႂ်း Website Firebase
  ၵမ်းလဵဝ်ၶႃႈယဝ်ႉ။

---

### **5. Privacy & Safety (လွင်ႈလွတ်ႈၽေး)**

ယွၼ်ႉႁဝ်းသၢင်ႈ Keyboard၊ လွင်ႈ **Privacy** ပဵၼ်ဢၼ်လွင်ႈယႂ်ႇသုတ်း:

1. **No Keylogging:** ယႃႇသူင်ႇလိၵ်ႈဢၼ်ၵူၼ်းၸႂ်ႉတႅမ်ႈ (Typing Data) ၶဝ်ႈ Server ၸဝ်ႈၵဝ်ႇ။
2. **Transparency:** ပိုတ်ႇလၢတ်ႈၼႄၵူၼ်းၸႂ်ႉဝႃႈ ႁဝ်းသူင်ႇၵွၺ်း "Crash Reports" တွၼ်ႈတႃႇမႄး App ၶႃႈ။
3. **Google Policy:** မၼ်ႈၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇမီးၼႃႈ **Privacy Policy** ဢၼ်သပ်းလႅင်းလီလီၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Feedback Loop:** ၸွႆႈႁႂ်ႈ App ၸဝ်ႈၵဝ်ႇ "ယႂ်ႇမႃး" ၸွမ်းၼင်ႇသဵင်ၵူၼ်းၸႂ်ႉ။
* **Device Info:** ၵၢၼ်ၵဵပ်း Model ၾူၼ်း ၸွႆႈႁႂ်ႈၵႄႈ Bug လႆႈဝႆးလိူဝ်ၵဝ်ႇ 10 ပဝ်ႈ။
* **Trust:** ၵၢၼ်မီး Feedback System ႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉ ယုမ်ႇယမ်ၼိူဝ် **TMK Group** ၶႃႈ။

---