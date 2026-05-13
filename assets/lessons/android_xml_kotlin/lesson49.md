

## **Lesson 49: Main Project Lab – Recipe Finder**

### **1. The Requirement (ဢၼ်တေလႆႈမီးဝႆႉ)**

App ႁဝ်းတေမီးၼႃႈတီႈ:

* ႁပ်ႉလိၵ်ႈ တႃႇသွၵ်ႈႁႃ (Search Query) တီႈၵူၼ်းၸႂ်ႉ။
* ၵႂႃႇႁွင်ႉဢဝ်ၶေႃႈမူၼ်းတီႈ **TheMealDB API**။
* ၼႄသဵၼ်ႈၸိုဝ်ႈၶဝ်ႈၽၵ်း၊ ႁၢင်ႈ၊ လႄႈ လၢႆးႁုင် (Instructions) ၼႂ်း RecyclerView။

---

### **2. The Implementation (လွၵ်းလၢႆးႁဵတ်း)**

#### **Step 1: Setup Retrofit & API (ႁႅၼ်းၶိူင်ႈ Networking)**

ႁဝ်းတေၸႂ်ႉ URL: `[https://www.themealdb.com/api/json/v1/1/search.php?s=](https://www.themealdb.com/api/json/v1/1/search.php?s=)...`

```kotlin
interface MealApi {
    @GET("search.php")
    suspend fun searchMeals(@Query("s") query: String): MealResponse
}

```

#### **Step 2: ViewModel & Coroutines (ၵၢၼ်ႁွင်ႉၶေႃႈမူၼ်း)**

ၸႂ်ႉ `viewModelScope.launch` တႃႇႁွင်ႉ API ၼႂ်း Background သေ ၼႄ ProgressBar မိူဝ်ႈတိုၵ်ႉလူတ်ႇယူႇ။

#### **Step 3: RecyclerView & Glide (ၵၢၼ်ၼႄႁၢင်ႈ)**

ဢဝ် `MealAdapter` ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼႂ်း Module 4 မႃးၸႂ်ႉၶိုၼ်း၊ သေၸႂ်ႉ **Glide** တႃႇလူတ်ႇႁၢင်ႈ ၶဝ်ႈၽၵ်းႁၢင်ႈလီ မႃးၼႄပၼ်။

---

### **3. Try it Yourself! (ၸၢမ်းႁဵတ်းႁင်းၵွႆး)**

တွၼ်ႈတႃႇႁႂ်ႈၵတ်ႉၶႅၼ်ႇလွင်ႈၸႂ်ႉ API လၢႆလၢႆပိူင်ၼၼ်ႉ ၸၢမ်းႁဵတ်း Project ၸိူဝ်းၼႆႉတူၺ်းလႄႈ:

#### **1. GitHub User Search**

* **Requirement:** ႁဵတ်းပုမ်ႇတႃႇသွၵ်ႈႁႃ (Search Bar) တႃႇတႅမ်ႈၸိုဝ်ႈ GitHub Username လႄႈ။
* **Key Learning:** ႁွင်ႉ API ၶွင် GitHub တႃႇဢဝ်ႁၢင်ႈ Profile (`avatar_url`) လႄႈ ၶေႃႈမၢႆတွင်း (`bio`) မႃးၼႄလႄႈ။

#### **2. Quote of the Day (လိၵ်ႈသင်ႇသွၼ် တႃႇၵူႈဝၼ်း)**

* **Requirement:** ပေႃးပိုတ်ႇ App မႃး ႁႂ်ႈမၼ်းၵႂႃႇဢဝ် "လိၵ်ႈသင်ႇသွၼ်" (Quotes) ဢၼ်လႅၵ်ႈလၢႆႈယူႇတႃႇသေႇ မႃးၼႄၼိူဝ်ၼႃႈၸေႃး။
* **Key Learning:** ၸၢမ်းၸႂ်ႉ API ဢၼ်ဢမ်ႇလူဝ်ႇသူင်ႇ Query (Simple GET Request) လႄႈ။

#### **3. Crypto Tracker (တူၺ်းရႃႇၵႃႇငိုၼ်း Digital)**

* **Requirement:** ၼႄၵႃႊၶၼ် Bitcoin (BTC) ဢမ်ႇၼၼ် Ethereum (ETH) တႃႇၵူႈဝၼ်းဝၼ်း။
* **Key Learning:** ၵၢၼ်ၸတ်ႉၵၢၼ်ၶေႃႈမုၼ်းတူဝ်ၼပ်ႉ (Double) လႄႈ ၵၢၼ် Update ၶေႃႈမူၼ်းႁႂ်ႈမႂ်ႇယူႇတႃႇသေႇၶႃႈ။

---