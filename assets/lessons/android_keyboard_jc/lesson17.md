

## Lesson 17: Designing the Dynamic Theme Architecture Data Structure

တႃႇတေၵုမ်းထိင်း ၼႃႈ UI Keyboard ႁဝ်း ႁႂ်ႈလႅၵ်ႈႁၢင်ႈသီ လႆႈတႃႇ 10 Themes ၼၼ်ႉ ႁဝ်းတေမႃးသၢင်ႈ Data Structure ၼႂ်း Kotlin ၼင်ႇၼႆယဝ်ႉ။

---

### 1. Code `KeyboardThemeData.kt` (The Complete Production Model)

ႁဝ်းတေၸႂ်ႉ `CornerRadius` ၶွင် Compose ၶဝ်ႈမႃးၵုမ်းထိန်း Shape ဝႆႉၼႂ်း Model ၵမ်းသိုဝ်ႈၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.data.theme

import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.graphics.Color

/**
 * Data Class Blueprint ဢၼ်မီး Color & Geometry Matrix တႅတ်ႈတေႃး 
 * တႃႇၵုမ်းထိန်း 10 Keyboard Themes ၶွင် TMK Group
 */
data class KeyboardThemeData(
    val id: String,                         // ၸိုဝ်ႈ ID ၶွင် Theme (မိူၼ်ၼင်ႇ "dark", "tmk_custom")
    val displayName: String,                // ၸိုဝ်ႈတေၼႄ User (မိူၼ်ၼင်ႇ "TMK Group Theme")
    val backgroundColor: Color,             // သီပိုၼ်ႉ Keyboard Container ၼွၵ်ႈသုတ်း
    
    // Standard Key Colors
    val keyBackgroundColor: Color,          // သီပုမ်ႇ ၵ, ၶ, င, A, B Standard
    val keyForegroundColor: Color,          // သီတူဝ်လိၵ်ႈ ၼိူဝ် ပုမ်ႇ Standard

    // Pressed State Colors
    val keyPressedBackground: Color,        // သီပုမ်ႇမိူဝ်ႈ User ၼဵၵ်း (Pressed State Feedback)
    val keyPressedForeground: Color,        // သီတူဝ်လိၵ်ႈ မိူဝ်ႈ User ၼဵၵ်း

    // Special Key Colors (Shift, Delete, Globe)
    val specialKeyBackgroundColor: Color,   // သီပုမ်ႇ Shift ⇧, Delete ⌫, 🌐    
    val specialForeground: Color,           // သီတူဝ်လိၵ်ႈ ၼိူဝ် ပုမ်ႇ Special

    // Accent Key Colors (Enter)
    val accentKeyBackgroundColor: Color,    // သီပုမ်ႇ Enter ⏎ 
    val accentForeground: Color,            // သီတူဝ်လိၵ်ႈ ၼိူဝ် ပုမ်ႇ Accent
    
    // Geometry & Borders (Customization)
    val borderColor: Color,                 // သီသဵၼ်ႈႁိမ်းႁွမ်း ၶွင် Key (Stroke Color)
    val borderWidth: Int,                   // သႅၼ်းသုင်သဵၼ်ႈ (Border Thickness ပဵၼ် dp)
    val borderRadius: CornerRadius          // လွင်ႈမူၼ်းၶွင်ၸဵင်ႇပုမ်ႇ (Corner Radius Layout)
)

```

---

### 2. Code `KeyboardKey.kt` (Clean Enum Approach)

ႁဝ်းတေသၢင်ႈ `enum class KeyType` တႃႇတတ်းၸႅၵ်ႇပိူင် Key သေ ႁႂ်ႈတူဝ် `KeyboardKey` ႁွင်ႉလူတ်ႇၸႂ်ႉ Properties သီ လုၵ်ႉတီႈ `theme` Object တူဝ်လဵဝ် ၵမ်းသိုဝ်ႈ ႁင်းမၼ်းၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.components

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.saimao.tmkkeyboardpro.data.theme.KeyboardThemeData
import it.saimao.tmkkeyboardpro.ui.theme.ShanMyanmarFontFamily

// 🌟 Enum တႃႇတတ်းၸႅၵ်ႇ Profile UI Key ၼႂ်း Layout
enum class KeyType { STANDARD, SPECIAL, ACCENT }

@Composable
fun KeyboardKey(
    label: String,
    theme: KeyboardThemeData,            // 🌟 🌟 ႁပ်ႉဢဝ် Theme Object တူဝ်လဵဝ် ၸွမ်းၸဝ်ႈၵဝ်ႇလိူၵ်ႈ
    keyType: KeyType = KeyType.STANDARD,   // Default ပဵၼ် ပုမ်ႇ Standard ၵ, ၶ, A, B
    modifier: Modifier = Modifier,
    onClick: () -> Unit
) {
    val interactionSource = remember { MutableInteractionSource() }
    val isPressed by interactionSource.collectIsPressedAsState()

    // 🌟 Select Background & Foreground Colors Dynamic ၸွမ်းၼင်ႇ KeyType လႄႈ Interaction
    val (finalBackgroundColor, finalForegroundColor) = when (keyType) {
        KeyType.STANDARD -> {
            if (isPressed) theme.keyPressedBackground to theme.keyPressedForeground 
            else theme.keyBackgroundColor to theme.keyForegroundColor
        }
        KeyType.SPECIAL -> {
            if (isPressed) theme.keyPressedBackground to theme.keyPressedForeground 
            else theme.specialKeyBackgroundColor to theme.specialForeground
        }
        KeyType.ACCENT -> {
            if (isPressed) theme.keyPressedBackground to theme.keyPressedForeground 
            else theme.accentKeyBackgroundColor to theme.accentForeground
        }
    }

    // Convert CornerRadius Geometry to RoundedCornerShape ၶွင် Compose UI
    val keyShape = RoundedCornerShape(
        topLeft = theme.borderRadius.x.dp,
        topRight = theme.borderRadius.x.dp,
        bottomLeft = theme.borderRadius.y.dp,
        bottomRight = theme.borderRadius.y.dp
    )

    Box(
        modifier = modifier
            .padding(horizontal = 3.dp, vertical = 4.dp)
            .clip(keyShape) 
            .background(finalBackgroundColor)
            .border(
                width = theme.borderWidth.dp, 
                color = theme.borderColor,
                shape = keyShape
            )
            .clickable(
                interactionSource = interactionSource,
                indication = null // ပိၵ်ႉ Ripple Standard ယွၼ်ႉႁဝ်းၸႂ်ႉ keyPressedBackground ယဝ်ႉ
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

```

---

### 3. မၢႆတွင်း (Core Takeaways)

* **Encapsulated Design Logic:** တူဝ် Component `KeyboardKey` ယၢမ်းလဵဝ် မၼ်းပဵၼ် Architecture ဢၼ်ၵျႅၼ်ႇၶႅၼ်ႇသုတ်းယဝ်ႉၶႃႈ။ မၼ်းႁပ်ႉႁူႉၵူၺ်း `theme` တူဝ်လဵဝ်၊ သေ လွင်ႈလႅၵ်ႈလၢႆႈသီ (Pressed State) ဢမ်ႇၼၼ် Geometry Properties (Border Width, Radius) တင်းသဵင်ႈ တေသုၼ်ႉလႅၼ်ႈႁင်းမၼ်းဝႆႉၽၢႆႇၼႂ်း။
* **Declarative Key Invocation:** မိူဝ်ႈဢဝ်ၵႂႃႇၸႂ်ႉၼႂ်း Layout, Code ႁဝ်းတေသႅၼ်းသႅတ်ႈ မိူၼ်ၼင်ႇ:
* `KeyboardKey("ၵ", theme = currentTheme)` (Standard Key)
* `KeyboardKey("⇧", theme = currentTheme, keyType = KeyType.SPECIAL)` (Special Key)
* `KeyboardKey("⏎", theme = currentTheme, keyType = KeyType.ACCENT)` (Accent Key)



---