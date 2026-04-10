## Lesson 24: Two-Way Conversion (Radio Button Selection)

တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ App ႁဝ်းလႅၵ်ႈလၢႆႈလႆႈတင်းသွင်ၽၢႆႇၼၼ်ႉ ႁဝ်းလူဝ်ႇမီး **Variable** ဢၼ်ၼိုင်ႈ တႃႇလၢတ်ႈဝႃႈ "ၵမ်းၼႆႉတေဢဝ်တႆးလူင်ပဵၼ်တႆးၼိူဝ် ဢမ်ႇၼၼ် တႆးၼိူဝ်ပဵၼ်တႆးလူင်" ၼႆၶႃႈ။


### 1. ၵေႃႇသၢင်ႈ Enum တွၼ်ႈတႃႇ Mode
တွၼ်ႈတႃႇ Code ႁဝ်းတေဢၢၼ်ႇငၢႆႈ၊ ႁဝ်းတေၸႂ်ႉ `Enum` တႅၼ်း Boolean ၶႃႈ။

```kotlin
enum class ConversionMode {
    SHN_TO_TDD, TDD_TO_SHN
}
```

### 2. UI တွၼ်ႈတႃႇလိူၵ်ႈ Mode (Radio Group)
ႁဝ်းတေဝၢင်း Radio Buttons ဝႆႉၽၢႆႇၼိူဝ် Editor ႁဝ်းၶႃႈ။



```kotlin
var selectedMode by remember { mutableStateOf(ConversionMode.SHN_TO_TDD) }

Row(
    modifier = Modifier.fillMaxWidth().padding(8.dp),
    verticalAlignment = Alignment.CenterVertically,
    horizontalArrangement = Arrangement.SpaceEvenly
) {
    // 1. တႆးလူင် -> တႆးၼိူဝ်
    Row(verticalAlignment = Alignment.CenterVertically) {
        RadioButton(
            selected = (selectedMode == ConversionMode.SHN_TO_TDD),
            onClick = { selectedMode = ConversionMode.SHN_TO_TDD }
        )
        Text("တႆးလူင် → တႆးၼိူဝ်", fontFamily = ajFont)
    }

    // 2. တႆးၼိူဝ် -> တႆးလူင်
    Row(verticalAlignment = Alignment.CenterVertically) {
        RadioButton(
            selected = (selectedMode == ConversionMode.TDD_TO_SHN),
            onClick = { selectedMode = ConversionMode.TDD_TO_SHN }
        )
        Text("တႆးၼိူဝ် → တႆးလူင်", fontFamily = ajFont)
    }
}
```

### 3. Integrated Logic (The Final Conversion)
ၵမ်းၼႆႉ ၼႂ်း `onValueChange` ႁဝ်းတေမႄး Logic ႁဝ်းၸွမ်းၼင်ႇ `selectedMode` ၶႃႈ။

```kotlin
TextField(
    value = inputText,
    onValueChange = { newValue ->
        inputText = newValue
        outputText = when (selectedMode) {
            ConversionMode.SHN_TO_TDD -> TaiNueaConverter.shn2tdd(newValue)
            ConversionMode.TDD_TO_SHN -> TaiNueaConverter.tdd2shn(newValue)
        }
    },
    label = {
        Text(
            if (selectedMode == ConversionMode.SHN_TO_TDD) "Input: Shan Unicode" else "Input: Tai Nuea",
            fontFamily = ajFont
        )
    }
)
```



---

### 4. လွင်ႈပၼ်ၾၢင်ႉ (Automatic Update)
ပေႃးၵူၼ်းၸႂ်ႉ "လႅၵ်ႈ Mode" (Change Radio Button) ၼႂ်းၽွင်းဢၼ်မီးလိၵ်ႈဝႆႉယူႇၼၼ်ႉ၊ ႁဝ်းလူဝ်ႇႁဵတ်းႁႂ်ႈ `outputText` လႅၵ်ႈၸွမ်းၵမ်းလဵဝ်ၶႃႈ။ ႁဝ်းၸၢင်ႈၸႂ်ႉ `LaunchedEffect` ဢမ်ႇၼၼ် မႄး `outputText` ၼႂ်း `onClick` ၶွင် RadioButton ၵေႃႈလႆႈၶႃႈ။

```kotlin
RadioButton(
    onClick = { 
        selectedMode = ConversionMode.SHN_TO_TDD
        // ႁႂ်ႈမၼ်းလႅၵ်ႈလိၵ်ႈၵမ်းလဵဝ်
        outputText = TaiNueaConverter.shn2tdd(inputText)
    }
)
```

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 24)
1.  ၸၢမ်းၵေႃႇသၢင်ႈ **Radio Group** ၸိူင်ႉၼင်ႇ Code ၽၢႆႇၼိူဝ်ၼႆႉၶႃႈ။
2.  ၸၢမ်းၼဵၵ်းလႅၵ်ႈ Mode သေ တူၺ်းဝႃႈ `outputText` ႁဝ်းလႅၵ်ႈလၢႆႈၸွမ်းၼင်ႇ Mode ဢၼ်ႁဝ်းလိူၵ်ႈယူႇႁိုဝ်ၶႃႈ။
3.  **Challenge:** ၸၢမ်းသႂ်ႇ `AnimatedContent` ၼႂ်းတွၼ်ႈဢၼ် Label လႅၵ်ႈလၢႆႈ ႁႂ်ႈမၼ်းမီး Animation ႁၢင်ႈလီဢိတ်းၼိုင်ႈၶႃႈ။