## Lesson 42: CRUD Operations (Update & Delete)

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေၸတ်းၵၢၼ် Note ဢၼ်မီးဝႆႉယဝ်ႉ ႁႂ်ႈမၼ်းလႅၵ်ႈလၢႆႈ ဢမ်ႇၼၼ် ႁၢႆၵႂႃႇၸွမ်းၵၢၼ်ၸႂ်ႉတိုဝ်းၶႃႈ။

### 1. Update: Editing Existing Notes
ၵၢၼ်မႄး Note ၼၼ်ႉ ပၢႆးဝူၼ်ႉမၼ်းမိူၼ်တင်းၵၢၼ် "ထႅမ်" (Insert) ၶႃႈ။ ၵွၺ်းၵႃႈ ႁဝ်းလူဝ်ႇသူင်ႇ **ID** ဢၼ်ၵဝ်ႇၶဝ်ႈၵႂႃႇ ႁႂ်ႈ Room Database ႁူႉဝႃႈတေလႆႈမႄးတီႈလႂ်ၶႃႈ။

**ViewModel Logic:**
```kotlin
fun updateNote(note: Note) {
    viewModelScope.launch {
        repository.update(note)
    }
}
```

**UI Logic (The Edit Dialog):**
ႁဝ်းၸၢင်ႈၸႂ်ႉ `AddNoteDialog` ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း Lesson 41 ၼၼ်ႉမႃးၸႂ်ႉၶိုၼ်း (Reuse) လႆႈၶႃႈ။ ၵွၺ်းၵႃႈ ႁဝ်းလူဝ်ႇသူင်ႇ Data ဢၼ်ၵဝ်ႇၶဝ်ႈၵႂႃႇဝႆႉၼႂ်း TextField ဢွၼ်တၢင်းၶႃႈ။

---

### 2. Delete: Swipe-to-Dismiss
တွၼ်ႈတႃႇၵၢၼ် "ယႃႉ" (Delete) ၼၼ်ႉ၊ တႅၼ်းတွၼ်ႈတႃႇတေၼဵၵ်း Button ပဝ်ႇပဝ်ႇ၊ ႁဝ်းတေသႁဵတ်း **Animation Swipe** (လၢၵ်ႈပႅတ်ႈ) ႁႂ်ႈမိူၼ် App Professional ၶႃႈ။



**UI Integration (Swipe Action):**
ၼႂ်း `LazyColumn` ႁဝ်း၊ ႁဝ်းတေႁူမ်ႇ `NoteCard` လူၺ်ႈ **`SwipeToDismissBox`** ၶႃႈ:

```kotlin
val dismissState = rememberSwipeToDismissBoxState(
    confirmValueChange = { value ->
        if (value == SwipeToDismissBoxValue.EndToStart) {
            viewModel.deleteNote(note) // ႁွင်ႉယႃႉၼႂ်း Database
            true
        } else false
    }
)

SwipeToDismissBox(
    state = dismissState,
    backgroundContent = { /* ၼႄသီလႅင် ဢမ်ႇၼၼ် Icon ယႃႉ */ },
    content = { NoteCard(note) }
)
```

---

### 3. Undo Action (Snackbar)
မိူဝ်ႈႁဝ်းယႃႉ Note ၵႂႃႇယဝ်ႉ၊ ၵႆႉမီးၵူၼ်းၸႂ်ႉဢၼ် "ၼဵၵ်းၽိတ်း" ၶႃႈ။ ႁဝ်းလူဝ်ႇမီး **Snackbar** တွၼ်ႈတႃႇပၼ်ၶဝ် "Undo" (ဢဝ်ၶိုၼ်း) ၶႃႈ။
ber

```kotlin
val scope = rememberCoroutineScope()
val snackbarHostState = remember { SnackbarHostState() }

// မိူဝ်ႈယႃႉယဝ်ႉ ၼႄ Snackbar
val result = snackbarHostState.showSnackbar(
    message = "ယႃႉမၢႆတွၼ်ႈယဝ်ႉယဝ်ႉ",
    actionLabel = "Undo"
)

if (result == SnackbarResult.ActionPerformed) {
    viewModel.insertNote(deletedNote) // ဢဝ်ၶိုၼ်းၶဝ်ႈ Database
}
```

တႃႇၼႄပၼ် SnackBar လႆႈၼၼ်ႉ ၼႂ်း Scaffold ႁဝ်းၼၼ်ႉ တေလႆႈသႂ်ႇပၼ် SnackBarHost ၼင်ႇတီႈတႂ်ႈၼႆႉၶႃႈ

```kotlin

Scaffold(
    snackbarHost =  { SnackbarHost(hostState = snackBarHostState) }
)
```



---

### Summary of Lesson 42
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1. **Update Operation**: ၵၢၼ်မႄးၶေႃႈမုၼ်းလူၺ်ႈၸႂ်ႉ Primary Key (ID) ဢၼ်ၵဝ်ႇ။
2. **Delete Operation**: ၵၢၼ်ၸႂ်ႉ Swipe Animation တွၼ်ႈတႃႇယႃႉ Data။
3. **UX Improvement**: ၵၢၼ်ၸႂ်ႉ Snackbar တွၼ်ႈတႃႇႁဵတ်း Undo Action။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 42)
1. **UI Challenge**: ထႅမ်သႂ်ႇ Icon "မႄး" (Edit) ဝႆႉၼႂ်း Card။ ပေႃးၼဵၵ်းယဝ်ႉ ႁႂ်ႈမၼ်းပိုတ်ႇ Dialog ဢၼ်မီး Data ၵဝ်ႇဝႆႉယဝ်ႉ။
2. **Animation**: ၸၢမ်းမႄးသီ Background ၶွင် Swipe ႁႂ်ႈပဵၼ်သီလႅင် မိူဝ်ႈလၢၵ်ႈၵႂႃႇၽၢႆႇသၢႆႉ။
3. **Safety**: သႂ်ႇ "Confirmation Dialog" (ထၢမ်ၶိုၼ်းဝႃႈ တေယႃႉတႄႉႁိုဝ်?) ဢွၼ်တၢင်းတေယႃႉ Note ဢၼ်လွင်ႈယႂ်ႇၶႃႈ။

---
