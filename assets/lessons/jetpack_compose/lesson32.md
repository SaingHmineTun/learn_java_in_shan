## Lesson 32: Smooth UX with Animations

မိူဝ်ႈႁဝ်းပိုတ်ႇ/ပိၵ်ႉၶေႃႈမုၼ်းၼႂ်း Card၊ ပေႃး UI မၼ်း "ၵျွၵ်း" (Jump) ၵမ်းလဵဝ်ၼၼ်ႉ မၼ်းတေႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉတူၵ်းၸႂ်ဢေႃႈ။ ႁဝ်းတေၸႂ်ႉ `animateContentSize()` တွၼ်ႈတႃႇၵႅတ်ႇၶႄလွင်ႈၼႆႉၶႃႈ။

### 1. The `animateContentSize` Modifier
ဢၼ်ၼႆႉ မၼ်းတေၵူတ်ႇထတ်း (Watch) ဝႃႈ တၢင်းယႂ်ႇ (Size) ၶွင် Composable ၼၼ်ႉ လႅၵ်ႈလၢႆႈႁိုဝ်၊ ယဝ်ႉမၼ်းတေႁဵတ်း Animation ပၼ်ႁင်းမၼ်းၶႃႈ။

```kotlin
@Composable
fun IdiomItem(idiom: Data.Idiom) {
    var isExpanded by remember { mutableStateOf(false) }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 4.dp)
            // 1. 👈 ထႅမ်သႂ်ႇ Animation တီႈၼႆႈၶႃႈ
            .animateContentSize(
                animationSpec = spring(
                    dampingRatio = Spring.DampingRatioLowBounce,
                    stiffness = Spring.StiffnessLow
                )
            )
            .clickable { isExpanded = !isExpanded },
        shape = RoundedCornerShape(12.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            // (UI Phrase လႄႈ Meaning မိူၼ်ၼင်ႇ Lesson 31)
            // ...
        }
    }
}
```



---

### 2. Animating the Indicator Icon
တွၼ်ႈတႃႇႁႂ်ႈၵူၼ်းၸႂ်ႉႁူႉဝႃႈ Card ၼႆႉ "ပိုတ်ႇ" ဝႆႉယူႇ၊ ႁဝ်းတေဢဝ် Icon (Arrow) မႃးသႂ်ႇ သေႁႂ်ႈမၼ်း "ပၼ်ႇ" (Rotate) ၸွမ်း State ၶႃႈ။

```kotlin
// 2. ၵေႃႇသၢင်ႈ Animation တွၼ်ႈတႃႇလွင်ႈပၼ်ႇ (Rotation)
val rotationState by animateFloatAsState(
    targetValue = if (isExpanded) 180f else 0f,
    label = "Rotation"
)

// ၼႂ်း Row ႁဝ်း
Icon(
    imageVector = Icons.Default.KeyboardArrowDown,
    contentDescription = null,
    modifier = Modifier.rotate(rotationState) // 👈 ၸႂ်ႉ RotationState ၼႆႉၶႃႈ
)
```

---

### 3. Key Concepts in Lesson 32
* **`animationSpec`**: မၵ်းမၼ်ႈဝႃႈ ႁဝ်းၶႂ်ႈႁႂ်ႈ Animation ႁဝ်း "ဝႆး" ဢမ်ႇၼၼ် "ယိုတ်ႈ" (Bouncy) ၵႃႈႁိုဝ်။
* **`Spring`**: ပဵၼ်ပိူင် Animation ဢၼ်တူၺ်းပဵၼ်သၽႃႇဝ (Natural Physics) သုတ်းၶႃႈ။
* **`animateFloatAsState`**: ၸႂ်ႉတွၼ်ႈတႃႇလႅၵ်ႈလၢႆႈ "ၵႃႈၼမ်" (Value) တူဝ်လိၵ်ႈ ႁႂ်ႈမၼ်းတူင်ႉၼိုင်လႆႈ။

---

### Summary of Lesson 32
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Layout Animation:** ၵၢၼ်ၸႂ်ႉ `animateContentSize` တွၼ်ႈတႃႇယိုတ်ႈ/ႁူတ်း Card။
2.  **Property Animation:** ၵၢၼ်ၸႂ်ႉ `animateFloatAsState` တွၼ်ႈတႃႇပၼ်ႇ Icon။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 32)
1.  **Bouncy Test:** ၸၢမ်းလႅၵ်ႈ `Spring.DampingRatioHighBounce` သေတူၺ်းဝႃႈ Card ၸဝ်ႈၵဝ်ႇ "သၼ်ႇ" (Bounce) ႁႅင်းၵႃႈႁိုဝ်။
2.  **Color Animation:** ၸၢမ်းၸႂ်ႉ `animateColorAsState` ႁႂ်ႈ Background Card လႅၵ်ႈသီမိူဝ်ႈပိုတ်ႇ (Example: လုၵ်ႉတီႈ White ပဵၼ် LightBlue)။
3.  **Refinement:** ၸၢမ်းထႅမ်သႂ်ႇ `AnimatedVisibility` ၼႂ်း Meaning Text ႁႂ်ႈမၼ်း "Fade In" ဢွၵ်ႇမႃး။