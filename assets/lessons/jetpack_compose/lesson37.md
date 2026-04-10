## Lesson 37: ViewModel & StateFlow Deep Dive

မိူဝ်ႈႁဝ်းတႅမ်ႈ App ယႂ်ႇယႂ်ႇ၊ ႁဝ်းလူဝ်ႇလၢႆးၵၢၼ်ဢၼ်ၸၢင်ႈ "ပႂ်ႉထွမ်ႇ" (Observe) ၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း လုၵ်ႉတီႈ ViewModel ၸူး UI ႁႂ်ႈမၼ်းတႅတ်ႈတေႃးသုတ်းၶႃႈ။

### 1. StateFlow ပဵၼ်သင်?
**StateFlow** ပဵၼ် "သၢႆၼမ်ႉ" (Flow) ဢၼ်မီး "ၵႃႈၶၼ်" (Value) တႃႇသေႇ။ မၼ်းမိူၼ်တင်း `LiveData` ၵွၺ်းၵႃႈမၼ်းႁဵတ်းၵၢၼ်ၸွမ်း Kotlin Coroutines ဢၼ်ဝႆး လႄႈ ၸႂ်ႉငၢႆႈလိူဝ်ၶႃႈ။
* **MutableStateFlow:** ၸႂ်ႉၼႂ်း ViewModel တွၼ်ႈတႃႇ "မႄး" ၶေႃႈမုၼ်း။
* **StateFlow (Read-only):** ၸႂ်ႉတွၼ်ႈတႃႇပၼ် UI "ဢၢၼ်ႇ" ၶေႃႈမုၼ်းၵွၺ်း။



### 2. Implementation: The Pro Way
ၼႂ်း `Shan Note Pro` ႁဝ်း၊ ႁဝ်းတေၸတ်းၵၢၼ် State ၼင်ႇၼႆၶႃႈ:

```kotlin
class NoteViewModel : ViewModel() {
    // 1. တင်ႈ "သၢႆၼမ်ႉ" ၶေႃႈမုၼ်း (Private တႃႇမႄးၼႂ်းၼႆႉၵွၺ်း)
    private val _notes = MutableStateFlow<List<Note>>(emptyList())
    
    // 2. ပိုတ်ႇ "သၢႆၼမ်ႉ" တႃႇဢၢၼ်ႇ (Public တႃႇ UI)
    val notes: StateFlow<List<Note>> = _notes.asStateFlow()

    fun addNote(title: String, content: String) {
        val newNote = Note(title, content)
        // 3. Update ၵႃႈၼမ်မႂ်ႇၶဝ်ႈၼႂ်းသၢႆၼမ်ႉ
        _notes.value = _notes.value + newNote
    }
}
```

### 3. Collecting State in Compose
တွၼ်ႈတႃႇ UI တေႁူႉဝႃႈ `StateFlow` လႅၵ်ႈလၢႆႈ၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ `collectAsStateWithLifecycle()` ၶႃႈ။ (ဢၼ်ၼႆႉၸွႆႈႁၵ်ႉသႃ Battery ၵွပ်ႈမၼ်းတေ "ယူတ်း" ၵၢၼ်လူတ်ႇ Data မိူဝ်ႈၵူၼ်းၸႂ်ႉပိၵ်ႉ App ဝႆႉၶႃႈ)

```kotlin
@Composable
fun NoteListScreen(viewModel: NoteViewModel) {
    // 4. "တၵ်း" ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈသၢႆၼမ်ႉ ၸူး Compose State
    val notes by viewModel.notes.collectAsStateWithLifecycle()

    LazyColumn {
        items(notes) { note ->
            NoteCard(note)
        }
    }
}
```



---

### Summary of Lesson 37
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Reactive Streams**: ပွင်ႇၸႂ်ဝႃႈ StateFlow ၸွႆႈသူင်ႇ Data လုၵ်ႉတီႈ ViewModel ၸူး UI ၸိူင်ႉႁိုဝ်။
2.  **Encapsulation**: ၵၢၼ်သိူၵ်ႇ `MutableStateFlow` ဝႆႉၽၢႆႇၼႂ်း (Private) တွၼ်ႈတႃႇလွင်ႈႁူမ်ႇလူမ်ႈၶေႃႈမုၼ်း။
3.  **Lifecycle Awareness**: ၵၢၼ် "တၵ်း" ဢဝ် Data ႁႂ်ႈထုၵ်ႇတႅတ်ႈၸွမ်း Lifecycle ၶွင် Android။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 37)
1.  **State Management**: ၸၢမ်းထႅမ်သႂ်ႇ `MutableStateFlow<String>("")` တွၼ်ႈတႃႇၵုမ်းၵၢၼ်လိၵ်ႈ Search ၼႂ်း ViewModel။
2.  **Dependency Addition**: ထႅမ်သႂ်ႇ Library `androidx.lifecycle:lifecycle-runtime-compose` ၼႂ်း Project။
3.  **Logic Challenge**: ၸၢမ်းတႅမ်ႈ Function `deleteNote(note: Note)` ၼႂ်း ViewModel သေ Update `_notes.value` လူၺ်ႈၵၢၼ် filter ဢွၵ်ႇၶႃႈ။