## Lesson 34: Navigation with Arguments (Data Passing)

ၵၢၼ်သူင်ႇ Arguments ၼႂ်း Compose Navigation မၼ်းမိူၼ်တင်းၵၢၼ်သူင်ႇၶေႃႈမုၼ်းၼိူဝ် URL Website ၶႃႈ။ 
ႁဝ်းလူဝ်ႇမႄး 2 တီႈ: တီႈ **Route Definition** (သင်ႇဝႆႉ) လႄႈ တီႈ **Navigate Call** (သူင်ႇၵႂႃႇ) ၶႃႈ။

### 1. Defining Routes with Arguments
ႁဝ်းတေမၢႆဝႆႉဝႃႈ Route `detail` ၼႆႉ လူဝ်ႇလႆႈမီး `idiomId` သူင်ႇၸွမ်းမႃးတႃႇသေႇၶႃႈ။

```kotlin
// ၼႂ်း NavHost
composable(
    route = "detail/{idiomId}", // {idiomId} ပဵၼ် Placeholder
    arguments = listOf(navArgument("idiomId") { type = NavType.IntType })
) { backStackEntry ->
    // 1. ထွၼ်ဢဝ် ID ဢၼ်သူင်ႇမႃးၼၼ်ႉဢွၵ်ႇ
    val id = backStackEntry.arguments?.getInt("idiomId") ?: 0
    
    // 2. ႁႃ Idiom ၼႂ်း Data ႁဝ်း ၸွမ်းၼင်ႇ ID ၼၼ်ႉ
    val idiom = Data.getIdiomList().find { it.id == id }
    
    // 3. သူင်ႇ Idiom ၶဝ်ႈၸူးၼႃႈ Detail
    if (idiom != null) {
        IdiomDetailScreen(idiom = idiom)
    }
}
```



### 2. Navigating with Data
မိူဝ်ႈႁဝ်းႁွင်ႉ `navController.navigate`၊ ႁဝ်းတေဢဝ် ID တႄႉတႄႉမၼ်း သႂ်ႇၶဝ်ႈၵႂႃႇၼႂ်း String Route ၶႃႈ။

```kotlin
// ၼႂ်း IdiomListScreen
IdiomItem(
    idiom = idiom,
    onItemClick = {
        // သူင်ႇ ID ၵႂႃႇၸွမ်း Route (Example: "detail/5")
        navController.navigate("detail/${idiom.id}")
    }
)
```

### 3. The Detail Screen UI
ၼႃႈၸေႃးၼႆႉ တေႁပ်ႉဢဝ် Object `Idiom` တင်းဢၼ်သေ ၼႄၶေႃႈမုၼ်းတႅတ်ႈတေႃးၶႃႈ။

```kotlin
@Composable
fun IdiomDetailScreen(idiom: Data.Idiom) {
    Scaffold(
        topBar = { /* ... Detail Title ... */ }
    ) { padding ->
        Column(modifier = Modifier.padding(padding).padding(16.dp)) {
            Text(text = idiom.idiom, style = MaterialTheme.typography.headlineLarge)
            Spacer(modifier = Modifier.height(16.dp))
            Text(text = "Meaning", fontWeight = FontWeight.Bold)
            Text(text = idiom.meaning)
            
            Spacer(modifier = Modifier.height(16.dp))
            Text(text = "Examples", fontWeight = FontWeight.Bold)
            // ၼႄ Examples တင်းသဵင်ႈ ၸႂ်ႉ LazyColumn ဢမ်ႇၼၼ် Column
            idiom.examples.forEach { example ->
                Text(text = "• $example", modifier = Modifier.padding(vertical = 4.dp))
            }
        }
    }
}
```

---

### Summary of Lesson 34
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Dynamic Routes:** ၵၢၼ်သၢင်ႈ Route ဢၼ်မီး Placeholder `{argument}`။
2.  **NavArguments:** ၵၢၼ်ပိုတ်ႇ (Extract) ၶေႃႈမုၼ်းလုၵ်ႉတီႈ `backStackEntry`။
3.  **Data Retrieval:** ၵၢၼ်ၸႂ်ႉ ID တွၼ်ႈတႃႇႁႃၶေႃႈမုၼ်း (Find logic) လုၵ်ႉတီႈ `Data.java`။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 34)
1.  **Safety First:** ၸၢမ်းတႅမ်ႈ Logic ႁႄႉၵၢၼ် Error ပေႃးဝႃႈႁႃ ID ဢမ်ႇႁၼ် (Example: ၼႄလိၵ်ႈ "Idiom not found")။
2.  **Alphabet Passing:** တႅၼ်းတွၼ်ႈတႃႇတေသူင်ႇ ID ဢၼ်လဵဝ်၊ ၸၢမ်းသူင်ႇ `alphabet` (Char) ၵႂႃႇၸွမ်း ႁႂ်ႈၼႃႈ Detail သႂ်ႇသီ Background ၸွမ်းတူဝ်လိၵ်ႈၼၼ်ႉၶႃႈ။
3.  **Deep Dive:** ၵူတ်ႇထတ်းတူၺ်းဝႃႈ ပေႃးႁဝ်းသူင်ႇ String ဢၼ်မီး "ႁူးၶႅၼ်ႈ" (Space) ၶၢမ်ႈၼႃႈၸေႃးၼၼ်ႉ မၼ်းတေ Error ႁိုဝ်? (💡 ၼႆႉတေသွၼ်လုၵ်ႈႁဵၼ်းလွင်ႈ URL Encoding ၶႃႈ)။

**aj ၶႃႈ၊ ပေႃးႁဝ်းသူင်ႇၶေႃႈမုၼ်းလႆႈတႅတ်ႈတေႃးယဝ်ႉၼႆ ၼႂ်း Lesson 35 ဢၼ်ပဵၼ်တွၼ်ႈလိုၼ်းသုတ်းၼၼ်ႉ ႁဝ်းတေမႃးႁူမ်ႈ "Mao Final Assembly" သေထႅမ်သႂ်ႇ Search Feature ႁႂ်ႈမၼ်းၶႅမ်ႉသုတ်းၶႃႈ!**