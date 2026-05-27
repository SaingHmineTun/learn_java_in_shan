

## Lesson 9: Managing Keyboard Rows and Grid Structures

### 1. လၵ်းၵၢၼ်ဝၢင်း Grid ၸႂ်ႉ Weight Modifier

ၼႂ်း Jetpack Compose ၼၼ်ႉ `Modifier.weight()` မၼ်းမီးၼႃႈတီႈ တတ်းၸႅၵ်ႇ ပိုၼ်ႉတီႈလႅၼ်ႈ (Available Space) ၼႂ်း `Row` ႁႂ်ႈပဵၼ်ပိူင် ၿႃးသႅၼ်ႉ (Percentage) ယဝ်ႉ။

* သင်ဝႃႈ ၼႂ်း Row ၼိုင်ႈထႅဝ် မီး Key 10 တူဝ်လႄႈ ႁဝ်းပၼ်ဝႆႉ `weight(1f)` ၵူႈတူဝ်ၼႆၸိုင် Key ၵူႈတူဝ် တေၵႂႃႇၵိၼ်ပိုၼ်ႉတီႈ 10% ၵၼ် တႅတ်ႈတေႃး ၵူႈၼႃႈၸေႃး ဢမ်ႇလုပႅတ်ႈယဝ်ႉ။
* သင်ဝႃႈပဵၼ် Key ၶေႃၶေႃ မိူၼ်ၼင်ႇ `Spacebar` ႁဝ်းၸၢင်ႈပၼ် `weight(4f)` ဢမ်ႇၼၼ် `weight(5f)` ႁႂ်ႈမၼ်းၵႂၢင်ႈလိူဝ်ပိူၼ်ႈယဝ်ႉ။

---

### 2. တႅမ်ႈ Code `KeyboardLayout.kt`

ႁဝ်းတေမႃးသၢင်ႈ Composable ဢၼ်မႂ်ႇ တႃႇတႅမ်ႈပဵၼ် ပိုၼ်ႉထၢၼ်ဝၢင်း Rows ၶႃႈ။ ၵႂႃႇသၢင်ႈၾၢႆႇ `KeyboardLayout.kt` သေ Implementation ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

@Composable
fun KeyboardGridContainer(
    height: Dp,
    onKeyClick: (String) -> Unit
) {
    // ၸႂ်ႉ Column ပဵၼ်တူဝ် Root Layout တႃႇၵုမ်းထိင်း Rows ၽၢႆႇတင်ႈ
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .height(height)
            .background(Color.Black)
    ) {
        // Row ထႅဝ် 1
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            val row1Keys = listOf("Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P")
            row1Keys.forEach { keyLabel ->
                KeyboardKey(
                    label = keyLabel,
                    modifier = Modifier.weight(1f), // 🌟 Key ၵူႈတူဝ်မီး Weight တူဝ်ႈၵၼ် 10%
                    onClick = onKeyClick
                )
            }
        }

        // Row ထႅဝ် 2:
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            val row2Keys = listOf("A", "S", "D", "F", "G", "H", "J", "K", "L")
            row2Keys.forEach { keyLabel ->
                KeyboardKey(
                    label = keyLabel,
                    modifier = Modifier.weight(1f),
                    onClick = onKeyClick
                )
            }
        }

        // Row ထႅဝ် 3: (Spacebar Row)
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            KeyboardKey(
                label = "123",
                modifier = Modifier.weight(1.5f), // 🌟 ပၼ်ၵႂၢင်ႈလိူဝ်ပိုၼ်ႉထၢၼ်ဢိတ်းၼိုင်ႈ
                onClick = onKeyClick
            )
            KeyboardKey(
                label = "SPACE",
                modifier = Modifier.weight(5f), // 🌟 🌟 Spacebar ၵိၼ်ပိုၼ်ႉတီႈ 5 သၼ်ႇ တႃႇတႅမ်ႈငၢႆႈ
                onClick = onKeyClick
            )
            KeyboardKey(
                label = "DEL",
                modifier = Modifier.weight(1.5f),
                onClick = onKeyClick
            )
        }
    }
}

```

---

### 3. ၶေႃႈသပ်းလႅင်း (Breakdown) လွင်ႈႁဵတ်းၵၢၼ် Code

* **`Column(Modifier.height(height))`**: တူဝ် Container တူဝ်ၼွၵ်ႈသုတ်း တေႁပ်ႉဢဝ် `height` Parameter (ဢၼ်လုၵ်ႉတီႈ `keyboardHeight.value` ၼႂ်း Lesson 7) မႃးၵုမ်းထိင်း သႅၼ်းသုင်။
* **`Row(Modifier.weight(1f))`**: ၼႂ်း `Column` ၼၼ်ႉ ႁဝ်းပၼ် `weight(1f)` တီႈ `Row` ၵူႈထႅဝ်။ မၼ်းပွင်ႇဝႃႈ သင် Keyboard သုင် `250.dp` သေ မီး 3 Rows ၼႆ -> Row ၼိုင်ႈထႅဝ်ၼႆႉ တေသုင် `83.3.dp` မိူၼ်ၵၼ် ႁင်းမၼ်းယဝ်ႉ။
* **`Modifier.weight(5f)` တီႈ Spacebar**: ၼႆႉပဵၼ် လၢႆးဝၢင်း Layout Keyboard ၸွမ်းပိူင် Standard ယဝ်ႉ။ Key ဢၼ်လူဝ်ႇၸႂ်ႉၼမ် ႁဝ်းပၼ် Weight ၼမ်၊ တူဝ်ဢၼ်ပဵၼ် Alphanumeric Standard ႁဝ်းပၼ် `1f` မိူၼ်ၵၼ်ယဝ်ႉ။

---

### 4. မၢႆတွင်း (Core Takeaways)

* ၵၢၼ်ဝၢင်း Layout Keyboard တင်း Jetpack Compose ၼၼ်ႉ ဢမ်ႇလူဝ်ႇၸႂ်ႉ `TableLayout` ဢမ်ႇၼၼ် XML Grid ၵဝ်ႇယဝ်ႉ။ ၸႂ်ႉ `Row/Column` ႁူမ်ႈတင်း `Weight` ၸွႆႈႁႂ်ႈ UI ႁဝ်းလႅၵ်ႈလၢႆႈသႅၼ်းလႆႈ Dynamic သုတ်းယဝ်ႉ။
* ၼႂ်း Lesson 10 ႁဝ်းတေဢဝ် ပိူင်သၢင်ႈ Rows/Grid ၼႆႉ ၵႂႃႇသေ တေႇတႅမ်ႈပဵၼ် **English QWERTY Layout** ဢၼ်မီး သၢႆၸႂ် Shift State (Uppercase/Lowercase) တႄႉတႄႉမၼ်းယဝ်ႉၶႃႈ။

---