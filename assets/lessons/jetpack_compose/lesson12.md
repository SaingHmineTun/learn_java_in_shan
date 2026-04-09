## Lesson 12: Designing the Grid Layout

တွၼ်ႈတႃႇ Calculator ၼႆႉ ႁဝ်းလူဝ်ႇဝၢင်းတုမ်ႇ ႐-႙ လႄႈ ၶိူင်ႈမၢႆၼပ်ႉသွၼ်ႇ (+, -, *, /) ႁႂ်ႈမၼ်းပဵၼ်ထႅဝ်ပဵၼ်ၸုမ်းၶႃႈ။ 
ၼႂ်း Compose ၼႆႉ ႁဝ်းမီးလၢႆလၢႆပိူင် ဢၼ်တေၸႂ်ႉလႆႈၶႃႈ။

### 1. ၵၢၼ်ၸႂ်ႉ Column လႄႈ Row (Manual Grid)
ဢၼ်ၼႆႉပဵၼ်ပိူင်ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼႂ်း Module 1 ၶႃႈ။ ႁဝ်းၸၢင်ႈဢဝ် `Row` ဝၢင်းဝႆႉၼႂ်း `Column` တႃႇႁဵတ်းပဵၼ်ထႅဝ်ၶႃႈ။
* **လွင်ႈလီ:** ႁဝ်းၸတ်းလႆႈငၢႆႈ၊ ၶႂ်ႈႁႂ်ႈတုမ်ႇ "0" ယၢဝ်းၵေႃႈ ႁဵတ်းလႆႈၶႃႈ။

### 2. ၵၢၼ်ၸႂ်ႉ LazyVerticalGrid (Automatic Grid)
ပေႃးႁဝ်းမီးတုမ်ႇတင်းၼမ်သေ ၶႂ်ႈႁႂ်ႈ Compose ၸတ်းပၼ်ႁင်းမၼ်းၼႆ ႁဝ်းၸႂ်ႉ `LazyVerticalGrid` ၶႃႈ။
* **Concept:** ႁဝ်းလၢတ်ႈဝႃႈ "ႁႂ်ႈမီး 4 ထႅဝ် (Columns)"၊ ယဝ်ႉၵေႃႈ ဢဝ်ပုမ်ႇသႂ်ႇပၼ်ၵမ်းဢၼ်ၵမ်းဢၼ်ၶႃႈ။



### 3. တူဝ်ယၢင်ႇ Code တႃႇဝၢင်း Grid
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေၸၢမ်းဝၢင်းပုမ်ႇ 4x4 (16 ဢၼ်) ႁႂ်ႈမၼ်းတဵမ်ၼႃႈၸေႃးၶႃႈ။

```kotlin
@Composable
fun CalculatorGrid() {
    val buttons = listOf(
        "႗", "႘", "႙", "÷",
        "႔", "႕", "႖", "×",
        "႑", "႒", "႓", "-",
        "C", "႐", "=", "+"
    )

    Column(modifier = Modifier.fillMaxSize()) {
        // ၼႃႈၸေႃးၼႄမၢႆၼပ်ႉ (Display)
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f) // ႁႂ်ႈမၼ်းၵႂၢင်ႈတဵမ်တီႈဢၼ်ၵိုတ်းဝႆႉ
                .padding(24.dp),
            contentAlignment = Alignment.BottomEnd
        ) {
            Text(text = "႐", style = MaterialTheme.typography.displayLarge)
        }

        // ၵူင်ဝၢင်းပုမ်ႇ (Button Grid)
        LazyVerticalGrid(
            columns = GridCells.Fixed(4), // ၸတ်းဝႆႉ 4 ထႅဝ်သိုဝ််ႈ
            modifier = Modifier.weight(2f),
            contentPadding = PaddingValues(8.dp)
        ) {
            items(buttons) { button ->
                // သၢင်ႈပုမ်ႇထမ်ႇမတႃႇၵွၼ်ႇ တွၼ်ႈတႃႇ Test Layout
                Button(
                    modifier = Modifier
                        .padding(4.dp)
                        .aspectRatio(1f), // ႁႂ်ႈပုမ်ႇပဵၼ်သီႇၸဵင်ႇပဵင်း (Square)
                    onClick = { /* Check log */ }
                ) {
                    Text(text = button, fontSize = 24.sp)
                }
            }
        }
    }
}
```



---

### 4. လွင်ႈႁူႉလွင်ႈ Aspect Ratio
ၼႂ်း Calculator ၼႆႉ တုမ်ႇၵူႈဢၼ်တေလႆႈပဵၼ် "သီႇၸဵင်ႇပဵင်း" (Square) ၸင်ႇတေႁၢင်ႈလီၶႃႈ။ ႁဝ်းၸႂ်ႉ `Modifier.aspectRatio(1f)` တႃႇလၢတ်ႈၼႄဝႃႈ "တၢင်းၵႂၢင်ႈ လႄႈ တၢင်းသုင် တေလႆႈပဵၼ် 1:1 ၼႃ" ၼႆၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 12)
1.  ၸၢမ်းဢဝ် Code ၽၢႆႇၼိူဝ်ၼႆႉၵႂႃႇ Run တူၺ်းၼႂ်း Preview ၶႃႈ။
2.  ၸၢမ်းလႅၵ်ႈလၢႆႈ `GridCells.Fixed(4)` ႁႂ်ႈပဵၼ် `3` ဢမ်ႇၼၼ် `5` သေ တူၺ်းဝႃႈ တုမ်ႇႁဝ်းတေလႅၵ်ႈလၢႆႈၵႂႃႇၸိူင်ႉႁိုဝ်ၶႃႈ။
3.  **Challenge:** ၸၢမ်းသႂ်ႇ `Modifier.background` ပၼ် `Box` ၽၢႆႇၼိူဝ် ႁႂ်ႈမၼ်းမီးသီပႅၵ်ႇၵၼ်တင်း တီႈဝႆႉပုမ်ႇၶႃႈ။
