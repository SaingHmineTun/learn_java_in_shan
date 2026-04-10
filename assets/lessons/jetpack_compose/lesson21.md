## Lesson 21: Designing the Dual-Editor UI

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈၵၢၼ်ၸတ်းဝၢင်း `TextField` 2 ဢၼ် ႁႂ်ႈမၼ်းမီးတၢင်းၵႂၢင်ႈပဵင်းၵၼ် လႄႈ ႁၢင်ႈလီ ၸွမ်းၼင်ႇသၽႃႇဝ App လႅၵ်ႈလိၵ်ႈၶႃႈ။

### 1. ႁူႉၸၵ်း TextField ၼႂ်း Compose
`TextField` ပဵၼ် Composable ဢၼ်ၸႂ်ႉတႃႇႁပ်ႉဢဝ်လိၵ်ႈ (Input) လုၵ်ႉတီႈၵူၼ်းၸႂ်ႉၶႃႈ။ တွၼ်ႈတႃႇ Converter ႁဝ်းတေၸႂ်ႉ:
* **Top Editor:** တႃႇတႅမ်ႈလိၵ်ႈတႆး (Shan Unicode)။
* **Bottom Editor:** တႃႇၼႄလိၵ်ႈတႆးၼိူဝ် (Tai Nuea) ဢၼ်ႁဝ်းပိၼ်ႇယဝ်ႉ။

### 2. ၵၢၼ်ၸႂ်ႉ `weight(1f)` တွၼ်ႈတႃႇ Editor
တွၼ်ႈတႃႇႁႂ်ႈ Editor တင်းသွင်ဢၼ် မီးတၢင်းၵႂၢင်ႈပဵင်းၵၼ် (50/50) ၼိူဝ်ၼႃႈၸေႃးၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **Modifier.weight(1f)** ၶႃႈ။



### 3. တူဝ်ယၢင်ႇ Code ၵၢၼ်ဝၢင်း UI

```kotlin
@Composable
fun ConverterScreen() {
    Column(modifier = Modifier.fillMaxSize()) {
        // 1. Editor ၽၢႆႇၼိူဝ် (Input)
        TextField(
            value = "", // ႁဝ်းတေမႃးသႂ်ႇ State ၼႂ်း Lesson ၼႃႈၶႃႈ
            onValueChange = {},
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f), // ႁႂ်ႈမၼ်းၵႂၢင်ႈတဵမ်ၶိုင်ႈၼိုင်ႈ
            label = { Text("လိၵ်ႈတႆး (Shan Unicode)", fontFamily = ajFont) },
            placeholder = { Text("တႅမ်ႈတီႈၼႆႈ...", fontFamily = ajFont) }
        )

        // 2. တုမ်ႇလႅၵ်ႈ (Switch Icon) ဝႆႉၼႂ်းၵၢင်
        Icon(
            imageVector = Icons.Default.ArrowDownward,
            contentDescription = null,
            modifier = Modifier
                .padding(8.dp)
                .align(Alignment.CenterHorizontally)
        )

        // 3. Editor ၽၢႆႇတႂ်ႈ (Output)
        TextField(
            value = "",
            onValueChange = {},
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f), // ႁႂ်ႈမၼ်းၵႂၢင်ႈတဵမ်ထႅင်ႈၶိုင်ႈၼိုင်ႈ
            label = { Text("တႆးၼိူဝ် (Tai Nuea)", fontFamily = ajFont) },
            readOnly = true // ႁႂ်ႈမၼ်းၼႄၽົນလႅၵ်ႈလၢႆႈၵူၺ်း၊ တႅမ်ႈဢမ်ႇလႆႈ
        )
    }
}
```



---

### 4. လွင်ႈပၼ်ၾၢင်ႉ (Design Tips)
* **Visual Hierarchy:** ႁဝ်းလူဝ်ႇသႂ်ႇ `label` ႁႂ်ႈၸႅင်ႈလႅင်းဝႃႈ တီႈလႂ်ပဵၼ်တႃႇတႅမ်ႈ၊ တီႈလႂ်ပဵၼ်တွၼ်ႈတႃႇတူၺ်း ၶႃႈ။
* **Keyboard Options:** တွၼ်ႈတႃႇ Editor ႁဝ်းၸၢင်ႈသႂ်ႇ `keyboardOptions` ႁႂ်ႈမၼ်းပဵၼ်ပိူင် `Text` ဢမ်ႇၼၼ် `MultiLine` ႁႂ်ႈတႅမ်ႈလိၵ်ႈယၢဝ်းယၢဝ်းလႆႈၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 21)
1.  ၸၢမ်းၵေႃႇသၢင်ႈ `ConverterScreen` သေ ဢဝ် `TextField` 2 ဢၼ်ဝၢင်းသိုပ်ႇၵၼ်လူင်းၵႂႃႇၶႃႈ။
2.  ၸၢမ်းလႅၵ်ႈလၢႆႈ `weight(1f)` ႁႂ်ႈပဵၼ် `weight(2f)` တီႈ Editor ၽၢႆႇၼိူဝ် သေတူၺ်းဝႃႈ ႁၢင်ႈၽၢင်မၼ်းလႅၵ်ႈလၢႆႈၸိူင်ႉႁိုဝ်ၶႃႈ။
3.  **Challenge:** ၸၢမ်းသႂ်ႇ `OutlinedTextField` တႅၼ်း `TextField` ထမ်ႇမတႃႇ တႃႇတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇလႆႈၸႂ် (Like) ႁၢင်ႈၽၢင်ဢၼ်လႂ်လိူဝ်ၶႃႈ။