
## **Lesson 48: Integration with ViewModel & LiveData**

### **1. The Final Chain (သၢႆၵွင်ႉသၢႆငၢၼ်း)**

တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းႁဵတ်းၵၢၼ်လႆႈလီ လႄႈ မႄးငၢႆႈၼၼ်ႉ ႁဝ်းတေသူင်ႇၶေႃႈမုၼ်းတေႃႇၵၼ် ပဵၼ်ၸၼ်ႉၼင်ႇၼႆၶႃႈ:

1. **Repository:** ႁွင်ႉ API တီႈ Internet (ၸႂ်ႉ Retrofit + Coroutines) သေ ႁေႃႇၶေႃႈမူၼ်းဝႆႉၼႂ်း `Resource` (Success/Error)။
2. **ViewModel:** ႁွင်ႉၸႂ်ႉ Repository သေ ဢဝ်ၽွၼ်းလႆႈမၼ်း မႃးသႂ်ႇၼႂ်း `LiveData`။
3. **Activity/Fragment (View):** ပႂ်ႉတူၺ်း (Observe) `LiveData` သေ လႅၵ်ႈလၢႆႈ UI ၸွမ်းၼင်ႇငဝ်းလၢႆးမၼ်း။

---

### **2. Implementing the Workflow (လၢႆးတႅမ်ႈ Code)**

#### **A. The Repository (ၵူၼ်းႁႃၶေႃႈမူၼ်း)**

```kotlin
class RecipeRepository(private val api: RecipeApi) {
    suspend fun getRecipes(): Resource<List<Recipe>> {
        return try {
            val response = api.getRecipes()
            Resource.Success(response)
        } catch (e: Exception) {
            Resource.Error(e.message ?: "An unknown error occurred")
        }
    }
}

```

#### **B. The ViewModel (ၵူၼ်းၵုမ်းငဝ်းလၢႆး)**

```kotlin
class RecipeViewModel(private val repository: RecipeRepository) : ViewModel() {
    private val _recipes = MutableLiveData<Resource<List<Recipe>>>()
    val recipes: LiveData<Resource<List<Recipe>>> = _recipes

    fun fetchRecipes() = viewModelScope.launch {
        _recipes.postValue(Resource.Loading()) // ၼႄ ProgressBar ၵွၼ်ႇ
        val response = repository.getRecipes()
        _recipes.postValue(response) // သူင်ႇၽူၼ်လႅတ်း (Success ဢမ်ႇၼၼ် Error)
    }
}

```

#### **C. The View (ၵူၼ်းၼႄႁၢင်ႈ)**

```kotlin
viewModel.recipes.observe(viewLifecycleOwner) { resource ->
    when (resource) {
        is Resource.Loading -> { /* ၼႄ ProgressBar */ }
        is Resource.Success -> { 
            /* သိမ်း ProgressBar သေ ဢဝ်ၶေႃႈမုၼ်း (resource.data) သႂ်ႇၼႂ်း Adapter */ 
        }
        is Resource.Error -> { 
            /* သိမ်း ProgressBar သေ ၼႄလိၵ်ႈပၼ်ၾၢင်ႉ (resource.message) */ 
        }
    }
}

```

---

### **3. Why this pattern? (ပဵၼ်သင်လူဝ်ႇႁဵတ်းၼႆ?)**

* **Decoupling:** UI ဢမ်ႇလူဝ်ႇႁူႉလွင်ႈ Retrofit ဢမ်ႇၼၼ် JSON Parsing။ မၼ်းၵူၺ်းလူဝ်ႇ "ပႂ်ႉတူၺ်း" LiveData ၵူၺ်း။
* **Rotation Safety:** သင်ၵူၼ်းၸႂ်ႉပိၼ်ႇၼႃႈၸေႃး (Rotate)၊ ViewModel တိုၵ်ႉတေသိမ်းၶေႃႈမုၼ်း API ၼၼ်ႉဝႆႉပၼ်ယူႇ၊ ဢမ်ႇလူဝ်ႇႁွင်ႉ API မႂ်ႇ ႁႂ်ႈသဵင်ႈ Data Internet လၢႆလၢႆယဝ်ႉ။
* **Cleanliness:** Code ႁဝ်းတေၸႅၵ်ႇၵၼ်ပဵၼ်ပွတ်းၽႂ်ပွတ်းမၼ်း၊ ႁဵတ်းႁႂ်ႈႁႃ Error လႆႈငၢႆႈငၢႆႈယဝ်ႉ။

---

### **Advice for Students**

'ၼႆႉပဵၼ် "လၵ်းၸဵင်" (Standard) ဢၼ် Professional ၶဝ်ၸႂ်ႉတႄႉတႄႉၶႃႈ။' 
သင်ၸဝ်ႈၵဝ်ႇ ပွင်ႇၸႂ်သၢႆၵွင်ႉၼႆႉလီယဝ်ႉၼႆ ၸဝ်ႈၵဝ်ႇတေၸၢင်ႈတႅမ်ႈ App လႂ်ၵေႃႈယဝ်ႉ ဢၼ်လူဝ်ႇၵွင်ႉၵၼ်တင်း Internet ၼၼ်ႉၶႃႈယဝ်ႉ။