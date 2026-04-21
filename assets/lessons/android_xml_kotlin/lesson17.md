## **Lesson 17: Introduction to Fragments (ပိုၼ်ႉထၢၼ်လွင်ႈ Fragments)**

### **1. What is a Fragment? (Fragment ၼႆႉ ပဵၼ်သင်?)**
**Fragment** ၼႆႉ ပဵၼ်ပုၼ်ႈၼိုင်ႈ ၶွင် UI ဢၼ်ယူႇၼႂ်း Activity ၶႃႈ။
ႁဝ်းၸၢင်ႈဝူၼ်ႉဝႃႈ Activity ပဵၼ် "ၶ်ပ်ႇႁၢင်ႈ" (Picture Frame) ၼႆၶႃႈ။
ယဝ်ႉ Fragment သမ်ႉပဵၼ် "ႁၢင်ႈ" (Pictures) ဢၼ်ႁဝ်းလႅၵ်ႈလၢႆႈသႂ်ႇၼႂ်းၵွပ်းၼၼ်ႉၶႃႈ။

* **လွင်ႈလီ:** ႁဝ်းၸၢင်ႈ "ၸႂ်ႉၶိုၼ်း" (Reuse) Fragment ၼိုင်ႈဢၼ် ၼႂ်းလၢႆလၢႆ Activity လႆႈၶႃႈ။
* **Performance:** ၵၢၼ်လႅၵ်ႈ Fragment ဝႆးလိူဝ် ၵၢၼ်ပိုတ်ႇ Activity မႂ်ႇတႄႇတႄႇၶႃႈ။



---

### **2. The Host Activity (Activity တူဝ်ႁပ်ႉ)**
Fragment တေဢမ်ႇၸၢင်ႈယူႇလႆႈ ႁင်းၵွႆးၶႃႈ။ မၼ်းလူဝ်ႇလႆႈမီး **Host Activity** တႃႇႁပ်ႉမၼ်းဝႆႉတႃႇသေႇၶႃႈ။
* ၼႂ်း XML ၶွင် Activity ႁဝ်းတေလူဝ်ႇမီး `FragmentContainerView` တႃႇပဵၼ် "တီႈဝၢင်း" Fragment ၶႃႈ။

---

### **3. Fragment Lifecycle (သၢႆၸႂ် ၶွင် Fragment)**
Fragment မီး Lifecycle ႁင်းၵွႆးမၼ်း ဢၼ်ၵွင်ႉၵၢႆႇၸွမ်း Activity ၶႃႈ။ Function ဢၼ်လမ်ႇလွင်ႈသုတ်းပဵၼ်:
* **`onCreateView()`**: ပဵၼ်တီႈႁဝ်းတေ "ဢွၵ်ႇပိူင်" (Inflate) XML ၶွင် Fragment ၶႃႈ။
* **`onViewCreated()`**: ပဵၼ်တီႈ ႁဝ်းတေတႄႇတႅမ်ႈ Code Logic (မိူၼ်ၼင်ႇ OnClickListener) ၶႃႈ။



---

### **4. တူဝ်ယၢင်ႇ Code (ၵၢၼ်သၢင်ႈ Fragment)**

#### **Fragment XML (fragment_home.xml):**
```xml
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="#F0F0F0">

    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="ၼႆႉပဵၼ်ၼႃႈ Home Fragment"
        android:layout_gravity="center" />
</FrameLayout>
```

#### **Fragment Kotlin (HomeFragment.kt):**
```kotlin
class HomeFragment : Fragment() {

    private var _binding: FragmentHomeBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        // 1. Inflate Layout
        _binding = FragmentHomeBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState: Bundle?)
        
        // 2. တႅမ်ႈ Logic တီႈၼႆႈ
        binding.btnGo.setOnClickListener {
            // Code တႃႇၵႂႃႇၼႃႈတေႃႇၵႂႃႇ
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null // တႃႇၵႄႈပၼ်ႁႃ Memory Leak
    }
}
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'မိူဝ်ႈၸႂ်ႉ View Binding ၼႂ်း Fragment ၼၼ်ႉ လူဝ်ႇလႆႈသတိလွင်ႈ `onDestroyView` ၶႃႈ။'
ႁဝ်းလူဝ်ႇလႆႈတင်ႈ `_binding = null` တႃႇသေႇ ယွၼ်ႉဝႃႈ Fragment ၸၢင်ႈမီးသၢႆၸႂ် ႁိုင်လိူဝ် UI (View) ၶွင်မၼ်းၶႃႈ။
သင်ႁဝ်းဢမ်ႇလၢင်ႉပႅတ်ႈၼႆ မၼ်းတေႁဵတ်းႁႂ်ႈ App ႁဝ်းၼၵ်း (Memory Leak) ၶႃႈ။