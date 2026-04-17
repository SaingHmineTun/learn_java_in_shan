## **Lesson 25: Unicode vs Zawgyi (Long-Press Enter)**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၼႂ်းမိူင်းႁဝ်းၼႆႉ ပၼ်ႁႃလူင်ဢၼ်ၼိုင်ႈပဵၼ်လွင်ႈ **Encoding** ၶႃႈ။ မိူဝ်ႈႁဝ်းတႅမ်ႈ Unicode ၵႂႃႇၸူးၵူၼ်းၸႂ်ႉ Zawgyi ၼႆ ၶဝ်တေႁၼ်လိၵ်ႈႁဝ်းပဵၼ် လိၵ်ႈယုင်ႈ ၵူၺ်းလႄႈ တေဢမ်ႇပွင်ႇၸႂ်ၶႃႈ။ 
ၼင်ႇႁိုဝ် **TMK Keyboard Pro** တေၸွႆႈၵႄႈပၼ်ႁႃၼႆႉလႆႈၼႆ ႁဝ်းလူဝ်ႇသႂ်ႇ **Converter** ဢၼ်ၸၢင်ႈလႅၵ်ႈလိၵ်ႈလႆႈ **Real-time** ၶႃႈယဝ်ႉ။

တွၼ်ႈတႃႇႁႂ်ႈ UI ႁဝ်းသႅၼ်ႈသႂ်လီ (Clean) ၼႆ ႁဝ်းတေဢမ်ႇသႂ်ႇတုမ်ႇၼဵၵ်ႉဝႆႉၼိူဝ်ၼႃႈၸေႃးၶ႟ူ။ ႁဝ်းတေၸႂ်ႉလၢႆး **Long-press Enter** တႃႇလႅၵ်ႈလိၵ်ႈမၼ်းၶႃႈယဝ်ႉ။

---

### **1. The Challenge: Glyph vs. Logical Encoding**

* **Unicode:** ၵဵပ်း Data ၸွမ်းၼင်ႇသဵင် (Logical Order)။ (ၵ + ေ = ၵေ)
* **Zawgyi:** ၵဵပ်း Data ၸွမ်းၼင်ႇႁၢင်ႈ (Visual Order)။ (ေ + ၵ = ေၵ)



---

### **2. Installing the Shan Language Tools**
တွၼ်ႈတႃႇလိၵ်ႈတႆးႁဝ်းတေႉ မီးဝႆ့ Java Library ဢၼ်ၶႃႈၶိူင်ဝႆႉလႄႈ သႂ်ႇၶဝ်ႈၼႂ်း project လႆႈၼင်ႇတီႈတႂ်ႈၶႃႈ။ 

**Step 1: Include the Jitpack Repo int settings.gradle**
ၵွပ်ႈၶႃး လႆႈဢဝ် library ၶႃႈတၢင်ႇဝႆႉၼိူဝ် jitpack.io ၼႆလႄႈ ဢွၼ်တၢင်းပႆႇၸႂ်ႉၼႆႉ ၶဝ်ႈၵႂႃႇၼႂ်း `settings.gradle` သေ သႂ်ႇပၼ်ၼင်ႇတီႈတႂ်ႈၼႆႉၶႃႈ

```kotlin
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        mavenCentral()
        maven { url = uri("https://www.jitpack.io") }
    }
}
```

**Step 2: Add the Dependency**
သင်ယဝ်ႉၼႆၵေႃး ၶဝ်ႈပၼ်ၼႂ်း `gradle (Module)` သေ သႂ်ႇပၼ်ၼင်ႇ တီႈတႂ်ႈၶႃႈ။ သင်ယဝ်ႉလီၼႆ ယႃႇလိုမ်းၼဵၵ်းပၼ် Sync Now ၶႃႈ။ 

```kotlin
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        mavenCentral()
        maven { url = uri("https://www.jitpack.io") }
    }
}
```

### **3. Implementing the Converting Logic**

ႁဝ်းၵႂႃႇတီႈ `ShanLanguageEngine` သေ ၶူင်သၢင်ႈ method ၼင်ႇတီႈတႂ်ႈၶႃႈ။ 
Method ၼႆႉ ႁဝ်းတေမႃးထတ်းတူၺ်း လိၵ်ႈဢၼ်တႅမ်ႈဝႆႉဝႃး ပဵၼ်ၸေႃႇၵျီႇႁိုဝ် ယူႇၼီႇၶူတ်းႁိုဝ် သေၵေႃႈ
တေလႅၵ်ႈပၼ်လိၵ်ႈၵႂႃႇၶႃႈ

```kotlin
fun convertZawgyi() {

    ic.performContextMenuAction(android.R.id.selectAll)
    val charSequence = ic.getSelectedText(0)
    val convertedText: String?
    val selectedText: String?
    if (!TextUtils.isEmpty(charSequence)) {
        selectedText = charSequence.toString()
        // FOR SHAN CONVERTER
        if (ShanLanguageDetector.isShanZawgyi(selectedText)) {
            convertedText = ShanZawgyiConverter.zg2uni(selectedText)
        } else {
            convertedText = ShanZawgyiConverter.uni2zg(selectedText)
        }

        ic.commitText(convertedText, 1)
    }
}
```

---

### **4. Registering the Long-Press Listener**

ယၢမ်းလဵဝ် ၼႂ်း `ShanKeyboardService` ႁဝ်းၼၼ်ႉ ႁဝ်းလူဝ်ႇပႂ်ႉထွမ်ႇ မိူဝ်ႈၵူၼ်းၸႂ်ႉၼဵၵ်း `Enter` သေၵေႃႈ ႁွင်ႉပၼ် `convertZawgyi` ၵူၺ်းယဝ်ႉၶႃႈ:
ယႃႇလိမ်း ပၼ်ၸိုဝ်ႈ `Enter Key` တီႈၼႂ်း ၶီးပွတ်ႉၵူႈဢၼ် ႁႂ်ႈပဵၼ် `key_enter` id ၶႃႈ

```kotlin
child.setOnLongClickListener {
    val popupChars = getPopupCharsFor(child.text.toString())
    if (popupChars.isNotEmpty()) {
        showPopup(child, popupChars)
        true // တွၼ်ႈတႃႇလၢတ်ႈၼႄဝႃႈ ႁဝ်းၸတ်းၵၢၼ်ယဝ်ႉ
    } else if (child.id == R.id.key_enter) {
        if (currentLanguage == "SHN") {
            ShanLanguageEngine(ic = currentInputConnection).convertZawgyi()
            true
        } else {
            false
        }
    } else {
        false
    }
}
```

---

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Clean UI:** ၵၢၼ်ဢဝ် Converter ဝႆႉတီႈ Long-press Enter ၸွႆႈႁႂ်ႈ Keyboard တူၺ်းႁၼ် Simple ၵွၺ်းၵႃႈ Powerful တႄႉတႄႉ။
* **Dual-Logic:** Keyboard ႁဝ်းတေႁူႉႁင်းၵူၺ်းမၼ်းဝႃႈ တေလႆႈၸႂ်ႉ Unicode ႁႃႉ Zawgyi ၶႃႈ။

---
