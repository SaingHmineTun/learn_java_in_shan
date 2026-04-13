## Lesson 45: Rich Text Interop (Markdown/HTML)

မိူဝ်ႈႁဝ်းတႅမ်ႈမၢႆတွင်းၼၼ်ႉ ပေႃးမၼ်းပဵၼ်လိၵ်ႈပဝ်ႇပဝ်ႇ (Plain Text) တင်းသဵင်ႈ မၼ်းတေဢၢၼ်ႇယၢပ်ႇၶႃႈ။ 
**Markdown** ပဵၼ် Standard ဢၼ် Developer ၵမ်ႈၼမ် ၸႂ်ႉၵၼ် တွၼ်ႈတႃႇတႅမ်ႈမၢႆတွင်းၶႃႈ။

### 1. Why Markdown?
Markdown ၸွႆႈႁႂ်ႈႁဝ်းတႅမ်ႈလိၵ်ႈလႆႈဝႆး:
* `# Header` -> ႁူဝ်ၶေႃႈယႂ်ႇ
* `**Bold**` -> **လိၵ်ႈၼႃ**
* `* Bullet` -> သဵၼ်ႈမၢႆ (List)



### 2. Integration: Using a Markdown Library
ၼႂ်း Compose ၼၼ်ႉ `Text()` ထမ်ႇမတႃႇ တေပႆႇပွင်ႇၸႂ် Markdown ၶႃႈ။ 
ႁဝ်းလူဝ်ႇၸႂ်ႉ Library ဢၼ်ၸိုဝ်ႈဝႃႈ **Compose-Rich-Editor** ဢမ်ႇၼၼ် **JMarkiv** ၶႃႈ။

**Add Dependency (Example: Coil-based MD):**
```kotlin
implementation("com.github.jeziellago:compose-markdown:0.5.0")
```

### 3. Displaying Markdown in UI
တႅၼ်းတွၼ်ႈတႃႇတေၸႂ်ႉ `Text(note.content)`၊ ႁဝ်းတေလႅၵ်ႈမႃးၸႂ်ႉ:

```kotlin
@Composable
fun NoteDetailScreen(note: Note) {
    Column(modifier = Modifier.padding(16.dp)) {
        Text(text = note.title, style = MaterialTheme.typography.headlineMedium)
        
        Spacer(modifier = Modifier.height(8.dp))
        
        // 👈 ၸႂ်ႉ Markdown Component တွၼ်ႈတႃႇၼႄလိၵ်ႈ
        MarkdownText(
            markdown = note.content,
            style = MaterialTheme.typography.bodyLarge,
            color = MaterialTheme.colorScheme.onBackground
        )
    }
}
```



### 4. Rich Text Styling with AnnotatedString
သင် ႁဝ်းဢမ်ႇၶႂ်ႈၸႂ်ႉ Library ၼႆ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`AnnotatedString`** တွၼ်ႈတႃႇသႂ်ႇသီ (Colors) ဢမ်ႇၼၼ် ႁဵတ်းလိၵ်ႈၼႃ (Bold) လႆႈၶႃႈ:

```kotlin
val annotatedString = buildAnnotatedString {
    append("ယိၼ်းလီႁပ်ႉတွၼ်ႈ")
    withStyle(style = SpanStyle(fontWeight = FontWeight.Bold, color = Color.Blue)) {
        append("Shan Note Pro")
    }
}
Text(text = annotatedString)
```

---

### Summary of Lesson 45
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Markdown Basics**: ပွင်ႇၸႂ်ပၵ်းပိူင်ၵၢၼ်တႅမ်ႈ Markdown။
2.  **External Libraries**: ၵၢၼ်ထႅမ်သႂ်ႇ Tool တွၼ်ႈတႃႇဢၢၼ်ႇ Markdown ၼႂ်း Compose။
3.  **AnnotatedString**: ၵၢၼ်သႂ်ႇ Style ႁႂ်ႈလိၵ်ႈၼႂ်း App ႁဝ်းႁၢင်ႈလီ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 45)
1.  **UI Challenge**: တႅမ်ႈ "Preview Mode" တွၼ်ႈတႃႇတူၺ်းႁၢင်ႈၾၢင် Markdown ဢၼ်ႁဝ်းတႅမ်ႈယဝ်ႉ။
2.  **Creative Task**: ၸၢမ်းတႅမ်ႈ Note ၼိုင်ႈဢၼ် လူၺ်ႈၸႂ်ႉ Markdown တင်းသဵင်ႈ (မီး Header, Bold, လႄႈ Links)။
3.  **Research**: ၸၢမ်းႁႃတူၺ်းဝႃႈ ႁဝ်းတေလႅၵ်ႈ HTML ႁႂ်ႈပဵၼ် AnnotatedString လႆႈၸိူင်ႉႁိုဝ်?

---