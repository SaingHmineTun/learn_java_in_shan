

## Lesson 11: Designing the Myanmar Unicode Layout

ၼႂ်းတွၼ်ႈလိၵ်ႈၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ Layout ၽႃႇသႃႇမၼ်း (Myanmar Language) တင်း Jetpack Compose ႁႂ်ႈမီး 2 States (Normal လႄႈ Shifted) ၼိူဝ်ပိူင်သၢင်ႈ Grid ဢၼ်မႅၼ်ႈတႅတ်ႈတေႃး ၸွမ်း Reference Swift ၶွင်ၸဝ်ႈၵဝ်ႇၶႃႈ။

ႁဝ်းတေပႂ်ႉၵုမ်းထိန်း State `isShifted` တႃႇလႅၵ်ႈလၢႆႈ တူဝ်လိၵ်ႈၼိူဝ် Grid ၵမ်းသိုဝ်ႈၶႃႈ။

---

### 1. တႅမ်ႈ Code `MyanmarLayout.kt` (Pure Architecture)

ႁဝ်းတေဝၢင်း Arrays တူဝ်လိၵ်ႈ ႁႂ်ႈမႅၼ်ႈၸွမ်း လၢႆးဝၢင်းၶီး ၼႂ်း iOS ဢႅပ်ႉ ၶွင်ၸဝ်ႈၵဝ်ႇ ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.components

import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier

@Composable
fun MyanmarLayout(
    onKeyClick: (String) -> Unit
) {
    // 🌟 ၵုမ်းထိန်းသၢႆၸႂ် Shift State ၼႂ်း Layout
    var isShifted by remember { mutableStateOf(false) }

    // Definitions ၶွင် တူဝ်လိၵ်ႈ Normal Layout ၸွမ်း Reference Swift
    val row1Normal = listOf("ဆ", "တ", "န", "မ", "အ", "ပ", "က", "င", "သ", "စ")
    val row2Normal = listOf("ေ", "ျ", "ိ", "်", "ါ", "့", "ြ", "ု", "ူ", "း")
    val row3Normal = listOf("ဖ", "ထ", "ခ", "လ", "ဘ", "ည", "ာ", "ယ")

    // Definitions ၶွင် တူဝ်လိၵ်ႈ Shifted Layout ၸွမ်း Reference Swift
    val row1Shifted = listOf("ဈ", "ဿ", "ဣ", "၍", "ဤ", "၌", "ဥ", "ရ", "ဝ", "ဏ")
    val row2Shifted = listOf("ဗ", "ှ", "ီ", "္", "ွ", "ံ", "ဲ", "ဒ", "ဓ", "ဂ")
    val row3Shifted = listOf("ဇ", "ဌ", "ဃ", "ဠ", "ဉ", "ဦ", "ဟ", "၏")

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

        // ------------------ ROW 3: Shift + 8 Keys + Delete ------------------
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            // Shift Key (Normal / Active State Symbol)
            KeyboardKey(
                label = if (isShifted) "⇪" else "⇧",
                modifier = Modifier.weight(1.5f)
            ) {
                isShifted = !isShifted // Toggle Shift State ၼႂ်း Compose
            }

            currentRow3.forEach { key ->
                KeyboardKey(label = key, modifier = Modifier.weight(1f)) { 
                    onKeyClick(key) 
                }
            }

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

* **Punctuation Toggle State:** ၼႂ်း Row 4 ၶွင်ၸဝ်ႈၵဝ်ႇ, တူဝ် Punctuation မၼ်းလႅၵ်ႈလၢႆႈၼိူဝ် Normal (`။`) លႄႈ Shifted (`၊`)။ ၼႂ်း Compose ႁဝ်းၸႂ်ႉ `if (isShifted) "၊" else "။"` ဝႆႉတီႈ label လႄႈ `onKeyClick` ၵမ်းလဵဝ် ႁႂ်ႈမၼ်း Dynamic သုတ်းၶႃႈ။
* **The Subscript Sign `္` (Virama):** တီႈ Row 2 ၶွင် Shifted Layout မီးတူဝ်လၵ်းမၢႆ `္` (Myanmar Sign Virama `\u1039`)။ တူဝ်ၼႆႉမၼ်းပဵၼ် တူဝ်တေၸႂ်ႉတႅမ်ႈ တူဝ်သျၼ်ႉၸပ်းၵၼ် (Stacked/Pali Characters) ဢၼ်ႁဝ်းတေလႆႈသူင်ႇဢွၼ်တၢင်း တေတႅမ်ႈတူဝ်လိၵ်ႈ ၽၢႆႇတႂ်ႈၶႃႈ။

---