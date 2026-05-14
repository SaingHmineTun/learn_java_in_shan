

## **Lesson 56: Main Project Lab – Personal Finance Manager**

### **1. The Requirement (ဢၼ်တေလႆႈမီးဝႆႉ)**

* **Storage:** သိမ်းသဵၼ်ႈမၢႆငိုၼ်းၶဝ်ႈ/ငိုၼ်းၸၢႆႇဝႆႉၼႂ်း **Room Database**။
* **Real-time UI:** ပေႃးထႅမ်သဵၼ်ႈမၢႆမႂ်ႇ၊ RecyclerView လႄႈ ငိုၼ်းၵိုတ်း တေလႆႈလႅၵ်ႈလၢႆႈၸွမ်းၵမ်းလဵဝ်။
* **Features:** မီးပုမ်ႇ FAB တႃႇထႅမ်ၶေႃႈမူၼ်း လႄႈ လၢႆးပၢၵ်ႈ (Swipe) တႃႇယႃႉသဵၼ်ႈမၢႆပႅတ်ႉ။

---

### **2. The Implementation (လွၵ်းလၢႆးႁဵတ်း)**

#### **Step 1: The Entity (ပႅၼ်ႈသိမ်းၶေႃႈမူၼ်း)**

ႁဝ်းတေမၢႆတွင်း ၸိုဝ်ႈ၊ တူဝ်ၼပ်ႉငိုၼ်း၊ လႄႈ မဵဝ်းမၼ်း (Category) ၶႃႈ။

```kotlin
@Entity(tableName = "finance_table")
data class Transaction(
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val title: String,
    val amount: Double, // ငိုၼ်းၸၢႆးပဵၼ် (-) ငိုၼ်းၶဝ်ႈပဵၼ် (+)
    val category: String,
    val date: Long
)

```

#### **Step 2: The DAO (ၵူၼ်းၸတ်ႉၵၢၼ်)**

ႁဝ်းလူဝ်ႇ Query ပိူင်လူင် 2 ဢၼ်: ဢဝ်သဵၼ်ႈမၢႆတင်းမူတ်း လႄႈ ၼပ်ႉငိုၼ်းၵိုတ်းတင်းမူတ်းၶႃႈ။

```kotlin
@Dao
interface FinanceDao {
    @Insert
    suspend fun insert(transaction: Transaction)

    @Delete
    suspend fun delete(transaction: Transaction)

    @Query("SELECT * FROM finance_table ORDER BY date DESC")
    fun getAllTransactions(): LiveData<List<Transaction>>

    @Query("SELECT SUM(amount) FROM finance_table")
    fun getTotalBalance(): LiveData<Double?>
}

```

#### **Step 3: UI & List (ၵၢၼ်ၼႄႁၢင်ႈ)**

* **Floating Action Button (FAB):** ပေႃးတဵၵ်းၼႆ ႁႂ်ႈပိုတ်ႇ Dialog သေ ႁပ်ႉဢဝ် `title` လႄႈ `amount`။
* **RecyclerView:** ၸႂ်ႉ `ListAdapter` တႃႇၼႄသဵၼ်ႈမၢႆငိုၼ်း။ သင်ငိုၼ်းပဵၼ် (-) ႁႂ်ႈၼႄသီလႅင်၊ သင်ပဵၼ် (+) ႁႂ်ႈၼႄသီၶဵဝ်ၶႃႈ။

---

### **3. Complete Code Example (တူဝ်ယၢင်ႇ Code ၼႂ်း ViewModel)**

**FinanceViewModel.kt**

```kotlin
class FinanceViewModel(application: Application) : AndroidViewModel(application) {
    private val repository: FinanceRepository
    val allTransactions: LiveData<List<Transaction>>
    val totalBalance: LiveData<Double?>

    init {
        val dao = AppDatabase.getDatabase(application).financeDao()
        repository = FinanceRepository(dao)
        allTransactions = repository.allTransactions
        totalBalance = repository.totalBalance
    }

    fun addTransaction(title: String, amount: Double, category: String) = viewModelScope.launch {
        val newEntry = Transaction(
            title = title,
            amount = amount,
            category = category,
            date = System.currentTimeMillis()
        )
        repository.insert(newEntry)
    }
}

```

---

### **4. Try it Yourself! (ၸၢမ်းႁဵတ်းႁင်းၵွႆး)**

တွၼ်ႈတႃႇႁႂ်ႈပွင်ႇၸႂ်လွင်ႈၸႂ်ႉ Room တႄႉတႄႉၼႆ ၸၢမ်းႁဵတ်း Project ၸိူဝ်းၼႆႉတူၺ်းလႄႈ:

1. **Wishlist App:**
* App တႃႇသိမ်းသဵၼ်ႈမၢႆ "ၶိူင်ႈဢၼ်ၶႂ်ႈသိုဝ်ႉ"။
* **Feature:** ပေႃးသိုဝ်ႉယဝ်ႉ ႁႂ်ႈတဵၵ်း Checkbox သေ ႁႂ်ႈယႃႉ (Delete) ပႅတ်ႉလႆႈ။


2. **Weight Tracker (မၢႆတွင်းၼမ်ႉၼၵ်း):**
* App တႃႇမၢႆၼမ်ႉၼၵ်းတူဝ်ၵူႈဝၼ်း ၸွမ်းၼင်ႇ ဝၼ်းထိ (Date)။
* **Feature:** ႁႂ်ႈၼႄသဵၼ်ႈမၢႆ (History) လုၵ်ႉတီႈ Database မႃးၶႃႈ။


3. **Personal Diary (ပပ်ႉမၢႆတွင်းၸႂ်):**
* App တႃႇတႅမ်ႈ "လွင်ႈဝူၼ်ႉဝၼ်းၼႆႉ" သေ သိမ်းဝႆႉ။
* **Feature:** ႁႂ်ႈမၼ်းၶပ်း (Sort) ၸွမ်းၼင်ႇဝၼ်းထိ ဢၼ်တႅမ်ႈမႂ်ႇသုတ်း ဝႆႉၼိူဝ်ပိူၼ်ႈၶႃႈ။



---