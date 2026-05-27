

## Lesson 7: Handling Configuration Changes and Window Resizing

မိူဝ်ႈၽူႈၸႂ်ႉတိုဝ်း ပိၼ်ႇၼႃႈၸေႃးၾူၼ်း ၶဝ်ႈၵႂႃႇၼႂ်း Landscape Mode (သႅၼ်းၼွၼ်း) ၼၼ်ႉ 
ပိုၼ်ႉတီႈၼႃႈၸေႃး ၽၢႆႇတင်ႈ တေၵႅပ်ႈလူင်းၵႂႃႇတႄႉတႄႉ။ သင်ဝႃႈ Keyboard ႁဝ်း သိုပ်ႇၸႂ်ႉဝႆႉ သႅၼ်းသုင် `250.dp` မိူၼ်ၵဝ်ႇၼႆ 
မၼ်းတေၵႂႃႇႁႄႉပႅတ်ႈ ၼႃႈၸေႃး App တင်းသဵင်ႈ လႄႈ User တေဢမ်ႇႁၼ်လိၵ်ႈ ဢၼ်ၶဝ်တႅမ်ႈဝႆႉၼၼ်ႉယဝ်ႉ။

ၵွပ်ႈၼႆ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ **Compose `MutableState**` ၼႂ်း Service Context တႃႇတႅၼ်းပၼ် သႅၼ်းသုင် ႁႂ်ႈမၼ်း Dynamic (လႅၵ်ႈလၢႆႈၸွမ်းပိူင်) ယဝ်ႉ။

---

### 1. Code တင်းသဵင်ႈ ၶွင် `MaoKeyboardService.kt` (မၼ်ႈၵႅၼ်ႇသုတ်း)

ႁဝ်းတေၸႂ်ႉ Callback `onConfigurationChanged()` ၶွင် Android System တႃႇမႃးထတ်းသၢင်ႈ လွင်ႈပိၼ်ႇၼႃႈၸေႃး လႄႈ လႅၵ်ႈလၢႆႈ သႅၼ်းသုင် Keyboard State ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.content.res.Configuration
import android.inputmethodservice.InputMethodService
import android.view.View
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.material3.Text
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.*
import androidx.savedstate.*

class MaoKeyboardService : InputMethodService(),
    LifecycleOwner,
    ViewModelStoreOwner,
    SavedStateRegistryOwner {

    private val lifecycleRegistry = LifecycleRegistry(this)
    private val vmStore = ViewModelStore()
    private val savedStateController = SavedStateRegistryController.create(this)

    // 1. 🌟 သၢင်ႈ State တႃႇၵုမ်းထိန်း သႅၼ်းသုင် Keyboard (Default ပဵၼ် 250.dp)
    private val keyboardHeight = mutableStateOf(250.dp)

    override val lifecycle: Lifecycle get() = lifecycleRegistry
    override val viewModelStore: ViewModelStore get() = vmStore
    override val savedStateRegistry: SavedStateRegistry
        get() = savedStateController.savedStateRegistry

    override fun onCreate() {
        super.onCreate()
        savedStateController.performRestore(null)
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE)
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START)
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME)
    }

    override fun onCreateInputView(): View {
        window?.window?.decorView?.let { root ->
            root.setViewTreeLifecycleOwner(this)
            root.setViewTreeViewModelStoreOwner(this)
            root.setViewTreeSavedStateRegistryOwner(this)
        }

        // 2. ၵုမ်းတူၺ်း Orientation ႁႂ်ႈတႅတ်ႈတေႃး ၸွမ်းသႅၼ်းၼႃႈၸေႃး ယၢမ်းလဵဝ်
        updateKeyboardHeight(resources.configuration)

        return ComposeView(this).apply {
            setContent {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(keyboardHeight.value) // 🌟 ၸႂ်ႉ State Value တႃႇလႅၵ်ႈလၢႆႈ သႅၼ်းသုင် Dynamic
                        .background(Color.Black),
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = "TMK Keyboard",
                        color = Color.White,
                        fontSize = 20.sp
                    )
                }
            }
        }
    }

    // 3. Callback မိူဝ်ႈ System မီးလွင်ႈပိၼ်ႇၼႃႈၸေႃး (Orientation Changed)
    override fun onConfigurationChanged(newConfig: Configuration) {
        super.onConfigurationChanged(newConfig)
        // ႁွင်ႉ Method တႃႇလႅၵ်ႈလၢႆႈ သႅၼ်းသုင် Keyboard State
        updateKeyboardHeight(newConfig)
    }

    /**
     * Method တႃႇၵုမ်းထတ်း လႄႈ လႅၵ်ႈလၢႆႈ သႅၼ်းသုင်ၸွမ်း Orientation
     */
    private fun updateKeyboardHeight(config: Configuration) {
        if (config.orientation == Configuration.ORIENTATION_LANDSCAPE) {
            // သင်ပဵၼ် ၼႃႈၸေႃးၼွၼ်း (Landscape) ႁႂ်ႈသုင် 160.dp ပေႃးယဝ်ႉ
            keyboardHeight.value = 160.dp
        } else {
            // သင်ပဵၼ် ၼႃႈၸေႃးတင်ႈ (Portrait) ႁႂ်ႈသုင် 250.dp မိူၼ်ၵဝ်ႇ
            keyboardHeight.value = 250.dp
        }
    }

    override fun onDestroy() {
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY)
        vmStore.clear()
        super.onDestroy()
    }
}

```

---

### 2. ၶေႃႈသပ်းလႅင်း (Breakdown) လွင်ႈႁဵတ်းၵၢၼ် Code

* **`mutableStateOf(250.dp)`**: ၼႆႉပဵၼ် Compose State ယဝ်ႉ။ မိူဝ်ႈႁဝ်းၵႂႃႇလႅၵ်ႈလၢႆႈ တူဝ်ၼပ်ႉ (Value) မၼ်း ၼႂ်း Method `updateKeyboardHeight` ၼၼ်ႉ Jetpack Compose တေႁပ်ႉႁူႉၵမ်းသိုဝ်ႈသေ တေႁဵတ်း **Recomposition** (တႅမ်ႈ UI ၶိုၼ်း) တႃႇလႅၵ်ႈလၢႆႈ သႅၼ်းသုင် Keyboard ၼႂ်းၼႃႈၸေႃး ၵမ်းသိုဝ်ႈ ႁင်းမၼ်းယဝ်ႉ။
* **`onConfigurationChanged()`**: ပဵၼ် Callback ဢၼ် Android System တေလႅၼ်ႈမႃးႁွင်ႉၸႂ်ႉ ၵူႈပွၵ်ႈ မိူဝ်ႈ User ပိၼ်ႇၼႃႈၸေႃး ဢမ်ႇၼၼ် မိူဝ်ႈပိုတ်ႇၸႂ်ႉ Multi-window Mode (Split Screen) ယဝ်ႉ။

---

### 3. မၢႆတွင်း (Core Takeaways)

* ၵၢၼ်တႅမ်ႈ Keyboard ဢၼ်ၶႅမ်ႉၼၼ်ႉ လူဝ်ႇလႆႈႁူႉဝႆႉ လွင်ႈလႅၵ်ႈလၢႆႈ သႅၼ်းသုင် ၼႃႈၸေႃး လႄႈ ဢမ်ႇလူဝ်ႇပၼ်မၼ်း ၵိၼ်ပိုၼ်ႉတီႈ ၼႃႈၸေႃး Landscape ၼမ်ယဝ်ႉ။
* ၸႂ်ႉ `MutableState` ဝႆႉၼႂ်း Service Layer ၼႆႉ ၸွႆႈႁႂ်ႈ ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း လႅၵ်ႈလၢႆႈ သႅၼ်းသုင် ၶဝ်ႈၵႂႃႇၼႂ်း Compose Layer မၼ်းငၢႆႈ လႄႈ မၼ်ႈၵႅၼ်ႇတႄႉတႄႉယဝ်ႉ။

---
