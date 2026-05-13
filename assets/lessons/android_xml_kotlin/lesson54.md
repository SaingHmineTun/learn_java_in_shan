
## **Lesson 54: Integration with Repository & ViewModel**

### **1. The Flow (သၢႆၵွင်ႉၶေႃႈမူၼ်း)**

တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းမႄးငၢႆႈ လႄႈ ၵူတ်ႇထတ်း (Test) လႆႈငၢႆႈၼၼ်ႉ ႁဝ်းတေသူင်ႇ "ၼႃႈတီႈ" တေႃႇၵၼ် ပဵၼ်ၸၼ်ႉၼင်ႇၼႆၶႃႈ:

1. **DAO:** မီးၼႃႈတီႈၵွင်ႉၸူး Database ၵမ်းသိုဝ်ႈ။
2. **Repository:** ႁပ်ႉဢဝ် DAO မႃးၸႂ်ႉ။ မၼ်းပဵၼ် "ၵူၼ်းၵုမ်းၶေႃႈမူၼ်း" ဢၼ်တေၸတ်းၵၢၼ်ဝႃႈ တေဢဝ်ၶေႃႈမုၼ်းတီႈ Room ႁိုဝ် တီႈ API ၼႆယဝ်ႉ။
3. **ViewModel:** ႁွင်ႉၸႂ်ႉ Repository သေ သူင်ႇၶေႃႈမူၼ်း (LiveData) ပၼ် UI။

---

### **2. Threading with Room (ပၵ်းပိူင် "သဵၼ်ႈတၢင်း" ၶွင် Room)**

မိူၼ်ၼင်ႇ Networking (Lesson 45) ၼၼ်ႉယဝ်ႉ၊ **Room ဢမ်ႇပၼ်ႁႂ်ႈႁဝ်း လူဢၢၼ်ႇ ဢမ်ႇၼၼ် တႅမ်ႈၶေႃႈမူၼ်း ၼိူဝ် Main Thread** ၵမ်းလဵဝ်။

* **ပဵၼ်သင်?:** ယွၼ်ႉၵၢၼ်ပိုတ်ႇၾၢႆႇ Database တီႈ Storage မၼ်းႁိုင်။ သင်ႁဝ်းႁဵတ်းၼိူဝ် Main Thread ၼႆ App ႁဝ်းတေၵိုတ်းၶမ် (Lag) သေ Android တေၼႄ Error `Cannot access database on the main thread` ၼႆယဝ်ႉ။
* **လၢႆးၵႄႈ:** ႁဝ်းတေၸႂ်ႉ **Coroutines** လႄႈ **`viewModelScope.launch`** တွၼ်ႈတႃႇႁႂ်ႈၵၢၼ် Insert, Update, Delete ႁဵတ်းၵၢၼ်ၼႂ်း Background ယဝ်ႉ။

---

### **3. Implementation Example (တူဝ်ယၢင်ႇၵၢၼ်တႅမ်ႈ Code)**

#### **A. The Repository:**

```kotlin
class ExpenseRepository(private val expenseDao: ExpenseDao) {
    // ဢၢၼ်ႇၶေႃႈမူၼ်း (Room တေၸတ်ႉၵၢၼ် Background ပၼ်ႁင်းၵွႆး ယွၼ်ႉပဵၼ် LiveData)
    val allExpenses: LiveData<List<Expense>> = expenseDao.getAllExpenses()

    // တႅမ်ႈၶေႃႈမူၼ်း (လူဝ်ႇၸႂ်ႉ suspend)
    suspend fun insert(expense: Expense) {
        expenseDao.insert(expense)
    }
}

```

#### **B. The ViewModel:**

```kotlin
class ExpenseViewModel(private val repository: ExpenseRepository) : ViewModel() {
    val allExpenses: LiveData<List<Expense>> = repository.allExpenses

    fun insert(expense: Expense) = viewModelScope.launch(Dispatchers.IO) {
        repository.insert(expense)
    }
}

```

---

### **Advice for Students**

'တွၼ်ႈတႃႇၵၢၼ် "ဢၢၼ်ႇ" (Read) ၶေႃႈမုၼ်းၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ **LiveData** သေ သူင်ႇၵႂႃႇၸူး UI ၵမ်းလဵဝ်လႆႈယူႇ။' 
Room မၼ်းလႅတ်းၼႃႇ၊ ပေႃးမီးၶေႃႈမုၼ်းမႃးမႂ်ႇၵေႃႈ မၼ်းတေသူင်ႇသဵၼ်ႈမၢႆမႂ်ႇၵႂႃႇၸူး UI ႁင်းၵွႆး လူၺ်ႈဢမ်ႇလူဝ်ႇသင်ႇ Refresh ၶိုၼ်းယဝ်ႉ။