## **Lesson 4: Building the Suggestion Bar: onCreateCandidatesView and XML Layout**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၼႂ်းပိူင် Modern XML Layout ၼႆႉ ႁဝ်းႁွင်ႉ Suggestion Bar ဝႃႈ **CandidateView** ၼႆၶႃႈ။ 
မၼ်းပဵၼ် View ဢၼ်တေဢွၵ်ႇမႃး တီႈၼိူဝ်ၶီးပွတ်ႇ တႃႇၼႄပၼ်တူဝ်လိၵ်ႈ ဢၼ်ႁဝ်းထၢင်ႇဝႃႈ ၵူၼ်းၸႂ်ႉတေတႅမ်ႈ (Predictive Text) ၼၼ်ႉယဝ်ႉၶႃႈ။ 
တွၼ်ႈတႃႇ **TMK Keyboard Pro** ၼႆႉ ႁဝ်းတေၸႂ်ႉ `HorizontalScrollView` တႃႇႁႂ်ႈၵူၼ်းၸႂ်ႉ လၢၵ်ႈ (Scroll) တူၺ်း Suggestions လႆႈလၢႆလၢႆတူဝ်ၶႃႈ။

---

### **1. Creating the XML Layout (The Design)**

ႁဝ်းတေလႆႈသၢင်ႈၾၢႆႇ **`res/layout/candidate_view.xml`**။ ႁၢင်ႈၾၢင်မၼ်းတေမီး `HorizontalScrollView` ႁႄႉဝႆႉ သေ မီး `LinearLayout` ယူႇၽၢႆႇၼႂ်း တႃႇထႅမ်သႂ်ႇတူဝ်လိၵ်ႈၶႃႈ။

#### **res/layout/candidate_view.xml**
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
        android:paddingEnd="10dp" />

</HorizontalScrollView>
```

---

### **2. Initializing in Kotlin (The Logic)**

ၼႂ်း **`ShanKeyboardService.kt`** ၼၼ်ႉ ႁဝ်းတေလႆႈ Override Method ဢၼ်ၸိုဝ်ႈဝႃႈ **`onCreateCandidatesView()`** ၶႃႈ။ 
တီႈၼႆႈ ႁဝ်းတေ `inflate` ဢဝ် XML ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉဢွၵ်ႇမႃးၶႃႈ။

#### **ShanKeyboardService.kt Snippet**
```kotlin
class ShanKeyboardService : InputMethodService() {

    private lateinit var candidateContainer: LinearLayout

    override fun onCreateCandidatesView(): View {
        // 1. Inflate Layout
        val view = layoutInflater.inflate(R.layout.candidate_view, null)
        
        // 2. ၵွင်ႉၸူး Container တွၼ်ႈတႃႇထႅမ်တူဝ်လိၵ်ႈ
        candidateContainer = view.findViewById(R.id.candidate_container)
        
        // 3. ၸႂ်ႉတႃႇပိုတ်ႇ Suggestion Bar ႁႂ်ႈမၼ်းၼႄဢွၵ်ႇမႃး
        setCandidatesViewShown(true)
        
        return view
    }

    // Function တွၼ်ႈတႃႇထႅမ်တူဝ်လိၵ်ႈလႅတ်း (Helper Method)
    fun setSuggestions(suggestions: List<String>) {
        candidateContainer.removeAllViews() // လၢင်ႉဢၼ်ၵဝ်ႇပႅတ်ႈၵွၼ်ႇ
        
        for (word in suggestions) {
            val tv = TextView(this).apply {
                text = word
                textSize = 18f
                setTextColor(Color.WHITE)
                setPadding(30, 0, 30, 0)
                setOnClickListener {
                    // မိူဝ်ႈၼိပ်ႉလိၵ်ႈလႅတ်း ႁႂ်ႈသူင်ႇၶဝ်ႈ App ၵမ်းသိုဝ်ႈ
                    currentInputConnection?.commitText(word + " ", 1)
                    candidateContainer.removeAllViews()
                }
            }
            candidateContainer.addView(tv)
        }
    }
}
```

---

### **3. Why use CandidateView?**

* **User Experience:** ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉ တႅမ်ႈလိၵ်ႈလႆႈဝႆးလိူဝ်ၵဝ်ႇ (Faster Typing)။
* **Complex Scripts:** လိၵ်ႈတႆး လႄႈ လိၵ်ႈမၢၼ်ႈႁဝ်း မၢင်ပွၵ်ႈတႅမ်ႈယၢပ်ႇ၊ သင်မီး Suggestions တေၸွႆႈလႆႈၼမ်တႄႉတႄႉၶႃႈ။
* **Security:** ႁဝ်းၸၢင်ႈၸႂ်ႉ `setCandidatesViewShown(false)` တႃႇလပ်ႉ (Hide) မၼ်းပႅတ်ႈ မိူဝ်ႈတႅမ်ႈ Password ၶႃႈယဝ်ႉ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **XML:** ၸႂ်ႉ `HorizontalScrollView` တႃႇႁႂ်ႈ ၵူၼ်းၸႂ်ႉ လၢၵ်ႈလႆႈ (Scroll path)။
* **Kotlin:** ၸႂ်ႉ `onCreateCandidatesView` တႃႇပိုတ်ႇ View ၼၼ်ႉဢွၵ်ႇမႃး လႄႈ ၸႂ်ႉ `setCandidatesViewShown` တႃႇပိုတ်ႇ/ပိၵ်ႉ မၼ်းၶႃႈ။
* **Dynamic UI:** တူဝ်လိၵ်ႈ Suggestions တေထုၵ်ႇထႅမ်သႂ်ႇၼႂ်း `LinearLayout` ၸွမ်းၼင်ႇၵူၼ်းၸႂ်ႉတႅမ်ႈၶႃႈ။

---