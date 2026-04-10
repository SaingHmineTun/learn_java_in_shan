## Lesson 19: Module 2 Final Assembly

ၼႂ်းတွၼ်ႈ "Final Assembly" ၼႆႉ ႁဝ်းတေ Focus တီႈၵၢၼ်ၸတ်း Code ႁဝ်း ႁႂ်ႈမၼ်းပဵၼ် Organized ၶႃႈ။

### 1. ၵေႃႇသၢင်ႈ CalculatorViewModel
ပေႃး ႁဝ်းၶႂ်ႈႁဵတ်း ဢၼ်ၶႅမ်ႉလိူဝ်ၼႆႉၼႆ ႁဝ်းၸၢင်ႈဢဝ် Logic တင်းသဵင်ႈ ၵႂႃႇဝႆႉၼႂ်း **ViewModel** ၶႃႈ။ ၵွၺ်းၵႃႈ တွၼ်ႈတႃႇ Beginner တေႉၵေႃႈ ႁဝ်းတေႁူမ်ႈၵၼ်ၼႂ်း `Screen` ၵွၼ်ႇၶႃႈ။

### 2. Code ႁူမ်ႈ (The Complete Logic)
တူၺ်း Code ဢၼ်တေၸတ်းၵၢၼ်ၵူႈလွင်ႈ တွၼ်ႈတႃႇ Calculator ႁဝ်းၶႃႈ:

```kotlin
@Composable
fun ShanCalculatorScreen() {
    // --- 1. State Management ---
    var displayText by remember { mutableStateOf("႐") }
    var firstNumber by remember { mutableStateOf(0.0) }
    var operator by remember { mutableStateOf("") }
    var isNewInput by remember { mutableStateOf(true) }

    // --- 2. Logic Functions ---
    val onAction: (String) -> Unit = { symbol ->
        when {
            // ပေႃးၼဵၵ်း C (Clear)
            symbol == "C" -> {
                displayText = "႐"
                firstNumber = 0.0
                operator = ""
                isNewInput = true
            }
            // ပေႃးၼဵၵ်းမၢႆၼပ်ႉ (႐-႙)
            symbol.isShanDigit() -> {
                if (isNewInput) {
                    displayText = symbol
                    isNewInput = false
                } else {
                    displayText += symbol
                }
            }
            // ပေႃးၼဵၵ်းၶိူင်ႈမၢႆ (+, -, ×, ÷)
            symbol in listOf("+", "-", "×", "÷") -> {
                firstNumber = displayText.toEnglishDigits().toDouble()
                operator = symbol
                isNewInput = true
            }
            // ပေႃးၼဵၵ်း "="
            symbol == "=" -> {
                val secondNumber = displayText.toEnglishDigits().toDouble()
                val result = when (operator) {
                    "+" -> firstNumber + secondNumber
                    "-" -> firstNumber - secondNumber
                    "×" -> firstNumber * secondNumber
                    "÷" -> if (secondNumber != 0.0) firstNumber / secondNumber else 0.0
                    else -> secondNumber
                }
                // လႅၵ်ႈပဵၼ်လိၵ်ႈတႆးသေၼႄ
                displayText = result.toIntIfPossible().toString().toShanDigits()
                isNewInput = true
            }
        }
    }

    // --- 3. UI Assembly ---
    AdaptiveCalculatorLayout(
        displayText = displayText,
        onAction = onAction
    )
}
```

### 3. ၵၢၼ်ၵူတ်ႇထတ်း (The Checklist)
ဢွၼ်တၢင်းတေယဝ်ႉတူဝ်ႈ Module 2 ၼႆႉ၊ ႁဝ်းလူဝ်ႇၵူတ်ႇထတ်း (Check) တူၺ်း:
* **Fonts:** လိၵ်ႈတႆးၼိူဝ်တုမ်ႇ ႁၢင်ႈလီယူႇႁိုဝ်?
* **State:** ပေႃးၼဵၵ်း "+" ယဝ်ႉ ၼႃႈၸေႃးလႅၵ်ႈလၢႆႈပဵၼ်မၢႆၼပ်ႉမႂ်ႇ (Clear for new input) ယူႇႁိုဝ်?
* **Theming:** ပေႃးလႅၵ်ႈ Golden Theme သီတုမ်ႇလႅၵ်ႈၸွမ်းယူႇႁိုဝ်?

---

### ၵၢၼ်ႁိူၼ်း (Homework for Module 2 Completion)
1.  **Bug Hunt:** ၸၢမ်းၼပ်ႉ `႑႐ ÷ ႐` တူၺ်း၊ App ၸဝ်ႈၵဝ်ႇ Crash ႁိုဝ်? ပေႃး Crash ႁႂ်ႈမႄးပၼ် ႁႂ်ႈမၼ်းၼႄလိၵ်ႈဝႃႈ "Error" ၶႃႈ။
2.  **Polish:** သႂ်ႇ `CornerSize` ပၼ်တုမ်ႇ ႁႂ်ႈမၼ်းမူၼ်းလီ (Circle for operators, rounded for numbers)။
3.  **Final Run:** Run ၼိူဝ် Emulator သေ ၼပ်ႉသွၼ်ႇတူၺ်း ၸွမ်းၼင်ႇသဵၼ်ႈမၢႆပႃႈတႂ်ႈၼႆႉၶႃႈ:
    * `႑႒ + ႘ = ႒႐`
    * `႕ × ႕ = ႒႕`

---

### Summary of Module 2
မိူဝ်ႈၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်းယဝ်ႉတူဝ်ႈ Modle 2 ၵႂႃႇယဝ်ႉၶႃႈ။ ၸဝ်ႈၵဝ်ႇ လႆႈႁဵၼ်းလွင်ႈ ပႃႈတႂ်ႈၼႆ့ ယဝ်ႉလီငၢမ်းယဝ်ႉၶႃႈ:
* **State Control:** ၵၢၼ်ၸႂ်ႉ `remember` လႄႈ `mutableStateOf`။
* **Interactivity:** ၵၢၼ်ၸတ်းၵၢၼ် Callbacks ၼႂ်းတုမ်ႇ။
* **Data Conversion:** ၵၢၼ်လႅၵ်ႈလိၵ်ႈတႆး (String Manipulation)။
* **Adaptability:** ၵၢၼ်ႁဵတ်းႁႂ်ႈ UI ၸႂ်ႉလႆႈတင်း Portrait/Landscape။