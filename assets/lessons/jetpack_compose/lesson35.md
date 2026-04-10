## Lesson 35: Module 4 Final Assembly & Search Feature

တွၼ်ႈတႃႇ "Final Assembly" ၼႆႉ ႁဝ်းတေႁဵၼ်းလွင်ႈ **State Filtering** ၶႃႈ။ 
မိူဝ်ႈၵူၼ်းၸႂ်ႉတႅမ်ႈလိၵ်ႈၼႂ်းလွၵ်း Search၊ List ႁဝ်းတေလႅၵ်ႈလၢႆႈၸွမ်း (Real-time) ၵမ်းလဵဝ်ၶႃႈ။

### 1. The Filtering Logic
ႁဝ်းတေၸႂ်ႉ `derivedStateOf` ဢမ်ႇၼၼ် `filter` တွၼ်ႈတႃႇတတ်းဢဝ် Idioms ဢၼ်မီးတူဝ်လိၵ်ႈ ၸွမ်းၼင်ႇၵူၼ်းၸႂ်ႉတႅမ်ႈၶႃႈ။

```kotlin
@Composable
fun IdiomListScreen(navController: NavController) {
    // 1. တင်ႈ State တွၼ်ႈတႃႇလိၵ်ႈ Search
    var searchQuery by remember { mutableStateOf("") }
    val allIdioms = remember { Data.getIdiomList() }

    // 2. Logic တွၼ်ႈတႃႇ Filter ၶေႃႈမုၼ်း
    val filteredIdioms = remember(searchQuery) {
        allIdioms.filter { it.idiom.contains(searchQuery, ignoreCase = true) }
    }

    Scaffold(
        topBar = {
            // 3. Search Bar UI
            SearchAppBar(
                query = searchQuery,
                onQueryChange = { searchQuery = it }
            )
        }
    ) { padding ->
        LazyColumn(modifier = Modifier.padding(padding)) {
            items(filteredIdioms, key = { it.id }) { idiom ->
                IdiomItem(idiom = idiom, onItemClick = {
                    navController.navigate("detail/${idiom.id}")
                })
            }
        }
    }
}
```

### 2. Implementation: The SearchAppBar
တႅမ်ႈ UI တွၼ်ႈတႃႇႁပ်ႉ Input ၽၢႆႇၼိူဝ်သုတ်းၶႃႈ။

```kotlin
@Composable
fun SearchAppBar(query: String, onQueryChange: (String) -> Unit) {
    TextField(
        value = query,
        onValueChange = onQueryChange,
        modifier = Modifier.fillMaxWidth(),
        placeholder = { Text("Search idioms...") },
        leadingIcon = { Icon(Icons.Default.Search, contentDescription = null) },
        trailingIcon = {
            if (query.isNotEmpty()) {
                IconButton(onClick = { onQueryChange("") }) {
                    Icon(Icons.Default.Clear, contentDescription = null)
                }
            }
        },
        singleLine = true,
        colors = TextFieldDefaults.colors(focusedContainerColor = Color.Transparent)
    )
}
```



---

### 3. Summary of Module 4
ၼႂ်း Module ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်းယဝ်ႉတူဝ်ႈၵႂႃႇ:
1.  **Lazy Layouts:** ၵၢၼ်ၸႂ်ႉ `LazyColumn` တႃႇၼႄ Data ၼမ်ၼမ် (1,000 ဢၼ်)။
2.  **Item Design:** ၵၢၼ်သၢင်ႈ Custom Card ဢၼ်မီး Visual Hierarchy။
3.  **Local State:** ၵၢၼ်ပိုတ်ႇ/ပိၵ်ႉ Card (Expandable UI)။
4.  **Animations:** ၵၢၼ်ၸႂ်ႉ `animateContentSize` ႁႂ်ႈ"။
5.  **Navigation:** ၵၢၼ်သူင်ႇ Arguments ၶၢမ်ႈၼႃႈၸေႃး။
6.  **Real-time Filtering:** ၵၢၼ်ႁဵတ်း Search Feature ၼိူဝ် Data ယႂ်ႇယႂ်ႇ။

---

### ၵၢၼ်ႁိူၼ်း (Final Project for Module 4)
1.  **Empty Search:** ပေႃးႁႃ Idiom ဢမ်ႇႁၼ်၊ ႁႂ်ႈၼႄႁၢင်ႈ Animation ဢမ်ႇၼၼ်လိၵ်ႈ "No idioms found" ဝႆႉၵၢင်ၼႃႈၸေႃးၶႃႈ။
2.  **Alphabet Quick-link:** (Challenge) ၸၢမ်းထႅမ်သႂ်ႇ ထႅဝ် Alphabet A-Z ဝႆႉၽၢႆႇၶွပ်ႇ ႁႂ်ႈၵူၼ်းၸႂ်ႉၼဵၵ်းယဝ်ႉ "ၵျွၵ်း" (Scroll) ၵႂႃႇၸူးတူဝ်လိၵ်ႈၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။
3.  **App Polishing:** မႄး Theme သီ App ႁႂ်ႈမိူၼ် "English Dictionary" တႄႉတႄႉၶႃႈ။