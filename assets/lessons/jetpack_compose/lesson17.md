## Lesson 17: Adaptive UI (Landscape vs Portrait)

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈ **Configuration Changes** လႄႈ ၵၢၼ်ၸတ်းပႅင်ႇ UI ႁႂ်ႈမၼ်း "Adaptive" (လႅၵ်ႈလၢႆႈၸွမ်းသၽႃႇဝ) ၶႃႈ။

### 1. ႁူႉၸၵ်း LocalConfiguration
ၼႂ်း Compose ၼႆႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ `LocalConfiguration.current` တႃႇႁူႉဝႃႈ ၾူၼ်းၸဝ်ႈၵဝ်ႇယူႇၼႂ်းပိူင် **Portrait** (တင်ႈ) ဢမ်ႇၼၼ် **Landscape** (ၼွၼ်း) ၶႃႈ။

```kotlin
val configuration = LocalConfiguration.current
val isLandscape = configuration.orientation == Configuration.ORIENTATION_LANDSCAPE
```

### 2. ဝၢင်းၽႅၼ် UI တွၼ်ႈတႃႇ 2 ပိူင်
* **Portrait (တင်ႈ):** ဝၢင်း Display ဝႆႉတၢင်းၼိူဝ်၊ ဝၢင်း Buttons ဝႆႉၽၢႆႇတႂ်ႈ (ၼင်ႇႁဝ်းႁဵတ်းမႃးၼၼ်ႉၶႃႈ)။
* **Landscape (ၼွၼ်း):** ၼႃႈၸေႃးတေၵႂၢင်ႈ။ ႁဝ်းၸၢင်ႈဢဝ် Display ဝႆႉၽၢႆႇသၢႆႉ၊ ယဝ်ႉၵေႃႈ ဢဝ် Buttons ဝႆႉၽၢႆႇၶႂႃ ႁႂ်ႈမၼ်းၸႂ်ႉငၢႆႈၶိုၼ်းၶႃႈ။



### 3. တူဝ်ယၢင်ႇ Code ၵၢၼ်လႅၵ်ႈ UI
ႁဝ်းတေၸႂ်ႉ `if (isLandscape)` တႃႇလိူၵ်ႈၸႂ်ႉ `Row` ဢမ်ႇၼၼ် `Column` ၶႃႈ။

```kotlin
@Composable
fun AdaptiveCalculator() {
    val configuration = LocalConfiguration.current
    val isLandscape = configuration.orientation == Configuration.ORIENTATION_LANDSCAPE

    if (isLandscape) {
        // ပေႃးၾူၼ်းၼွၼ်း: ဝၢင်း Display လႄႈ Buttons သိုပ်ႇၵၼ်ၵႂႃႇၽၢႆႇၶႂႃ (Row)
        Row(modifier = Modifier.fillMaxSize()) {
            Box(modifier = Modifier.weight(1f)) {
                CalculatorDisplay() 
            }
            Box(modifier = Modifier.weight(1.2f)) {
                CalculatorGrid()
            }
        }
    } else {
        // ပေႃးၾူၼ်းတင်ႈ: ဝၢင်းသိုပ်ႇၵၼ်လူင်းၵႂႃႇ (Column)
        Column(modifier = Modifier.fillMaxSize()) {
            Box(modifier = Modifier.weight(1f)) {
                CalculatorDisplay()
            }
            Box(modifier = Modifier.weight(2f)) {
                CalculatorGrid()
            }
        }
    }
}
```



---

### 4. လွင်ႈလွတ်ႈ (Screen Ratios)
ၼႂ်းပိူင် Landscape ၼၼ်ႉ ၸဝ်ႈၵဝ်ႇတေႁၼ်ဝႃႈ တုမ်ႇ Calculator ႁဝ်းၸၢင်ႈ "ယိုတ်ႈ" (Stretch) ၵႂႃႇၶႃႈ။ ႁဝ်းလူဝ်ႇမႄး `GridCells.Fixed(count)` ႁႂ်ႈမၼ်းမီးထႅဝ်ၼမ်လိူဝ်ၵဝ်ႇ ဢမ်ႇၼၼ် မႄး Aspect Ratio ႁႂ်ႈမၼ်းႁၢင်ႈလီၶိုၼ်းၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 17)
1.  ၸၢမ်းပိုတ်ႇ Emulator သေ "ပၼ်ႇ" (Rotate) ၾူၼ်းတူၺ်း ႁႂ်ႈပဵၼ် Landscape ၶႃႈ။
2.  ၸၢမ်းတႅမ်ႈ Logic ၼႂ်း `AdaptiveCalculator` သေ တူၺ်းဝႃႈ UI ၸဝ်ႈၵဝ်ႇ လႅၵ်ႈလၢႆႈၸွမ်းၼင်ႇႁဝ်းတႅမ်ႈဝႆႉႁိုဝ်ၶႃႈ။
3.  **Challenge:** ၼႂ်းပိူင် Landscape ၼၼ်ႉ ၸၢမ်းထႅမ်သႂ်ႇ "History" (သဵၼ်ႈမၢႆၵၢၼ်ၼပ်ႉသွၼ်ႇပူၼ်ႉမႃး) ဝႆႉၽၢႆႇသၢႆႉ ႁႂ်ႈမၼ်းၸႂ်ႉလႆႈတီႈလွတ်ႈၼႃႈၸေႃး ၶႅမ်ႉလီ ၶိုၼ်းၶႃႈ။