## **Lesson 1: Understanding InputMethodService in XML: Handling Layouts**

### **Overview (ႁူဝ်ၶေႃႈ)**
ၼႂ်းပိူင် Modern XML Layout ၼႆႉ **InputMethodService** တေႁွင်ႉၸႂ်ႉ XML ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉသေ ပိုတ်ႇဢွၵ်ႇမႃးပဵၼ် 2 တွၼ်ႈ။ ႁဝ်းလူဝ်ႇသၢင်ႈၾၢႆႇ XML ၸႅၵ်ႇၵၼ် ၼင်ႇႁိုဝ်တေၸတ်းၵၢၼ်လႆႈငၢႆႈၶႃႈ။

---

### **1. The XML Foundation (ႁၢင်ႈၾၢင် XML)**

ႁဝ်းတေလႆႈသၢင်ႈၾၢႆႇ XML 2 ၾၢႆႇၼင်ႇၼႆၶႃႈ:

#### **A. res/layout/keyboard_root.xml**
ဢၼ်ၼႆႉ ပဵၼ် "ထႅင်ႇ" တႃႇဝၢင်းတုမ်ႇၼဵၵ်ႉ (Keys) ၶႃႈ။
```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/keyboard_root"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="vertical"
    android:background="#1A1A1A">

    <FrameLayout
        android:id="@+id/keys_container"
        android:layout_width="match_parent"
        android:layout_height="wrap_content" />
</LinearLayout>
```

#### **B. res/layout/candidate_view.xml**
ဢၼ်ၼႆႉ ပဵၼ် "ႁွင်ႈ" တႃႇၼႄလိၵ်ႈလႅတ်း (Suggestions) ၶႃႈ။
```xml
<?xml version="1.0" encoding="utf-8"?>
<HorizontalScrollView xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="45dp"
    android:background="#2C2C2C"
    android:scrollbars="none">

    <LinearLayout
        android:id="@+id/candidate_container"
        android:layout_width="wrap_content"
        android:layout_height="match_parent"
        android:gravity="center_vertical"
        android:orientation="horizontal"
        android:paddingStart="10dp"
        android:paddingEnd="10dp" />
</HorizontalScrollView>
```

---

### **2. Implementation in Kotlin (The Service)**

ၼႂ်း `ShanKeyboardService.kt` ႁဝ်းတေၸႂ်ႉ `layoutInflater` တႃႇပိုတ်ႇ (Inflate) ၾၢႆႇ XML တင်း 2 ဢၼ်ၼၼ်ႉၶႃႈ။

```kotlin
package it.saimao.tmkkeyboardpro

import android.inputmethodservice.InputMethodService
import android.view.View
import android.widget.FrameLayout
import android.widget.LinearLayout

class ShanKeyboardService : InputMethodService() {

    private lateinit var keysContainer: FrameLayout
    private lateinit var candidateContainer: LinearLayout

    // 1. တွၼ်ႈပိုတ်ႇႁၢင်ႈၶီးပွတ်ႇ (Input View)
    override fun onCreateInputView(): View {
        val root = layoutInflater.inflate(R.layout.keyboard_root, null)
        keysContainer = root.findViewById(R.id.keys_container)
        return root
    }

    // 2. တွၼ်ႈပိုတ်ႇ Suggestion Bar (Candidate View)
    override fun onCreateCandidatesView(): View {
        val view = layoutInflater.inflate(R.layout.candidate_view, null)
        candidateContainer = view.findViewById(R.id.candidate_container)
        
        // ၸႂ်ႉတႃႇၼႄ Suggestion Bar ဢွၵ်ႇမႃး
        setCandidatesViewShown(true)
        
        return view
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **keyboard_root.xml**: ပဵၼ်တွၼ်ႈတၢင်းတႂ်ႈ (Keys area)။
* **candidate_view.xml**: ပဵၼ်တွၼ်ႈတၢင်းၼိူဝ် (Suggestions area)။
* **Decoupling**: ၵၢၼ်ၸႅၵ်ႇ XML ၼႆႉ ႁဵတ်းႁႂ်ႈႁဝ်းမႄးႁၢင်ႈ (UI) တွၼ်ႈၼိူဝ် လႄႈ တွၼ်ႈတႂ်ႈ ၸႅၵ်ႇၵၼ်လႆႈငၢႆႈငၢႆႈၶႃႈ။

---