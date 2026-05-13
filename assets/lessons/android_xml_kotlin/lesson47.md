

## **Lesson 47: Error Handling & Connectivity**

### **1. Try-Catch Blocks (ၵၢၼ်ႁႄႉၵင်ႈ App လူမ်ႉ)**

မိူဝ်ႈႁဝ်းႁွင်ႉ API ၼႂ်း Coroutines (Lesson 45) ၼၼ်ႉ ႁဝ်းထုၵ်ႇလီႁေႃႇ Code ႁဝ်းဝႆႉၼႂ်း `try-catch` တႃႇသေႇယဝ်ႉ။

* **Try:** ၸၢမ်းႁွင်ႉ API တူၺ်း တီႈၼႆႈ
* **Catch:** သင်မီးပၼ်ႁႃ (မိူၼ်ၼင်ႇ ဢမ်ႇမီး Internet) ၼႆ ယႃႇပၼ် App လူႉလႄႈ ႁႂ်ႈမၼ်းမႃးႁဵတ်းၵၢၼ်တီႈၼႆႈတႅၼ်း။

```kotlin
try {
    val response = api.getRecipes()
    // ၼႄၶေႃႈမူၼ်း
} catch (e: Exception) {
    // ၼႄလိၵ်ႈပၼ်ၾၢင်ႉ မိူၼ်ၼင်ႇ "Internet ဢမ်ႇလီၶႃႈ"
}

```

---

### **2. The State Wrapper (ၵူၼ်းႁေႃႇငဝ်းလၢႆး)**

တွၼ်ႈတႃႇႁႂ်ႈ UI ႁဝ်းႁူႉဝႃႈ တိုၵ်ႉ Loading ယူႇႁိုဝ်? ဢမ်ႇၼၼ် မီး Error ယူႇႁိုဝ်? ႁဝ်းတေၸႂ်ႉ **Sealed Class** တႃႇႁေႃႇၶေႃႈမူၼ်းႁဝ်းဝႆႉယဝ်ႉ။
လၢႆးၼႆႉႁွင်ႉဝႃႈ **Resource** ဢမ်ႇၼၼ် **Result** Pattern ၼႆယဝ်ႉ။

#### **တူဝ်ယၢင်ႇ Code (Resource.kt):**

```kotlin
sealed class Resource<T>(
    val data: T? = null,
    val message: String? = null
) {
    class Success<T>(data: T) : Resource<T>(data)
    class Error<T>(message: String, data: T? = null) : Resource<T>(data, message)
    class Loading<T> : Resource<T>()
}

```

---

### **3. Why Use a Wrapper? (ပဵၼ်သင်လူဝ်ႇႁေႃႇဝႆႉ?)**

* **Consistency:** ႁဵတ်းႁႂ်ႈ ViewModel သူင်ႇၶေႃႈမုၼ်းၵႂႃႇၸူး UI လူၺ်ႈပိူင်ဢၼ်လဵဝ်ၵၼ်ၵူႈပွၵ်ႈ။
* **User Experience (UX):** ၸွႆးႁႂ်ႈႁဝ်းၼႄ ProgressBar မိူဝ်ႈတိုၵ်ႉ `Loading` လႄႈ ၼႄ "Try Again" Button မိူဝ်ႈမီး `Error`။
* **Safety:** ႁႄႉၵၢင်ႈလွင်ႈ `NullPointerException` ယွၼ်ႉႁဝ်းတေၵူတ်ႇထတ်း ငဝ်းလၢႆးမၼ်းၵွၼ်ႇ ၸင်ႇဢဝ်ၶေႃႈမုၼ်းၵႂႃႇၸႂ်ႉ။

---

### **Advice for Students**

'ယႃႇပေပွႆႇႁႂ်ႈ App ၼႃႈၸေႃးပဝ်ႇ (Empty Screen) ဝႆႉမိူဝ်ႈမီး Error ၶႃႈၼေႃ!' 
ၵူႈပွၵ်ႈ ႁႂ်ႈမီးလိၵ်ႈ မွၵ်ႇလၢတ်ႈၵူၼ်းၸႂ်ႉဝႃႈ ပဵၼ်သင်ဝႆႉယူႇ (မိူၼ်ၼင်ႇ 'Check your connection') ၼႆၶႃႈ။ 
ၵၢၼ်ႁဵတ်းႁႂ်ႈ App ႁဝ်း တွပ်ႇလၢတ်ႈၸွမ်းငဝ်းလၢႆး လႆႈၵူႈပွၵ်ႈၼၼ်ႉ မၼ်းၼႄဝႃႈ ၸဝ်ႈၵဝ်ႇပဵၼ်ၵူၼ်းတႅမ်ႈ App ဢၼ်မီးပၢႆးဝူၼ်ႉလီၶႃႈယဝ်ႉ!