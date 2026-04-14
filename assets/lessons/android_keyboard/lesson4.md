## **Lesson 4: Building the Suggestion Bar: onCreateCandidatesView and XML Layout**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၼႂ်းပိူင် XML Traditional ၼႆႉ ႁဝ်းႁွင်ႉ Suggestion Bar ဝႃႈ **CandidateView** ၼႆၶႃႈ။ 
မၼ်းပဵၼ် View ဢၼ်တေဢွၵ်ႇမႃး တီႈၼိူဝ်ၶီးပွတ်ႇ တႃႇၼႄပၼ်တူဝ်လိၵ်ႈ ဢၼ်ႁဝ်းထၢင်ႇဝႃႈ ၵူၼ်းၸႂ်ႉတေတႅမ်ႈ (Predictive Text) ၼၼ်ႉယဝ်ႉ။ 
တွၼ်ႈတႃႇ **TMK Keyboard Pro** ၼႆႉ ႁဝ်းတေၸႂ်ႉ `HorizontalScrollView` တႃႇႁႂ်ႈၵူၼ်းၸႂ်ႉ ပၢၵ်ႈ (Scroll) တူၺ်း Suggestions လႆႈလၢႆလၢႆတူဝ်ၶႃႈ။

---

### **1. ၵၢၼ်သၢင်ႈ Layout တႃႇ Suggestions (XML)**

ႁဝ်းတေလႆႈသၢင်ႈၾၢႆႇ `res/layout/candidate_view.xml`။ ႁၢင်ႈၾၢင်မၼ်းတေမီး `HorizontalScrollView` ႁႄႉဝႆႉ သေ မီး `LinearLayout` ယူႇၽၢႆႇၼႂ်း တႃႇထႅမ်သႂ်ႇတူဝ်လိၵ်ႈၶႃႈ။

#### **Step 1: res/layout/candidate_view.xml**

```xml
<?xml version="1.0" encoding="utf-8"?>
<HorizontalScrollView xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/candidate_scroll"
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
        android:paddingEnd="10dp">
        
        </LinearLayout>
</HorizontalScrollView>
```

---

### **2. ၵၢၼ်ပိုတ်ႇၸႂ်ႉ Suggestion Bar ၼႂ်း Service (Kotlin)**

ၼႂ်း `ShanKeyboardService.kt` ၼၼ်ႉ ႁဝ်းတေလႆႈ Override Method ဢၼ်ၸိုဝ်ႈဝႃႈ `onCreateCandidatesView()` ၶႃႈ။

#### **Step 2: Update `ShanKeyboardService.kt`**

```kotlin
class ShanKeyboardService : InputMethodService() {

    private lateinit var candidateContainer: LinearLayout

    // 1. ပိုတ်ႇ View တႃႇ Suggestions
    override fun onCreateCandidatesView(): View {
        // Inflate XML Layout ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ
        val view = layoutInflater.inflate(R.layout.candidate_view, null)
        candidateContainer = view.findViewById(R.id.candidate_container)
        
        // တမ်းၵႃႈ (Settings) ႁႂ်ႈမၼ်းၼႄ Suggestions လႆႈ
        setCandidatesViewShown(true) 
        
        return view
    }

    // 2. Function တွၼ်ႈတႃႇထႅမ်တူဝ်လိၵ်ႈ (Helper Method)
    fun updateSuggestions(suggestions: List<String>) {
        candidateContainer.removeAllViews() // လၢင်ႉဢၼ်ၵဝ်ႇပႅတ်ႈ
        
        for (word in suggestions) {
            val tv = TextView(this).apply {
                text = word
                textSize = 18f
                setTextColor(Color.WHITE)
                setPadding(30, 0, 30, 0)
                setOnClickListener {
                    // မိူဝ်ႈၼိပ်ႉလိၵ်ႈလႅတ်း ႁႂ်ႈသူင်ႇၶဝ်ႈ App ၵမ်းသိုဝ်ႈ
                    currentInputConnection.commitText(word + " ", 1)
                    candidateContainer.removeAllViews()
                }
            }
            candidateContainer.addView(tv)
        }
    }
}
```

---

### **3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇ CandidateView?**



* **User Experience:** ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉ တႅမ်ႈလိၵ်ႈလႆႈၽၢႆလိူဝ် (Faster Typing)။
* **Shan Script:** လိၵ်ႈတႆးႁဝ်း မၢင်ပွၵ်ႈတႅမ်ႈယၢပ်ႇ၊ သင်မီး Suggestions တေၸွႆႈလႆႈၼမ်တႄႉတႄႉၶႃႈ။
* **Control:** ႁဝ်းၸၢင်ႈၸႂ်ႉ `setCandidatesViewShown(false)` တႃႇလပ်ႉ (Hide) မၼ်းပႅတ်ႈ မိူဝ်ႈတႅမ်ႈ Password ၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **XML:** ၸႂ်ႉ `HorizontalScrollView` တႃႇႁဵတ်းတၢင်းလွၼ်ႈ (Scroll path)။
* **Kotlin:** ၸႂ်ႉ `onCreateCandidatesView` တႃႇပိုတ်ႇ View ၼၼ်ႉဢွၵ်ႇမႃး။
* **Logic:** ၸႂ်ႉ `commitText` ၼႂ်း `setOnClickListener` တႃႇသူင်ႇလိၵ်ႈဢၼ်လိူၵ်ႈဝႆႉၼၼ်ႉၶႃႈ။

---