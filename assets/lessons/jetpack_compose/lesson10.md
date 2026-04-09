## Lesson 10: Final Assembly

တွၼ်ႈတႃႇၵၢၼ်ႁူမ်ႈၵၼ်ပွၵ်ႈၼႆႉ ႁဝ်းတေတႅမ်ႈ Code ဢၼ်ၸတ်းပႅင်ႇဝႆႉႁႂ်ႈလီ တွၼ်ႈတႃႇသွၼ်လုၵ်ႈႁဵၼ်းၶိုၼ်းၶႃႈ။

### 1. ၵေႃႇသၢင်ႈ Proverb Data Class
ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇမီး "ပိူင်ၶေႃႈမုၼ်း" တွၼ်ႈတႃႇ Proverb ႁဝ်းၶႃႈ။  

```kotlin
data class ShanProverb(
    val shan: String,
    val english: String
)
```

### 2. ၵေႃႇသၢင်ႈ ProverbCard Composable
ႁဝ်းတေဢဝ် `Box` လႄႈ `Column` မႃးၸႂ်ႉႁူမ်ႈၵၼ် ၼႂ်း `Card` ၶႃႈ။

```kotlin
@Composable
fun ProverbCard(proverb: ShanProverb, modifier: Modifier = Modifier) {
    Card(
        modifier = modifier
            .fillMaxWidth()
            .padding(16.dp),
        shape = RoundedCornerShape(16.dp),
        elevation = CardDefaults.cardElevation(8.dp),
        colors = CardDefaults.cardColors(containerColor = Color(0xFF2D2D2D))
    ) {
        Column(
            modifier = Modifier.padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Text(
                text = proverb.shan,
                style = MaterialTheme.typography.headlineMedium, // ဢၼ်ႁဝ်းမႄးဝႆႉၼႂ်း Type.kt
                color = Color(0xFFFFD700), // သီလိူင်ၶမ်း
                textAlign = TextAlign.Center
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = proverb.english,
                style = MaterialTheme.typography.bodyLarge,
                color = Color.LightGray,
                textAlign = TextAlign.Center
            )
        }
    }
}
```

### 3. ႁူမ်ႈၵၼ်ၼႂ်း MainScreen
ၵမ်းၼႆႉ ႁဝ်းတေဢဝ် `ProverbCard` ၵႂႃႇဝႆႉၼႂ်း `Scaffold` ဢၼ်ႁဝ်းႁဵတ်းဝႆႉၼၼ်ႉၶႃႈ။

```kotlin
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ProverbApp() {
    val sampleProverb = ShanProverb(
        shan = "ၵူၼ်းႁူႉဢမ်ႇၼမ် ၵူၼ်းၵမ်ဢမ်ႇႁၢႆး",
        english = "Knowledge is common, perseverance is rare."
    )

    Scaffold(
        topBar = {
            CenterAlignedTopAppBar(
                title = { Text("ၵႂၢမ်းၵပ်းထူပ်းတႆး", fontFamily = NamKhoneFont) }
            )
        }
    ) { padding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding),
            contentAlignment = Alignment.Center
        ) {
            ProverbCard(proverb = sampleProverb)
        }
    }
}
```



---

### 4. လွင်ႈႁူႉသိုပ်ႇ (Summary of Module 1)
မိူဝ်ႈၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်းယဝ်ႉတူဝ်ႈၵႂႃႇ:
* **Setup:** လူတ်ႇလူင်း လႄႈ တင်ႈၵၢၼ် Android Studio။
* **Mindset:** လၢႆးဝူၼ်ႉပၢၼ်မႂ်ႇ (Declarative UI)။
* **Design:** ၸႂ်ႉ Layouts, Modifiers, လႄႈ Custom Shan Fonts။
* **Professionalism:** ၸႂ်ႉ Scaffold လႄႈ Preview တွၼ်ႈတႃႇၸတ်းႁၢင်ႈၾၢင် App ႁႂ်ႈၶႅမ်ႉလီ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Final Assembly)
1.  ဢဝ် Code တင်းသဵင်ႈၼႆႉ ၵႂႃႇႁူမ်ႈၵၼ်ၼႂ်း `MainActivity.kt` သေ ၸၢမ်း **Run** ၼိူဝ် Emulator ႁႂ်ႈမၼ်းဢွၵ်ႇႁၢင်ႈလီသုတ်းၶႃႈ။
2.  ၸၢမ်းလႅၵ်ႈလၢႆႈ "သီ" (Colors) လႄႈ "တၢင်းၵႂၢင်ႈ" (Padding) ၼႂ်း `ProverbCard` ႁႂ်ႈပဵၼ် "Mao Style" ၸဝ်ႈၵဝ်ႇၶႃႈ။
3.  **Challenge:** ၸၢမ်းထႅမ်သႂ်ႇ Background Image ၼႂ်း `Box` ၽၢႆႇတႂ်ႈ Card ၼၼ်ႉၶႃႈ။
