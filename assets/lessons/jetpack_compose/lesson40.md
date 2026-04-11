## Lesson 40: Repository Pattern & Coroutines

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေသွၼ်ၵၢၼ်ၸတ်းပၵ်းပိူင် Code ႁႂ်ႈမၼ်း "သႅၼ်ႈသႂ်" (Clean) သေ ၸႂ်ႉ **Coroutines** တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် Background ႁႂ်ႈ App ႁဝ်းလႅၼ်ႈလႆႈ Smooth ၶႃႈ။

### 1. Repository Pattern ပဵၼ်သင်?
**Repository** ပဵၼ် "ၵူၼ်းၵၢင်" ၼႂ်းၵႄႈ ViewModel လႄႈ Data Sources (Room DB)။
* **ViewModel**: ဢမ်ႇလူဝ်ႇႁူႉဝႃႈ Room Database ႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်။ မၼ်းၵွၺ်းလူဝ်ႇသင်ႇဝႃႈ "ဢဝ် Note တင်းသဵင်ႈမႃးပၼ်ၵဝ်" ၼႆၵွၺ်းၶႃႈ။
* **Repository**: မၼ်းတေၵႂႃႇႁွင်ႉၸႂ်ႉ DAO သေဢဝ်ၶေႃႈမုၼ်းသူင်ႇပၼ် ViewModel ၶိုၼ်းၶႃႈ။



### 2. Implementation: NoteRepository
ႁဝ်းတေတႅမ်ႈ Class ၼိုင်ႈဢၼ် တွၼ်ႈတႃႇၵွင်ႉတင်း `NoteDao` ၶႃႈ:

```kotlin
class NoteRepository(private val noteDao: NoteDao) {

    // 1. ႁွင်ႉဢဝ် Note တင်းသဵင်ႈ (ပဵၼ် Flow ႁႂ်ႈမၼ်း Update UI Automatic)
    val allNotes: Flow<List<Note>> = noteDao.getAllNotes()

    // 2. ၵၢၼ်ထႅမ် Note (ၸႂ်ႉ suspend တွၼ်ႈတႃႇ Coroutines)
    suspend fun insert(note: Note) {
        noteDao.insertNote(note)
    }

    // 3. ၵၢၼ်ယႃႉ Note
    suspend fun delete(note: Note) {
        noteDao.deleteNote(note)
    }
}
```

### 3. Networking & Coroutines (`viewModelScope`)
ၵၢၼ်တႅမ်ႈ Code ၵွင်ႉတင်း Database ၼၼ်ႉ မၼ်းၸၢင်ႈလႆႈပႂ်ႉႁိုဝ်ၶႃႈ (Time-consuming)။ ပေႃးႁဝ်းႁဵတ်းၼႂ်း Main Thread (တီႈၼႄ UI)၊ App ႁဝ်းတေၸၢင်ႈၶမ်ၵိုတ်း (Freeze) ၶႃႈ။ ၵွပ်ႈၼႆ ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ **Coroutines** ၶႃႈ။

ၼႂ်း **`NoteViewModel`**၊ ႁဝ်းတေႁွင်ႉၸႂ်ႉ Repository ၸိူင်ႉၼႆၶႃႈ:

```kotlin
class NoteViewModel(private val repository: NoteRepository) : ViewModel() {

    // ဢၢၼ်ႇ Data လုၵ်ႉတီႈ Flow ၼႂ်း Repository ၸူး UI
    val notes = noteRepository.notes.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5000),
        initialValue = emptyList()
    )

    fun addNote(title: String, content: String) {
        // ၸႂ်ႉ viewModelScope တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် Background Thread
        viewModelScope.launch {
            val newNote = Note(title = title, content = content)
            repository.insert(newNote)
        }
    }
}
```



---

### Summary of Lesson 40
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1. **Kotlin Coroutines**: ၵၢၼ်ၸႂ်ႉ `suspend` လႄႈ `launch` တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် Background။
2. **viewModelScope**: ၵၢၼ်ၸတ်းၵၢၼ် Coroutines ႁႂ်ႈလွတ်ႈၽေး Memory Leak။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 40)
1. **Coding**: ထႅမ်သႂ်ႇ Function `updateNote(note: Note)` ၼႂ်း Repository လႄႈ ViewModel။
2. **Analysis**: ၸၢမ်းႁႃတူၺ်းဝႃႈ `Dispatchers.IO` လႄႈ `Dispatchers.Main` ပႅၵ်ႇပိူင်ႈၵၼ်ၸိူင်ႉႁိုဝ်?
3. **Refactor**: ၸၢမ်းလႅၵ်ႈလၢႆႈ ViewModel ဢၼ်ၵဝ်ႇ (Module 2-4) ႁႂ်ႈမႃးၸႂ်ႉ `viewModelScope` ၶႃႈ။