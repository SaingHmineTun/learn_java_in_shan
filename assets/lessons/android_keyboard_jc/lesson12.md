

## Lesson 12: Designing the Shan Unicode Layout

ၼႂ်းတွၼ်ႈလိၵ်ႈၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ Layout ၽႃႇသႃႇတႆး (Shan Language) တင်း Jetpack Compose ႁႂ်ႈမီး 2 States (Normal လႄႈ Shifted) ၼိူဝ်ပိူင်သၢင်ႈ Grid ဢၼ်မႅၼ်ႈတႅတ်ႈတေႃး ၸွမ်း Reference Swift ၶွင်ၸဝ်ႈၵဝ်ႇၶႃႈ။

ႁဝ်းတေၸႂ်ႉ `isShifted` State တွၼ်ႈတႃႇလႅၵ်ႈလၢႆႈ တူဝ်လိၵ်ႈၼိူဝ် Grid ၵမ်းသိုဝ်ႈၶႃႈ။

---

### 1. တႅမ်ႈ Code `ShanLayout.kt` (Pure Architecture)

ႁဝ်းတေဝၢင်း Arrays တူဝ်လိၵ်ႈ လႄႈ သႂ်ႇ Unicode Escape Sequences (မိူၼ်ၼင်ႇ `\uA9E5` လႄႈ `\uA9E6` တႃႇတူဝ်လိၵ်ႈၶေႃၶေႃ) ႁႂ်ႈမႅၼ်ႈၸွမ်း iOS Layout ၶွင်ၸဝ်ႈၵဝ်ႇ ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.components

import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier

@Composable
fun ShanLayout(
    onKeyClick: (String) -> Unit
) {
    // 🌟 ၵုမ်းထိန်းသၢႆၸႂ် Shift State ၼႂ်း Layout
    var isShifted by remember { mutableStateOf(false) }

    // Definitions ၶွင် တူဝ်လိၵ်ႈ Normal Layout ၸွမ်း Reference Swift
    val row1Normal = listOf("ၸ", "တ", "ၼ", "မ", "ဢ", "ပ", "ၵ", "င", "ဝ", "ႁ")
    val row2Normal = listOf("ေ", "ႄ", "ိ", "်", "ွ", "ႉ", "ႇ", "ု", "ူ", "ႈ")
    val row3Normal = listOf("ၽ", "ထ", "ၶ", "လ", "ယ", "ၺ", "ၢ")

    // Definitions ၶွင် တူဝ်လိၵ်ႈ Shifted Layout ၸွမ်း Reference Swift
    val row1Shifted = listOf("ꩡ", "打", "ꧣ", "႞", "ြ", "ၿ", "ၷ", "ရ", "သ", "႟")
    val row2Shifted = listOf("ဵ", "ႅ", "ီ", "ႂ်", "ႂ", "့", "ႆ", "\uA9E5", "\uA9E6", "း")
    val row3Shifted = listOf("ၾ", "ꩪ", "ꧠ", "驡", "ျ", "ႊ", "ႃ")

    // တတ်းၸႅၵ်ႇ တူဝ်လိၵ်ႈ ၸွမ်းသၢႆၸႂ် Shift State
    val currentRow1 = if (isShifted) row1Shifted else row1Normal
    val currentRow2 = if (isShifted) row2Shifted else row2Normal
    val currentRow3 = if (isShifted) row3Shifted else row3Normal

    Column(modifier = Modifier.fillMaxWidth()) {
        
        // ------------------ ROW 1: 10 Keys ------------------
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            currentRow1.forEach { key ->
                KeyboardKey(label = key, modifier = Modifier.weight(1f)) { 
                    onKeyClick(key) 
                }
            }
        }

        // ------------------ ROW 2: 10 Keys ------------------
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            currentRow2.forEach { key ->
                KeyboardKey(label = key, modifier = Modifier.weight(1f)) { 
                    onKeyClick(key) 
                }
            }
        }

        // ------------------ ROW 3: Shift + Spacer + 7 Keys + Delete ------------------
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            // Shift Key (Normal / Active State Symbol)
            KeyboardKey(
                label = if (isShifted) "⇪" else "⇧",
                modifier = Modifier.weight(1.5f)
            ) {
                isShifted = !isShifted // Toggle Shift State ၼႂ်း Compose
            }

            // 🌟 သႂ်ႇ Spacer ဝႆႉထႃႈ 0.3f ႁႂ်ႈမၼ်း Indent ၶဝ်ႈၵႄႈၵၢင် ႁၢင်ႈလီ ၸွမ်းပိူင်သႅၼ်း 7 Keys ၶႃႈ
            Spacer(modifier = Modifier.weight(0.3f))

            currentRow3.forEach { key ->
                KeyboardKey(label = key, modifier = Modifier.weight(1f)) { 
                    onKeyClick(key) 
                }
            }

            Spacer(modifier = Modifier.weight(0.3f))

            // Delete Key
            KeyboardKey(label = "⌫", modifier = Modifier.weight(1.5f)) {
                onKeyClick("DELETE") 
            }
        }

        // ------------------ ROW 4: Function Row (Globe, 😊, 123, Space, Punctuation, ⏎) ------------------
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            KeyboardKey(label = "🌐", modifier = Modifier.weight(1f)) { onKeyClick("GLOBE") }
            KeyboardKey(label = "😊", modifier = Modifier.weight(1f)) { onKeyClick("EMOJI") }
            KeyboardKey(label = "123", modifier = Modifier.weight(1f)) { onKeyClick("NUMERIC") }
            
            // Spacebar: ၵိၼ်ပိုၼ်ႉတီႈ 4.5f ႁႂ်ႈၵႂၢင်ႈသေပိူၼ်ႈ
            KeyboardKey(label = "SPACE", modifier = Modifier.weight(4.5f)) { onKeyClick(" ") }
            
            // Punctuation (Normal = "။" , Shifted = "၊")
            KeyboardKey(label = if (isShifted) "၊" else "။", modifier = Modifier.weight(1.2f)) { 
                onKeyClick(if (isShifted) "၊" else "။") 
            }
            
            // Enter Key
            KeyboardKey(label = "⏎", modifier = Modifier.weight(1.5f)) { 
                onKeyClick("\n") 
            }
        }
    }
}

```

---

### 2. မၢႆတွင်း (Core Takeaways)

* **Unicode Character Escaping (`\uA9E5` / `\uA9E6`):** ၼႂ်း Kotlin ႁဝ်းၸၢင်ႈသႂ်ႇ Unicode hex code ၵမ်းသိုဝ်ႈဝႆႉၼႂ်း String (မိူၼ်ၼင်ႇ `"\uA9E5"`) ႁႂ်ႈမိူၼ်ၼင်ႇ ၼႂ်း Swift `"\u{A9E5}"` ၶွင်ၸဝ်ႈၵဝ်ႇ ယဝ်ႉၶႃႈ။ မၼ်းတေလူတ်ႇၼႄ တူဝ်လိၵ်ႈလၵ်းမၢႆ ၽႃႇသႃႇတႆး လႆႈတႅတ်ႈတေႃးၶႃႈ။
* **Grid Balancing with Spacers:** ယွၼ်ႉဝႃႈ Row 3 မီး Key 7 တူဝ်ၵူၺ်း (ၵတ်းလိူဝ် Row 1 လႄႈ Row 2 ဢၼ်မီး 10 keys)၊ ၵၢၼ်သႂ်ႇ `Spacer(Modifier.weight(0.3f))` ဝႆႉ ၽၢႆႇၼႃႈလႄႈၽၢႆႇလင် မၼ်းတေၸွႆႈ သုၼ်ႉပၼ် ပိုၼ်ႉတီႈ ႁႂ်ႈပုမ်ႇ `ၽ` တေႃႇထိုင် `ၢ` မႃးၸုၵ်းဝႆႉ ၵႄႈၵၢင် ႁၢင်ႈလီ လႄႈ ၼဵၵ်းငၢႆႈသုတ်း ၶႃႈ။

---
