

## Lesson 10: Architectural Layout of the English QWERTY

ၼႂ်းတွၼ်ႈလိၵ်ႈၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ ၶီးပွတ်ႇၽႃႇသႃႇဢင်းၵိတ်ႉ တင်း Jetpack Compose ႁႂ်ႈမီး 2 Layouts (Normal လႄႈ Shifted) ၼိူဝ်ပိူင်သၢင်ႈ Responsive Grid ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼႂ်း Lesson 9 ယဝ်ႉ။
ႁဝ်းတေၸႂ်ႉ Compose State တႃႇၵုမ်းထိင်း မိူဝ်ႈ User ၼဵၵ်း Key Shift `⇧` ႁႂ်ႈတူဝ်လိၵ်ႈလႅၵ်ႈပဵၼ် တူဝ်ယႂ်ႇ (Uppercase) ၵမ်းသိုဝ်ႈယဝ်ႉ။


---

### 1. Code `EnglishLayout.kt` (2 Layouts Configuration)

ႁဝ်းတေဢဝ် သၢႆၸႂ် `isShifted` ဢၼ်ပဵၼ် `MutableState` မႃးၵုမ်းထိင်း တွၼ်ႈတႃႇတတ်းၸႅၵ်ႇ Normal Layout (Lowercase) လႄႈ Shifted Layout (Uppercase) ၼႂ်းၾၢႆႇလဵဝ်ၵၼ်ယဝ်ႉ:

```kotlin
package it.saimao.tmkkeyboardpro.components

import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier

@Composable
fun EnglishLayout(
    onKeyClick: (String) -> Unit
) {
    // 🌟 ၵုမ်းထိန်းသၢႆၸႂ် Shift State ၼႂ်း Layout
    var isShifted by remember { mutableStateOf(false) }

    // Definitions ၶွင် တူဝ်လိၵ်ႈ Normal (Lowercase) လႄႈ Shifted (Uppercase)
    val row1 = if (isShifted) listOf("Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P") 
               else listOf("q", "w", "e", "r", "t", "y", "u", "i", "o", "p")
               
    val row2 = if (isShifted) listOf("A", "S", "D", "F", "G", "H", "J", "K", "L") 
               else listOf("a", "s", "d", "f", "g", "h", "j", "k", "l")
               
    val row3 = if (isShifted) listOf("Z", "X", "C", "V", "B", "N", "M") 
               else listOf("z", "x", "c", "v", "b", "n", "m")

    Column(modifier = Modifier.fillMaxWidth()) {
        
        // ------------------ ROW 1: QWERTY ------------------
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            row1.forEach { key ->
                KeyboardKey(label = key, modifier = Modifier.weight(1f)) { 
                    onKeyClick(key) 
                }
            }
        }

        // ------------------ ROW 2: ASDFGHJKL ------------------
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            Spacer(modifier = Modifier.weight(0.5f)) // Indent ႁႂ်ႈမိူၼ်ၼင်ႇ Spacer Swift ၶွင်ၸဝ်ႈၵဝ်ႇ
            row2.forEach { key ->
                KeyboardKey(label = key, modifier = Modifier.weight(1f)) { 
                    onKeyClick(key) 
                }
            }
            Spacer(modifier = Modifier.weight(0.5f))
        }

        // ------------------ ROW 3: Shift + ZXCVBNM + Delete ------------------
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            // ⇧ Shift Key 
            KeyboardKey(
                label = if (isShifted) "⇪" else "⇧",
                modifier = Modifier.weight(1.5f)
            ) {
                isShifted = !isShifted // Toggle Shift State ၼႂ်း Compose
            }

            row3.forEach { key ->
                KeyboardKey(label = key, modifier = Modifier.weight(1f)) { 
                    onKeyClick(key) 
                }
            }

            // ⌫ Delete Key
            KeyboardKey(label = "⌫", modifier = Modifier.weight(1.5f)) {
                onKeyClick("DELETE") 
            }
        }

        // ------------------ ROW 4: Function Row (Globe, 😊, 123, Space, ., ⏎) ------------------
        Row(modifier = Modifier.fillMaxWidth().weight(1f)) {
            KeyboardKey(label = "🌐", modifier = Modifier.weight(1f)) { onKeyClick("GLOBE") }
            KeyboardKey(label = "😊", modifier = Modifier.weight(1f)) { onKeyClick("EMOJI") }
            KeyboardKey(label = "123", modifier = Modifier.weight(1f)) { onKeyClick("NUMERIC") }
            
            // Spacebar: ၵိၼ်ပိုၼ်ႉတီႈ 4.5f ႁႂ်ႈၵႂၢင်ႈသေပိူၼ်ႈ
            KeyboardKey(label = "SPACE", modifier = Modifier.weight(4.5f)) { onKeyClick(" ") }
            
            KeyboardKey(label = if (isShifted) "," else ".", modifier = Modifier.weight(1f)) { 
                onKeyClick(if (isShifted) "," else ".") 
            }
            
            // ⏎ Enter Key 
            KeyboardKey(label = "⏎", modifier = Modifier.weight(1.5f)) { 
                onKeyClick("\n") 
            }
        }
    }
}

```

---

### 3. မၢႆတွင်း (Core Takeaways)

* **Conditional Layout Modification:** ၼႂ်း Compose ၼႆႉ ႁဝ်းဢမ်ႇလူဝ်ႇ ပိုတ်ႇသၢင်ႈ 2 Files ၶေႃၶေႃလႄႈ ႁဝ်းၸၢင်ႈၸႂ်ႉ `if (isShifted)` တႃႇလႅၵ်ႈလၢႆႈ တူဝ်လိၵ်ႈ (String List) ၼႂ်း File လဵဝ်ၵၼ်လႆႈၵမ်းသိုဝ်ႈယဝ်ႉ။
* **Spacer Weight:** ၵၢၼ်ၸႂ်ႉ `Spacer(Modifier.weight(0.5f))` မၼ်းပဵၼ် လၢႆးဝၢင်း Layout ႁႂ်ႈ Row 2 ဢၼ် ၶဝ်ႈၵႄႈၵၢင် (Centered Indent) တႅတ်ႈတေႃး ၸွမ်းပိူင်သၢင်ႈ ၶွင်ၸဝ်ႈၵဝ်ႇယဝ်ႉ။

---