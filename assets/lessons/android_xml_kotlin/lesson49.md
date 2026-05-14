

## **Lesson 49: Main Project Lab – Recipe Finder**

### **1. Data Model & API Interface**

ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇမီး Data Class တႃႇႁပ်ႉ JSON လႄႈ Interface တႃႇ Retrofit ယဝ်ႉ။

**MealResponse.kt**

```kotlin
data class MealResponse(val meals: List<Meal>?)

data class Meal(
    @SerializedName("idMeal") val id: String,
    @SerializedName("strMeal") val name: String,
    @SerializedName("strMealThumb") val imageUrl: String,
    @SerializedName("strInstructions") val instructions: String
)

```

**MealApi.kt**

```kotlin
interface MealApi {
    @GET("search.php")
    suspend fun searchMeals(@Query("s") query: String): MealResponse
}

```

---

### **2. Retrofit Instance (Singleton)**

သၢင်ႈတူဝ်ၵွင်ႉၸူး Internet ဢၼ်ၸႂ်ႉႁူမ်ႈၵၼ်တင်း App လႄႈ။

**RetrofitInstance.kt**

```kotlin
object RetrofitInstance {
    private const val BASE_URL = "https://www.themealdb.com/api/json/v1/1/"

    val api: MealApi by lazy {
        Retrofit.Builder()
            .baseUrl(BASE_URL)
            .addConverterFactory(GsonConverterFactory.create())
            .build()
            .create(MealApi::class.java)
    }
}

```

---

### **3. ViewModel (Logic ၵၢၼ်ႁႃၶေႃႈမုၼ်း)**

ၼႂ်းၼႆႉ ႁဝ်းတေၸႂ်ႉ Coroutines တႃႇႁွင်ႉ API သေ ၼႄငဝ်းလၢႆး (Loading, Success, Error) ယဝ်ႉ။

**MealViewModel.kt**

```kotlin
class MealViewModel : ViewModel() {
    val meals = MutableLiveData<List<Meal>?>()
    val isLoading = MutableLiveData<Boolean>()
    val errorMessage = MutableLiveData<String>()

    fun searchRecipe(name: String) {
        viewModelScope.launch {
            isLoading.postValue(true)
            try {
                val response = RetrofitInstance.api.searchMeals(name)
                meals.postValue(response.meals)
            } catch (e: Exception) {
                errorMessage.postValue("Internet ဢမ်ႇလီၶႃႈ...")
            } finally {
                isLoading.postValue(false)
            }
        }
    }
}

```

---

### **4. Activity (UI Logic)**

တွၼ်ႈတႃႇၼႄၽွၼ်းလႆႈ ၼိူဝ်ၼႃႈၸေႃးၼၼ်ႉ ႁဝ်းမႃးတႅမ်ႈၼင်ႇၼႆလႄႈ။

**MainActivity.kt**

```kotlin
class MainActivity : AppCompatActivity() {
    private lateinit var binding: ActivityMainBinding
    private val viewModel: MealViewModel by viewModels()
    private lateinit var mealAdapter: MealAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setupRecyclerView()

        binding.btnSearch.setOnClickListener {
            val query = binding.etSearch.text.toString()
            if (query.isNotEmpty()) viewModel.searchRecipe(query)
        }

        viewModel.meals.observe(this) { list ->
            mealAdapter.submitList(list ?: emptyList())
        }

        viewModel.isLoading.observe(this) { loading ->
            binding.progressBar.visibility = if (loading) View.VISIBLE else View.GONE
        }
    }

    private fun setupRecyclerView() {
        mealAdapter = MealAdapter()
        binding.rvRecipes.adapter = mealAdapter
        binding.rvRecipes.layoutManager = LinearLayoutManager(this)
    }
}

```

---

### **5. RecyclerView Adapter (ၵၢၼ်ၼႄႁၢင်ႈလူၺ်ႈ Glide)**

**MealAdapter.kt**

```kotlin
class MealAdapter : ListAdapter<Meal, MealAdapter.MealViewHolder>(DiffCallback) {

    class MealViewHolder(val binding: ItemMealBinding) : RecyclerView.ViewHolder(binding.root)

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MealViewHolder {
        val binding = ItemMealBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return MealViewHolder(binding)
    }

    override fun onBindViewHolder(holder: MealViewHolder, position: Int) {
        val meal = getItem(position)
        holder.binding.tvMealName.text = meal.name
        
        // ၸႂ်ႉ Glide တႃႇလူတ်ႇႁၢင်ႈ
        Glide.with(holder.itemView.context)
            .load(meal.imageUrl)
            .placeholder(R.drawable.loading_img)
            .into(holder.binding.ivMealThumb)
    }

    object DiffCallback : DiffUtil.ItemCallback<Meal>() {
        override fun areItemsTheSame(oldItem: Meal, newItem: Meal) = oldItem.id == newItem.id
        override fun areContentsTheSame(oldItem: Meal, newItem: Meal) = oldItem == newItem
    }
}

```

---

### **Try it Yourself! (ၸၢမ်းႁဵတ်းႁင်းၵွႆး)**

တွၼ်ႈတႃႇႁႂ်ႈၵတ်ႉၶႅၼ်ႇလွင်ႈၸႂ်ႉ API လၢႆလၢႆပိူင်ၼၼ်ႉ ၸၢမ်းႁဵတ်း Project ၸိူဝ်းၼႆႉတူၺ်းလႄႈ:

1. **GitHub User Search:** ႁဵတ်းပုမ်ႇတႃႇတႅမ်ႈၸိုဝ်ႈ GitHub User သေ ႁွင်ႉဢဝ်ႁၢင်ႈ Profile (`avatar_url`) လႄႈ `bio` ၶဝ်မႃးၼႄ။
2. **Quote of the Day:** ႁွင်ႉ API ဢၼ်ပၼ်လိၵ်ႈသင်ႇသွၼ် (Random Quote) မႃးၼႄၵူႈပွၵ်ႈ ဢၼ်ပိုတ်ႇ App ၶႃႈ။
3. **Crypto Tracker:** ၼႄၵႃႊၶၼ် Bitcoin ဢမ်ႇၼၼ် Ethereum တႃႇၵူႈဝၼ်း လူၺ်ႈၵၢၼ်ၸႂ်ႉ Crypto API။

---

### **Advice for Students**

'မိူဝ်ႈၸဝ်ႈၵဝ်ႇၸၢမ်း API မႂ်ႇမႂ်ႇၼၼ်ႉ ႁႂ်ႈၸႂ်ႉ App မိူၼ်ၼင်ႇ **Postman** တႃႇၸၢမ်းတူၺ်း JSON ၵွၼ်ႇ တေတႅမ်ႈ Code တႄႉတႄႉၼႃၶႃႈ!'
လၢႆးၼႆႉတေၸွႆးႁႂ်ႈၸဝ်ႈၵဝ်ႇ ပွင်ႇၸႂ်သႅၼ်းၶေႃႈမူၼ်း (Structure) လႆႈငၢႆႈလိူဝ်ဢေႃႈ။ 