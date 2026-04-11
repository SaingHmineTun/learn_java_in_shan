## Lesson 41: CRUD Operations (Create & Read)

### 1. Create: Adding a New Note
တွၼ်ႈတႃႇတေထႅမ် Note မႂ်ႇ၊ ႁဝ်းတေၸႂ်ႉ **`AlertDialog`** တွၼ်ႈတႃႇႁပ်ႉ Title လႄႈ Content လုၵ်ႉတီႈၵူၼ်းၸႂ်ႉၶႃႈ။

**ViewModel Logic:**
```kotlin
fun insertNote(title: String, content: String) {
    if (title.isBlank() || content.isBlank()) return 
    
    viewModelScope.launch {
        val newNote = Note(title = title, content = content)
        repository.insert(newNote)
    }
}
```

**UI (Compose) Logic:**
ၼႆႉပဵၼ် Code တွၼ်ႈတႃႇသၢင်ႈ Dialog ႁပ်ႉၶေႃႈမုၼ်းၶႃႈ:

```kotlin
@Composable
fun AddNoteDialog(
    onDismiss: () -> Unit,
    onConfirm: (String, String) -> Unit
) {
    var title by remember { mutableStateOf("") }
    var content by remember { mutableStateOf("") }

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("ထႅမ်မၢႆတွၼ်ႈမႂ်ႇ") },
        text = {
            Column {
                OutlinedTextField(
                    value = title,
                    onValueChange = { title = it },
                    label = { Text("ႁူဝ်ၶေႃႈ") }
                )
                Spacer(modifier = Modifier.height(8.dp))
                OutlinedTextField(
                    value = content,
                    onValueChange = { content = it },
                    label = { Text("ၼိူဝ်ႉလိၵ်ႈ") }
                )
            }
        },
        confirmButton = {
            Button(onClick = { onConfirm(title, content) }) {
                Text("ၵဵပ်းဝႆႉ")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text("ပိၵ်ႉ") }
        }
    )
}
```


---

### 2. Read: Observing the Data Flow
တွၼ်ႈဢၼ် "ဢၢၼ်ႇ" (Read) ၼႆႉ ႁဝ်းတေၸႂ်ႉ **Flow** တွၼ်ႈတႃႇပႂ်ႉထွမ်ႇၶေႃႈမုၼ်းလုၵ်ႉတီႈ Room Database ႁႂ်ႈမၼ်း Update UI Automatic ၶႃႈ။

**UI Integration:**
```kotlin
@Composable
fun NoteListScreen(viewModel: NoteViewModel) {
    val notes by viewModel.allNotes.collectAsStateWithLifecycle()
    var showDialog by remember { mutableStateOf(false) }

    Scaffold(
        floatingActionButton = {
            FloatingActionButton(onClick = { showDialog = true }) {
                Icon(Icons.Default.Add, contentDescription = "Add")
            }
        }
    ) { padding ->
        if (notes.isEmpty()) {
            // 3. Handling Empty State
            Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                Text("ဢမ်ႇပႆႇမီးမၢႆတွၼ်ႈသင်ၶႃႈ")
            }
        } else {
            LazyColumn(modifier = Modifier.padding(padding)) {
                items(notes) { note ->
                    NoteCard(note) 
                }
            }
        }

        if (showDialog) {
            AddNoteDialog(
                onDismiss = { showDialog = false },
                onConfirm = { title, content ->
                    viewModel.insertNote(title, content)
                    showDialog = false
                }
            )
        }
    }
}
```

### 3. Running the app

```kotlin

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // 1. သၢင်ႈတူဝ် Database (ႁဝ်းလူဝ်ႇၸႂ်ႉ applicationContext)
        val db = Room.databaseBuilder(
            applicationContext,
            NoteDatabase::class.java, 
            "note_database" // ၸိုဝ်ႈၾၢႆႇ Database ၼႂ်းၾူၼ်း
        ).build()

        // 2. ၼဵၵ်းဢဝ် DAO လုၵ်ႉတီႈ Database ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ
        val myDao = db.noteDao()

        // 3. ၵမ်းၼႆႉ သူင်ႇ DAO ၶဝ်ႈၵႂႃႇၼႂ်း Repository လႆႈယဝ်ႉၶႃႈ!
        val myRepository = NoteRepository(myDao)

        // 4. သိုပ်ႇသူင်ႇ Repository ၸူး Factory လႄႈ ViewModel ၸွမ်းၼင်ႇ aj မေႃယဝ်ႉၼၼ်ႉၶႃႈ
        val myFactory = NoteViewModelFactory(myRepository)

        setContent {
            ShanNoteProTheme {
                val viewModel: NoteViewModel = viewModel(factory = myFactory)
                NoteListScreen(viewModel)
            }
        }
    }
}
```


---

### Summary of Lesson 41
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1. **Create Operation**: ၵၢၼ်ၸႂ်ႉ `AlertDialog` လႄႈ `TextField` တွၼ်ႈတႃႇသူင်ႇ Data ၸူး Database။
2. **Read Operation**: ၵၢၼ်ၸႂ်ႉ `collectAsStateWithLifecycle` တွၼ်ႈတႃႇၼႄ Data ဢၼ်လႅၵ်ႈလၢႆႈယူႇတႃႇသေႇ။
3. **Reactive UI**: ပွင်ႇၸႂ်ဝႃႈ မိူဝ်ႈထႅမ် Data ယဝ်ႉ UI တေလႅၵ်ႈလၢႆႈႁင်းမၼ်းလူၺ်ႈဢမ်ႇလူဝ်ႇ Refresh။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 41)
1. **UI Challenge**: မႄးႁၢင်ႈၾၢင် `NoteCard` ႁႂ်ႈမီးသီ လႄႈ Shadow (Elevation) ႁၢင်ႈလီ။
2. **Validation**: ၼႂ်း `AddNoteDialog`၊ သင်ဝႃႈ `title` ပဝ်ႇဝႆႉယူႇ ႁႂ်ႈ Button "ၵဵပ်းဝႆႉ" ၼၼ်ႉၼဵၵ်းဢမ်ႇလႆႈ (Enabled = false)။
3. **Refinement**: သႂ်ႇ `maxLines` ပၼ် TextField ၼႂ်း Dialog ႁႂ်ႈမၼ်းတူၺ်းငၢႆႈ။

---

**aj ၶႃႈ၊ ပေႃးႁဝ်း "ထႅမ်" လႄႈ "ဢၢၼ်ႇ" လႆႈယဝ်ႉၼႆ ၼႂ်း Lesson 42 ႁဝ်းတေၵႂႃႇသိုပ်ႇလွင်ႈ "မႄး" (Update) လႄႈ "ယႃႉ" (Delete) ႁႂ်ႈမၼ်းတဵမ်ထူၼ်ႈ CRUD ၶႃႈ! aj सजाု (Ready) တႃႇသိုပ်ႇယဝ်ႉႁိုဝ်ၶႃႈ?**