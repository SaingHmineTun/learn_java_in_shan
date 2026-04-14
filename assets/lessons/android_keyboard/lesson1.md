## **Lesson 1: Understanding InputMethodService in XML: Handling Layouts**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၼႂ်းပိူင် XML Traditional ၼႆႉ **InputMethodService** ပဵၼ် "ၶိူင်ႈဢိၼ်ႇၵျိၼ်ႇ" (Engine) ပိုၼ်ႉထၢၼ် ဢၼ် Android System ၸႂ်ႉတႃႇပိုတ်ႇၶီးပွတ်ႇၶႃႈ။ 
လွင်ႈႁဵတ်းၵၢၼ်မၼ်း တေၸႅၵ်ႇဢွၵ်ႇပဵၼ် 2 တွၼ်ႈယႂ်ႇသေ ႁဝ်းတေလႆႈၸႂ်ႉ `LayoutInflater` တႃႇဢဝ်ႁၢင်ႈ (UI) ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း XML ၼၼ်ႉ ၽႅၼ်ႇဢွၵ်ႇမႃးၼႃႈၸေႃးၶႃႈ။

---

### **1. တွၼ်ႈ Input View လႄႈ Candidate View**

ၶီးပွတ်ႇၼိုင်ႈဢၼ် တေမီးႁၢင်ႈၾၢင် 2 တွၼ်ႈ ဢၼ်ႁဝ်းတေလႆႈၵုမ်းထိင်းၼႂ်း XML ၶႃႈ:

* **Input View:** ပဵၼ်တွၼ်ႈတၢင်းတႂ်ႈ ဢၼ်မီးတုမ်ႇၼဵၵ်ႉ (Keys) ၵူႈလွင်ႈလွင်ႈ။ ႁဝ်းႁွင်ႉဝႃႈ `InputView`။
* **Candidate View:** ပဵၼ်တွၼ်ႈတၢင်းၼိူဝ် ဢၼ်တေၼႄလိၵ်ႈလႅတ်း (Suggestions)။ ႁဝ်းႁွင်ႉဝႃႈ `CandidateView`။



---

### **2. The Code Structure (ႁၢင်ႈၾၢင် Code)**

တွၼ်ႈတႃႇတႄႇတႅမ်ႈ **TMK Keyboard Pro** ၼၼ်ႉ ႁဝ်းတေလႆႈတႅမ်ႈ Code ပိုၼ်ႉထၢၼ်ၼႂ်း `ShanKeyboardService.kt` သေ ႁွင်ႉၸႂ်ႉ XML Layout ၼင်ႇၼႆၶႃႈ:

#### **Step 1: Create `res/layout/keyboard_main.xml`**
ဢၼ်ၼႆႉ ပဵၼ် "ထႅင်ႇ" (Container) တႃႇဝၢင်း Keyboard ႁဝ်းၶႃႈ။

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="vertical"
    android:background="#1A1A1A">

    <android.inputmethodservice.KeyboardView
        android:id="@+id/keyboard_view"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:focusable="true"
        android:clickable="true" />

</LinearLayout>
```

#### **Step 2: Create `res/layout/candidate_view.xml`**
ဢၼ်ၼႆႉ ပဵၼ်တွၼ်ႈတႃႇၼႄ လိၵ်ႈလႅတ်း (Suggestions) ၶႃႈ။

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="45dp"
    android:background="#2C2C2C"
    android:gravity="center"
    android:orientation="horizontal">

    <TextView
        android:id="@+id/suggestion_text"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="TMK Suggestions"
        android:textColor="#FFFFFF"
        android:textSize="16sp" />

</LinearLayout>
```

#### **Step 3: Update `ShanKeyboardService.kt`**
ယၢမ်းလဵဝ် ႁဝ်းတေဢဝ် XML ၸိူဝ်းၼၼ်ႉ မႃး `inflate` ၸႂ်ႉၼႂ်း Service ႁဝ်းၶႃႈ။

```kotlin
package it.saimao.tmkkeyboardpro

import android.inputmethodservice.InputMethodService
import android.view.View

class ShanKeyboardService : InputMethodService() {

    // 1. တွၼ်ႈပိုတ်ႇႁၢင်ႈၶီးပွတ်ႇ (Input View)
    override fun onCreateInputView(): View {
        // ႁဝ်းၸႂ်ႉ layoutInflater တႃႇပိုတ်ႇ XML ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ
        val view = layoutInflater.inflate(R.layout.keyboard_main, null)
        return view
    }

    // 2. တွၼ်ႈပိုတ်ႇ Suggestion Bar (Candidate View)
    override fun onCreateCandidatesView(): View {
        val view = layoutInflater.inflate(R.layout.candidate_view, null)
        return view
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **InputMethodService:** ပဵၼ် Class ပိုၼ်ႉထၢၼ် တႃႇႁဵတ်းၶီးပွတ်ႇ။
* **LayoutInflater:** ပဵၼ်ၶိူင်ႈၸႂ်ႉ တႃႇဢဝ် XML လႅၵ်ႈပဵၼ် View ဢွၵ်ႇၼႃႈၸေႃး။
* **Two Parts:** Keyboard မီး 2 တွၼ်ႈ (Input View လႄႈ Candidate View) ဢၼ်ၸတ်းၵၢၼ်ဝႆႉၼႂ်း XML တၢင်ႇၾၢႆႇၵၼ်။

---