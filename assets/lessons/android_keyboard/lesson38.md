## **Module 6 | Lesson 38: Professional App Localization (English, Shan, and Myanmar)**

### **1. Preparing Translation Resources**

ႁဝ်းလူဝ်ႇၸႅၵ်ႇ `strings.xml` ဝႆႉၼႂ်း Folder ပႅၵ်ႇၵၼ် ၼင်ႇႁိုဝ် Android တေလူတ်ႇလိၵ်ႈလႆႈၸႅတ်ႈတေႃးၸွမ်း
Locale ဢၼ်ႁဝ်းလိူၵ်ႈၶႃႈ။

#### **A. English (Default) - `res/values/strings.xml`**

```xml

<resources>
    <string name="app_name">TMK Keyboard Pro</string>
    <string name="settings_title">Keyboard Settings</string>
    <string name="pref_appearance">Appearance</string>
    <string name="pref_theme">Keyboard Theme</string>
    <string name="pref_app_language">App Language</string>
    <string name="pref_vibration">Vibration</string>
    <string name="pref_font_mgmt">Shan Font Management</string>
    <string name="test_keyboard">Test Your Keyboard</string>
    <string name="select_language">Select App Language</string>
</resources>
```

#### **B. Shan (တႆး) - `res/values-shn/strings.xml`**

```xml

<resources>
    <string name="app_name">ၶီးပော့တ် တႆးမေႃၶမ်း</string>
    <string name="settings_title">ၵၢၼ်တင်ႈၵႃႈ ၶီးပော့တ်</string>
    <string name="pref_appearance">ႁၢင်ႈၽၢင်</string>
    <string name="pref_theme">သီၶီးပော့တ်</string>
    <string name="pref_app_language">ၽႃႇသႃႇၼႂ်း App</string>
    <string name="pref_vibration">လွင်ႈသၼ်ႇ</string>
    <string name="pref_font_mgmt">ၸတ်းၵၢၼ် ၾွၼ်ႉတႆး</string>
    <string name="test_keyboard">ၸၢမ်းတႅမ်ႈလိၵ်ႈတူၺ်း</string>
    <string name="select_language">လိူၵ်ႈၽႃႇသႃႇၼႂ်း App</string>
</resources>
```

#### **C. Myanmar (ဗမာ) - `res/values-my/strings.xml`**

```xml

<resources>
    <string name="app_name">TMK ကီးဘုတ်</string>
    <string name="settings_title">ကီးဘုတ် ဆက်တင်များ</string>
    <string name="pref_appearance">အသွင်အပြင်</string>
    <string name="pref_theme">ကီးဘုတ် သီမ် (Theme)</string>
    <string name="pref_app_language">အက်ပ် ဘာသာစကား</string>
    <string name="pref_vibration">တုန်ခါမှု</string>
    <string name="pref_font_mgmt">ရှမ်းဖောင့် စီမံရန်</string>
    <string name="test_keyboard">စာရေးစမ်းသပ်ရန်</string>
    <string name="select_language">ဘာသာစကား ရွေးချယ်ရန်</string>
</resources>
```

---

### **2. Android System Configuration (res/xml/locales_config.xml)**

တွၼ်ႈတႃႇ Android 13+ ႁပ်ႉႁူႉဝႃႈ App ႁဝ်းမီးၽႃႇသႃႇသင်ဝႆႉ ႁဝ်းလူဝ်ႇသၢင်ႈ File ၼႆႉၶႃႈ:

```xml
<?xml version="1.0" encoding="utf-8"?>
<locale-config xmlns:android="http://schemas.android.com/apk/res/android">
    <locale android:name="en" />
    <locale android:name="shn" />
    <locale android:name="my" />
</locale-config>
```

---

### **3. Manifest Update (`AndroidManifest.xml`)**

ထႅမ်သႂ်ႇ `localeConfig` လႄႈ `Metadata Service` တွၼ်ႈတႃႇႁႂ်ႈမၼ်း Support တင်းၾူၼ်းၵဝ်ႇ/မႂ်ႇၶႃႈ:

```xml

<application android:localeConfig="@xml/locales_config">

    <service android:enabled="false" android:exported="false"
        android:name="androidx.appcompat.app.AppLocalesMetadataHolderService">
        <intent-filter>
            <action android:name="androidx.appcompat.app.AppLocalesProviderService" />
        </intent-filter>
        <meta-data android:name="autoStoreLocales" android:value="true" />
    </service>
</application>
```

---

### **4. Kotlin Logic for Language Switching (`SettingsFragment.kt`)**

ႁဝ်းတေၸႂ်ႉ `AppCompatDelegate` တွၼ်ႈတႃႇလႅၵ်ႈၽႃႇသႃႇ ၵမ်းလဵဝ်လူၺ်ႈဢမ်ႇလူဝ်ႇ Restart Activity
ႁင်းၵူၺ်းၶႃႈ။

```kotlin
// ... ၼႂ်း SettingsFragment Class ...

private fun showLanguageSelector() {
    val langs = arrayOf("English", "Shan", "Myanmar")
    val langTags = arrayOf("en", "shn", "my")

    // ဢၢၼ်ႇတူၺ်း Locale ယၢမ်းလဵဝ်
    val currentTag = AppCompatDelegate.getApplicationLocales()[0]?.language ?: "en"
    val checkedItem = langTags.indexOf(currentTag)

    MaterialAlertDialogBuilder(requireContext())
        .setTitle(getString(R.string.select_language))
        .setSingleChoiceItems(langs, checkedItem) { dialog, which ->
            val selectedTag = langTags[which]

            // 1. Save သႂ်ႇ SharedPreferences (Optional)
            prefs.edit { putString("app_language", selectedTag) }

            // 2. *** Force Change App Language ***
            val appLocales: LocaleListCompat = LocaleListCompat.forLanguageTags(selectedTag)
            AppCompatDelegate.setApplicationLocales(appLocales)

            dialog.dismiss()
        }
        .show()
}


// Call this method in onResume() to show the users which language is currently selected
private fun updateLanguageUI() {
    val currentTag = AppCompatDelegate.getApplicationLocales()[0]?.language ?: "en"
    binding.tvCurrentLang.text = when (currentTag) {
        "shn" -> "Shan (တႆး)"
        "my" -> "Myanmar (ဗမာ)"
        else -> "English"
    }
}
```

---

### **5. Applying to Layout (fragment_settings.xml)**

ယႃႇလိုမ်းလႅၵ်ႈ Hardcoded Text ႁႂ်ႈၸႂ်ႉ `@string` တူဝ်မႂ်ႇၶႃႈ:

```xml

<TextView android:layout_height="wrap_content" android:layout_width="wrap_content"
    android:text="@string/pref_app_language"
    android:textAppearance="@style/TextAppearance.Material3.BodyLarge" />
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **User Empowerment:** ၵူၼ်းၸႂ်ႉၸၢင်ႈလႅၵ်ႈၽႃႇသႃႇ App ႁဝ်းလႆႈ
  ဢမ်ႇဝႃႈၾူၼ်းၶဝ်တေပဵၼ်လိၵ်ႈသင်ယူႇၵေႃႈယဝ်ႉ။
* **Backwards Compatible:** ၸႂ်ႉလႆႈတင်း Android ၵဝ်ႇ လႄႈ Android 15 မႂ်ႇသုတ်း။
* **Professional:** ၼႆႉပဵၼ် Standard ဢၼ် Google ပၼ်တၢင်းႁၼ်ထိုင်သေပိူၼ်ႈၶႃႈ။