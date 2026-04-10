## Lesson 22: Advanced TextField (State & Events)

ၼႂ်း Compose ၼႆႉ `TextField` မၼ်းဢမ်ႇတွင်းဝႆႉလိၵ်ႈႁင်းမၼ်းၶႃႈ။ 
ႁဝ်းလူဝ်ႇၸႂ်ႉ **Pattern** ဢၼ်ႁွင်ႉဝႃႈ **Unidirectional Data Flow** (ၵၢၼ်သူင်ႇၶေႃႈမုၼ်းသိုဝ်ႈလဵဝ်) ၶႃႈ။

### 1. ႁူႉၸၵ်း Value လႄႈ OnValueChange
* **Value:** ပဵၼ်လိၵ်ႈဢၼ်ၼႄယူႇၼိူဝ် TextField (State)။
* **OnValueChange:** ပဵၼ် Event ဢၼ်တေပွင်ႇၶၢဝ်ႇမိူဝ်ႈၵူၼ်းၸႂ်ႉ "ၼဵၵ်း Keyboard" ၶႃႈ။



### 2. ၵၢၼ်ၸတ်းၵၢၼ် State တွၼ်ႈတႃႇ Converter
ႁဝ်းလူဝ်ႇမီး Variable တႃႇတွၼ်ႈဝႆႉလိၵ်ႈတႆး (Input) လႄႈ လိၵ်ႈတႆးတႂ်ႈၶူင်း (Output) ၶႃႈ။

```kotlin
@Composable
fun ConverterScreen() {
    // တွင်းဝႆႉလိၵ်ႈဢၼ်တႅမ်ႈသႂ်ႇ
    var inputText by remember { mutableStateOf("") }
    // တွင်းဝႆႉလိၵ်ႈဢၼ်လႅၵ်ႈယဝ်ႉ
    var outputText by remember { mutableStateOf("") }

    Column(modifier = Modifier.fillMaxSize()) {
        TextField(
            value = inputText,
            onValueChange = { newValue ->
                // 1. မႄး (Update) လိၵ်ႈၼိူဝ်ၼႃႈၸေႃး
                inputText = newValue
                // 2. တွၼ်ႈၼႆႉ ႁဝ်းတေဢဝ် newValue ၵႂႃႇလႅၵ်ႈၼႂ်း Lesson ၼႃႈၶႃႈ
            },
            modifier = Modifier.fillMaxWidth().weight(1f),
            label = { Text("တႅမ်ႈလိၵ်ႈတႆးတီႈၼႆႈ", fontFamily = ajFont) }
        )

        TextField(
            value = outputText, // ၼႄလိၵ်ႈဢၼ်လႅၵ်ႈယဝ်ႉ
            onValueChange = {},
            modifier = Modifier.fillMaxWidth().weight(1f),
            label = { Text("ၽົນလႅၵ်ႈလၢႆႈ", fontFamily = ajFont) },
            readOnly = true
        )
    }
}
```

### 3. Keyboard Options & Actions
တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းၸႂ်ႉငၢႆႈ၊ ႁဝ်းၸၢင်ႈသင်ႇ Keyboard ႁႂ်ႈမၼ်းမီးတုမ်ႇ "Done" ဢမ်ႇၼၼ် ႁႂ်ႈမၼ်းတႅမ်ႈလႆႈလၢႆထႅဝ်ၶႃႈ။

```kotlin
TextField(
    value = inputText,
    onValueChange = { inputText = it },
    keyboardOptions = KeyboardOptions(
        capitalization = KeyboardCapitalization.None,
        autoCorrect = false,
        imeAction = ImeAction.Done // ၼႄတုမ်ႇ "Done" ၼိူဝ် Keyboard
    ),
    singleLine = false, // ႁႂ်ႈတႅမ်ႈလႆႈယၢဝ်းယၢဝ်း
    maxLines = 10
)
```



---

### 4. လွင်ႈပၼ်ၾၢင်ႉ (The "Trap")
ပေႃးႁဝ်းဢမ်ႇမႄး `inputText = newValue` ၼႂ်း `onValueChange` ၼႆ၊ ႁဝ်းတေတႅမ်ႈလိၵ်ႈဢမ်ႇဢွၵ်ႇ သေတူဝ်ၶႃႈ။ 
ၵွပ်ႈဝႃႈ Compose တေၼႄ "Value" ဢၼ်မီးဝႆႉၼႂ်း State ၵူၺ်းၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 22)
1.  ၸၢမ်းၵေႃႇသၢင်ႈ `inputText` State သေ ႁဵတ်းႁႂ်ႈ TextField ႁပ်ႉဢဝ်လိၵ်ႈလႆႈၶႃႈ။
2.  ၸၢမ်းသႂ်ႇ `visualTransformation = PasswordVisualTransformation()` တူၺ်းသေ တူၺ်းဝႃႈ လိၵ်ႈတႆးႁဝ်းတေပဵၼ်မၢႆၸူတ်ႉ (Dots) ၵႂႃႇၸိူင်ႉႁိုဝ်ၶႃႈ (တွၼ်ႈတႃႇႁဵၼ်းႁူႉလွင်ႈ Transformation)။
3.  **Challenge:** ၸၢမ်းႁဵတ်းႁႂ်ႈ `outputText` လႅၵ်ႈၸွမ်း `inputText` ၵမ်းလဵဝ် (မိူၼ်ၼင်ႇ `outputText = inputText`) သေတူၺ်းဝႃႈ မၼ်း Mirror ၵၼ်ယူႇႁိုဝ်ၶႃႈ။