

## Lesson 15: Displaying Custom Shan/Myanmar Typography on Keys

မိူဝ်ႈႁဝ်းတႅမ်ႈ Code ဝၢင်းသရ ၼႂ်း Jetpack Compose မိူၼ်ၼင်ႇ `Text(text = "ေ")` ဢမ်ႇၼၼ် `Text(text = "ျ")` ၼၼ်ႉ သင်ဝႃႈ ႁဝ်းၸႂ်ႉ System Font Standard ၶွင် Android ၼႆ Android OS တေထတ်းသၢင်ႈဝႃႈ တူဝ်လိၵ်ႈၼႆႉမၼ်းပဵၼ် Combining Character (တူဝ်လိၵ်ႈဢၼ်လူဝ်ႇၵႂႃႇၸပ်းတူဝ်တၢင်ႇဢၼ်) သေ မၼ်းတေ **Auto-Insert တူဝ်ဝူင်းမူၼ်း (Dotted Circle ◌)** သႂ်ႇၽၢႆႇၼႃႈ ဢမ်ႇၼၼ် ၽၢႆႇတႂ်ႈမၼ်း ၵမ်းသိုဝ်ႈၶႃႈ။

ၼႆႉတေႁဵတ်းႁႂ်ႈ ၼႃႈ Keyboard ႁဝ်းဢမ်ႇႁၢင်ႈလီ (မိူၼ်ၼင်ႇ ◌ေ , ◌ျ)။ တႃႇတေၵႄႈပၼ်ႁႃၼႆႉ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ Custom Typography Tooling ၶွင် Compose ၶႃႈ။

---

### 1. ၵၢၼ်ဢဝ် ၾၢႆႇ Font ၶဝ်ႈ Project

ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇလႆႈဢဝ်ၾၢႆႇ Font ဢၼ်ႁဝ်းၶႂ်ႈၸႂ်ႉ (မိူၼ်ၼင်ႇ `NamKhone.ttf` တႃႇလိၵ်ႈတႆး ဢမ်ႇၼၼ် `Pyidaungsu.ttf` တႃႇလိၵ်ႈမၼ်း) ၵႂႃႇသႂ်ႇဝႆႉၼႂ်း Folder Resources ၶႃႈ:

* ၵႂႃႇတီႈ `app/src/main/res/` သေ သၢင်ႈ Folder မႂ်ႇ ၸိုဝ်ႈဝႃႈ **`font`**
* ဢဝ်ၾၢႆႇ Font ၶွင်ၸဝ်ႈၵဝ်ႇ ၵႂႃႇ Paste သႂ်ႇ (မၼ်ႈၸႂ်ဝႃႈ ၸိုဝ်ႈၾၢႆႇပဵၼ် တူဝ်လဵၵ်း တင်းသဵင်ႈ မိူၼ်ၼင်ႇ `namkhone.ttf`)

---

### 2. သၢင်ႈ Custom FontFamily object ၼႂ်း Kotlin

ႁဝ်းတေမႃးသၢင်ႈ Object FontFamily ဝႆႉ တီႈၼႂ်း Package UI ၶွင်ႁဝ်း ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.ui.theme

import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import it.saimao.tmkkeyboardpro.R

// 🌟 သၢင်ႈ FontFamily လုၵ်ႉတီႈ Resources font ႁဝ်း
val ShanMyanmarFontFamily = FontFamily(
    Font(R.font.namkhone, FontWeight.Normal),
    Font(R.font.namkhone, FontWeight.Bold) // ၸၢင်ႈသႂ်ႇပႃး Bold Font သင်မီး
)

```

---

### 3. မႄးထႅမ် `KeyboardKey.kt` ႁႂ်ႈလူတ်ႇၸႂ်ႉ Custom Font

ၵမ်းၼႆႉ ႁဝ်းတေဢဝ် `ShanMyanmarFontFamily` ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉ ၵႂႃႇပၼ် `fontFamily` property ၼႂ်း `Text` Composable ၶွင်တူဝ် Key Component ႁဝ်းၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.components

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
// 🌟 Import FontFamily ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ
import it.saimao.tmkkeyboardpro.ui.theme.ShanMyanmarFontFamily

@Composable
fun KeyboardKey(
    label: String,
    modifier: Modifier = Modifier,
    onClick: () -> Unit
) {
    Box(
        modifier = modifier
            .padding(horizontal = 3.dp, vertical = 4.dp)
            .clip(RoundedCornerShape(5.dp))
            .background(Color.Gray)
            .clickable { onClick() },
        contentAlignment = Alignment.Center
    ) {
        Text(
            text = label,
            color = Color.White,
            fontSize = 18.sp,
            // 🌟 တွၼ်ႈပိူင်လူင်: Force ၸႂ်ႉ Custom Font တႃႇႁႄႉၵင်ႈ Dotted Circle (ဝူင်းမူၼ်း ◌)
            fontFamily = ShanMyanmarFontFamily
        )
    }
}

```

---

### 4. ၶေႃႈသပ်းလႅင်း (Breakdown) ลၢႆးၵတ်ႉတႅတ်ႈတေႃး

* **Why Custom Font fixes Dotted Circle?** Android System Font Component Standard (မိူၼ်ၼင်ႇ Roboto ဢမ်ႇၼၼ်Noto Sans) မၼ်းမီးပိူင်သၢင်ႈ Rendering Engine ဢၼ်တေ Auto-Render တူဝ် `\u25CC` (Dotted Circle ◌) ၵမ်းသိုဝ်ႈ သင်မၼ်းႁၼ်သရ တိုင်ၸုၵ်းဝႆႉတူဝ်လဵဝ်။ ၵူၺ်းၵႃႈ Custom OpenType Fonts ဢၼ်တႅမ်ႈဝႆႉတႃႇ လိၵ်ႈတႆး/လိၵ်ႈမၼ်း ၼၼ်ႉ (မိူၼ်ၼင်ႇ NamKhone) ၶဝ်လႆႈတတ်းပႅတ်ႈ Glyph Substitution Rules တွၼ်ႈၼႆႉဝႆႉလႄႈ မၼ်းတေၼႄ တူဝ်သရ `ေ` ဢမ်ႇၼၼ် `ျ` ဢွၵ်ႇမႃး လႅင်းလႅင်း ႁင်းၶေႃ ႁၢင်ႈလီ ၼိူဝ်ၼႃႈ Key သိုဝ်ႈသိုဝ်ႈၶႃႈ။

---

### 5. မၢႆတွင်း (Core Takeaways)

* ၵၢၼ်ၸႂ်ႉ Embedded `FontFamily` ၼႂ်း Keyboard ၸွႆႈႁႂ်ႈ UI ၶဝ်ႈၸူး ပိူင်သၢင်ႈ Typography ဢၼ်မၼ်ႈၵႅၼ်ႇ လႄႈ တူဝ်လိၵ်ႈ ဢမ်ႇပႅတ်ႈ ဢမ်ႇဝႃႈ User တေၸႂ်ႉၾူၼ်း Version လႂ် ၶႃႈယဝ်ႉ။

---