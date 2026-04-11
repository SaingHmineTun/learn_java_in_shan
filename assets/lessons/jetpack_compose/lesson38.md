## Lesson 38: Dependency Injection (DI) Basics

**Dependency Injection (DI)** ၼႆႉ ပေႃးတေပိၼ်ႇပဵၼ် လိၵ်ႈတႆးႁႂ်ႈပွင်ႇၸႂ် ငၢႆႈငၢႆႈၵေႃႈ မၼ်းပဵၼ် **"ၵၢၼ်သူင်ႇၶွင်ၸႂ်ႉ"** ၶဝ်ႈၵႂႃႇပၼ်ၶႃႈ။

### 1. Problem: The "Hard-Coded" Way (ဢမ်ႇၸႂ်ႉ DI)
ပေႃးႁဝ်းသၢင်ႈ Component ၼႂ်းတူဝ်မၼ်းႁင်းမၼ်း၊ မၼ်းတေမိူၼ်တင်းႁဝ်း "ႁဵတ်းၵိၼ်ႁင်းၶေႃ" ၶႃႈ။
* **Example:** ပေႃး `ViewModel` သၢင်ႈ `Database` ႁင်းမၼ်း၊ ပေႃးဝၼ်းၼိုင်ႈႁဝ်းၶႂ်ႈလႅၵ်ႈ Database မႂ်ႇ ႁဝ်းတေလႆႈၵႂႃႇမႄး Code ၼႂ်း ViewModel တင်းသဵင်ႈ။ မၼ်း "ၵႅင်ႇ" (Rigid) ၼႃႇၶႃႈ။

### 2. Solution: The DI Way (သူင်ႇၶဝ်ႈမႃးပၼ်)
တႅၼ်းတွၼ်ႈတႃႇတေႁဵတ်းႁင်းမၼ်း၊ ႁဝ်းပၼ်ပိူၼ်ႈသူင်ႇ (Inject) ၶဝ်ႈမႃးပၼ်ၶႃႈ။
* **Analogy:** မိူၼ်တင်း ႁဝ်းၵႂႃႇၵိၼ်ၶဝ်ႈၼၼ်ႉၶႃႈ။ ႁဝ်းဢမ်ႇလူဝ်ႇၵႂႃႇၽုၵ်ႇၶဝ်ႈ၊ ဢမ်ႇလူဝ်ႇၵႂႃႇလဵင်ႉမူ။ ႁဝ်းၵွၺ်းလူဝ်ႇ "ႁပ်ႉဢဝ်" (Inject) ၶဝ်ႈၽၵ်း ဢၼ်ပိူၼ်ႈႁဵတ်းဝႆႉယဝ်ႉၼၼ်ႉ မႃးၵိၼ်ၵွၺ်းၶႃႈ။



---

## 3. Manual DI Implementation
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေပႆႇၸႂ်ႉ Library ၼၵ်းၼၵ်း (မိူၼ်ၼင်ႇ Hilt ဢမ်ႇၼၼ် Koin)။ ႁဝ်းတေၸႂ်ႉတိုဝ်း **Constructor Injection** ဢၼ်ပဵၼ်ပိုၼ်ႉထၢၼ်သုတ်းၶႃႈ။

### Step 1: သၢင်ႈ Dependency (ၶွင်ၸႂ်ႉ)
```kotlin
class NoteRepository {
    fun getNotes() = listOf("Note 1", "Note 2")
}
```

### Step 2: Inject ၶဝ်ႈၸူး ViewModel
တႅၼ်းတွၼ်ႈတႃႇတေတႅမ်ႈ `val repo = NoteRepository()` ၼႂ်း ViewModel၊ ႁဝ်းသူင်ႇမၼ်းၶဝ်ႈၸူး **Constructor** ၶႃႈ:
```kotlin
class NoteViewModel(private val repository: NoteRepository) : ViewModel() {
    val notes = repository.getNotes()
}
```

### Step 3: သၢင်ႈ Factory (ၵူၼ်းသူင်ႇၶွင်)
ၵွပ်ႈဝႃႈ Android ဢမ်ႇပၼ်ႁဝ်းသူင်ႇ Argument ၶဝ်ႈ `ViewModel` လႆႈၵမ်းလဵဝ်၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ **Factory** ၶႃႈ:
```kotlin
class NoteViewModelFactory(private val repository: NoteRepository) : ViewModelProvider.Factory {
    override fun <T : ViewModel> create(modelClass: Class<T>): T {
        return NoteViewModel(repository) as T
    }
}
```


### Step 4: လၢႆးၶူင်သၢင်ႈၸႂ်ႉတိုဝ်း
ႁဝ်းဢမ်ႇၸၢင်ႈသူင်ႇ Repo ၶဝ်ႈၵႂႃႇၼႂ်း ViewModel လႆႈၵမ်းလဵဝ်ၶႃႈ။ 
ၵူၺ်းၵႃႈမိူဝ်ႈ ႁဝ်းၸႂ်ႉ viewModel() function ၼႂ်း Compose ၼၼ်ႉ ႁဝ်းၸၢင်ႈသူင်ႇ Factory ၶဝ်ႈၵႂႃႇၼႂ်း Parameter မၼ်းလႆႈၸိူင်ႉၼႆၶႃႈ
```kotlin
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // 1. သၢင်ႈ Dependency (ၶွင်ၸႂ်ႉ) ဢွၼ်တၢင်း
        val myRepository = NoteRepository()

        // 2. သၢင်ႈ Factory သေသူင်ႇ Repository ၶဝ်ႈၵႂႃႇ
        val myFactory = NoteViewModelFactory(myRepository)

        setContent {
            MyTheme {
                // 3. ႁွင်ႉၸႂ်ႉ viewModel() လူၺ်ႈသူင်ႇ Factory ၶဝ်ႈၵႂႃႇၸွမ်း
                // ၵမ်းၼႆႉ Android တေၸႂ်ႉ Factory ႁဝ်းသၢင်ႈ ViewModel မႃးပၼ်ၶႃႈ
                val viewModel: NoteViewModel = viewModel(factory = myFactory)

                NoteScreen(viewModel = viewModel)
            }
        }
    }
}
```

---

## 4. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇႁဵၼ်း DI?
1. **Decoupling**: Component ၵူႈဢၼ် ဢမ်ႇတိတ်းၸပ်းၵၼ်ႁႅင်းလႄႈ ႁဵတ်းႁႂ်ႈ မႄးငၢႆႈၶႃႈ။
2. **Easy Testing**: ႁဝ်းၸၢင်ႈသူင်ႇ "Database ပွမ်" (Mock) ၶဝ်ႈၵႂႃႇၸၢမ်း Test လႆႈငၢႆႈငၢႆႈၶႃႈ။
3. **Reusability**: ၶွင်ဢၼ်ၼိုင်ႈ ဢဝ်ၵႂႃႇၸႂ်ႉလႆႈလၢႆလၢႆတီႈၶႃႈ။



---

### Summary of Lesson 38
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1. **Dependency Concept**: ပွင်ႇၸႂ်ဝႃႈ Dependency ပဵၼ်သင်။
2. **Injection Logic**: ပွင်ႇၸႂ်ဝႃႈ ႁဵတ်းသင်ၵၢၼ် "သူင်ႇၶေႃႈမုၼ်းၶဝ်ႈ" ၸင်ႇလီလိူဝ်ၵၢၼ် "သၢင်ႈႁင်းမၼ်း"။
3. **Manual Factory**: ၵၢၼ်သၢင်ႈ ViewModelFactory တွၼ်ႈတႃႇသူင်ႇ Repository ၶဝ်ႈၸူး ViewModel။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 38)
1. **Diagramming**: ၸၢမ်းတႅမ်ႈႁၢင်ႈ DI Flow (Repository -> Factory -> ViewModel)။
2. **Code Challenge**: ၸၢမ်းထႅမ်သႂ်ႇ Dependency ထႅင်ႈဢၼ်ၼိုင်ႈ (မိူၼ်ၼင်ႇ `Logger`) ၶဝ်ႈၸူး ViewModel လူၺ်ႈၸႂ်ႉ Constructor Injection။
3. **Preparation**: ၵူတ်ႇထတ်းတူၺ်းဝႃႈ ၼႂ်း Android မီး Library DI ၸိုဝ်ႈသင်လၢႆလၢႆ (Example: Hilt, Koin, Dagger)။