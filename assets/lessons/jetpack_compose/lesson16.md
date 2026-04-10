## Lesson 16: Math Logic Implementation

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ **State** လၢႆလၢႆဢၼ် တႃႇတွင်းဝႆႉ မၢႆၼပ်ႉဢၼ်ၼိုင်ႈ၊ မၢႆၼပ်ႉဢၼ်သွင်၊ လႄႈ ၶိူင်ႈမၢႆၼပ်ႉသွၼ်ႇၶႃႈ။

### 1. ဝၢင်းၽႅၼ် State တွၼ်ႈတႃႇ Logic
တႃႇတေၼပ်ႉ `႑႐ + ႕ = ႑႕` လႆႈၼၼ်ႉ App ႁဝ်းလူဝ်ႇတွၼ်ႈဝႆႉ 3 လွင်ႈၶႃႈ:
1. **First Number:** မၢႆၼပ်ႉဢွၼ်တၢင်းသုတ်း (မိူၼ်ၼင်ႇ 10)။
2. **Operator:** ၶိူင်ႈမၢႆ (မိူၼ်ၼင်ႇ +, -, ×, ÷)။
3. **Second Number:** မၢႆၼပ်ႉဢၼ်သွင် (မိူၼ်ၼင်ႇ 5)။



### 2. တႅမ်ႈ Function တွၼ်ႈတႃႇၼပ်ႉသွၼ်ႇ
ႁဝ်းတေတႅမ်ႈ Logic ငၢႆႈငၢႆႈ ဢၼ်တေဢဝ်မၢႆၼပ်ႉ 2 ဢၼ်မႃးၼပ်ႉၵၼ် ၸွမ်းၼင်ႇၶိူင်ႈမၢႆၶႃႈ။

```kotlin
fun calculateResult(first: Int, second: Int, operator: String): Int {
    return when (operator) {
        "+" -> first + second
        "-" -> first - second
        "×" -> first * second
        "÷" -> if (second != 0) first / second else 0
        else -> second
    }
}
```

### 3. ၵၢၼ်ၸတ်းၵၢၼ် Button Logic
ၵမ်းၼႆႉ ၼႂ်း `onClick` ႁဝ်းၼၼ်ႉ ႁဝ်းလူဝ်ႇသႂ်ႇ Logic ႁႂ်ႈမၼ်းႁူႉဝႃႈ ပေႃးၼဵၵ်း "+" ယဝ်ႉ လူဝ်ႇၵႂႃႇတွၼ်ႈဝႆႉ First Number ၶႃႈ။

```kotlin
// ၼႂ်း CalculatorGrid
var displayText by remember { mutableStateOf("႐") }
var firstNumber by remember { mutableStateOf(0) }
var currentOperator by remember { mutableStateOf("") }
var shouldResetScreen by remember { mutableStateOf(false) }

// Logic တွၼ်ႈတႃႇၼဵၵ်းပုမ်ႇ
val onButtonClick = { symbol: String ->
    when {
        // 1. ပေႃးၼဵၵ်းမၢႆၼပ်ႉ (႐-႙)
        symbol.all { it.isDigit() || it in '႐'..'႙' } -> {
            if (displayText == "႐" || shouldResetScreen) {
                displayText = symbol
                shouldResetScreen = false
            } else {
                displayText += symbol
            }
        }
        
        // 2. ပေႃးၼဵၵ်းၶိူင်ႈမၢႆ (+, -, ×, ÷)
        symbol in listOf("+", "-", "×", "÷") -> {
            firstNumber = displayText.toEnglishDigits().toDouble()
            currentOperator = symbol
            shouldResetScreen = true
        }

        // 3. ပေႃးၼဵၵ်း "="
        symbol == "=" -> {
            val secondNumber = displayText.toEnglishDigits().toDouble()
            val result = calculateResult(firstNumber, secondNumber, currentOperator)
            displayText = result.toString().toShanDigits()
            shouldResetScreen = true
        }
    }
}
```



---

### 4. လွင်ႈပၼ်ၾၢင်ႉ (Edge Cases)
တႃႇႁႂ်ႈ program ႁဝ်း ဢမ်ႇမီးပၼ်ႁႃၼႆႉ ထုၵ်ႇလီၾၢင်ႉ လွင်ႈၸိူဝ်းၼႆႉၶႃႈ:
* **Division by Zero:** ပေႃးဢဝ် 0 မႃးၸႅၵ်ႇ (Divide) ၼႆ App ၸၢင်ႈ Crash ၶႃႈ။
* **Decimal Points:** ပေႃးမီးမၢႆၼပ်ႉၸူတ်ႉ (1.5) ႁဝ်းတေၸတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?
* **Reset Screen:** ပေႃးၼဵၵ်း "=" ယဝ်ႉတူဝ်ႈယဝ်ႉ ပေႃးၼဵၵ်းမၢႆၼပ်ႉမႂ်ႇ လူဝ်ႇႁႂ်ႈမၼ်းလႅၵ်ႈပဵၼ်မၢႆၼပ်ႉမႂ်ႇၵမ်းလဵဝ်ၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 16)
1.  ၸၢမ်းထႅမ်သႂ်ႇ `calculateResult` function ၼႂ်း Project ၸဝ်ႈၵဝ်ႇၶႃႈ။
2.  ၸၢမ်း Run တူၺ်းဝႃႈ ပေႃးၼဵၵ်း `႑႐ + ႕ =` မၼ်းဢွၵ်ႇ `႑႕` တႄႉႁိုဝ်ဢမ်ႇတႄႉၶႃႈ။
3.  **Challenge:** ၸၢမ်းထႅမ်သႂ်ႇပုမ်ႇ "+/-" တွၼ်ႈတႃႇလႅၵ်ႈမၢႆၼပ်ႉပဵၼ် Negative (-) ဢမ်ႇၼၼ် ပဵၼ် Positive (+) ၶႃႈ။