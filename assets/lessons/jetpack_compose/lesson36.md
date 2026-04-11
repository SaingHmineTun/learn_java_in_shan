## Lesson 36: Introduction to MVVM Architecture

မိူဝ်ႈ App ႁဝ်းယႂ်ႇမႃး၊ ပေႃးႁဝ်းတႅမ်ႈ Code တင်းသဵင်ႈ (UI, Logic, Database) ဝႆႉၼႂ်းၼႃႈၸေႃးလဵဝ်ၵၼ်၊ မၼ်းတေ "သုၵ်ႉ" (Messy) လႄႈ မႄးယၢပ်ႇ။ **MVVM** ၸင်ႇပဵၼ်ပၵ်းပိူင်ဢၼ် Google ပၼ်ႁႅင်းႁႂ်ႈၸႂ်ႉ (Recommended) တွၼ်ႈတႃႇ Android Developer ၵူႈၵေႃႉၶႃႈ။

### 1. MVVM ပွင်ႇဝႃႈသင်?
MVVM ၼႆႉမၼ်းၸႅၵ်ႇ Code ႁဝ်းပဵၼ် 3 တွၼ်ႈယႂ်ႇၶႃႈ:
* **M (Model)**: ပဵၼ်တွၼ်ႈ "ၶေႃႈမုၼ်း" (Data)။ မၼ်းၵဵပ်းဝႆႉဝႃႈ Note ႁဝ်းမီးသင်လၢႆလၢႆ (Title, Content)။
* **V (View)**: ပဵၼ်တွၼ်ႈ "ႁၢင်ႈၾၢင်" (UI)။ ၼႂ်း Compose ႁဝ်းၼၼ်ႉ မၼ်းမီးၼႃႈတီႈ "ၼႄႁၢင်ႈ" လႄႈ "ႁပ်ႉၵၢၼ်ၼဵၵ်း" လုၵ်ႉတီႈၵူၼ်းၸႂ်ႉ လၢႆလၢႆၵူၺ်းၶႃႈ။
* **VM (ViewModel)**: ပဵၼ် "ၵူၼ်းၵၢင်"။ မၼ်းပဵၼ်တီႈၵဵပ်း Logic တင်းသဵင်ႈ။ မၼ်းတေဢဝ် Data လုၵ်ႉတီႈ Model မႃး "ပၼ်ႇ" (Process) သေသူင်ႇပၼ် View ၼႄၶႃႈ။



### 2. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ MVVM?
* **Separation of Concerns**: UI ႁဵတ်းၵၢၼ် UI၊ Logic ႁဵတ်းၵၢၼ် Logic၊ ဢမ်ႇၶဝ်ႈၵဝ်းၵၼ်။
* **Survival Across Rotation**: မိူဝ်ႈႁဝ်းပၼ်ႇၾူၼ်း (Rotate Screen), `Activity` တေၺႃးယႃႉပႅတ်ႈသေတႅမ်ႈမႂ်ႇ၊ ၵွၺ်းၵႃႈ `ViewModel` တေတိုၵ်ႉ "ယူႇၼိမ်" ဝႆႉ၊ ႁဵတ်းႁႂ်ႈ Data ႁဝ်းဢမ်ႇႁၢႆၶႃႈ။
* **Testability**: ႁဝ်းၸၢင်ႈၸၢမ်း Test Logic ၼႂ်း ViewModel လႆႈလူၺ်ႈဢမ်ႇလူဝ်ႇပိုတ်ႇ Emulator ၶႃႈ။

---

### 3. Implementation Concept (Preview)

ႁဝ်းမႃးတူၺ်း ၵၢၼ်တႅမ်ႈ Code ၸိူင်ႉၼႆၶႃႈ:

```kotlin
// 1. Model (Data)
data class Note(val title: String, val content: String)

// 2. ViewModel (Logic)
class NoteViewModel : ViewModel() {
    // ၵဵပ်း State ဝႆႉတီႈၼႆႈ ႁႂ်ႈမၼ်း Safe မိူဝ်ႈ Rotate Screen
    var notes by mutableStateOf(listOf<Note>())
        private set

    fun addNote(note: Note) {
        notes = notes + note
    }
}

// 3. View (UI in Compose)
@Composable
fun NoteScreen(viewModel: NoteViewModel) {
    // ၼႄ UI ၸွမ်းၼင်ႇ Data ၼႂ်း ViewModel
    LazyColumn {
        items(viewModel.notes) { note ->
            Text(note.title)
        }
    }
}

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            ShanNoteProTheme {
                val vm: NoteViewModel = viewModel()
                Scaffold(modifier = Modifier.fillMaxSize(), floatingActionButton = {
                    FloatingActionButton(onClick = {
                        vm.addNote(Note("title", "content"))
                    }) {
                        Icon(Icons.Default.Add, contentDescription = "Add")
                    }
                }) { innerPadding ->
                    NoteScreen(modifier = Modifier.padding(innerPadding), viewModel = vm)
                }
            }
        }
    }
}
```

---

### Summary of Lesson 36
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Core Concept**: ပွင်ႇၸႂ်လွင်ႈၵၢၼ်ၸႅၵ်ႇ Code ၸွမ်းၼင်ႇပၵ်းပိူင် MVVM။
2.  **Responsibility**: ၼႃႈတီႈၶွင် Model, View, လႄႈ ViewModel။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 36)
1.  **Draw the Flow**: ၸၢမ်းတႅမ်ႈႁၢင်ႈ (Diagram) ဝႃႈ Data မၼ်းလႆ (Flow) လုၵ်ႉတီႈလႂ်ၵႂႃႇတီႈလႂ် ၼႂ်း MVVM။
2.  **Research**: ၸၢမ်းႁႃတူၺ်းဝႃႈ လိူဝ်သေ MVVM ယဝ်ႉ၊ မီး Architecture ထႅင်ႈလၢႆဢၼ် (မိူၼ်ၼင်ႇ MVI ဢမ်ႇၼၼ် MVP) ယူႇႁိုဝ်?
3.  **Setup Project**: တင်ႈၵၢၼ် Project မႂ်ႇ "Shan Note Pro" သေထႅမ်သႂ်ႇ Dependency ၶွင် ViewModel: `implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.8.0")`။