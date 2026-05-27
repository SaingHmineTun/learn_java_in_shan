

## Lesson 21: Advanced Touch Feedback: Key Previews and Popups

တႃႇတေတႅမ်ႈ Key Preview Popup ႁႂ်ႈမၼ်းလွၵ်ႇဢွၵ်ႇမႃးၼိူဝ် Key မိူဝ်ႈ User ၼဵၵ်း (Pressed State) ၼၼ်ႉ ႁဝ်းတေမႃးၸႂ်ႉ **Compose Layout Layering** ယဝ်ႉ။
ႁဝ်းတေတတ်းပႅတ်ႈ `.clip(keyShape)` ဢွၵ်ႇတီႈ Root Box ၶွင် Key သေ ၸႂ်ႉပိူင် **Z-Index System** (ဝၢင်း UI သွၼ်ႉၼိူဝ်ၵၼ် ၸွမ်းလၢႆး တႃႁၼ်) တႃႇပၼ် Popup မၼ်းလႅၼ်ႈဢွၵ်ႇၼႃႈ Bounds ၶွင် Row ၶႃႈယဝ်ႉ။

---

### 1. Code `KeyboardKey.kt` (Implementing Popup Overlay)

ႁဝ်းတေမႃးမႄး `KeyboardKey` Component ႁဝ်း (လုၵ်ႉတွၼ်ႈ Lesson 17) ႁႂ်ႈမၼ်း Render တူဝ် Popup Box ဝႆႉၽၢႆႇၼိူဝ် ၵမ်းသိုဝ်ႈ မိူဝ်ႈ `isPressed` ပဵၼ် `true` ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.components

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.zindex
import it.saimao.tmkkeyboardpro.data.theme.KeyboardThemeData
import it.saimao.tmkkeyboardpro.ui.theme.ShanMyanmarFontFamily
import it.saimao.tmkkeyboardpro.widgets.KeyType

@Composable
fun KeyboardKey(
    label: String,
    theme: KeyboardThemeData,            
    keyType: KeyType = KeyType.STANDARD,   
    modifier: Modifier = Modifier,
    onClick: () -> Unit
) {
    val interactionSource = remember { MutableInteractionSource() }
    val isPressed by interactionSource.collectIsPressedAsState()

    // Select Colors Dynamic
    val (finalBackgroundColor, finalForegroundColor) = when (keyType) {
        KeyType.STANDARD -> if (isPressed) theme.keyPressedBackground to theme.keyPressedForeground else theme.keyBackgroundColor to theme.keyForegroundColor
        KeyType.SPECIAL -> if (isPressed) theme.keyPressedBackground to theme.keyPressedForeground else theme.specialKeyBackgroundColor to theme.specialForeground
        KeyType.ACCENT -> if (isPressed) theme.keyPressedBackground to theme.keyPressedForeground else theme.accentKeyBackgroundColor to theme.accentForeground
    }

    val keyShape = RoundedCornerShape(theme.borderRadius.x.dp)

    // 🌟 🌟 Root Container (ပိၵ်ႉ Clip ဝႆႉ ႁႂ်ႈ Popup လႅၼ်ႈဢွၵ်ႇၼႃႈ Bounds လႆႈ)
    Box(
        modifier = modifier
            .zIndex(if (isPressed) 1f else 0f) // 🌟 မိူဝ်ႈၼဵၵ်း ႁႂ်ႈ Layer မၼ်းၸုၵ်းဝႆႉ ၼိူဝ်သုတ်းပိူၼ်ႈ
            .padding(horizontal = 3.dp, vertical = 4.dp),
        contentAlignment = Alignment.Center
    ) {
        
        // 🌟 🌟 တွၼ်ႈ CHARACTER POPUP PREVIEW:
        // Render ၵူၺ်း မိူဝ်ႈ User ၼဵၵ်းပုမ်ႇ လႄႈ ပဵၼ်ပုမ်ႇ Standard (ဢမ်ႇပႃး Space, Delete ၸိူဝ်းၼႆႉ)
        if (isPressed && keyType == KeyType.STANDARD && label.length == 1) {
            Box(
                modifier = Modifier
                    .offset(y = (-60).dp) // 🌟 Push Popup ၶိုၼ်းၼိူဝ် ပၢႆမိုဝ်း User 60dp
                    .size(width = 55.dp, height = 60.dp) // သႅၼ်း Popup Preview
                    .clip(RoundedCornerShape(8.dp))
                    .background(theme.keyPressedBackground) // ၸႂ်ႉသီ Pressed Background
                    .border(width = theme.borderWidth.dp, color = theme.borderColor, shape = RoundedCornerShape(8.dp)),
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = label,
                    color = theme.keyPressedForeground,
                    fontSize = 28.sp, // 🌟 တူဝ်လိၵ်ႈယႂ်ႇလိူဝ်ၵဝ်ႇ တႃႇႁႂ်ႈႁၼ်လႆႈၸႅင်ႈလႅင်း
                    fontFamily = ShanMyanmarFontFamily
                )
            }
        }

        // Base Key Button View (တူဝ်ပုမ်ႇ Standard ၽၢႆႇတႂ်ႈ)
        Box(
            modifier = Modifier
                .fillMaxSize()
                .clip(keyShape)
                .background(finalBackgroundColor)
                .border(width = theme.borderWidth.dp, color = theme.borderColor, shape = keyShape)
                .clickable(
                    interactionSource = interactionSource,
                    indication = null
                ) { 
                    onClick() 
                },
            contentAlignment = Alignment.Center
        ) {
            Text(
                text = label,
                color = finalForegroundColor,
                fontSize = 18.sp,
                fontFamily = ShanMyanmarFontFamily
            )
        }
    }
}

```

---

### 2. မၢႆတွင်း (Core Takeaways)

* **`Modifier.offset(y = (-60).dp)`**: တူဝ်ၼႆႉ မၼ်းမီးၼႃႈတီႈသုၼ်ႉပၼ် ပိုၼ်ႉတီႈ ၶွင် Popup Box ႁႂ်ႈလႅၼ်ႈၶိုၼ်းၼိူဝ် (Negative Y Axis) 60dp။ မၼ်းတေၸုၵ်းဝႆႉ ၽၢႆႇၼိူဝ် ပၢႆမိုဝ်း User တႅတ်ႈတေႃး တူဝ်ႈၵၼ်တင်း Keyboard Standard ၵူႈပိူင်ၶႃႈ။
* **`zIndex(1f)` Modifier**: ၼႂ်း Jetpack Compose, `Row` လႄႈ `Column` Standard တေမီး Clip Bounds ဝႆႉ။ ၵၢၼ်ၸႂ်ႉ `.zIndex(if (isPressed) 1f else 0f)` ၸွႆႈ Force Layout ႁႂ်ႈပုမ်ႇ ဢၼ် User တိုင်ၼဵၵ်းယူႇၼၼ်ႉ လွၵ်ႇဢွၵ်ႇမႃးၸုၵ်းဝႆႉ ၼိူဝ်သုတ်း (Top Layer Layering) သေ တေဢမ်ႇထုၵ်ႇ Key ရေႃးၽၢႆႇၼိူဝ်မၼ်း ပိတ်းပႅတ်ႈ Popup ၶႃႈ။
* **`label.length == 1` Filter**: ႁဝ်း Filter ဝႆႉ ႁႂ်ႈ Popup လွၵ်ႇၵူၺ်း မိူဝ်ႈပဵၼ်တူဝ်လိၵ်ႈလဵဝ် (မိူၼ်ၼင်ႇ ၵ, ၶ, A) ၶႃႈ။ သင်ပဵၼ် ပုမ်ႇ "SPACE", "123", ဢမ်ႇၼၼ် "⏎" ၼၼ်ႉ မၼ်းတေဢမ်ႇလွၵ်ႇ Popup Preview ဢွၵ်ႇမႃး ႁႂ်ႈ User ယုင်ႈတႃၶႃႈ။

---
