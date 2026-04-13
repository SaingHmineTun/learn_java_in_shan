## Lesson 44: Image Attachments (Local Storage)

### 1. Update Entity: Storing the Image Path
ဢွၼ်တၢင်းသုတ်း၊ ႁဝ်းလူဝ်ႇမႄး `Note` Entity ႁႂ်ႈမၼ်းမီး ႁွင်ႈၵဵပ်းတီႈယူႇႁၢင်ႈ (URI) ၶႃႈ။

```kotlin
@Entity(tableName = "notes_table")
data class Note(
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val title: String,
    val content: String,
    val imageUri: String? = null // 👈 ထႅမ်သႂ်ႇ Path ႁၢင်ႈ (Optional)
)
```

### 2. Photo Picker in Compose
တွၼ်ႈတႃႇလိူၵ်ႈႁၢင်ႈ၊ ႁဝ်းတေၸႂ်ႉ **`rememberLauncherForActivityResult`** ဢၼ်ပဵၼ်လၢႆးမႂ်ႇသုတ်း ဢၼ်ဢမ်ႇလူဝ်ႇမီး Permission ယၢပ်ႇယၢပ်ႇၶႃႈ။

```kotlin
val photoPickerLauncher = rememberLauncherForActivityResult(
    contract = ActivityResultContracts.PickVisualMedia(),
    onResult = { uri -> 
        // ႁပ်ႉဢဝ် URI ႁၢင်ႈဢၼ်လိူၵ်ႈယဝ်ႉ
        selectedImageUri = uri 
    }
)

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ
Button(onClick = {
    photoPickerLauncher.launch(
        PickVisualMediaRequest(ActivityResultContracts.PickVisualMedia.ImageOnly)
    )
}) {
    Text("လိူၵ်ႈႁၢင်ႈ")
}
```



---

### 3. Displaying Images with Coil
တွၼ်ႈတႃႇၼႄႁၢင်ႈလုၵ်ႉတီႈ URI ႁႂ်ႈမၼ်း Smooth လႄႈ ဢမ်ႇၸႂ်ႉ Memory ၼမ်၊ ႁဝ်းလူဝ်ႇထႅမ်သႂ်ႇ Library **Coil** ၶႃႈ။

**Add Dependency:**
```kotlin
implementation("io.coil-kt:coil-compose:2.6.0")
```

**UI Logic:**
```kotlin
AsyncImage(
    model = note.imageUri,
    contentDescription = "Note Image",
    modifier = Modifier.fillMaxWidth().height(200.dp),
    contentScale = ContentScale.Crop
)
```



---

### 4. Permission & Persistable URI (Crucial!)
URI ဢၼ်လုၵ်ႉတီႈ Photo Picker မႃးၼၼ်ႉ မၼ်းမီး "ဢႃယု" ပွတ်းၶႃႈ။ 
ပေႃးပိၵ်ႉ App ယဝ်ႉပိုတ်ႇမႂ်ႇ၊ ႁဝ်းတေလူႁၢင်ႈၼၼ်ႉ ဢမ်ႇလႆႈယဝ်ႉၶႃႈ။

**Solution:** ႁဝ်းလူဝ်ႇ "ၶႂၢင်ႉ" ၵဵပ်းဝႆႉတႃႇသေႇ (Take Persistable URI Permission) ၶႃႈ:
```kotlin
context.contentResolver.takePersistableUriPermission(
    uri, Intent.FLAG_GRANT_READ_URI_PERMISSION
)
```

---

### Summary of Lesson 44
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Data Modeling**: ၵၢၼ်ထႅမ် Column တွၼ်ႈတႃႇၵဵပ်း String Path ၼႂ်း Room။
2.  **Photo Picker**: ၵၢၼ်ၸႂ်ႉ Activity Result API တွၼ်ႈတႃႇလိူၵ်ႈႁၢင်ႈ။
3.  **Coil Integration**: ၵၢၼ်ၸႂ်ႉ AsyncImage တွၼ်ႈတႃႇၼႄႁၢင်ႈ လုၵ်ႉတီႈ URI။
4.  **URI Persistence**: ပွင်ႇၸႂ်ဝႃႈႁဵတ်းႁိုဝ် ႁၢင်ႈႁဝ်းၸင်ႇတေဢမ်ႇႁၢႆ မိူဝ်ႈပိုတ်ႇ App ၶိုၼ်း။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 44)
1.  **UI Challenge**: မႄးႁၢင်ႈၾၢင် `NoteItem` ႁႂ်ႈၼႄႁၢင်ႈ "Thumbnail" လဵၵ်ႉလဵၵ်ႉ ဝႆႉၽၢႆႇၶၢင်ႈလိၵ်ႈ။
2.  **Logic Challenge**: တႅမ်ႈ Function တွၼ်ႈတႃႇ "ယႃႉႁၢင်ႈဢွၵ်ႇ" (Remove Attachment) သင်ဝႃႈလိူၵ်ႈၽိတ်း။
3.  **Refinement**: သႂ်ႇ `Placeholder` လႄႈ `Error Image` ပၼ် Coil မိူဝ်ႈႁၢင်ႈတိုၵ်ႉလူတ်ႇ ဢမ်ႇၼၼ် ႁၢင်ႈႁၢႆၶႃႈ။

---