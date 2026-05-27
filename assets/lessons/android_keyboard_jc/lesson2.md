

## Lesson 2: Deep Dive into the InputMethodService Lifecycle

ၼႂ်းၵၢၼ်တႅမ်ႈ Android Custom Keyboard ၼၼ်ႉ Component ဢၼ်ႁဝ်း လူဝ်ႇလႆႈပွင်ႇၸႂ် လႄႈ ဢၼ်တေၸႂ်ႉၼမ်လိူဝ်ပိူၼ်ႈၵေႃႈပဵၼ်
**`InputMethodService`** ယဝ်ႉ။ မၼ်းဢမ်ႇၸႂ်ႈ `Activity` (ဢၼ်မီးၼႃႈၸေႃးလႄႈ ပိုတ်ႇပိၵ်ႉ ၸွမ်းၼင်ႇၵၢၼ်ႁဵတ်း ၽူႈၸႂ်ႉတိုဝ်း) သေတႃႉ 
မၼ်းၵေႃႈမီး သၢႆၸႂ် (Lifecycle) ႁင်းၶေႃ ဢၼ်လႅၼ်ႈဝႆႉယူႇ ၽၢႆႇလင် System (Background Service) ယဝ်ႉ။

---

### 1. သၢႆၸႂ်ပိူင်လူင် 4 တွၼ်ႈ ၶွင် InputMethodService

မိူဝ်ႈ Keyboard ႁဝ်း တူင်ႉၼိုင် ၼႂ်းပိူင် Android System ၼၼ်ႉ သၢႆၸႂ်ပိူင်လူင် 4 တွၼ်ႈ ၼႆႉ တေႁဵတ်းၵၢၼ်ပၼ်ယဝ်ႉ:

#### တွၼ်ႈ 1: `onCreate()` (The Initialization Phase)

* **ပဵၼ်မိူဝ်ႈလႂ်:** မိူဝ်ႈ System တေႇပိုတ်ႇ Keyboard Service ယဝ်ႉ (ၵမ်ႈၼမ် ပဵၼ်မိူဝ်ႈ ၽူႈၸႂ်ႉတိုဝ်း ပိုတ်ႇ App ဢၼ်မီးလွင်ႈ ယွၼ်းလိၵ်ႈ)။
* **ၼႃႈတီႈမၼ်း:** ၸႂ်ႉတႃႇ Setup ပိုၼ်ႉထၢၼ် ဢၼ်ဢမ်ႇၵွင်ႉၸူး UI မိူၼ်ၼင်ႇ သႂ်ႇ Themes, Load Data Dictionary ဢမ်ႇၼၼ် Setup Background Thread။
* **ၶေႃႈလူဝ်ႇသတိ:** Callback ဢၼ်ၼႆႉ တေႁဵတ်းၵၢၼ် **ပွၵ်ႈလဵဝ်** (Once) ၵူၺ်း ၼႂ်းသၢႆၸႂ် Keyboard တေႃႇထိုင် System ပေႃး Kill မၼ်းပႅတ်ႈယဝ်ႉ။

#### တွၼ်ႈ 2: `onCreateInputView()` (The UI Inflation Phase)

* **ပဵၼ်မိူဝ်ႈလႂ်:** မိူဝ်ႈ System တေလူဝ်ႇဢဝ် Keyboard Layout ႁဝ်း ၵႂႃႇၼႄပၼ် ၽူႈၸႂ်ႉတိုဝ်း တီႈၼႃႈၸေႃးယဝ်ႉ။
* **ၼႃႈတီႈမၼ်း:** ၼႆႉပဵၼ် **မၢၵ်ႇႁူဝ်ၸႂ် (Heart)** ဢၼ်ႁဝ်းတေလႆႈ ၵွင်ႉၸွမ်း `ComposeView` တႃႇတႅမ်ႈ Jetpack Compose ယဝ်ႉ။ ႁဝ်းတေလႆႈ `return` View ဢၼ်ပဵၼ် ၶီးပွတ်ႇ ဢွၵ်ႇၵႂႃႇ တီႈၼႆႈယဝ်ႉ။
* **ၶေႃႈလူဝ်ႇသတိ:** System တေႁွင်ႉၸႂ်ႉ Callback ၼႆႉ မိူဝ်ႈမၼ်းလူဝ်ႇတႅမ်ႈ UI ၵူၺ်း။ သင်ဝႃႈ UI မၼ်းမီးဝႆႉၼႂ်း Memory ယဝ်ႉၼႆ မၼ်းတေဢမ်ႇႁွင်ႉၶိုၼ်း။

#### တွၼ်ႈ 3: `onStartInput()` (The Context Binding Phase)

* **ပဵၼ်မိူဝ်ႈလႂ်:** မိူဝ်ႈ ၽူႈၸႂ်ႉတိုဝ်း ၵႂႃႇၼဵၵ်း တီႈ `TextField` (Input Field)။
* **ၼႃႈတီႈမၼ်း:** တီႈၼႆႈ ႁဝ်းတေလႆႈ `EditorInfo` ဢၼ်တေမႃးပၼ်ၶေႃႈမုၼ်းဝႃႈ *"တီႈပၼ်လိၵ်ႈ ဢၼ်ၼႆႉ မၼ်းပဵၼ် တႃႇတႅမ်ႈ Number ႁႃႉ? ပဵၼ် Email ႁႃႉ? ဢမ်ႇၼၼ် ပဵၼ် Password?"* လႄႈ ႁဝ်းလူဝ်ႇလႆႈ လႅၵ်ႈလၢႆႊ (Switch) Layout Keyboard ႁဝ်း ႁႂ်ႈမႅၼ်ႈၸွမ်းယဝ်ႉ။
* **ၶေႃႈလူဝ်ႇသတိ:** Callback ၼႆႉ Android တေၵႆႉၵႆႉႁွင်ႉၸႂ်ႉ မိူဝ်ႈၽူႈၸႂ်ႉတိုဝ်း လႅၼ်ႈၵႂႃႇလႅၼ်ႈမႃး ၼႂ်းၵႄႈ TextField တူဝ်ၼိုင်ႈ တင်း တူဝ်ၼိုင်ႈယဝ်ႉ။

#### တွၼ်ႈ 4: `onDestroy()` (The Cleanup Phase)

* **ပဵၼ်မိူဝ်ႈလႂ်:** မိူဝ်ႈ System လူဝ်ႇၵၢၼ် Memory ၶိုၼ်း သေ ၵႂႃႇပိၵ်ႉ (Kill) Keyboard Service ႁဝ်းယဝ်ႉ။
* **ၼႃႈတီႈမၼ်း:** ၸႂ်ႉတႃႇ လၢင်ႉ (Clear) Resources, ပိၵ်ႉ Database, ဢမ်ႇၼၼ် ထွႆပႅတ်ႈ Memory References ၸိူဝ်းဢၼ်ႁဝ်း ၸႂ်ႉဝႆႉ တႃႇယႃႇႁႂ်ႈပဵၼ် Memory Leak ယဝ်ႉ။

---

### 2. Code ပိုၼ်ႉထၢၼ် ၶွင် `InputMethodService`

ၼႂ်းတွၼ်ႈလိၵ်ႈၼႆႉ ႁဝ်းတေတႅမ်ႈ Code (Skeleton Code) ဢၼ်ပဵၼ် ပိုၼ်ႉထၢၼ်မၼ်းယဝ်ႉ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.inputmethodservice.InputMethodService
import android.view.View
import android.view.inputmethod.EditorInfo

class MaoKeyboardService : InputMethodService() {

    override fun onCreate() {
        super.onCreate()
        // 1. Setup ပိုၼ်ႉထၢၼ် တႃႇ Keyboard 
    }

    override fun onCreateInputView(): View {
        // 2. ပိုၼ်ႉတီႈ တႃႇ Inflate Device View (Jetpack Compose)
        // (ႁဝ်းတေမႃးထႅမ် Code Compose View ၼႂ်း Lesson ထႅင်ႈဢၼ်ၼိုင်ႈ)
        return super.onCreateInputView()
    }

    override fun onStartInput(attribute: EditorInfo?, restarting: Boolean) {
        super.onStartInput(attribute, restarting)
        // 3. ၵၢၼ်တူၺ်း သႅၼ်း Input Field (Email, Password, Text, etc.)
        when (attribute?.inputType) {
            EditorInfo.TYPE_CLASS_NUMBER -> {
                // သင်ပဵၼ် Layout တူဝ်ၼပ်ႉ
            }
            else -> {
                // သင်ပဵၼ် Layout လိၵ်ႈပိုၼ်ႉထၢၼ်
            }
        }
    }

    override fun onDestroy() {
        // 4. လၢင်ႉ Resources တင်းသဵင်ႈ
        super.onDestroy()
    }
}

```

---

### 3. မၢႆတွင်း (Core Takeaways)

* `onCreateInputView()` မၼ်းႁဵတ်းၵၢၼ် **ပွၵ်ႈလဵဝ်ၵူၺ်း** မိူဝ်ႈတေ သၢင်ႈ UI ၼႆလႄႈ တေဢမ်ႇႁွင်ႉၸႂ်ႉ မၼ်းၵူႈပွၵ်ႈ မိူဝ်ႈပိုတ်ႇ Keyboard။
* လွင်ႈပၼ်သၢႆၸႂ် (State Management) ၶွင် Keyboard ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈ ၵုမ်းထိင်း ၼႂ်း `onStartInput()` ၵူႈပွၵ်ႈယဝ်ႉ။ ယွၼ်ႉမၼ်းပဵၼ် တူဝ်တေမႃးပၼ် ၶေႃႈမုၼ်းဝႃႈ ႁဝ်းလူဝ်ႇလႆႈၼႄ ၶီးပွတ်ႇ သႅၼ်းလႂ် ၼႆယဝ်ႉ။

---