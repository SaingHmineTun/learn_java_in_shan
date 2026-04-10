## Lesson 18: Customizing Themes (Calculator Skins)

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈၵေႃႇသၢင်ႈ **"Skins"** ဢမ်ႇၼၼ် **"Dynamic Themes"** တွၼ်ႈတႃႇ Calculator ႁဝ်းၶႃႈ။

### 1. ႁူႉၸၵ်း ColorScheme
Material3 ၸႂ်ႉ `ColorScheme` တႃႇတွင်းမၢႆဝႆႉသီၵူႈပိူင်ၶႃႈ။
* **Primary:** သီပိူင်လူင် (ၸႂ်ႉတႃႇတုမ်ႇ "=" ဢမ်ႇၼၼ် TopBar)။
* **SecondaryContainer:** သီတွၼ်ႈတႃႇတုမ်ႇမၢႆၼပ်ႉ (႐-႙)။
* **Surface:** သီပိုၼ်ႉၽၢႆႇတႂ်ႈ (Background)။

### 2. ၵေႃႇသၢင်ႈ "Shan Gold" Theme
ႁဝ်းတေၸၢမ်းသၢင်ႈသီဢၼ်မီးၵုင်ႇမုၼ်းတႆး (သီလိူင်ၶမ်း လႄႈ သီလႅင်) ၶႃႈ။

```kotlin
val shanGoldColors = darkColorScheme(
    primary = Color(0xFFFFD700), // Gold
    secondaryContainer = Color(0xFF333333), // Dark Gray for buttons
    onSecondaryContainer = Color.White,
    surface = Color(0xFF121212), // Black background
    onSurface = Color.White
)

val museSkyColors = lightColorScheme(
    primary = Color(0xFF00BFFF), // Deep Sky Blue
    secondaryContainer = Color(0xFFE0F7FA),
    surface = Color.White
)
```

### 3. ၵၢၼ်လႅၵ်ႈ Theme ၸွမ်း State
ႁဝ်းၸၢင်ႈၸႂ်ႉ State တႃႇႁႂ်ႈၵူၼ်းၸႂ်ႉၼဵၵ်းလႅၵ်ႈ "Skin" App လႆႈႁင်းမၼ်းၶႃႈ။

```kotlin
@Composable
fun MaoCalculatorApp() {
    // State တႃႇတွၼ်ႈဝႆႉဝႃႈ ၸႂ်ႉ Theme ဢၼ်လႂ်ယူႇ
    var isGoldTheme by remember { mutableStateOf(true) }

    val colors = if (isGoldTheme) ShanGoldColors else MuseSkyColors

    MaterialTheme(colorScheme = colors) {
        Surface(color = MaterialTheme.colorScheme.surface) {
            Column {
                // တုမ်ႇတႃႇလႅၵ်ႈ Theme
                Switch(
                    checked = isGoldTheme,
                    onCheckedChange = { isGoldTheme = it }
                )
                AdaptiveCalculator() // UI ဢၼ်ႁဝ်းႁဵတ်းဝႆႉ
            }
        }
    }
}
```



---

### 4. Custom Shapes (ႁၢင်ႈၽၢင်ပုမ်ႇ)
ၼွၵ်ႈလိူဝ်သီယဝ်ႉ ႁဝ်းၸၢင်ႈလႅၵ်ႈႁၢင်ႈတုမ်ႇ (Shape) လႆႈၶႃႈ။
* **Modern Style:** တုမ်ႇသီႇၸဵင်ႇမူၼ်း (Rounded Corners)။
* **Classic Style:** တုမ်ႇမူၼ်း (Circle) မိူၼ်ၼင်ႇ iPhone Calculator။

```kotlin
val CalculatorShapes = Shapes(
    medium = RoundedCornerShape(12.dp),
    large = CircleShape
)
```

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 18)
1.  ၸၢမ်းၵႂႃႇမႄးၾၢႆႇ `ui.theme/Color.kt` သေ ထႅမ်သႂ်ႇသီဢၼ်ၸဝ်ႈၵဝ်ႇလွၵ်ႇၸႂ်ၶႃႈ။
2.  ၸၢမ်းသၢင်ႈ `ColorScheme` မႂ်ႇ 2 ဢၼ် (မိူၼ်ၼင်ႇ "Dark Forest" လႄႈ "Cherry Blossom") ၶႃႈ။
3.  **Challenge:** ႁဵတ်းႁႂ်ႈတုမ်ႇ Calculator ႁဝ်း လႅၵ်ႈသီၸွမ်း (Dynamic) ပေႃးႁဝ်းလႅၵ်ႈ Theme ၶႃႈ။ (ၸၢမ်းၸႂ်ႉ `MaterialTheme.colorScheme.primary` ၼႂ်း `CalcButton` ၶႃႈ)။