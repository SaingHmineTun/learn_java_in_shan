## Lesson 46: Data Export & Sharing

မိူဝ်ႈၵူၼ်းၸႂ်ႉတႅမ်ႈမၢႆတွင်းယဝ်ႉယဝ်ႉၼၼ်ႉ ၶဝ်ၵႆႉၶႂ်ႈသူင်ႇလိၵ်ႈၼၼ်ႉပၼ်ပိူၼ်ႈ ဢမ်ႇၼၼ် ၵဵပ်းဝႆႉၼႂ်း Memory ၾူၼ်းၶႃႈ။

### 1. Simple Text Sharing (Android Intent)
ဢၼ်ၼႆႉပဵၼ်လၢႆးဢၼ်ငၢႆႈသုတ်း လႄႈ ၸႂ်ႉတိုဝ်းၼမ်သုတ်းၶႃႈ။ ႁဝ်းတေၸႂ်ႉ **`Intent`** တွၼ်ႈတႃႇႁွင်ႉ "Sheet" ၶွင် Android ဢွၵ်ႇမႃး ႁႂ်ႈၵူၼ်းၸႂ်ႉလိူၵ်ႈ App ဢၼ်ၶဝ်ၶႂ်ႈသူင်ႇၶႃႈ။

```kotlin
fun shareNote(context: Context, title: String, content: String) {
    val sendIntent: Intent = Intent().apply {
        action = Intent.ACTION_SEND
        putExtra(Intent.EXTRA_TEXT, "$title\n\n$content")
        type = "text/plain"
    }

    val shareIntent = Intent.createChooser(sendIntent, "သူင်ႇမၢႆတွင်းလူၺ်ႈ...")
    context.startActivity(shareIntent)
}
```



### 2. Exporting to TXT File
သင်ၵူၼ်းၸႂ်ႉၶႂ်ႈၵဵပ်းဝႆႉပဵၼ်ၾၢႆႇ `.txt` ၼႂ်းၾူၼ်းၼႆ ႁဝ်းတေၸႂ်ႉ **`ActivityResultContracts.CreateDocument`** ၶႃႈ။ 
လၢႆးၼႆႉမၼ်းလီၵွပ်ႈဝႃႈ ႁဝ်းဢမ်ႇလူဝ်ႇမီး Permission ၼၵ်းၼၵ်း၊ မၼ်းတေပိုတ်ႇ File Picker ႁႂ်ႈၵူၼ်းၸႂ်ႉလိူၵ်ႈတီႈၵဵပ်းႁင်းမၼ်းၶႃႈ။

```kotlin
val createFileLauncher = rememberLauncherForActivityResult(
    contract = ActivityResultContracts.CreateDocument("text/plain"),
    onResult = { uri ->
        uri?.let { 
            // 👈 တႅမ်ႈ Data ၶဝ်ႈၼႂ်းၾၢႆႇ (ၸႂ်ႉ OutputStream)
            context.contentResolver.openOutputStream(it)?.use { stream ->
                stream.write(fullContent.toByteArray())
            }
        }
    }
)

// ႁွင်ႉၸႂ်ႉ
createFileLauncher.launch("my_note.txt")
```

### 3. Sharing Images (If Attached)
သင်မၢႆတွင်းႁဝ်းမီးႁၢင်ႈ (လုၵ်ႉတီႈ Lesson 44)၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`FileProvider`** တွၼ်ႈတႃႇသူင်ႇ "ၶႂၢင်ႉ" (Permission) ႁႂ်ႈ App တၢင်ႇဢၼ်ဢၢၼ်ႇႁၢင်ႈၼၼ်ႉလႆႈၸွမ်းၶႃႈ။ 
ဢၼ်ၼႆႉတေယၢပ်ႇလိူဝ် Plain Text ဢိတ်းၼိုင်ႈ ၵွပ်ႈလူဝ်ႇ Setup ၼႂ်း `AndroidManifest.xml` ၶႃႈ။



---

### Summary of Lesson 46
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Implicit Intents**: ၵၢၼ်ၸႂ်ႉ System Share Sheet တွၼ်ႈတႃႇသူင်ႇ Data။
2.  **Storage Access Framework (SAF)**: ၵၢၼ်သၢင်ႈၾၢႆႇ လႄႈ ၵဵပ်း Data လုၵ်ႉတီႈ App ၸူး Local Storage။
3.  **Context in Compose**: ၵၢၼ်ၸႂ်ႉ `LocalContext.current` တွၼ်ႈတႃႇႁွင်ႉ Activity-based Actions။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 46)
1.  **UI Challenge**: ထႅမ်သႂ်ႇ "Share Icon" ဝႆႉၼႂ်း TopAppBar ဢမ်ႇၼၼ် ၼႂ်း Note Card ႁင်းမၼ်း။
2.  **Logic Task**: မႄးႁႂ်ႈၾၢႆႇ Export ၼၼ်ႉ သႂ်ႇဝၼ်းယၢမ်း (Timestamp) ၸွမ်းၼႂ်းၸိုဝ်ႈၾၢႆႇ Automatic (Example: `Note_20260413.txt`)။
3.  **Advanced (Research)**: ၸၢမ်းႁႃတူၺ်းဝႃႈ သင်ႁဝ်းၶႂ်ႈ Export ပဵၼ် **PDF**၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ Library ၸိုဝ်ႈသင်? (Hint: `PdfDocument` ဢမ်ႇၼၼ် `iText`)။

---