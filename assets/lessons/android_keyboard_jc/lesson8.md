

## Lesson 8: Building the Reusable Key Component

ၼႂ်းၵၢၼ်တႅမ်ႈ Keyboard Layout ၼၼ်ႉ ႁဝ်းတေလႆႈမီး တူဝ်ၼဵၵ်း (Keys) မွၵ်ႈ သီႇႁႃႈသိပ်းတူဝ် ယဝ်ႉ။ 
သင်ႁဝ်းတႅမ်ႈ Code ႁင်းၶေႃ ၵူႈတူဝ်ၼႆ Code ႁဝ်းတေယုင်ႈလႄႈ ယႂ်ႇပႅတ်ႈလၢႆလၢႆၵူၺ်း။ 
ၵွပ်ႈၼၼ်လႄႈ ႁဝ်းထုၵ်ႇလႆႈသၢင်ႈ **Composable Component ဢၼ်ၸိုဝ်ႈဝႃႈ `KeyboardKey**` ဢၼ်ပဵၼ် တူဝ်လဵဝ် သေတႃႉ
ၸၢင်ႈႁပ်ႉဢဝ် ၶေႃႈမုၼ်း (Properties) လႅၵ်ႈလၢႆႈဝႃႈ ႁႂ်ႈမၼ်းၼႄ လိၵ်ႈသင်၊ သႅၼ်းသုင်သႅၼ်းၵႂၢင်ႈတၢၼ်ႇလႂ် လႄႈ မိူဝ်ႈၼဵၵ်း ႁႂ်ႈသူင်ႇလိၵ်ႈသင် ၼၼ်ႉၶႃႈယဝ်ႉ။

---

### 1. ပိူင်သၢင်ႈ ၶွင် `KeyboardKey` Component

တူဝ် Key ၼႂ်း Jetpack Compose ၼၼ်ႉ မၼ်းလူဝ်ႇႁပ်ႉႁူႉလႆႈ (Properties) ၸိူဝ်းၼႆႉယဝ်ႉ:

* **`label`**: တူဝ်လိၵ်ႈ ဢၼ်တေၼႄၼိူဝ် Key (မိူၼ်ၼင်ႇ "ၵ", "က", "A")။
* **`modifier`**: ၸႂ်ႉတႃႇမၢႆဝႆႉ သႅၼ်းၵႂၢင်ႈ (Weight ဢမ်ႇၼၼ် Width) ၼႂ်း Row။
* **`onKeyClick`**: Callback lambda မိူဝ်ႈ User ၼဵၵ်းၼိူဝ် Key ၼၼ်ႉ ႁႂ်ႈသူင်ႇ Text ဢွၵ်ႇၵႂႃႇ။

---

### 2. တႅမ်ႈ Code `KeyboardKey.kt`

ၵႂႃႇသၢင်ႈ ၾၢႆႇ Kotlin ဢၼ်မႂ်ႇ ၸိုဝ်ႈဝႃႈ `KeyboardKey.kt` သေ တႅမ်ႈ Code Component ၼႆႉ ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.components

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

@Composable
fun KeyboardKey(
    label: String,
    modifier: Modifier = Modifier,
    onClick: (String) -> Unit
) {
    // 🌟 ၸႂ်ႉ interactionSource တႃႇၵုမ်းထိန်း Ripple Effect ဢမ်ႇၼၼ် လွင်ႈၼဵၵ်း (Pressed State) ၽၢႆႇလင်
    val interactionSource = remember { MutableInteractionSource() }

    Box(
        modifier = modifier
            .padding(horizontal = 3.dp, vertical = 4.dp) // ပၼ်ဝႆႉ ၵႄႈၵၼ် ၼႂ်းၵႄႈ Key တူဝ်ၼိုင်ႈ တင်း တူဝ်ၼိုင်ႈ
            .clip(RoundedCornerShape(5.dp)) // ႁဵတ်းႁႂ်ႈ ဝူင်းမူၼ်း တီႈၸဵင်ႇ Key ႁၢင်ႈလီ (Corner Radius)
            .background(Color(0xFF2C2C2C)) // သီ Background ၶွင် Key (သီလႅတ်း Hin)
            .clickable(
                interactionSource = interactionSource,
                indication = null // ႁဝ်းၸၢင်ႈသႂ်ႇ Indication Standard ဢမ်ႇၼၼ် သႂ်ႇ Custom ပႃးၽၢႆႇလင်
            ) {
                onClick(label) // မိူဝ်ႈၼဵၵ်း ႁႂ်ႈသူင်ႇ label ၼၼ်ႉ ဢွၵ်ႇၵႂႃႇ
            },
        contentAlignment = Alignment.Center
    ) {
        Text(
            text = label,
            color = Color.White,
            fontSize = 18.sp
        )
    }
}

```

---

### 3. ၶေႃႈသပ်းလႅင်း (Breakdown) တွၼ်ႈပိူင်လူင် ၼႂ်း Code

* **`Modifier.padding(horizontal = 3.dp)`**: တူဝ်ၼႆႉ မၼ်းမီးၼႃႈတီႈ ၸိၵ်းပႅတ်ႈ ပိုၼ်ႉတီႈ ႁိမ်းႁွမ်း Key ယဝ်ႉ။ မၼ်းတေႁဵတ်းႁႂ်ႈ Key ၵူႈတူဝ် ဢမ်ႇၵႂႃႇ တိူဝ်ႉၸပ်းၵၼ် သေ မီးၵႄႈၵၼ် (Gap) ႁၢင်ႈလီ မိူၼ်ၼင်ႇ Keyboard Standard ယဝ်ႉ။
* **`.clip(RoundedCornerShape(5.dp))`**: ၵၢၼ်ၸႂ်ႉ `clip` ဢွၼ်တၢင်း `background` မၼ်းပဵၼ် လၵ်းၵၢၼ် Jetpack Compose ယဝ်ႉ။ မၼ်းတေတတ်းပႅတ်ႈ သီ Background ႁႂ်ႈမၼ်း မူၼ်းၸွမ်း ၸဵင်ႇ 5.dp ဢၼ်ႁဝ်းမၢႆဝႆႉၼၼ်ႉယဝ်ႉ။
* **`onClick(label)`**: Lambda function တွၼ်ႈၼႆႉ မၼ်းတေသူင်ႇ Value (တူဝ်လိၵ်ႈ) ၵႂႃႇၸူး တူဝ် Root Layout (MaoKeyboardService) ၼင်ႇႁႂ်ႈ ႁဝ်းၸၢင်ႈဢဝ် တူဝ်လိၵ်ႈ ၼၼ်ႉ ၵႂႃႇသူင်ႇၶဝ်ႈ App ၵမ်းသိုဝ်ႈယဝ်ႉ။

---

### 4. မၢႆတွင်း (Core Takeaways)

* ၵၢၼ်သၢင်ႈ Reusable Component ၸွႆႈႁႂ်ႈ Code Layout Keyboard ႁဝ်း မႄးငၢႆႈ (Maintainable) ယဝ်ႉ။
* ၼႂ်း Lesson 9 ႁဝ်းတေဢဝ် တူဝ် `KeyboardKey` ၼႆႉ ၵႂႃႇဝၢင်းသႂ်ႇၼႂ်း `Row` လႄႈ `Column` တႃႇသၢင်ႈပဵၼ် ၵွင်ၶီးပွတ်ႇ ယဝ်ႉ။

---
