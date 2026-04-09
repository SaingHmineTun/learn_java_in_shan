## Lesson 11: Understanding State (Remember & MutableState)

ၼႂ်း Jetpack Compose ၼႆႉ UI တေလႅၵ်ႈလၢႆႈၸွမ်း **State** (ၶေႃႈမုၼ်း) ၶႃႈ။ ပေႃး State လႅၵ်ႈလၢႆႈ၊
Compose တေ "တႅမ်ႈႁၢင်ႈမႂ်ႇ" (Recomposition) ႁင်းမၼ်းၶႃႈ။

### 1. State ၼႆႉပဵၼ်သင်?

State ပဵၼ် "ၶေႃႈမုၼ်းဢၼ်လႅၵ်ႈလၢႆႈလႆႈ" ၼႂ်း App ႁဝ်းၶႃႈ။ မိူၼ်ၼင်ႇ:

* မၢႆၼပ်ႉဢၼ်ၼႄယူႇၼိူဝ် Calculator။
* ၶေႃႈၵႂၢမ်းဢၼ်ႁဝ်းတႅမ်ႈသႂ်ႇၼႂ်း TextField။

### 2. `mutableStateOf`

ပေႃးႁဝ်းၸႂ်ႉ Variable ထမ်ႇမတႃႇ (မိူၼ်ၼင်ႇ `var count = 0`)၊ Compose တေဢမ်ႇႁူႉဝႃႈ
ၶေႃႈမုၼ်းလႅၵ်ႈလၢႆႈယဝ်ႉ။ ႁဝ်းလူဝ်ႇၸႂ်ႉ `mutableStateOf` တႃႇလၢတ်ႈၼႄ Compose ဝႃႈ "ပေႃး Variable
ၼႆႉလႅၵ်ႈလၢႆႈ၊ ၸဝ်ႈၵဝ်ႇလူဝ်ႇမႄးတႅမ်ႈ UI မႂ်ႇၼႃ" ၼႆၶႃႈ။

### 3. `remember`

Compose ၼႆႉ မၼ်းတေ "Recompose" (တႅမ်ႈ UI မႂ်ႇ) ၼမ်ၼႃႇၶႃႈ။ ပေႃးႁဝ်းဢမ်ႇၸႂ်ႉ `remember`၊
ၵူႈပွၵ်ႈဢၼ်မၼ်းတႅမ်ႈ UI မႂ်ႇၼၼ်ႉ Variable ႁဝ်းတေပဵၼ် 0 ၶိုၼ်းၵူႈပွၵ်ႈၶႃႈ။ `remember` တေႁဵတ်းႁႂ်ႈ App
ႁဝ်း "တွင်းဝႆႉ" ၶေႃႈမုၼ်းၼၼ်ႉ ဢမ်ႇႁႂ်ႈမၼ်းႁၢႆၵႂႃႇၶႃႈ။



---

### 4. တူဝ်ယၢင်ႇ Code ၼႂ်း Calculator

တူၺ်း Code ဢၼ်ၼႆႉၶႃႈ၊ မၼ်းပဵၼ်ပိုၼ်ႉထၢၼ်တႃႇၼႄမၢႆၼပ်ႉ ၼိူဝ်ၼႃႈၸေႃး Calculator ႁဝ်းၶႃႈ။

```kotlin
@Composable
fun CalculatorDisplay() {
    // ၵေႃႇသၢင်ႈ State တႃႇတွၼ်ႈဝႆႉ မၢႆၼပ်ႉဢၼ်ၵူၼ်းၸႂ်ႉၼဵၵ်း
    // ႁဝ်းၸႂ်ႉ 'by' ႁႂ်ႈမၼ်းငၢႆႈ၊ ပေႃးလႅၵ်ႈလၢႆႈ displayText UI တေလႅၵ်ႈၸွမ်းၵမ်းလဵဝ်
    var displayText by remember { mutableStateOf("႐") }

    Column(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.End,
        verticalArrangement = Arrangement.Center
    ) {
        Text(
            text = displayText,
            style = MaterialTheme.typography.displayLarge,
            modifier = Modifier.padding(24.dp)
        )

        Button(onClick = {
            // ပေႃးၼဵၵ်း ပုမ်ႇၼႆႉ၊ displayText တေလႅၵ်ႈလၢႆႈ
            // ယဝ်ႉၵေႃႈ Compose တေမႄးတႅမ်ႈ Text ၽၢႆႇၼိူဝ်ၼၼ်ႉ ႁင်းမၼ်းၶႃႈ
            displayText = "႑"
        }) {
            Text("ၼဵၵ်းတႃႇၼႄ ႑")
        }
    }
}
```

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 1)

1. ၸၢမ်းၵွပ်ႉပီႉ (Copy) Code ၽၢႆႇၼိူဝ်ၼႆႉ ၵႂႃႇၸၢမ်းၼႂ်း `MainActivity.kt` ၶႃႈ။
2. ၸၢမ်းလႅၵ်ႈလၢႆႈ `displayText` ႁႂ်ႈမၼ်းထႅမ်သႂ်ႇမၢႆၼပ်ႉ (Append) မိူၼ်ၼင်ႇ `displayText += "႑"` သေ
   တူၺ်းဝႃႈ ပေႃးၼဵၵ်းလၢႆလၢႆပွၵ်ႈ မၼ်းတေဢွၵ်ႇမႃးၸိူင်ႉႁိုဝ်ၶႃႈ။
3. **ဝူၼ်ႉတူၺ်း:** ပေႃးႁဝ်းၶႂ်ႈလႅၵ်ႈလၢႆႈသီ ပုမ်ႇ (Button) ပေႃးၼဵၵ်းယဝ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ State
   ႁိုဝ်ဢမ်ႇလူဝ်ႇ?