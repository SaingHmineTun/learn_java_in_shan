

## Lesson 6: Building the Keyboard Window: Embedding `ComposeView`

ၼႂ်းၵၢၼ်တႅမ်ႈ Android Custom Keyboard ၼၼ်ႉ ႁဝ်းဢမ်ႇလႆႈၸႂ်ႉ XML Layout ၼႂ်း `onCreateInputView()` မိူၼ်ၼင်ႇဢႅပ်ႉပိူင်ၵဝ်ႇယဝ်ႉ။ 
ႁဝ်းတေမႃးၸႂ်ႉ **`ComposeView`** ဢၼ်ပဵၼ် ၶူဝ်ၵၢႆႇ (Bridge) တႃႇဢဝ် UI Component ၶွင် Jetpack Compose (မိူၼ်ၼင်ႇ `Box` လႄႈ `Text`) သွတ်ႇၶဝ်ႈၵႂႃႇၼႂ်း System Window ယဝ်ႉ။

---

### 1. Code တွၼ်ႈ `onCreateInputView()` ၼႂ်း `MaoKeyboardService.kt`

ႁဝ်းတေမႃးဢဝ် `ComposeView` သႂ်ႇၶဝ်ႈၵႂႃႇ ၽၢႆႇတႂ်ႈတွၼ်ႈ Bind DecorView ၼင်ႇၼႆၶႃႈ:

```kotlin
    override fun onCreateInputView(): View {
        // 1. 🌟 တွၼ်ႈယႂ်ႇသုတ်း: Bind Owners ဝႆႉတီႈ Root DecorView ဝႆႉထႃႈ ဢွၼ်တၢင်းသုတ်း
        window?.window?.decorView?.let { root ->
            root.setViewTreeLifecycleOwner(this)
            root.setViewTreeViewModelStoreOwner(this)
            root.setViewTreeSavedStateRegistryOwner(this)
        }

        // 2. သၢင်ႈ ComposeView လႄႈ return ဢွၵ်ႇၵႂႃႇပၼ် System
        return ComposeView(this).apply {
            setContent {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(250.dp) // သႅၼ်းသုင် Keyboard ပိုၼ်ႉထၢၼ် (Portrait)
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

```

---

### 2. ၶေႃႈသပ်းလႅင်း (Breakdown) လွင်ႈႁဵတ်းၵၢၼ် Code

* **`ComposeView(this)`**: ၼႆႉပဵၼ်ၵၢၼ် Instant ဢဝ် View တူဝ်မၼ်းၶိုၼ်းမႃးၼႂ်း Memory ၵမ်းသိုဝ်ႈ ၸွမ်းၼိုင်ႈၵၢၼ်သူင်ႇ `Context` ၶွင် Service ၶဝ်ႈၵႂႃႇယဝ်ႉ။
* **`setContent { ... }`**: ၼႂ်းဝူင်း `setContent` ၼႆႉ ႁဝ်းၸၢင်ႈတႅမ်ႈ Code ၸႂ်ႉ Material 3 Composable (မိူၼ်ၼင်ႇ `Box`, `Text`, `Row`, `Column`) လႆႈၵူႈဢၼ် မိူၼ်ၼင်ႇ ၼႂ်းဢႅပ်ႉဢၼ်မီး Activity Standard ၵူႈပိူင်ယဝ်ႉ။
* **`Modifier.height(250.dp)`**: သႅၼ်းသုင် (Height) ၶွင် Root Composable (ၼႂ်း Code ၼႆႉပဵၼ် `Box`) မၼ်းပဵၼ် တူဝ်တေၵႂႃႇမၢႆဝႆႉဝႃႈ Keyboard ႁဝ်း တေၵႂႃႇၵိၼ်ပိုၼ်ႉတီႈ ၼႃႈၸေႃး (Screen) တၢၼ်ႇလႂ်ၶႃႈ။ သႅၼ်း `250.dp` ပဵၼ်သႅၼ်းဢၼ်တႅတ်ႈတေႃးသုတ်း တႃႇ Keyboard ၼႃႈၸေႃး Standard ၶႃႈ။

---

### 3. မၢႆတွင်း (Core Takeaways)

* `onCreateInputView()` တေႁဵတ်းၵၢၼ် **ပွၵ်ႈလဵဝ်ၵူၺ်း** မိူဝ်ႈ System တေႇၸ ပိုတ်ႇ UI Keyboard ယဝ်ႉ။ ၵွပ်ႈၼႆလႄႈ `ComposeView` တေထုၵ်ႇ သၢင်ႈဝႆႉၼႂ်း Memory ႁိုင်ႁိုင် ၸွမ်းသၢႆၸႂ် Service ယဝ်ႉ။
* ယွၼ်ႉႁဝ်း Bind Owners ဝႆႉတီႈ `decorView` ဢွၼ်တၢင်းသုတ်းလႄႈ မိူဝ်ႈ `ComposeView` ၸေႇၸ Attached ၶဝ်ႈ Window မၼ်းတေႁၼ် Lifecycle ၵမ်းသိုဝ်ႈ သေ လႅၼ်ႈ UI ပၼ်လူၺ်ႈ ဢမ်ႇ Crash ယဝ်ႉ။

---