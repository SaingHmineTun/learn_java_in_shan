## Lesson 25: Copy to Clipboard & Haptic Feedback

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈၵၢၼ်ၸႂ်ႉ **Platform Services** ဢၼ်မီးၼႂ်း Android ၶႃႈ။

### 1. ႁူႉၸၵ်း ClipboardManager
`ClipboardManager` ပဵၼ်ၵူၼ်းၸတ်းၵၢၼ်လွင်ႈ "ၵွပ်ႉပီႉ လႄႈ ဝၢင်း" (Copy & Paste) ၼႂ်း Android ၶႃႈ။ ၼႂ်း Compose ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉ `LocalClipboardManager.current` လႆႈငၢႆႈငၢႆႈၶႃႈ။

### 2. ႁူႉၸၵ်း HapticFeedback
တွၼ်ႈတႃႇႁႂ်ႈၵူၼ်းၸႂ်ႉ "ႁူႉ" (Feel) မိူဝ်ႈၼဵၵ်းတုမ်ႇ၊ ႁဝ်းတေၸႂ်ႉ `LocalHapticFeedback.current` တွၼ်ႈတႃႇပၼ်ႁႂ်ႈၾူၼ်းသၼ်ႇ (Vibrate) ဢိတ်းၼိုင်ႈၶႃႈ။



### 3. တူဝ်ယၢင်ႇ Code ၵၢၼ် Copy
ႁဝ်းတေထႅမ်သႂ်ႇတုမ်ႇ "Copy" ဝႆႉတီႈ Editor ၽၢႆႇတႂ်ႈ (Output) ၶႃႈ။

```kotlin
@Composable
fun CopySection(textToCopy: String) {
    // ႁွင်ႉၸႂ်ႉ Services
    val clipboardManager = LocalClipboardManager.current
    val haptic = LocalHapticFeedback.current

    Button(
        onClick = {
            if (textToCopy.isNotEmpty()) {
                // 1. ၵွပ်ႉပီႉလိၵ်ႈၶဝ်ႈ Clipboard
                clipboardManager.setText(AnnotatedString(textToCopy))
                
                // 2. ပၼ် Haptic Feedback (သၼ်ႇဢိတ်းၼိုင်ႈ)
                haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                
                // 3. (Optional) ၼႄ Toast ပၼ်ၾၢင်ႉ
                // Toast.makeText(context, "ၵွပ်ႉပီႉယဝ်ႉယဝ်ႉ!", Toast.LENGTH_SHORT).show()
            }
        },
        modifier = Modifier.padding(8.dp)
    ) {
        Icon(Icons.Default.ContentCopy, contentDescription = null)
        Spacer(Modifier.width(8.dp))
        Text("ၵွပ်ႉပီႉလိၵ်ႈ", fontFamily = ajFont)
    }
}
```

### 4. ၵၢၼ်ဝၢင်း Layout ႁႂ်ႈႁၢင်ႈလီ
ႁဝ်းၸၢင်ႈဢဝ်တုမ်ႇ Copy ၼႆႉ ဝႆႉၼႂ်း `Box` ဢၼ်ႁေႃႇ `TextField` ဝႆႉ သေၸႂ်ႉ `Alignment.BottomEnd` တွၼ်ႈတႃႇႁႂ်ႈမၼ်းယူႇတီႈၸဵင်ႇၶႂႃၽၢႆႇတႂ်ႈ ႁႂ်ႈတူၺ်းပဵၼ် Professional ၶႃႈ။



---

### 5. လွင်ႈပၼ်ၾၢင်ႉ (User Experience)
* **Empty State:** ပေႃး `outputText` ပဵၼ်ပဝ်ႇ ("") ယူႇ၊ ႁဝ်းလူဝ်ႇႁဵတ်းႁႂ်ႈတုမ်ႇ Copy ၼၼ်ႉ ၼဵၵ်းဢမ်ႇလႆႈ (Disable) ဢမ်ႇၼၼ် ဢမ်ႇလူဝ်ႇၼႄမၼ်းၶႃႈ။
* **Haptic Types:** ၼႂ်း `HapticFeedbackType` မၼ်းမီးလၢႆပိူင် မိူၼ်ၼင်ႇ `TextHandleMove` ဢမ်ႇၼၼ် `LongPress`။ ၸဝ်ႈၵဝ်ႇၸၢမ်းတူၺ်းသေ လိူၵ်ႈၸႂ်ႉ ဢၼ်လႆႈၸႂ်သုတ်းၼၼ်ႉၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 25)
1.  ထႅမ်သႂ်ႇ `LocalClipboardManager` လႄႈ `LocalHapticFeedback` ၼႂ်း App ၸဝ်ႈၵဝ်ႇၶႃႈ။
2.  ၵေႃႇသၢင်ႈတုမ်ႇ Copy သေ ၸၢမ်းၼဵၵ်းတူၺ်းဝႃႈ ၾူၼ်းၸဝ်ႈၵဝ်ႇသၼ်ႇယူႇႁိုဝ်ၶႃႈ။
3.  **Challenge:** ပေႃးၵူၼ်းၸႂ်ႉၼဵၵ်း Copy ယဝ်ႉ၊ ႁႂ်ႈလိၵ်ႈၼိူဝ်တုမ်ႇလႅၵ်ႈလၢႆႈပဵၼ် "ၵွပ်ႉပီႉယဝ်ႉယဝ်ႉ! ✅" ပႃးတင်း Animation ဢိတ်းၼိုင်ႈၶႃႈ။