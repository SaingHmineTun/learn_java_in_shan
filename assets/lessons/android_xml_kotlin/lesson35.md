

## **Lesson 35: The ViewModel (The Logic Holder)**

### **1. Persistence**

ပၼ်ႁႃလူင်ၶွင် `Activity` ၵေႃႈပဵၼ် မိူဝ်ႈၵူၼ်းၸႂ်ႉ "ပိၼ်ႇၼႃႈၸေႃး" (Screen Rotation) ၼၼ်ႉ Android တေယႃႉ Activity တူဝ်ၵဝ်ႇပႅတ်ႈသေ သၢင်ႈတူဝ်မႂ်ႇၶိုၼ်ႈမႃးယဝ်ႉ။
သင်ႁဝ်းသိမ်း (Save) ၶေႃႈမုၼ်းဝႆႉၼႂ်း Activity ၼႆၸိုင် ၶေႃႈမုၼ်းၼၼ်ႉ တေႁၢႆၵႂႃႇၵမ်းလဵဝ်ယဝ်ႉ။

* **ViewModel Solution:** `ViewModel` မီးပိူင်ဝႆႉ ႁႂ်ႈမၼ်း **"ဢမ်ႇတၢႆ"** မိူဝ်ႈပိၼ်ႇၼႃႈၸေႃးယဝ်ႉ။ မၼ်းတေယူႇၼႂ်း Memory သေ ပႂ်ႉၼႃႈၸေႃး (Activity) ဢၼ်တေၵိူတ်ႇမႂ်ႇမႃးၼၼ်ႉယဝ်ႉ။ လၢႆးၼႆႉ ႁဵတ်းႁႂ်ႈၶေႃႈမုၼ်းႁဝ်း ဢမ်ႇႁၢႆၵႂႃႇယဝ်ႉ။

---

### **2. Lifecycle Awareness (ၵၢၼ်ႁူႉၸၵ်းသၢႆၸႂ်)**

ViewModel ႁူႉဝႃႈ မၼ်းလူဝ်ႇယူႇႁိုင်ၵႃႊႁိုဝ်ၼႆၵွၼ်ႇ:

* မၼ်းတေတႄႇၵိူတ်ႇ မိူဝ်ႈ Activity တႄႇႁဵတ်းၵၢၼ်။
* မၼ်းတေယူႇတေႃႇ ဢမ်ႇဝႃႈ Activity တေထုၵ်ႇယႃႉ သေ သၢင်ႈမႂ်ႇ (Rotation) လၢႆပွၵ်ႈၵေႃႈယဝ်ႉ။
* မၼ်းတေ **"တၢႆ" (Cleared)** မိူဝ်ႈ ၵူၼ်းၸႂ်ႉတဵၵ်းပုမ်ႇ "Back" တႃႇပိၵ်ႉ Activity ၼၼ်ႉပႅတ်ႈ ဢမ်ႇၼၼ် သင်ႇ `finish()` ၵူၺ်း။

---

### **3. Implementation (ၵၢၼ်တႅမ်ႈ Code တႄႉတႄႉ)**

ႁဝ်းတေၸႅၵ်ႇ Code ဢွၵ်ႇပဵၼ် 2 ပွတ်းၼင်ႇၼႆ:

#### **A. သၢင်ႈ ViewModel Class:**

```kotlin
class GameViewModel : ViewModel() {
    var score = 0 // ၶေႃႈမူၼ်းတေယူႇတီႈၼႆႈ ဢမ်ႇႁၢႆမိူဝ်ႈပိၼ်ႇၸေႃး

    fun addScore() {
        score++
    }
}

```

#### **B. ႁွင်ႉၸႂ်ႉၼႂ်း Activity/Fragment:**

ႁဝ်းတေဢမ်ႇသၢင်ႈ ViewModel လူၺ်ႈၵၢၼ်ၸႂ်ႉ `GameViewModel()` ၵမ်းလဵဝ်ၶႃႈ၊ ၵူၺ်းၵႃႈ ႁဝ်းတေႁႂ်ႈ Android ၸတ်ႉၵၢၼ်ပၼ်:

```kotlin
class GameFragment : Fragment() {
    // ၸႂ်ႉ by viewModels() တႃႇႁႂ်ႈ Android ၵုမ်းထိင်း Lifecycle ပၼ်
    private val viewModel: GameViewModel by viewModels()

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding.btnScore.setOnClickListener {
            viewModel.addScore()
            binding.txtScore.text = viewModel.score.toString()
        }
    }
}

```

---

### **Advice for Students:**

'**ယႃႇပေဢဝ် View (မိူၼ်ၼင်ႇ TextView, Button) ဢမ်ႇၼၼ် Context ၵႂႃႇသိမ်းဝႆႉၼႂ်း ViewModel ၶႃႈ!**' ယွၼ်ႉ ViewModel ယူႇႁိုင်လိူဝ် Activity လႄႈ သင်မၼ်းသိမ်း View ၶွင် Activity ဢၼ်တၢႆၵႂႃႇယဝ်ႉၼၼ်ႉဝႆႉၸိုင် မၼ်းတေႁဵတ်းႁႂ်ႈ Memory Leak ၸိူင်ႉၼင်ႇႁဝ်းႁဵၼ်းမႃးၼႂ်း Lesson 34 ယဝ်ႉ။
ViewModel မီးၼႃႈတီႈၵုမ်း **Data** ၵူၺ်းၶႃႈ။"