## Lesson 29: Building the Idiom Card (UI Design)

တွၼ်ႈတႃႇတေၼႄ Idioms 1,000 ဢၼ် ႁႂ်ႈတူၺ်းပဵၼ် Professional App ၼၼ်ႉ ႁဝ်းလူဝ်ႇသၢင်ႈ **Card** ဢၼ်မီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ် ဝၢင်ႈတူဝ်လိၵ်ႈ Alphabet လႄႈ တူဝ် Idiom Phrase ၶႃႈ။

### 1. Designing the "IdiomItem" Composable
ႁဝ်းတေၸႂ်ႉ `Row` တွၼ်ႈတႃႇၸတ်းဝၢင်း Alphabet ဝႆႉၽၢႆႇသၢႆႉ သေဢဝ် Phrase ဝႆႉၽၢႆႇၶႂႃၶႃႈ။

```kotlin
@Composable
fun IdiomItem(idiom: Data.Idiom) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        ),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Row(
            modifier = Modifier
                .padding(16.dp)
                .fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // 1. Alphabet Circle (ၼႄတူဝ်လိၵ်ႈဢွၼ်တၢင်း a, b, c...)
            Box(
                modifier = Modifier
                    .size(50.dp)
                    .clip(CircleShape)
                    .background(MaterialTheme.colorScheme.primary),
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = idiom.alphabet.toString().uppercase(),
                    color = Color.White,
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold
                )
            }

            Spacer(modifier = Modifier.width(16.dp))

            // 2. Idiom Phrase
            Text(
                text = idiom.idiom,
                style = MaterialTheme.typography.titleLarge,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.weight(1f)
            )
        }
    }
}
```



### 2. Composition Over Inheritance (ၵၢၼ်ၸတ်းပႅင်ႇ)
ၼႂ်း Compose ၼႆႉ ႁဝ်းဢမ်ႇလူဝ်ႇသၢင်ႈ XML ဢၼ်ယၢဝ်းယၢဝ်း။ ႁဝ်းတႅမ်ႈ Component လဵၵ်ႉဢွၼ်ႇၸိူဝ်းၼႆႉ သေဢဝ်ၵႂႃႇၸႂ်ႉ (Reuse) ၼႂ်း `LazyColumn` လႆႈၵမ်းလဵဝ်ၶႃႈ。

* **Modifier.weight(1f):** ၸွႆႈႁႂ်ႈတူဝ်လိၵ်ႈ Idiom Phrase ယိုတ်ႈဢဝ်တီႈယူႇ ဢၼ်တိုၵ်ႉလိူဝ်ယူႇတင်းသဵင်ႈ。
* **Clip(CircleShape):** ႁဵတ်းႁႂ်ႈ Background ၶွင် Alphabet ပဵၼ်ႁၢင်ႈမူၼ်း。

---

### Summary of Lesson 29
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Component Design:** ၵၢၼ်သၢင်ႈ Custom Composable `IdiomItem`。
2.  **Visual Hierarchy:** ၵၢၼ်ၸႂ်ႉသီ လႄႈ တၢင်းယႂ်ႇတူဝ်လိၵ်ႈ ႁႂ်ႈမီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ် (Alphabet vs Phrase)。
3.  **Card Layout:** ၵၢၼ်ၸႂ်ႉ `Card` တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ UI မီး Elevation (ငဝ်း) လႄႈ Rounded Corners。

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 29)
1.  **UI Challenge:** ၸၢမ်းလႅၵ်ႈသီ Background ၶွင် Alphabet Circle ႁႂ်ႈမၼ်းလႅၵ်ႈလၢႆႈၸွမ်း တူဝ်လိၵ်ႈ (Example: 'a' ပဵၼ် Red, 'b' ပဵၼ် Blue)。
2.  **Typography:** ၸၢမ်းၸႂ်ႉ `FontWeight.Medium` ၼိူဝ် Phrase ႁႂ်ႈမၼ်းဢၢၼ်ႇငၢႆႈလိူဝ်ၵဝ်ႇ。
3.  **Preview:** သၢင်ႈ `@Preview` တွၼ်ႈတႃႇတူၺ်းႁၢင်ႈ `IdiomItem` လူၺ်ႈဢမ်ႇလူဝ်ႇ Run ၼိူဝ် Emulator。
4.  **Final Test:** ဢဝ် `IdiomItem` မႂ်ႇၼႆႉ ၵႂႃႇတႅၼ်းတီႈ `Text` ၼႂ်း `LazyColumn` (Lesson 28) တူၺ်းၶႃႈ。
