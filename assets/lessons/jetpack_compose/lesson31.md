## Lesson 31: Click-to-Expand Logic (Local State)

တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ List ႁဝ်းမီး Interaction ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **Boolean State** တွၼ်ႈတႃႇၵုမ်းၵၢၼ် "ပိၵ်ႉ/ပိုတ်ႇ" ၶေႃႈမုၼ်းၽၢႆႇၼႂ်း Card ၶႃႈ။

### 1. Understanding Local State in Lists
မိူဝ်ႈႁဝ်းတႅမ်ႈ `var isExpanded by remember { mutableStateOf(false) }` ဝႆႉၼႂ်း `IdiomItem`၊ လုၵ်ႈ Card ၵူႈဢၼ် တေမီး "မၢႆတွင်း" (Memory) ႁင်းၽႂ်ႁင်းမၼ်းၶႃႈ။ ပေႃးႁဝ်းပိုတ်ႇ Card ၼိုင်ႈဢၼ်ၼႆ တၢင်ႇၸိူဝ်းတေဢမ်ႇပိုတ်ႇၸွမ်းၶႃႈ။



### 2. Implementation: The Expandable Card
ႁဝ်းတေမႄး Code ၼႂ်း `IdiomItem` ႁႂ်ႈမၼ်းႁပ်ႉႁူႉၵၢၼ် Click လႄႈ ၼႄၶေႃႈမုၼ်းထႅမ် (Conditional UI) ၶႃႈ။

```kotlin
@Composable
fun IdiomItem(idiom: Data.Idiom) {
    // 1. တင်ႈ State တွၼ်ႈတႃႇၵုမ်းၵၢၼ် ပိၵ်ႉ/ပိုတ်ႇ
    var isExpanded by remember { mutableStateOf(false) }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 4.dp)
            // 2. မိူဝ်ႈၼဵၵ်း ႁႂ်ႈလႅၵ်ႈ State (true <-> false)
            .clickable { isExpanded = !isExpanded },
        shape = RoundedCornerShape(12.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                // (Alphabet Circle & Phrase ဢၼ်တႅမ်ႈဝႆႉၼႂ်း Lesson 29)
                AlphabetCircle(idiom.alphabet)
                Spacer(modifier = Modifier.width(16.dp))
                Text( text = idiom.idiom, style = MaterialTheme.typography.titleLarge)
            }

            // 3. Conditional UI: ပေႃး isExpanded ပဵၼ် true ၸင်ႇၼႄ Meaning
            if (isExpanded) {
                Spacer(modifier = Modifier.height(12.dp))
                HorizontalDivider(modifier = Modifier.padding(bottom = 12.dp))
                
                Text(
                    text = "Meaning:",
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(text = idiom.meaning, style = MaterialTheme.typography.bodyMedium)

                // ၼႄ Example ဢၼ်ထႅမ်မႃးၼႂ်း List
                if (idiom.examples.isNotEmpty()) {
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Example: \"${idiom.examples[0]}\"",
                        style = MaterialTheme.typography.bodySmall,
                        fontStyle = FontStyle.Italic,
                        color = Color.Gray
                    )
                }
            }
        }
    }
}
```

### 3. Why This Logic?
* **Conditional Composition:** ၼႂ်း Compose၊ ပေႃး `if (isExpanded)` ပဵၼ် false၊ Code ၼႂ်းၼၼ်ႉတေဢမ်ႇၺႃး "တႅမ်ႈ" (Compose) ၶဝ်ႈၵႂႃႇၼႂ်း Memory ၶႃႈ။ ဢၼ်ၼႆႉၸွႆႈႁႂ်ႈ App ႁဝ်းဝႆးၶႃႈ။
* **Recomposition:** မိူဝ်ႈ `isExpanded` လႅၵ်ႈလၢႆႈ၊ Compose တေတႅမ်ႈ Card ၼၼ်ႉမႂ်ႇ (Recompose) ၵမ်းလဵဝ်ၶႃႈ။

---

### Summary of Lesson 31
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Local State:** ၵၢၼ်ၸႂ်ႉ `remember` ၼႂ်း List Items ႁႂ်ႈမၼ်းမီး State ႁင်းၽႂ်ႁင်းမၼ်း။
2.  **Clickable Modifier:** ၵၢၼ်ႁပ်ႉႁူႉၵၢၼ်ၼဵၵ်း (Click) ၼိူဝ် Card။
3.  **Conditional UI:** ၵၢၼ်ၸႂ်ႉ `if` statement တွၼ်ႈတႃႇၼႄ/သိူၵ်ႇ UI ၸွမ်းၼင်ႇ State။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 31)
1.  **Multiple Examples:** မႄး Code ႁႂ်ႈမၼ်းၼႄ Examples တင်းသဵင်ႈ (ၼႂ်း `idiom.examples` List) ဢမ်ႇၸႂ်ႈၵွၺ်းဢၼ်ၼိုင်ႈ။ (ၸႂ်ႉ `forEach`)
2.  **Icon Indicator:** သႂ်ႇ `Icon` (မိူၼ်ၼင်ႇ KeyboardArrowDown) ဝႆႉၽၢႆႇၶႂႃသုတ်း သေႁႂ်ႈမၼ်း "ပၼ်ႇ" (Rotate) မိူဝ်ႈပိုတ်ႇ Card။
3.  **State Test:** ၸၢမ်းပိုတ်ႇ Card ၼိုင်ႈဢၼ် ယဝ်ႉလၢၵ်ႈ (Scroll) ၵႂႃႇတႂ်ႈသုတ်း သေလၢၵ်ႈၶိုၼ်းမႃးၼိူဝ်။ တူၺ်းဝႃႈ Card ၼၼ်ႉ တိုၵ်ႉ "ပိုတ်ႇ" ဝႆႉယူႇႁိုဝ်? (💡 ၼႆႉတေပဵၼ်ပိုၼ်ႉထၢၼ်တႃႇ Lesson ၼႃႈၶႃႈ)
