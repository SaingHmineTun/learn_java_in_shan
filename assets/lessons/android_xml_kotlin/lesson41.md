

## **Lesson 41: Main Project Lab – Stock Price Tracker**

### **1. The Requirement**

ႁဝ်းတေတႅမ်ႈ App Dashboard တႃႇတူၺ်း ၵႃႊၶၼ်သတွၵ်ႉ (Stock) ဢၼ်မီးၵၢၼ်လႅၵ်ႈလၢႆႈယူႇ တႃႇသေႇယဝ်ႉ:

* **Real-time Simulation:** ၵႃႊၶၼ်သတွၵ်ႉ တေလႅၵ်ႈလၢႆႈႁင်းၵွႆး ၵူႈ 2-3 ၸႅတ်ႉၵႅၼ်ႉ။
* **Architecture:** တႅမ်ႈ Code လူၺ်ႈၵၢၼ်ၸႅၵ်ႇ UI ဢွၵ်ႇၼွၵ်ႈ Logic (MVVM Pattern)။
* **Visual Feedback:** သင်ၵႃႊၶၼ် "ၶိုၼ်ႈ" ႁႂ်ႈၼႄသီၶဵဝ်၊ သင် "လူင်း" ႁႂ်ႈၼႄသီလႅင်။

---

### **2. The Implementation (လွၵ်းလၢႆးႁဵတ်း)**

#### **Step 1: The ViewModel (ၵူၼ်းၵုမ်းၶေႃႈမူၼ်း)**

သၢင်ႈ `StockViewModel` ဢၼ်သိမ်းၶေႃႈမုၼ်းဝႆႉၼႂ်း `LiveData`။

```kotlin
class StockViewModel : ViewModel() {
    // သိမ်း Map ၶွင် ၸိုဝ်ႈသတွၵ်ႉ လႄႈ ရႃႇၵႃႇ
    private val _stockPrices = MutableLiveData<Map<String, Double>>()
    val stockPrices: LiveData<Map<String, Double>> get() = _stockPrices

    init {
        startPriceSimulation()
    }

    private fun startPriceSimulation() {
        // သၢင်ႈ Loop တႃႇလႅၵ်ႈလၢႆႈရႃႇၵႃႇ ႁင်းၵွႆး (ၸိူင်ႉၼင်ႇၸႂ်ႉ Coroutines)
    }
}

```

#### **Step 2: The Observer (ၵူၼ်းပႂ်ႉတူၺ်းၼႂ်း UI)**

ၼႂ်း `Activity` ဢမ်ႇၼၼ် `Fragment` ၼၼ်ႉ ႁဝ်းတေဢမ်ႇတႅမ်ႈ Code တႃႇလႅၵ်ႈလၢႆႈ ၵႃႊၶၼ်၊ ႁဝ်းတေ "ပႂ်ႉတူၺ်း" ၵူၺ်း။

```kotlin
viewModel.stockPrices.observe(viewLifecycleOwner) { prices ->
    binding.txtApplePrice.text = prices["AAPL"].toString()
    // Logic တႃႇလႅၵ်ႈလၢႆႈသီ Green/Red ၸွမ်းၼင်ႇ ၵႃႊၶၼ်ၶိုၼ်ႈလူင်း
}

```

#### **Step 3: The Ultimate Test**

ၼႆႉပဵၼ် "ၼမ်ႉၵတ်ႉ" ၶွင် ViewModel ယဝ်ႉ:

1. ပိုတ်ႇ App သေ ပႂ်ႉတူၺ်း ၵႃႊၶၼ်သတွၵ်ႉ ဢၼ်တိုၵ်ႉလႅၵ်ႈလၢႆႈယူႇ။
2. **ပိၼ်ႇၼႃႈၸေႃးၾူၼ်း** (Rotate) ၵႂႃႇမႃး။
3. **ၽွၼ်းလႆႈ:** ၵႃႊၶၼ်သတွၵ်ႉ တေဢမ်ႇ "Reset" ပဵၼ် 0 လႄႈ ၵၢၼ်လႅၵ်ႈလၢႆႈတေဢမ်ႇၵိုတ်း ယွၼ်ႉ ViewModel တိုၵ်ႉ "ၵုမ်း" ၶေႃႈမုၼ်းဝႆႉပၼ်ယူႇၼၼ်ႉယဝ်ႉ။

---

### **3. Try it Yourself! (ၸၢမ်းႁဵတ်းႁင်းၵွႆး)**

တွၼ်ႈတႃႇႁႂ်ႈပွင်ႇၸႂ်လွင်ႈ **Architecture** တႄႉတႄႉၼၼ်ႉ ၸၢမ်းႁဵတ်း Project ၸိူဝ်းၼႆႉတူၺ်းလႄႈ:

#### **1. Score Board (ပႅၼ်ႈၼႄၶႅၼ်းၵဵမ်း)**

* **Requirement:** App ၼပ်ႉၶႅၼ်းၵိမ်း Basketball (Home/Away)။
* **Key Learning:** ပေႃးတဵၵ်းပုမ်ႇ "+3 Points" ၼႆ ႁႂ်ႈမႄးၶေႃႈမူၼ်းၼႂ်း ViewModel ၵူၺ်း။ ပေႃးပိၼ်ႇၼႃႈၸေႃးၵေႃႈ ၶႅၼ်းၵိမ်းလူဝ်ႇလႆႈ ယူႇမိူၼ်ၵဝ်ႇၵူၺ်း။

#### **2. Unit Converter (ၶိူင်ႈလႅၵ်ႈလၢႆႈတူဝ်ၼပ်ႉ)**

* **Requirement:** App တႃႇလႅၵ်ႈ CM ပဵၼ် Inches။
* **Key Learning:** ၵၢၼ်ၼမ်ႉသွၼ်ႇ (Calculation) တင်းမူတ်း လူဝ်ႇလႆႈဝႆႉၼႂ်း ViewModel။ UI မီးၼႃႈတီႈႁပ်ႉတူဝ်ၼပ်ႉ လႄႈ ၼႄၽွၼ်းလႆႈၵူၺ်း။

#### **3. Mood Tracker (ၵၢၼ်မၢႆတွင်းၸႂ်)**

* **Requirement:** မီး Emoji လၢႆလၢႆဢၼ်။ ပေႃးတဵၵ်းဢၼ်ၼိုင်ႈ ႁႂ်ႈလိၵ်ႈ "Current Mood" လႅၵ်ႈလၢႆႈၸွမ်း။
* **Key Learning:** ၸႂ်ႉ `MutableLiveData<String>` တႃႇသူင်ႇၶေႃႈမုၼ်းလႅၵ်ႈလၢႆႈ ၵႂႃႇၸူး UI ႁင်းၵွႆးၶႃႈ။

---