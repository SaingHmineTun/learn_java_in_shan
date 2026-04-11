## Lesson 43: Advanced Search & Category Filtering

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ **StateFlow** တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် Filter ၶေႃႈမုၼ်း Real-time ၼႂ်း Memory ဢမ်ႇၼၼ် Query လုၵ်ႉတီႈ Database ၵမ်းလဵဝ်ၶႃႈ။

### 1. ViewModel Logic: Combined Streams
ႁဝ်းတေဢဝ် "သၢႆၼမ်ႉ" (Stream) ၶွင် Notes တင်းသဵင်ႈ မႃးၵွင်ႉတင်း "သၢႆၼမ်ႉ" ၶွင် Search Query ၶႃႈ။

```kotlin
class NoteViewModel(private val repository: NoteRepository) : ViewModel() {

    // 1. သၢင်ႈ State တႃႇၵဵပ်းလိၵ်ႈဢၼ်ၶႂ်ႈသွၵ်ႈႁႃ (Search Query)
    var searchQuery by mutableStateOf("")
        private set

    fun onSearchQueryChange(newQuery: String) {
        searchQuery = newQuery
    }

    // 2. ၸႂ်ႉ combine တွၼ်ႈတႃႇ Filter ၶေႃႈမုၼ်းႁင်းၶေႃ
    val filteredNotes = repository.allNotes.combine(
        snapshotFlow { searchQuery } // လႅၵ်ႈ mutableStateOf ပဵၼ် Flow
    ) { notes, query ->
        if (query.isBlank()) {
            notes
        } else {
            notes.filter { 
                it.title.contains(query, ignoreCase = true) || 
                it.content.contains(query, ignoreCase = true) 
            }
        }
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), emptyList())
}
```



---

### 2. UI: The Search Bar
ၼႂ်း `NoteScreen` ႁဝ်း၊ ႁဝ်းလူဝ်ႇသႂ်ႇ **`TextField`** ဝႆႉၽၢႆႇၼိူဝ်သုတ်း တွၼ်ႈတႃႇႁပ်ႉလိၵ်ႈဢၼ်တေႁႃၶႃႈ။

```kotlin
@Composable
fun SearchBar(
    query: String,
    onQueryChange: (String) -> Unit
) {
    OutlinedTextField(
        value = query,
        onValueChange = onQueryChange,
        modifier = Modifier.fillMaxWidth().padding(8.dp),
        placeholder = { Text("သွၵ်ႈႁႃလိၵ်ႈ...") },
        leadingIcon = { Icon(Icons.Default.Search, contentDescription = null) },
        shape = RoundedCornerShape(12.dp)
    )
}
```

---

### 3. Category Filtering (Optional & Professional)
သင်ႁဝ်း ၶႂ်ႈႁႂ်ႈ App ႁဝ်းၶႅၼ်ႇလိူဝ်ၼႆႉ၊ ႁဝ်းၸၢင်ႈထႅမ်သႂ်ႇ **`FilterChip`** တွၼ်ႈတႃႇလိူၵ်ႈ Category (မိူၼ်ၼင်ႇ: တူဝ်ၵဝ်ႇ, ၵၢၼ်ငၢၼ်း, ၵျွင်း) ၶႃႈ။



**Logic Concept:**
* မိူဝ်ႈၵူၼ်းၸႂ်ႉၼဵၵ်းလိူၵ်ႈ Category၊ ႁဝ်းတေ Update `selectedCategory` State။
* ၼႂ်း `combine` function ၽၢႆႇၼိူဝ်၊ ႁဝ်းတေထႅမ်သႂ်ႇ Filter တွၼ်ႈတႃႇ Category ၸွမ်းၶႃႈ။

---

### Summary of Lesson 43
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Flow Combination**: ၵၢၼ်ဢဝ် Flow လၢႆဢၼ်မႃး "ႁူမ်ႈၵၼ်" တွၼ်ႈတႃႇ Filter Data။
2.  **Real-time Search**: ၵၢၼ်ႁဵတ်းႁႂ်ႈ UI လႅၵ်ႈလၢႆႈၸွမ်း လိၵ်ႈဢၼ်ၵူၼ်းၸႂ်ႉတႅမ်ႈႁႃၵမ်းလဵဝ်။
3.  **State Management**: ၵၢၼ်ၸႂ်ႉ `snapshotFlow` တွၼ်ႈတႃႇၵွင်ႉ Compose State ၶဝ်ႈၸူး Reactive Streams (Flow)။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 43)
1.  **UI Challenge**: ထႅမ်သႂ်ႇ "X" Button (Trailing Icon) ၼႂ်း Search Bar တွၼ်ႈတႃႇ "ယႃႉပႅတ်ႈလိၵ်ႈ" (Clear Search) ငၢႆႈငၢႆႈ။
2.  **Logic Challenge**: မႄးႁႂ်ႈမၼ်းႁႃ (Search) လႆႈပႃးၼႂ်း Category ဝႆႉၼႂ်း Database ၸွမ်း။
3.  **Empty Result**: သင်ႁႃဢမ်ႇႁၼ် (Filtered list is empty)၊ ႁႂ်ႈၼႄလိၵ်ႈဝႃႈ "ႁႃဢမ်ႇႁၼ်ၶႃႈ" တႅၼ်းၵၢၼ်ၼႄၼႃႈၸေႃးပဝ်ႇ။

---