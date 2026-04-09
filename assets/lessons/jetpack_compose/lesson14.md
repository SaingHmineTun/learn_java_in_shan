## Lesson 14: Handling Click Events (Callbacks)

**Callback** ပဵၼ်ၵၢၼ်သူင်ႇ Function ၶဝ်ႈၵႂႃႇၼႂ်း Composable ဢၼ်လဵၵ်ႉ (မိူၼ်ၼင်ႇ `CalcButton`) တွၼ်ႈတႃႇလၢတ်ႈဝႃႈ "ပေႃးမီးလွင်ႈၼဵၵ်း (Click) ၼႆ ၸဝ်ႈၵဝ်ႇလူဝ်ႇႁဵတ်းၸိူင်ႉၼႆၼႃ" ၼႆၶႃႈ။

### 1. Lambda Functions (`() -> Unit`)
ၼႂ်း Kotlin ၼႆႉ ႁဝ်းၸၢင်ႈသူင်ႇ "ၵၢၼ်ႁဵတ်း" (Action) ၶဝ်ႈၵႂႃႇ မိူၼ်ၼင်ႇသူင်ႇ Variable ၶႃႈ။
* `() -> Unit` ပွင်ႇဝႃႈ: ပဵၼ် Function ဢၼ်ဢမ်ႇႁပ်ႉ (Input) သင် လႄႈ ဢမ်ႇပၼ်ၶိုၼ်း (Return) သင်၊ မၼ်းၵူၺ်း "ႁဵတ်းၵၢၼ်" ၵူၺ်းၶႃႈ။



### 2. State Hoisting (ၵၢၼ်ယုၵ်ႉ State ဝႆႉၽၢႆႇၼိူဝ်)
တွၼ်ႈတႃႇ Calculator ၼႆႉ ႁဝ်းတေဢမ်ႇၵဵပ်းမၢႆၼပ်ႉဝႆႉၼႂ်းတုမ်ႇၵမ်းဢၼ်ၵမ်းဢၼ်ၶႃႈ။ ႁဝ်းတေၵဵပ်းဝႆႉၼႂ်း `CalculatorGrid` (Parent)၊ ယဝ်ႉၵေႃႈ သူင်ႇ Callback လူင်းၵႂႃႇၼႂ်း `CalcButton` (Child) ၶႃႈ။

### 3. တူဝ်ယၢင်ႇ Code ၵၢၼ်ၸတ်းၵၢၼ် Click
တူၺ်း Code ဢၼ်ၼႆႉၶႃႈ၊ မၼ်းတေၼႄလွင်ႈသူင်ႇၶေႃႈမုၼ်း လုၵ်ႉတီႈပုမ်ႇ ၵႂႃႇမႄး `displayText` ႁဝ်းၶႃႈ။

```kotlin
@Composable
fun CalculatorGrid() {
    // ၼႆႉပဵၼ် State ဢၼ်ႁဝ်း "တွၼ်ႈဝႆႉ"
    var displayText by remember { mutableStateOf("႐") }

    Column {
        // ၼႄမၢႆၼပ်ႉ
        Text(text = displayText)

        LazyVerticalGrid(columns = GridCells.Fixed(4)) {
            items(listOf("႑", "႒", "႓", "C")) { symbol ->
                CalcButton(
                    label = symbol,
                    onClick = {
                        // ၼႆႉပဵၼ် Callback ဢၼ်ပုမ်ႇတေႁွင်ႉၸႂ်ႉ (Call back) မႃးၶိုၼ်း
                        if (symbol == "C") {
                            displayText = "႐"
                        } else {
                            // ပေႃးပဵၼ် ႐ ယူႇ၊ ႁႂ်ႈလႅၵ်ႈပဵၼ်မၢႆၼပ်ႉမႂ်ႇ
                            // ပေႃးဢမ်ႇၸႂ်ႈ ႐၊ ႁႂ်ႈထႅမ်သႂ်ႇ (Append) ၵႂႃႇၽၢႆႇလုၼ်း
                            displayText = if (displayText == "႐") symbol else displayText + symbol
                        }
                    }
                )
            }
        }
    }
}
```



---

### 4. ႁဵတ်းသင်လူဝ်ႇၸႂ်ႉ Callback?
* **Decoupling:** တုမ်ႇ (Button) ဢမ်ႇလူဝ်ႇႁူႉဝႃႈ `displayText` မီးသင်။ မၼ်းၵူၺ်းလူဝ်ႇႁူႉဝႃႈ "ပေႃးမီးၵူၼ်းၼဵၵ်းၵဝ်ၼႆ ၵဝ်တေလၢတ်ႈၼႄ Parent ၵဝ်ၵူၺ်း" ၼႆၶႃႈ။
* **Flexibility:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈဢဝ် `CalcButton` ဢၼ်ၼႆႉ ၵႂႃႇၸႂ်ႉၼႂ်း App တၢင်ႇဢၼ်ၵေႃႈလႆႈၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 14)
1.  ၸၢမ်းထႅမ်သႂ်ႇ Logic ၼႂ်း Callback ႁႂ်ႈမၼ်း "တွင်းမၢႆ" (Remember) လႆႈမၢႆၼပ်ႉပဵၼ် 2 ထႅဝ်ၶႃႈ။
2.  ၸၢမ်းသႂ်ႇ `Log.d("Calculator", "Clicked: $symbol")` ၼႂ်း `onClick` သေ တူၺ်းၼႂ်း **Logcat** ၶွင် Android Studio ဝႃႈ မၼ်းဢွၵ်ႇမႃးၸွမ်းၼင်ႇႁဝ်းၼဵၵ်းႁိုဝ်ၶႃႈ။
3.  **Challenge:** ၸၢမ်းႁဵတ်းႁႂ်ႈတုမ်ႇ "C" ၼဵၵ်းယဝ်ႉ ႁႂ်ႈမၼ်းသၼ်ႇ (Vibrate) ဢိတ်းၼိုင်ႈ (ဢၼ်ၼႆႉလူဝ်ႇႁႃ Code Context ဢိတ်းၼိုင်ႈၶႃႈ)။