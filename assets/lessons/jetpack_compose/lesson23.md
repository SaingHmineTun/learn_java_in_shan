## Lesson 23: Real-time Conversion Logic

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေဢဝ် Library **`TaiNueaConverter`** မႃးႁဵတ်းၵၢၼ်တႄႉတႄႉယဝ်ႉၶႃႈ။ ၵွပ်ႈဝႃႈ Method မၼ်းပဵၼ် Static၊ ႁဝ်းတေႁွင်ႉၸႂ်ႉ `shn2tdd()` ၼႂ်း `onValueChange` ၵမ်းလဵဝ်ၶႃႈ။

### 1. ၵၢၼ်ႁွင်ႉၸႂ်ႉ Static Method
ၼႂ်း Kotlin၊ ၵၢၼ်ႁွင်ႉၸႂ်ႉ Static Method ၶွင် Java ၼႆႉ ငၢႆႈၼႃႇၶႃႈ။ ႁဝ်းၸႂ်ႉ `ClassName.methodName(input)` လႆႈၵမ်းလဵဝ်:

```kotlin
// တူဝ်ယၢင်ႇၵၢၼ်ႁွင်ႉၸႂ်ႉ
val result = TaiNueaConverter.shn2tdd("လိၵ်ႈတႆး")
```



### 2. ၵၢၼ်လႅၵ်ႈလိၵ်ႈၵမ်းလဵဝ် (Real-time Implementation)
မိူဝ်ႈၵူၼ်းၸႂ်ႉတႅမ်ႈလိၵ်ႈ (Input)၊ ႁဝ်းတေပိၼ်ႇႁႂ်ႈ App လႅၵ်ႈပဵၼ်လိၵ်ႈတႆးၼိူဝ် ၵမ်းလဵဝ်ၶႃႈ။

```kotlin
TextField(
    value = inputText,
    onValueChange = { newValue ->
        // 1. တွင်းဝႆႉလိၵ်ႈဢၼ်တႅမ်ႈမႂ်ႇ
        inputText = newValue
        
        // 2. လႅၵ်ႈလိၵ်ႈၵမ်းလဵဝ် (Real-time)
        // ႁွင်ႉၸႂ်ႉ Static Method 'shn2tdd' လုၵ်ႉတီႈ Java Library
        outputText = if (newValue.isNotEmpty()) {
            TaiNueaConverter.shn2tdd(newValue)
        } else {
            ""
        }
    },
    modifier = Modifier.fillMaxWidth().weight(1f),
    label = { Text("လိၵ်ႈတႆးလူင် (Shan Unicode)", fontFamily = ajFont) }
)
```



### 3. လွင်ႈပၼ်ၾၢင်ႉ (Why Static is Better Here)
* **No Memory Overhead:** ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ `remember { TaiNueaConverter() }` တွၼ်ႈတႃႇၵဵပ်း Object ဝႆႉၼႂ်း Memory ၶႃႈ။
* **Direct Access:** ႁဝ်းႁွင်ႉၸႂ်ႉလႆႈၵူႈတီႈ ၼႂ်း App ႁဝ်း ၸွမ်းၼင်ႇႁဝ်းလူဝ်ႇၶႃႈ။

### 4. ၵၢၼ်ၼႄၽွၼ်းလႆႈ (Output Display)
တွၼ်ႈတႃႇ `outputText` ၼၼ်ႉ ႁဝ်းတေဝၢင်းဝႆႉၼႂ်း TextField ထႅင်ႈဢၼ်ၼိုင်ႈ ဢၼ်ပဵၼ် `readOnly = true` ၶႃႈ။

```kotlin
TextField(
    value = outputText,
    onValueChange = {}, // ဢမ်ႇလူဝ်ႇႁပ်ႉ Value ၵွပ်ႈႁဝ်းတေ ဢမ်ႇတႅမ်ႈသင်လႆႈ
    readOnly = true,
    modifier = Modifier.fillMaxWidth().weight(1f),
    label = { Text("လိၵ်ႈတႆးၼိူဝ် (Tai Nuea Output)", fontFamily = ajFont) }
)
```

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 23)
1.  ၸၢမ်းႁွင်ႉၸႂ်ႉ `TaiNueaConverter.shn2tdd(inputText)` ၼႂ်း `onValueChange` ၶႃႈ။
2.  ၸၢမ်းတႅမ်ႈလိၵ်ႈ "မႂ်ႇသုင်" သႂ်ႇၼႂ်း Box ၽၢႆႇၼိူဝ် သေတူၺ်းဝႃႈ တီႈၽၢႆႇတႂ်ႈ မၼ်းလႅၵ်ႈပၼ်ၵမ်းလဵဝ်ယူႇႁိုဝ်ၶႃႈ။
3.  **Challenge:** ၸၢမ်းထႅမ်သႂ်ႇ Log တွၼ်ႈတႃႇတူၺ်းဝႃႈ ၵူႈပွၵ်ႈဢၼ်တႅမ်ႈလိၵ်ႈၼိုင်ႈတူဝ်၊ Method `shn2tdd` ႁဵတ်းၵၢၼ်ၵႂႃႇ လၢႆပွၵ်ႈၶႃႈ?
    * `Log.d("Converter", "Converting: $newValue")`