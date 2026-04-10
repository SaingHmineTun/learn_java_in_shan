## Lesson 26: Sharing with Android Intents

ၼႂ်း Android ၼႆႉ **Intent** ပဵၼ်ၵၢၼ်သူင်ႇၶေႃႈမုၼ်းၶၢမ်ႈ App ၶႃႈ။ 
တွၼ်ႈတႃႇ Converter ႁဝ်း၊ ႁဝ်းတေၸႂ်ႉ **Implicit Intent** တွၼ်ႈတႃႇသူင်ႇလိၵ်ႈ (Text) ၶႃႈ။

### 1. ႁူႉၸၵ်း Action_Send
မိူဝ်ႈႁဝ်းၶႂ်ႈ Share လိၵ်ႈ၊ ႁဝ်းလူဝ်ႇလၢတ်ႈၼႄ System 3 လွင်ႈၶႃႈ:
* **Action:** `Intent.ACTION_SEND` (ၶႂ်ႈသူင်ႇၶေႃႈမုၼ်း)
* **Type:** `text/plain` (ၶေႃႈမုၼ်းဢၼ်သူင်ႇၼႆႉ ပဵၼ်လိၵ်ႈထမ်ႇမတႃႇ)
* **Extra:** လိၵ်ႈဢၼ်ႁဝ်းၶႂ်ႈ Share (Output Text)



### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ Context ၼႂ်း Compose
တွၼ်ႈတႃႇတေ "ပိုတ်ႇ" (Start) Activity မႂ်ႇ၊ ႁဝ်းလူဝ်ႇမီး **Context** ၶႃႈ။ ၼႂ်း Compose ႁဝ်းႁွင်ႉၸႂ်ႉလႆႈငၢႆႈငၢႆႈၶႃႈ:

```kotlin
val context = LocalContext.current
```

### 3. တူဝ်ယၢင်ႇ Code ၵၢၼ် Share
ႁဝ်းတေၵေႃႇသၢင်ႈ Function ၼိုင်ႈဢၼ် တွၼ်ႈတႃႇ Share လိၵ်ႈၶႃႈ:

```kotlin
fun shareText(context: Context, text: String) {
    // 1. ၵေႃႇသၢင်ႈ Intent
    val sendIntent: Intent = Intent().apply {
        action = Intent.ACTION_SEND
        putExtra(Intent.EXTRA_TEXT, text)
        type = "text/plain"
    }

    // 2. ၵေႃႇသၢင်ႈ Chooser (တႃႇႁႂ်ႈၵူၼ်းၸႂ်ႉလိူၵ်ႈ App)
    val shareIntent = Intent.createChooser(sendIntent, "သူင်ႇလိၵ်ႈၵႂႃႇၸူး...")
    
    // 3. ပိုတ်ႇၼႃႈၸေႃး Share
    context.startActivity(shareIntent)
}
```

### 4. ထႅမ်သႂ်ႇပုမ်ႇ Share ၼႂ်း UI
ႁဝ်းတေဢဝ်ပုမ်ႇ Share ဝႆႉၶႅၼ်ႈၵၼ်တင်းပုမ်ႇ Copy ဢၼ်ႁဝ်းႁဵတ်းဝႃးၼၼ်ႉၶႃႈ။

```kotlin
Button(
    onClick = { shareText(context, outputText) },
    enabled = outputText.isNotEmpty() // ပေႃးဢမ်ႇမီးလိၵ်ႈ ၼဵၵ်းဢမ်ႇလႆႈ
) {
    Icon(Icons.Default.Share, contentDescription = null)
    Spacer(Modifier.width(8.dp))
    Text("သူင်ႇလိၵ်ႈ", fontFamily = ajFont)
}
```

---

### 5. လွင်ႈပၼ်ၾၢင်ႉ (The Intent Chooser)
ႁဵတ်းသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ `createChooser`?
ၵွပ်ႈဝႃႈ ပေႃးႁဝ်းဢမ်ႇၸႂ်ႉမၼ်း၊ Android တေပိုတ်ႇ App ဢၼ်ႁဝ်းလိူၵ်ႈဝႆႉပဵၼ် Default ၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။ ၵၢၼ်ၸႂ်ႉ Chooser တေႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉ လိူၵ်ႈလႆႈဝႃႈ တေသူင်ႇၼႂ်း LINE, Messenger, ဢမ်ႇၼၼ် Facebook ႁင်းမၼ်းၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 26)
1.  ၸၢမ်းထႅမ်သႂ်ႇ Function `shareText` ၼႂ်း Project ၸဝ်ႈၵဝ်ႇၶႃႈ။
2.  ၸၢမ်းၼဵၵ်းတုမ်ႇ Share သေတူၺ်းဝႃႈ ၼႃႈၸေႃး "App Chooser" ဢွၵ်ႇမႃးယူႇႁိုဝ်ၶႃႈ။
3.  **Challenge:** ၸၢမ်းထႅမ်သႂ်ႇ "Subject" (ႁူဝ်ၶေႃႈ) ၼႂ်း Intent တွၼ်ႈတႃႇသူင်ႇ Email ပႃးၶႃႈ။
    * `sendIntent.putExtra(Intent.EXTRA_SUBJECT, "လိၵ်ႈတႆးဢၼ်လႅၵ်ႈယဝ်ႉ")`