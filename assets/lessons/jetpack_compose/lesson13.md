## Lesson 13: Reusable Components (The Calculator Button)

**Reusable Component** ပဵၼ်ၵၢၼ်သၢင်ႈ Composable ဢၼ်လဵၵ်ႉလဵၵ်ႉ ၼိုင်ႈဢၼ်သေ "ႁွင်ႉၸႂ်ႉ" (Reuse) မၼ်းလၢႆလၢႆပွၵ်ႈ ၸွမ်းၶေႃႈမုၼ်း ဢၼ်ပႅၵ်ႇပိူင်ႈၵၼ်ၶႃႈ။

### 1. ႁဵတ်းသင်လူဝ်ႇၸႂ်ႉ Reusable Components?
* **Clean Code:** Code ႁဝ်းတေဢေႇလူင်းသေ ဢၢၼ်ႇငၢႆႈလိူဝ်ၶႃႈ။
* **Easy to Update:** ပေႃးၶႂ်ႈလႅၵ်ႈလၢႆႈသီတုမ်ႇ ၵူႈဢၼ်၊ ႁဝ်းၵူၺ်းမႄးတီႈလဵဝ်ၵူၺ်း ၵူႈတုမ်ႇတေလႅၵ်ႈၸွမ်းၵမ်းလဵဝ်ၶႃႈ။
* **Consistency:** ႁဵတ်းႁႂ်ႈတုမ်ႇၵူႈဢၼ် မီးတၢင်းၵႂၢင်ႈ၊ တၢင်းသုင်၊ လႄႈ ႁၢင်ႈၽၢင်မိူၼ်ၵၼ်ၶႃႈ။



### 2. ၵေႃႇသၢင်ႈ `CalcButton` Composable
ႁဝ်းတေထွၼ် Code မၢၵ်ႇတုမ်ႇဢွၵ်ႇမႃးသေ သၢင်ႈပဵၼ် Function မႂ်ႇၼိုင်ႈဢၼ်ၶႃႈ။

```kotlin
@Composable
fun CalcButton(
    label: String,        // လိၵ်ႈတႆး ဢမ်ႇၼၼ် ၶိူင်ႈမၢႆ
    backgroundColor: Color = MaterialTheme.colorScheme.secondaryContainer,
    onClick: () -> Unit   // ၵၢၼ်သူင်ႇ Function (Action) ၶဝ်ႈၵႂႃႇ
) {
    Surface(
        modifier = Modifier
            .padding(4.dp)
            .aspectRatio(1f) // ႁႂ်ႈပဵၼ်သီႇၸဵင်ႇပဵင်း
            .clickable { onClick() }, // ႁဵတ်းႁႂ်ႈၼဵၵ်းလႆႈ
        shape = CircleShape, // ၸၢမ်းႁဵတ်းတုမ်ႇမူၼ်း (Circle) ႁႂ်ႈႁၢင်ႈလီ
        color = backgroundColor
    ) {
        Box(contentAlignment = Alignment.Center) {
            Text(
                text = label,
                style = MaterialTheme.typography.headlineMedium,
                color = MaterialTheme.colorScheme.onSecondaryContainer
            )
        }
    }
}
```

### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉၼႂ်း Grid
ၵမ်းၼႆႉ ၼႂ်း `LazyVerticalGrid` ႁဝ်းၼၼ်ႉ Code တေဢေႇလူင်းၵႂႃႇၼႃႇၶႃႈ:

```kotlin
items(buttons) { symbol ->
    CalcButton(
        label = symbol,
        onClick = { 
            // ပေႃးၼဵၵ်းယဝ်ႉ တေႁဵတ်းသင်
            println("You clicked: $symbol") 
        }
    )
}
```



---

### 4. လွင်ႈပႅၵ်ႇပိူင်ႈသီ (Special Buttons)
ႁဝ်းၸၢင်ႈသႂ်ႇ Logic တႃႇလႅၵ်ႈလၢႆႈသီပုမ်ႇ ၸွမ်းၼင်ႇ Label မၼ်းၶႃႈ။ မိူၼ်ၼင်ႇ ပုမ်ႇ "+, -, ×, ÷" ႁႂ်ႈပဵၼ်သီလိူင်ၶမ်းၶႃႈ။

```kotlin
val color = if (symbol in listOf("+", "-", "×", "÷", "=")) {
    Color(0xFFFFD700) // သီလိူင်ၶမ်း
} else {
    MaterialTheme.colorScheme.secondaryContainer
}

CalcButton(label = symbol, backgroundColor = color, onClick = { /* ... */ })
```

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 13)
1.  ၵေႃႇသၢင်ႈ function `CalcButton` ၼႂ်း Project ၸဝ်ႈၵဝ်ႇၶႃႈ။
2.  ၸၢမ်းလႅၵ်ႈလၢႆႈ `shape = CircleShape` ႁႂ်ႈပဵၼ် `RoundedCornerShape(12.dp)` သေ တူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇ လႆႈၸႂ် (Like) ႁၢင်ႈၽၢင်ဢၼ်လႂ်လိူဝ်ၵၼ်ၶႃႈ။
3.  ၸၢမ်းသႂ်ႇ Logic တႃႇလႅၵ်ႈလၢႆႈသီတုမ်ႇ "C" (Clear) ႁႂ်ႈပဵၼ်သီလႅင် တွၼ်ႈတႃႇပၼ်ၾၢင်ႉၵူၼ်းၸႂ်ႉၶႃႈ။