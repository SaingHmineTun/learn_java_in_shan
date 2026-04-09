## Lesson 8: The Power of Preview

**@Preview** ၼႆႉ ပဵၼ် "ၵႅတ်ႉသႅတ်ႉ" (Annotation) ဢၼ်ႁဝ်းသႂ်ႇဝႆႉ တၢင်းၼိူဝ် Composable function တႃႇၼႄႁၢင်ႈၽၢင် UI ႁဝ်း ၼႂ်းၼႃႈၸေႃး Design (ယူႇၽၢႆႇၶႂႃ ၶွင် Android Studio) ၶႃႈ။

### 1. ၵၢၼ်တႅမ်ႈ Preview ပိုၼ်ႉထၢၼ်
ၸဝ်ႈၵဝ်ႇၸၢင်ႈတႅမ်ႈ Code ၼႆႉ ဝႆႉၽၢႆႇတႂ်ႈ Composable function ႁဝ်းၶႃႈ။

```kotlin
@Preview(showBackground = true)
@Composable
fun ProverbPreview() {
    // ႁွင်ႉၸႂ်ႉ Function ဢၼ်ႁဝ်းၶႂ်ႈတူၺ်းႁၢင်ႈမၼ်း
    ProverbScreen() 
}
```

### 2. Preview ၼမ်ၼမ် (Multi-Preview)
ဢၼ်ၶႅမ်ႉသုတ်းတႄႉၵေႃႈ ႁဝ်းၸၢင်ႈတူၺ်းႁၢင်ႈ UI ႁဝ်း ၼႂ်းသၽႃႇဝပႅၵ်ႇပိူင်ႈၵၼ် ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်ၶႃႈ။
* **Dark Mode Preview:** တူၺ်းဝႃႈ ပေႃးပဵၼ်ၵၢင်ၶိုၼ်း (Dark Mode) လိၵ်ႈတႆးႁဝ်း တေလႅင်းလီယူႇႁိုဝ်။
* **Language Preview:** တူၺ်းဝႃႈ ပေႃးလိၵ်ႈတႆးယၢဝ်းၼႃႇ မၼ်းတေ "ႁၢႆး" ႁိုဝ်ဢမ်ႇႁၢႆး။



```kotlin
@Preview(name = "Light Mode", showBackground = true)
@Preview(name = "Dark Mode", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Composable
fun ProverbThemePreview() {
    MaoComposeMasteryTheme {
        ProverbScreen()
    }
}
```

### 3. Interactive Mode (ၸၢမ်းၼဵၵ်းလႆႈ)
ၼႂ်းၼႃႈၸေႃး Preview ၼၼ်ႉ ၸဝ်ႈၵဝ်ႇတေႁၼ် Icon ဢၼ်မီးႁၢင်ႈ ၼဵဝ်ႉမိုဝ်း (Hand icon)။
* ပေႃးၼဵၵ်းမၼ်း ၸဝ်ႈၵဝ်ႇၸၢင်ႈ "ၸၢမ်းၼဵၵ်း" Button ဢမ်ႇၼၼ် Scroll တူၺ်း UI ႁဝ်းလႆႈ ၼႂ်း Android Studio ၵမ်းလဵဝ် ဢမ်ႇလူဝ်ႇပိုတ်ႇ Emulator ၶႃႈ။

### 4. Deploy to Device
ပေႃးၸဝ်ႈၵဝ်ႇၶႂ်ႈဢဝ် Preview ဢၼ်ၼၼ်ႉ ၵႂႃႇၼႄၼိူဝ်ၾူၼ်းတႄႉတႄႉၵမ်းလဵဝ် (ဢမ်ႇလူဝ်ႇ Run တူဝ် App တင်းသဵင်ႈ)၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈၼဵၵ်း Icon ၾူၼ်းဢွၼ်ႇ ဢၼ်ယူႇတၢင်းၼိူဝ် Preview ၼၼ်ႉၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 8)
1.  ၸၢမ်းသႂ်ႇ `@Preview` ဝႆႉတၢင်းၼိူဝ် function `ProverbScreen` ႁဝ်းၶႃႈ။
2.  ၸၢမ်းသႂ်ႇ Parameter `showSystemUi = true` ၼႂ်း `@Preview` ၼၼ်ႉ တႃႇတူၺ်းႁၢင်ႈမၼ်း မိူၼ်ၼင်ႇယူႇၼိူဝ် ၼႃႈၸေႃးၾူၼ်းတႄႉတႄႉ (မီးပႃး Status Bar) ၶႃႈ။
3.  ၸၢမ်းတႅမ်ႈ Preview 2 ဢၼ် — ဢၼ်ၼိုင်ႈပဵၼ် "Shan Text" လႄႈ ဢၼ်ၼိုင်ႈပဵၼ် "English Text" သေ တူၺ်းႁၢင်ႈမၼ်း ယဝ်ႉၵၼ်ၶႃႈ။
