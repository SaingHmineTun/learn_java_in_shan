

## Lesson 16: Fixing Android 15 Edge-to-Edge Overlaps using Window Insets

ၼႂ်းၵၢၼ်တႅမ်ႈ Keyboard Service ၼၼ်ႉ `ComposeView` ႁဝ်းမၼ်းၸုၵ်းဝႆႉၼႂ်း `InputMethodService` Windows Context ယဝ်ႉ။
တႃႇတေၵႄႈပၼ်ႁႃ ဢမ်ႇႁႂ်ႈ Row Standard ၽၢႆႇတႂ်ႈသုတ်း (Function Row) လႅၼ်ႈၶဝ်ႈတႂ်ႈ Navigation Buttons ၼၼ်ႉ ႁဝ်းမီးလၢႆးၵႄႈ 2 လၢႆးၶႃႈ:

1. **လၢႆး Compose Content padding (ၸႂ်ႉ WindowInsets ၼႂ်း Layout)**
2. **လၢႆး ၸႂ်ႉ `ViewCompat` တီႈတူဝ် Root Window DecorView** (လၢႆးၼႆႉတေမၼ်ႈၵႅၼ်ႇသေပိူၼ်ႈ တွၼ်ႈတႃႇ Service Context ၶႃႈ)

---

### 1. တႅမ်ႈ Code ၵႄႈပၼ်ႁႃ ၼႂ်း `MaoKeyboardService.kt`

ႁဝ်းတေဢဝ် လၵ်းၵၢၼ် **`ViewCompat.setOnApplyWindowInsetsListener`** ၵႂႃႇၸပ်းဝႆႉတီႈ တူဝ် `decorView` ၶွင် Window Service ႁဝ်း 
တႃႇႁႂ်ႈမၼ်း ဢၢၼ်ႇဢဝ်သႅၼ်းသုင် ၶွင် Navigation Bars မႃးသႂ်ႇပဵၼ် Padding ၽၢႆႇတႂ်ႈ (Bottom Padding) ႁင်းမၼ်း Dynamic ၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.view.View
import androidx.compose.ui.platform.ComposeView
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import it.saimao.tmkkeyboardpro.components.ShanLayout // ဢမ်ႇၼၼ် ၽႃႇသႃႇဢၼ်ၸဝ်ႈၵဝ်ႇလိူၵ်ႈ

class MaoKeyboardService : InputMethodService(), ... {

    // ... Code Setup Lifecycle & States (လုၵ်ႉတွၼ်ႈ Lesson 12) ...

    override fun onCreateInputView(): View {
        // 1. Setup Architecture Owners ဝႆႉတီႈ Root DecorView 
        window?.window?.decorView?.let { root ->
            root.setViewTreeLifecycleOwner(this)
            root.setViewTreeViewModelStoreOwner(this)
            root.setViewTreeSavedStateRegistryOwner(this)

            // 2. 🌟 🌟 တွၼ်ႈၵႄႈ Android 15 Overlap:
            // Intercept ဢဝ် Windows Insets ၶွင် System Navigation Bars ၵမ်းသိုဝ်ႈ
            ViewCompat.setOnApplyWindowInsetsListener(root) { view, windowInsets ->
                val insets = windowInsets.getInsets(WindowInsetsCompat.Type.systemBars())
                
                // ဢဝ်သႅၼ်း Bottom Inset (သႅၼ်း Nav Bar) ၵႂႃႇပၼ်ပဵၼ် Padding ၽၢႆႇတႂ်ႈ Root View
                view.setPadding(
                    view.paddingLeft,
                    view.paddingTop,
                    view.paddingRight,
                    insets.bottom // 🌟 🌟 Push Keyboard UI ၶိုၼ်းၼိူဝ် Navigation Buttons
                )
                
                windowInsets
            }
        }

        return ComposeView(this).apply {
            setContent {
                // ႁွင်ႉ Layout ႁဝ်းမႃးၸႂ်ႉ (ယၢမ်းလဵဝ် မၼ်းတေၸုၵ်းဝႆႉၼိူဝ် Safe Area ယဝ်ႉ)
                ShanLayout(onKeyClick = { key ->
                    // Handle input
                })
            }
        }
    }
}

```

---

### 2. လၢႆးၵႄႈထႅင်ႈပိူင်ၼိုင်ႈ ၼႂ်း Compose Layer (Jetpack Compose Alternative)

သင်ဝႃႈ ၸဝ်ႈၵဝ်ႇ ဢမ်ႇၶႂ်ႈမႄး Code ၼႂ်း `MaoKeyboardService` သေ ၶႂ်ႈၵုမ်းထိန်း Padding ဝႆႉၼႂ်း Layout Composable Component ၵမ်းသိုဝ်ႈ ၼၼ်ႉ, ႁဝ်းၸၢင်ႈၸႂ်ႉ **`WindowInsets.navigationBars`** ဝႆႉၼႂ်း `Modifier` ၶွင် Root Layout ႁဝ်း ၼင်ႇၼႆၶႃႈ:

```kotlin
// ၼႂ်း ShanLayout.kt ဢမ်ႇၼၼ် MyanmarLayout.kt
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.navigationBars

Column(
    modifier = Modifier
        .fillMaxWidth()
        .windowInsetsPadding(WindowInsets.navigationBars) // 🌟 Auto-apply Bottom padding ၸွမ်းသႅၼ်း Nav Bar
) {
    // Rows ၶွင် Keyboard ၸဝ်ႈၵဝ်ႇ...
}

```

> ⚠️ **ၶေႃႈသတိ တွၼ်ႈတႃႇ Service Context:** ၼႂ်း Android 15 Keyboard Service, ၵၢၼ်ၸႂ်ႉ `Modifier.imePadding()` မၼ်းတေဢမ်ႇႁဵတ်းၵၢၼ်ၶႃႈ။ ယွၼ်ႉဝႃႈ တူဝ် Keyboard Service ႁဝ်း မၼ်းပဵၼ်တူဝ် "IME" ႁင်းမၼ်းဝႆႉယူႇယဝ်ႉ၊ ၵေႃႈလႄႈ မၼ်းဢမ်ႇၸၢင်ႈဢၢၼ်ႇ `imePadding` လုၵ်ႉတီႈတူဝ်မၼ်းၶိုၼ်းၶႃႈ။ ႁဝ်းလူဝ်ႇလႆႈပိုင်ႈဢိင် ၵူၺ်း **`navigationBars`** ဢမ်ႇၼၼ် **`systemBars`** ၶႃႈယဝ်ႉ။

---

### 3. မၢႆတွင်း (Core Takeaways)

* **Edge-to-Edge Standard:** တႄႇၸဝ်ႈၵဝ်ႇတႅမ်ႈ Project ၼႂ်းပီ 2026 ၼႆႉ ၾူၼ်း Android 15/16 တင်းသဵင်ႈ တိုၼ်းတေသုၼ်ႉ Layout ၶဝ်ႈၵႂႃႇၽၢႆႇတႂ်ႈ System Bars ဝႆႉထႃႈ ၵူႈပိူင်ယဝ်ႉ။ ၵၢၼ် Setup Window Insets မၼ်းပဵၼ် လွင်ႈလူဝ်ႇလႆႈႁဵတ်း (Mandatory) တႃႇမၼ်ႈၸႂ်ဝႃႈ Keyboard ႁဝ်း ၸႂ်ႉလႆႈ ၵူႈၾူၼ်း ၶႃႈ။
* **ViewCompat Power:** ၵၢၼ်ၸႂ်ႉ `ViewCompat.setOnApplyWindowInsetsListener` တီႈတူဝ် `decorView` မၼ်းပဵၼ် လၢႆးဢၼ်သၢင်ႈ ပိုၼ်ႉထၢၼ် Window ႁႂ်ႈမၼ်ႈၵႅၼ်ႇသုတ်း လႄႈ ႁႄႉၵင်ႈပၼ်ႁႃ UI Flashing (လွင်ႈ UI တိၼ်ႇၵႂႃႇတိၼ်ႇမႃး မိူဝ်ႈစတင်ပိုတ်ႇ) လႆႈလီသုတ်းၶႃႈ။

---
