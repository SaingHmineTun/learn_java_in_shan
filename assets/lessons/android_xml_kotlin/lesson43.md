

## **Lesson 43: Introduction to Retrofit**

### **1. The Networking Client (ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ Retrofit?)**

မိူဝ်ႈၵွၼ်ႇၼၼ်ႉ ၵၢၼ်ႁွင်ႉ API ၼႂ်း Android ၼႆႉ ယၢပ်ႇၼႃႇ။ ႁဝ်းလူဝ်ႇလႆႈတႅမ်ႈ Code ယၢဝ်းလၢႆလၢႆထႅဝ် တႃႇၵွင်ႉၵၢႆႇ (Connection) လႄႈ တႃႇပိၼ်ႇၶေႃႈမူၼ်းယဝ်ႉ။

* **Retrofit Solution:** Retrofit ၸွႆးၸတ်းၵၢၼ်ပၼ်ၵူႈယိူင်ႈယဝ်ႉ။ ႁဝ်းၵူၺ်းလူဝ်ႇလၢတ်ႈဝႃႈ "ၵႂႃႇဢဝ်ၶေႃႈမုၼ်းတီႈ Link ၼႆႉမႃးပၼ်ၶႃႈ" ၼႆၵေႃႈ မၼ်းတေႁဵတ်းၵၢၼ်ၼၵ်းၼၵ်း တႅၼ်းႁဝ်းတင်းမူတ်းယဝ်ႉ။
* **လွင်ႈလီ:** မၼ်းဝႆး၊ မၼ်းလွတ်ႈၽေး (Type-safe) လႄႈ မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်းဢၢၼ်ႇငၢႆႈယဝ်ႉ။

---

### **2. Dependency Injection - Basic (ၵၢၼ်သၢင်ႈတူဝ်ပိူင်လဵဝ်)**

တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းဢမ်ႇၵိၼ် RAM ၼမ်ၼၼ်ႉ ႁဝ်းတေဢမ်ႇသၢင်ႈ Retrofit မႂ်ႇၵူႈပွၵ်ႈ မိူဝ်ႈႁွင်ႉ API။ 
ႁဝ်းတေၸႂ်ႉ **Singleton Pattern** (သၢင်ႈတူဝ်လဵဝ် ယဝ်ႉၸႂ်ႉႁူမ်ႈၵၼ်တင်း App) သေ ၸႂ်ႉတိုဝ်းယဝ်ႉ။

#### **တူဝ်ယၢင်ႇ Code (RetrofitInstance.kt):**

```kotlin
object RetrofitInstance {
    private const val BASE_URL = "https://api.recipefinder.com/"

    val api: RecipeApi by lazy {
        Retrofit.Builder()
            .baseUrl(BASE_URL)
            .addConverterFactory(GsonConverterFactory.create()) // တႃႇပိၼ်ႇ JSON ပဵၼ် Object
            .build()
            .create(RecipeApi::class.java)
    }
}

```

---

### **3. Interface Definitions (ၵၢၼ်မၢႆတွင်းႁူးတၢင်း API)**

Retrofit ၸႂ်ႉ **Interface** တႃႇမၢႆတွင်းဝႃႈ ႁဝ်းတေၵႂႃႇဢဝ်ၶေႃႈမုၼ်းတီႈလႂ် ၼႆယဝ်ႉ။ ႁဝ်းတေၸႂ်ႉ **Annotations** (မိူၼ်ၼင်ႇ `@GET`) တႃႇบอกမၼ်းၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code (RecipeApi.kt):**

```kotlin
interface RecipeApi {
    // ႁွင်ႉဢဝ်သဵၼ်ႈၸိုဝ်ႈ ၸိုင်ႈၶဝ်ႈၽၵ်းတင်းမူတ်း
    @GET("recipes")
    suspend fun getRecipes(): List<Recipe>

    // သွၵ်ႈႁႃ ၸိုဝ်ႈၶဝ်ႈၽၵ်း ၼင်ႇၶႂ်ႈလႆႈ (Search)
    @GET("recipes/search")
    suspend fun searchRecipes(
        @Query("name") recipeName: String
    ): List<Recipe>
}

```

* **@GET:** ပွင်ႇဝႃႈႁဝ်းၶႂ်ႈ "ဢဝ်" ၶေႃႈမုၼ်းမႃး။
* **suspend:** ပွင်ႇဝႃႈ Function ၼႆႉတေႁဵတ်းၵၢၼ်ၼႂ်း Background (တေသိုပ်ႇ သပ်းလႅင်းၵႂႃႇတီႈ Lesson 45) တႃႇဢမ်ႇႁႂ်ႈ App ႁဝ်းၶမ်ဝႆႉ။

---

### **Advice for Students**

'ဝူၼ်ႉတူၺ်းဝႃႈ Interface မိူၼ်ၼင်ႇ "သဵၼ်ႈမၢႆၸိုဝ်ႈၶဝ်ႈၽၵ်း" (Menu) ၼႂ်းႁၢၼ်ႉၶဝ်ႈၶႃႈ။' 
ႁဝ်းၵူၺ်းလူဝ်ႇတႅမ်ႈမၢႆဝႆႉဝႃႈ မီးသင်ဝႆႉလၢႆလၢႆ ၼႆၵေႃႈ Retrofit တေပဵၼ်ၵူၼ်းၵႂႃႇဢဝ် "ၶဝ်ႈၽၵ်း" (Data) ၼၼ်ႉမႃးသူင်ႇပၼ်ႁဝ်း ၸွမ်းၼင်ႇဢၼ်ႁဝ်းသင်ႇဝႆႉၼၼ်ႉယဝ်ႉၶႃႈ!