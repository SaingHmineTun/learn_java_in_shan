## **Lesson 20: SafeArgs – Passing Data Between Screens**

### **1. The Problem (ပၼ်ႁႃလွင်ႈသူင်ႇၶေႃႈမူၼ်းလၢႆးၵဝ်ႇ)**
မိူဝ်ႈၵွၼ်ႇ ႁဝ်းၸႂ်ႉ `Bundle` တႃႇသူင်ႇၶေႃႈမူၼ်း ၵႂႃႇ၊ မႃး ၶႃႈ။ ၵူၺ်းၵႃႈ မၼ်းမီးလွင်ႈတုၵ်ႉၶၼင်ႇၼႆၶႃႈ:
* **Key Mismatch:** သင်ႁဝ်းသူင်ႇၶေႃႈမူၼ်းလူၺ်ႈ Key ဝႃႈ `"user_name"` သေ တူဝ်ႁပ်ႉသမ်ႉတႅမ်ႈၽိတ်းပဵၼ် `"username"` ၼႆ မၼ်းတေႁႃၶေႃႈမူၼ်းဢမ်ႇႁၼ်ၶႃႈ။
* **Type Mismatch:** သင်ႁဝ်းသူင်ႇတူဝ်ၼပ်ႉ (Int) သေ တူဝ်ႁပ်ႉသမ်ႉဝႃႈပဵၼ် လိၵ်ႈ (String) ၼႆ App တေၵိုင်ႉၵၢင်ႉလူႉ (Crash) ၵမ်းလဵဝ်ၶႃႈ။

---

### **2. The Solution: SafeArgs Plugin**
**SafeArgs** ပဵၼ်ၶိူင်ႈမိုဝ်း (Plugin) ဢၼ်တေမႃးၸွႆးသၢင်ႈ Code ႁင်းၵွႆး (Generate Classes) တႃႇႁႂ်ႈႁဝ်းသူင်ႇၶေႃႈမူၼ်းလႆႈလူၺ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ "Key" ၶႃႈ။
* မၼ်းတေၵူတ်ႇထတ်းပၼ်ဝႃႈ: "တူဝ်သူင်ႇ သူင်ႇသင်မႃး၊ တူဝ်ႁပ်ႉၵေႃႈတေလႆႈႁပ်ႉဢဝ်ပိူင်ၼၼ်ႉၵူၺ်း" ၼႆၶႃႈ။



---

### **3. Setting Up Arguments in NavGraph**
ဢွၼ်တၢင်းတေတႅမ်ႈ Code ႁဝ်းလူဝ်ႇၵႂႃႇတင်ႈဝႆႉၼႂ်း **NavGraph Editor** ၶႃႈ:
1. လိူၵ်ႈ Fragment ဢၼ်တေ **"ႁပ်ႉ"** ၶေႃႈမူၼ်း (Fragment B)။
2. တီႈလွၵ်း Attributes ၽၢႆႇၶႂႃ၊ ႁႃၶေႃႈဝႃႈ **Arguments** ယဝ်ႉတဵၵ်း **+**။
3. သႂ်ႇၸိုဝ်ႈ (Name) မိူၼ်ၼင်ႇ `score` လႄႈ လိူၵ်ႈ Type ပဵၼ် `Integer` ၶႃႈ။

---

### **4. Data Transfer Code (လွၵ်းလၢႆးသူင်ႇ လႄႈ ႁပ်ႉ)**

#### **Sending (Fragment A):**
ႁဝ်းတေၸႂ်ႉ Class ဢၼ်ၸိုဝ်ႈဝႃႈ `...Directions` တႃႇသူင်ႇၶေႃႈမူၼ်းၶႃႈ:
```kotlin
val score = 100
// သၢင်ႈ Action ဢၼ်ပႃးၶေႃႈမူၼ်းသူင်ႇၵႂႃႇၸွမ်း
val action = HomeFragmentDirections.actionHomeToResult(score)
findNavController().navigate(action)
```

#### **Receiving (Fragment B):**
ႁဝ်းတေၸႂ်ႉ `navArgs()` တႃႇႁွင်ႉဢဝ်ၶေႃႈမူၼ်းမႃးၸႂ်ႉၶႃႈ:
```kotlin
class ResultFragment : Fragment() {
    // ႁပ်ႉဢဝ် Arguments လူၺ်ႈ SafeArgs
    private val args: ResultFragmentArgs by navArgs()

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState: Bundle?)
        
        // ၸႂ်ႉ args.score လႆႈၵမ်းလဵဝ် (မၼ်းတေႁူႉဝႃႈပဵၼ် Int ႁင်းၵွႆးၶႃႈ)
        binding.txtScore.text = "Score ၸဝ်ႈၵဝ်ႇပဵၼ်: ${args.score}"
    }
}
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'မိူဝ်ႈသႂ်ႇ SafeArgs Plugin ယဝ်ႉၼၼ်ႉ ယႃႇလိုမ်းတဵၵ်း **Rebuild Project** ၼိုင်ႈပွၵ်ႈၼႃၶႃႈ။'
သင်ဢမ်ႇ Rebuild ၼႆ Android Studio တေဢမ်ႇႁၼ် Class ၸိူဝ်းဢၼ်ပဵၼ် `Directions` ဢမ်ႇၼၼ် `Args` ၼၼ်ႉ လႄႈ တေပဵၼ်သီလႅင်ဝႆႉၶႃႈ။ 
SafeArgs တေႁဵတ်းႁႂ်ႈၵၢၼ်သူင်ႇၶေႃႈမူၼ်း ၼႂ်းၵႄႈ Fragments ငၢႆႈမိူၼ်ၼင်ႇ ႁဝ်းႁွင်ႉၸႂ်ႉ Function လၢႆလၢႆၵူၺ်းၶႃႈ။