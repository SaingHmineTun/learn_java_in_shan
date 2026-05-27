

## Lesson 5: Integrating Jetpack Compose into a Traditional Service Context

ၼႂ်းၵၢၼ်တႅမ်ႈ Android App ပိူင် Standard ႁဝ်းၵႆႉၸႂ်ႉ Jetpack Compose ၼႂ်း `ComponentActivity` ဢၼ်မီး သၢႆၸႂ် `LifecycleOwner` ဝႆႉထႃႈယဝ်ႉ။ 
ၵူၺ်းၵႃႊ မိူဝ်ႈႁဝ်းတေဢဝ် Compose ၵႂႃႇၸႂ်ႉၼႂ်း `InputMethodService` ဢၼ်ပဵၼ် Traditional Service Framework ၼၼ်ႉ မၼ်းဢမ်ႇမီး Architecture Components ၸိူဝ်းၼႆႉဝႆႉထႃႈ။

သင်ဝႃႈ ႁဝ်းဢမ်ႇ Setup ပၼ် Lifecycle ႁင်းၶေႃၼႆ Jetpack Compose တေဢမ်ႇၸၢင်ႈႁူႉဝႃႈ မၼ်းလူဝ်ႇ Recompose (တႅမ်ႈ UI) မိူဝ်ႈလႂ် လႄႈ တေပဵၼ် Error `ViewTreeLifecycleOwner not found` ယဝ်ႉ။ 
ၼႂ်းတွၼ်ႈလိၵ်ႈၼႆႉ ႁဝ်းတေမႃး Setup ပိူင်သၢင်ႈ Lifecycle တႄႉတႄႉမၼ်း ၼႂ်း Keyboard Service ႁဝ်းယဝ်ႉ။

---

### 1. Code ပိုၼ်ႉထၢၼ် `MaoKeyboardService.kt` ဢၼ်မၼ်ႈၵႅၼ်ႇ

ၼႆႉပဵၼ် Code ဢၼ်ၵွင်ႉသၢႆၸႂ် Architecture Components ၶဝ်ႈၵႂႃႇၼႂ်း Root DecorView ၶွင် Window Service ႁဝ်းၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.inputmethodservice.InputMethodService
import android.view.View
import androidx.lifecycle.*
import androidx.savedstate.*

class MaoKeyboardService : InputMethodService(),
    LifecycleOwner,
    ViewModelStoreOwner,
    SavedStateRegistryOwner {

    // 1. Setup Registry Containers ႁင်းၶေႃ တႃႇၵုမ်းထိင်း State & Lifecycles
    private val lifecycleRegistry = LifecycleRegistry(this)
    private val vmStore = ViewModelStore()
    private val savedStateController = SavedStateRegistryController.create(this)

    // 2. Override Interfaces ၸွမ်းပိူင် Android Architecture Components
    override val lifecycle: Lifecycle get() = lifecycleRegistry
    override val viewModelStore: ViewModelStore get() = vmStore
    override val savedStateRegistry: SavedStateRegistry
        get() = savedStateController.savedStateRegistry

    override fun onCreate() {
        super.onCreate()
        // 3. Perform Restore တႃႇႁပ်ႉႁူႉ SavedState ဢွၼ်တၢင်းသုတ်း
        savedStateController.performRestore(null)
        
        // 4. Trigger သၢႆၸႂ် မိူဝ်ႈတေႇႁဵတ်းၵၢၼ် တွၼ်ႈပိုၼ်ႉထၢၼ်
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE)
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START)
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME)
    }

    override fun onCreateInputView(): View {
        // 5. တွၼ်ႈယႂ်ႇသုတ်း: Bind Owners ၶဝ်ႈၵႂႃႇၼႂ်း Window DecorView
        // မၼ်းပဵၼ်ၵၢၼ်မၼ်ႈၸႂ်ဝႃႈ Views တင်းသဵင်ႈ ၼႂ်း Window Tree ၼႆႉ တေႁၼ် Lifecycle ၵမ်းသိုဝ်ႈ
        window?.window?.decorView?.let { root ->
            root.setViewTreeLifecycleOwner(this)
            root.setViewTreeViewModelStoreOwner(this)
            root.setViewTreeSavedStateRegistryOwner(this)
        }

        // (ႁဝ်းတေမႃးထႅမ် Code ComposeView ၼႂ်း Lesson 6)
        return super.onCreateInputView()
    }

    override fun onDestroy() {
        // 6. မိူဝ်ႈ System Kill Service ႁႂ်ႈ Destroy Lifecycle လႄႈ Clear ViewModel Store ႁႂ်ႈၵတ်ႉၵတ်ႉ
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY)
        vmStore.clear()
        super.onDestroy()
    }
}

```

---

### 2. ၶေႃႈသပ်းလႅင်း (Breakdown) လွင်ႈႁဵတ်းၵၢၼ် Code

* **`window?.window?.decorView`**: ၼႆႉပဵၼ် တူဝ် Root View သုတ်း ၶွင် Window Context ဢၼ် Service ႁဝ်းမီးသိုၼ်းၵုမ်းထိန်းၶႃႈ။ ၵၢၼ်ဢဝ် `setViewTreeLifecycleOwner(this)` ၵႂႃႇသႂ်ႇဝႆႉတီႈ Root ၼႆႉ မၼ်းတေၸွႆႈလၢတ်ႈၼႄ Layout Containers ၶွင် System တင်းသဵင်ႈ (မိူၼ်ၼင်ႇ `parentPanel` ဢၼ်ထႅမ် Error ၼၼ်ႉ) ႁူႉဝႃႈ `MaoKeyboardService` ၼႆႉပဵၼ် တူဝ်ၵုမ်းထိန်း သၢႆၸႂ်မၼ်းယဝ်ႉ။
* **`lifecycleRegistry.handleLifecycleEvent()`**: ႁဝ်းလႆႈ ႁွင်ႉၸႂ်ႉ (Trigger) သၢႆၸႂ် `ON_CREATE`, `ON_START`, လႄႈ `ON_RESUME` ဝႆႉၼႂ်း `onCreate()` ၼင်ႇႁႂ်ႈ Jetpack Compose ႁူႉဝႃႈ ယၢမ်းလဵဝ် Ecosystem မၼ်းမီးသိုၼ်း Active ဝႆႉယူႇ လႄႈ တႅမ်ႈ Layout ၼႃႈၸေႃး လႆႈၵမ်းသိုဝ်ႈ ၵတ်ႉၵတ်ႉၶႃႈ။
* **`vmStore.clear()`**: ၼႆႉပဵၼ် လွင်ႈႁႄႉၵင်ႈ **Memory Leak** ၶႃႈ။ ယွၼ်ႉဝႃႈ Service မၼ်းလႅၼ်ႈဝႆႉ ၽၢႆႇလင် (Background) ႁိုင်ႁိုင်၊ သင်ႁဝ်းဢမ်ႇ Clear ViewModel Store မိူဝ်ႈမၼ်း `onDestroy` ၼႆ ၶေႃႈမုၼ်း (Objects) တေၵိုတ်းဝႆႉၼႂ်း Memory သေ ႁဵတ်းႁႂ်ႈ ၾူၼ်း User ဢိူၼ်မႃးလႆႈၶႃႈ။

---

### 3. မၢႆတွင်း (Core Takeaways)

* ၵၢၼ်တႅမ်ႈ Jetpack Compose ၼႂ်း Non-Activity Context (မိူၼ်ၼင်ႇ System Service) ႁဝ်းလူဝ်ႇလႆႈမၼ်ႈၸႂ်ဝႃႈ Window View Tree မီး Architectural Owners တႅတ်ႈတေႃး ၼႆယဝ်ႉ။
* လၢႆးၵႂႃႇ Bind ဝႆႉတီႈ `decorView` မၼ်းပဵၼ် လၢႆးဢၼ်မၼ်ႈၵႅၼ်ႇ လႄႈ ၸႂ်ႉလႆႈလီသုတ်း တႃႇႁႄႉၵင်ႈ `IllegalStateException` ၼႂ်း Android 13+ တေႃႇထိုင် Android 16 (2026) ယဝ်ႉ။

---