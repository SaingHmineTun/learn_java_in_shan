

## **Lesson 37: Data Binding & View Binding (Revisited)**

### **1. Advanced View Binding (ၵၢၼ်ၸတ်ႉၵၢၼ် Binding)**

မိူဝ်ႈႁဝ်းၸႂ်ႉ ViewModel ႁူမ်ႈတင်း View Binding ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈသတိလွင်ႈ **Lifecycle** ယဝ်ႉ။ 
တွၼ်ႈတႃႇၵႄႈပၼ်ႁႃ Memory Leak ၼႂ်း Fragment ႁဝ်းၵႆႉၸႂ်ႉ လၢႆးတႅမ်ႈၼင်ႇၼႆယဝ်ႉ:

```kotlin
class GameFragment : Fragment() {
    // တူဝ်ၼႆႉၸႂ်ႉတႃႇ Reference (မႄးလႆႈ)
    private var _binding: FragmentGameBinding? = null
    // တူဝ်ၼႆႉၸႂ်ႉတႃႇႁွင်ႉၸႂ်ႉ (Read-only)
    private val binding get() = _binding!!

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null // လၢင်ႉ Binding ပႅတ်ႉ မိူဝ်ႈ View ထုၵ်ႇယႃႉ
    }
}

```

> **လွင်ႈလီ:** လၢႆးၼႆႉတေႁဵတ်းႁႂ်ႈ App ႁဝ်းဢမ်ႇၵိၼ် RAM ၼမ်ပူၼ်ႉတီႈ မိူဝ်ႈၵူၼ်းၸႂ်ႉ ၶၢႆႉၼႃႈၸေႃးၵႂႃႇမႃးယဝ်ႉ။

---

### **2. Data Binding: Connecting XML to ViewModel**

**Data Binding** ၼႆႉ ၶႅၼ်ႇလိူဝ် View Binding တေႉတေႉ။ မၼ်းၸွႆးႁႂ်ႈႁဝ်းသူင်ႇ ViewModel ၶဝ်ႈၵႂႃႇၼႂ်း XML လႆႈၵမ်းလဵဝ်ယဝ်ႉ။

* **ပၢႆးဝူၼ်ႉ:** "ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code `binding.txtScore.text = ...` ၼႂ်း Fragment ထႅင်ႈယဝ်ႉ။ ႁဝ်းတေသင်ႇဝႆႉၼႂ်း XML ဝႃႈ ႁႂ်ႈ TextView တူဝ်ၼႆႉ ပႂ်ႉတူၺ်း Score ၼႂ်း ViewModel ႁင်းၵွႆး ၼႆယဝ်ႉ။"

#### **တူဝ်ယၢင်ႇ Code ၼႂ်း XML:**

```xml
<layout xmlns:android="http://schemas.android.com/apk/res/android">
    <data>
        <variable
            name="gameViewModel"
            type="com.tmk.GameViewModel" />
    </data>

    <TextView
        android:text="@{gameViewModel.score.toString()}" />
</layout>

```

---

### **3. Two-Way Binding (ၵၢၼ်သူင်ႇၶေႃႈမူၼ်း ၵႂႃႇ-မႃး)**

ၼႆႉပဵၼ်လၢႆး "ၸၼ်ႉသုင်" (Advanced) ယဝ်ႉ။ ၵႂႃႇၽၢႆႇလဵဝ် (One-way) ဢၼ်ဝႃႈၼၼ်ႉ ၶေႃႈမုၼ်းလႅၼ်ႈတီႈ ViewModel ၵႂႃႇၸူး UI ၵူၺ်း။ ၵူၺ်းၵႃႈ **Two-Way Binding** သမ်ႉတေႁဵတ်းႁႂ်ႈ:

1. သင် ViewModel လႅၵ်ႈလၢႆႈ -> **EditText** ၵေႃႈတေလႅၵ်ႈလၢႆႈၸွမ်း။
2. သင်ၵူၼ်းၸႂ်ႉတႅမ်ႈလိၵ်ႈၼႂ်း **EditText** -> **ViewModel** ၵေႃႈတေလႅၵ်ႈလၢႆႈၸွမ်း **ႁင်းၵွႆး (Automatically)** ယဝ်ႉ။

* **Syntax:** ႁဝ်းတေၸႂ်ႉ **`@={...}`** (မီးပုမ်ႇ "မိူၼ်ၵၼ်" ပႃးၸွမ်း) တႅၼ်း `@ {...}` ယဝ်ႉ။

---

### **Advice for Students:**

'တွၼ်ႈတႃႇ ၵူၼ်းတႄႇႁဵၼ်းမႂ်ႇမႂ်ႇၼၼ်ႉ ႁႂ်ႈၸႂ်ႉ **View Binding** ႁႂ်ႈၵတ်ႉၶႅၼ်ႇၵွၼ်ႇၶႃႈ။' 
သင်ၸဝ်ႈၵဝ်ႇပွင်ႇၸႂ်လွင်ႈ Observer (Lesson 36) လီယဝ်ႉၼႆ ၵၢၼ်လႅၵ်ႈမႃးၸႂ်ႉ Data Binding ၵေႃႈ တေႁဵတ်းႁႂ်ႈ Code ၼႂ်း Activity ႁဝ်း 'ႁၢႆၵႂႃႇ' ပႅတ်ႈတင်းၼမ် ယွၼ်ႉ XML တေႁဵတ်းၵၢၼ်တႅၼ်းၵူႈပိူင်ယဝ်ႉၶႃႈ!