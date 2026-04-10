## Lesson 30: LazyColumn Implementation

မိူဝ်ႈႁဝ်းမီး Data 1,000 ဢၼ်ယဝ်ႉ လႄႈ UI Item ယဝ်ႉယဝ်ႉၼၼ်ႉ၊ ၵၢၼ်ၸတ်းဝၢင်း (Orchestration) ၼႂ်း `LazyColumn` ပဵၼ်လွင်ႈ လွင်ႈယႂ်ႇသုတ်း တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းတူၺ်းပဵၼ် Professional ၶႃႈ။

### 1. The Power of "items" & "item"
ၼႂ်း `LazyColumn` ႁဝ်းၸၢင်ႈၸႂ်ႉ DSL (Domain Specific Language) တွၼ်ႈတႃႇမၢႆဝႆႉဝႃႈ ႁဝ်းတေၼႄသင်လၢႆလၢႆၶႃႈ:
* **`item { ... }`**: ၸႂ်ႉတွၼ်ႈတႃႇၼႄ Header ဢမ်ႇၼၼ် Footer ဢၼ်မီးၼိုင်ႈဢၼ်ၵူၺ်း။
* **`items(list) { ... }`**: ၸႂ်ႉတွၼ်ႈတႃႇၼႄ List ၶေႃႈမုၼ်းတင်းသဵင်ႈ ႁႂ်ႈမၼ်းပၼ်ႇႁူဝ် (Loop) ႁင်းမၼ်း။

### 2. Implementation with Spacing
ႁဝ်းတေၸႂ်ႉ `contentPadding` လႄႈ `verticalArrangement` ႁႂ်ႈလုၵ်ႈၶေႃႈၵႂၢမ်းမီးႁူးၶႅၼ်ႈၵၼ်ႁၢင်ႈလီၶႃႈ။

```kotlin
@Composable
fun IdiomListScreen(idioms: List<Data.Idiom>) {
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        // 1. Spacing ၼွၵ်ႈ (ပၼ်ႁူးၶႅၼ်ႈၶွပ်ႇၼႃႈၸေႃး)
        contentPadding = PaddingValues(bottom = 16.dp),
        // 2. Spacing ၼႂ်း (ပၼ်ႁူးၶႅၼ်ႈဝၢင်ႈလုၵ်ႈ Card ၵူႈဢၼ်)
        verticalArrangement = Arrangement.spacedBy(4.dp) 
    ) {
        // 3. Header ဢၼ်တိတ်းဝႆႉၽၢႆႇၼိူဝ်သုတ်း
        item {
            Text(
                text = "1,000 English Idioms",
                style = MaterialTheme.typography.headlineMedium,
                modifier = Modifier.padding(16.dp)
            )
        }

        // 4. ၵၢၼ်သူင်ႇ Data ၶဝ်ႈၸူး Card UI
        items(idioms) { idiom ->
            IdiomItem(idiom = idiom)
        }
    }
}
```



### 3. Key Concepts for Implementation
* **`spacedBy`**: ၸွႆႈႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇၵႂႃႇသႂ်ႇ `Spacer` ၼႂ်းၵႄႈ Card ႁင်းႁဝ်း။ မၼ်းတေၸတ်းႁူးၶႅၼ်ႈပၼ်ၵူႈဢၼ် တႅတ်ႈတေႃးၶႃႈ။
* **`contentPadding`**: လွင်ႈယႂ်ႇၼႃႇ မိူဝ်ႈႁဝ်းလၢၵ်ႈ (Scroll) ၵႂႃႇထိုင်တႂ်ႈသုတ်း၊ မၼ်းတေႁဵတ်းႁႂ်ႈ Card ဢၼ်လိုၼ်းသုတ်း ဢမ်ႇၵႂႃႇတိတ်းၸပ်းၶွပ်ႇ Screen ၼႃႇလႅတ်းၶႃႈ။

---

### Summary of Lesson 30
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Lazy DSL:** ၵၢၼ်ၸႂ်ႉ `item` လႄႈ `items` ႁူမ်ႈၵၼ်။
2.  **List Spacing:** ၵၢၼ်ၸတ်း Spacing ႁႂ်ႈ UI ဢၢၼ်ႇငၢႆႈ (Arrangement vs Padding)။
3.  **Data Integration:** ၵၢၼ်သူင်ႇ Data လုၵ်ႉတီႈ List ၶဝ်ႈၸူး Custom Composable `IdiomItem`။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 30)
1.  **Header Styling:** မႄး `item` (Header) ႁႂ်ႈမီး Background သီဢွၼ်ႇ လႄႈ သႂ်ႇ Font တူဝ်ၼႃပၼ်မၼ်း။
2.  **The "Count" Test:** ၼႂ်း Header ႁႂ်ႈမၼ်းၼႄ Size ၶွင် Idioms (Example: "Found 1000 idioms") ၸွမ်း။
3.  **Horizontal Spacing:** ၸၢမ်းမႄး `contentPadding` ႁႂ်ႈမၼ်းမီး `horizontal = 8.dp` သေတူၺ်းဝႃႈ မၼ်းလႅၵ်ႈလၢႆႈၸိူင်ႉႁိုဝ်ၶႃႈ။
4.  **Performance Check:** ၸၢမ်းလၢၵ်ႈ (Scroll) ဝႆးဝႆးတူၺ်း ႁႂ်ႈယိၼ်းဝႃႈမၼ်း "လူၺ်း" (Smooth) တႄႉႁိုဝ်ၶႃႈ။
