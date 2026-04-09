## Lesson 9: Scaffolding (The App Frame)

**Scaffold** ပဵၼ် Composable ဢၼ် Material Design ပၼ်မႃး တွၼ်ႈတႃႇၸတ်း ၼႃႈၸေႃး App ႁဝ်း ႁႂ်ႈမီးပၵ်းပိူင်ၶႅမ်ႉလႅပ်ႈလီ ၼႆၶႃႈ။

### 1. ႁူႉၸၵ်း Scaffold
ၼႂ်း Scaffold ၼၼ်ႉ မၼ်းမီး "တီႈဝႆႉ" (Slots) မိူၼ်ၼင်ႇ:
* **topBar**: တီႈဝႆႉ ၸိုဝ်ႈ App ဢမ်ႇၼၼ် Menu ယူႇၽၢႆႇၼိူဝ်။
* **bottomBar**: တီႈဝႆႉ Navigation ယူႇၽၢႆႇတႂ်ႈ။
* **floatingActionButton**: တုမ်ႇ (Button) ဢၼ်လွင်ႈယူႇ ၼိူဝ်ၼႃႈၸေႃး။
* **content**: တီႈဝႆႉ UI ႁဝ်းတႄႉတႄႉ (မိူၼ်ၼင်ႇ Proverb Card ႁဝ်း)။



### 2. ၵၢၼ်တႅမ်ႈ Scaffold တူဝ်ယၢင်ႇ
တူၺ်း Code ဢၼ်ၼႆႉၶႃႈ၊ မၼ်းတေႁဵတ်းႁႂ်ႈ App ႁဝ်း မီးႁၢင်ႈၽၢင်မိူၼ် App တႄႉတႄႉယဝ်ႉၶႃႈ။

```kotlin
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MainScreen() {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("ၵႂၢမ်းၵပ်းထူပ်းတႆး", fontFamily = NamKhoneFont) },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.primaryContainer
                )
            )
        },
        floatingActionButton = {
            FloatingActionButton(onClick = { /* ႁဵတ်းသင်သၵ်းလွင်ႈ */ }) {
                Icon(Icons.Default.Refresh, contentDescription = "Refresh")
            }
        }
    ) { innerPadding ->
        // innerPadding ၼႆႉလွင်ႈယႂ်ႇၼႃႇၶႃႈ၊ မၼ်းတေႁဵတ်းႁႂ်ႈ Content ႁဝ်းဢမ်ႇယူႇၼိူဝ် Top Bar ၶႃႈဢေႃႈ
        Column(modifier = Modifier.padding(innerPadding)) {
            ProverbScreen()
        }
    }
}
```

### 3. ႁဵတ်းသင်လူဝ်ႇၸႂ်ႉ innerPadding?
ပေႃးႁဝ်းၸႂ်ႉ **Scaffold**၊ မၼ်းတေပၼ် `innerPadding` မႃးၶႃႈ။ ပေႃးႁဝ်းဢမ်ႇဢဝ် Padding ၼၼ်ႉၵႂႃႇသႂ်ႇၼႂ်း Content ႁဝ်းၼႆ UI ႁဝ်းတေၵႂႃႇ "သွၼ်ႉ" (Overlap) ယူႇၽၢႆႇတႂ်ႈ Top Bar ၼၼ်ႉသေ ႁဵတ်းႁႂ်ႈတူၺ်းဢမ်ႇႁၢင်ႈလီၶႃႈ။



---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 9)
1.  ၸၢမ်းဢဝ် `Scaffold` မႃးသႂ်ႇၼႂ်း `MainActivity.kt` ၶႃႈ။
2.  မႄး `TopAppBar` ႁႂ်ႈၼႄလိၵ်ႈတႆး ၸိုဝ်ႈဝႃႈ "ၵႂၢမ်းၵပ်းထူပ်းတႆး" သေ ၸႂ်ႉ Font ဢၼ်ႁဝ်းသႂ်ႇဝႆႉၼၼ်ႉၶႃႈ။
3.  ၸၢမ်းသႂ်ႇ `FloatingActionButton` ဢၼ်မီး Icon ႁၢင်ႈ "Add" ဢမ်ႇၼၼ် "Favorite" သေ တူၺ်းၼႂ်း Preview ဝႃႈ မၼ်းဢွၵ်ႇမႃးႁၢင်ႈလီယူႇႁိုဝ်ၶႃႈ။