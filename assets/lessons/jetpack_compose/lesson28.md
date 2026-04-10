## Lesson 28: The "Lazy" Architecture (English Idioms Project)

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးပွင်ႇၸႂ်လွင်ႈၵၢၼ်ႁဵတ်းၵၢၼ်ၶွင် `LazyColumn` လႄႈ ၵၢၼ်လူတ်ႇၶေႃႈမုၼ်း Idioms 1,000 ဢၼ် လုၵ်ႉတီႈၾၢႆႇ Java ၶဝ်ႈမႃးၼႂ်း Compose ၶႃႈ။

### 1. Why "Lazy"? (ပွင်ႇၸႂ်လွင်ႈ Recycling)
မိူဝ်ႈႁဝ်းမီး Idioms ၼမ်ၼႃႇ (1,000 ဢၼ်), ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ `Column` ထမ်ႇမတႃႇလႆႈ ၵွပ်ႈဝႃႈ:
* **Memory Load:** `Column` တေတႅမ်ႈ (Compose) ၶေႃႈမုၼ်းတင်းသဵင်ႈ 1,000 ဢၼ် ၶဝ်ႈၵႂႃႇၼႂ်း Memory ၵမ်းလဵဝ်လႄႈ ၸၢင်ႈႁဵတ်းႁႂ်ႈၾူၼ်းထိူင်း (Lag) ဢမ်ႇၼၼ် Crash ၶႃႈ။
* **Lazy Performance:** `LazyColumn` တေၸတ်းၶူင်ပၼ် **"ဢၼ်ႁဝ်းႁၼ်ယူႇၼိူဝ် Screen"** (Visible Items) ၵူၺ်းၶႃႈ။ မိူဝ်ႈႁဝ်းလၢၵ်ႈ (Scroll) ၶိုၼ်ႈၵႂႃႇ၊ ဢၼ်ႁၢႆၵႂႃႇၽၢႆႇၼိူဝ်ၼၼ်ႉ တေလႅၵ်ႈပဵၼ်ဢၼ်မႂ်ႇမႃးတႅၼ်း တီႈၽၢႆႇတႂ်ႈၶႃႈ။



### 2. Loading Data from Java Class
ဢွၼ်တၢင်းသုတ်ႉၼႆႉ လူတ်ႇလူင်းဢဝ် ၶေႃႈမုၼ်း Data.java တီႈၼႆႈၶႃႈ။
https://github.com/SaingHmineTun/EnglishIdiom/blob/master/app/src/main/java/it/saimao/englishidiom/Data.java
သင်လူတ်ႇယဝ်ႉ ဢဝ်မႃးသႂ်ႇဝႆႉၼႂ်း project ႁဝ်းႁေၶႃႈ။

```kotlin
@Composable
fun IdiomListScreen() {
    // 1. ႁွင်ႉၸႂ်ႉ Java Static Method တွၼ်ႈတႃႇဢဝ် Idioms 1,000 ဢၼ်
    val idiomList = remember { Data.getIdiomList() }

    // 2. တႅမ်ႈ LazyColumn တွၼ်ႈတႃႇၼႄ List
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp)
    ) {
        // ၵၢၼ်သူင်ႇ Data ၶဝ်ႈၵႂႃႇၸႂ်ႉ items()
        items(idiomList) { idiom ->
            // ၼႄၸိုဝ်ႈ Idiom ပဵၼ် Text ပိုၼ်ႉထၢၼ်ဢွၼ်တၢင်း
            Text(
                text = idiom.idiom, // ၼႂ်း Java ပဵၼ် String idiom
                modifier = Modifier.padding(vertical = 8.dp),
                style = MaterialTheme.typography.bodyLarge
            )
            HorizontalDivider()
        }
    }
}
```

### 3. Key Vocabulary in Lesson 28
* **Composition:** ၵၢၼ်တႅမ်ႈ UI ၶွင် Compose။
* **Recomposition:** ၵၢၼ်တႅမ်ႈ UI မႂ်ႇ ၸွမ်းၼင်ႇ State ဢၼ်လႅၵ်ႈလၢႆႈ။
* **ViewPort:** ၼႃႈၸေႃးဢၼ်ႁဝ်းႁၼ်လႆႈ (Visible Area)။

---

### Summary of Lesson 28
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Lazy Logic:** လွင်ႈပႅၵ်ႇပိူင်ႈဝၢင်ႈ `Column` လႄႈ `LazyColumn`။
2.  **Java-Kotlin Connection:** ၵၢၼ်ႁွင်ႉၸႂ်ႉ Java Collection (`List<Idiom>`) ၼႂ်း Kotlin။
3.  **Basic List:** ၵၢၼ်ၼႄ List ငၢႆႈငၢႆႈ ဢၼ်မီး Data ၼမ်ၼႃႇ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 28)
1.  **Project Setup:** ဢဝ်ၾၢႆႇ `Data.java` သႂ်ႇၶဝ်ႈၼႂ်း Project မႂ်ႇ။
2.  **The Log Test:** ၸၢမ်းႁွင်ႉ `Data.getIdiomList()` သေ Log တူၺ်း Size ၶွင်မၼ်း ႁႂ်ႈႁၼ် 1,000 ဢၼ်ၶႃႈ။
3.  **Simple List:** တႅမ်ႈ `LazyColumn` ၼႄၸိုဝ်ႈ Idiom တင်းသဵင်ႈ ႁႂ်ႈလၢၵ်ႈ (Scroll) လႆႈလူၺ်ႈဢမ်ႇဢိူဝ်ႇ (Smooth) ၶႃႈ။
4.  **Challenge:** ၸၢမ်းထႅမ်သႂ်ႇ `item { Text("English Idioms Explorer") }` ဝႆႉၽၢႆႇၼိူဝ်သုတ်း ႁႂ်ႈမၼ်းပဵၼ် Header ၼႂ်း `LazyColumn` ၶႃႈ။