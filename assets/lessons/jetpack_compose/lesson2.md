## Lesson 2: Creating Your First Project

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵတ်းလွင်ႈႁူႉၸၵ်းတင်း တူဝ် Code ဢၼ် Android Studio တႅမ်ႈဝႆႉပၼ်ႁဝ်းၶႃႈ။

### 1. ၶေႃႈမုၼ်းလွင်ႈ App (Project Anatomy)
ပေႃးၸဝ်ႈၵဝ်ႇပိုတ်ႇ Project ယဝ်ႉ၊ တေႁၼ် Folder တင်းၼမ်ၶႃႈ။ ဢၼ်လွင်ႈယႂ်ႇမီး 3 ဢၼ်ၶႃႈ:
* **`MainActivity.kt`**: ဢၼ်ၼႆႉပဵၼ် "ႁူဝ်ၸႂ်" App ႁဝ်းၶႃႈ။ Code ၵူႈပိူင်တေလႆႈတႅမ်ႈတီႈၼႆႈ။
* **`res/` (Resources)**: တီႈၼႆႈပဵၼ်တီႈဝႆႉ ႁၢင်ႈ (Images), သီ (Colors), လႄႈ ပိုၼ်ႉထၢၼ် (Fonts) ၶႃႈ။
* **`build.gradle.kts`**: ဢၼ်ၼႆႉပဵၼ် "သဵၼ်ႈမၢႆ" ၶိူင်ႈၵေႃႇသၢင်ႈၶႃႈ။ မၼ်းတေလၢတ်ႈဝႃႈ App ႁဝ်းၸႂ်ႉ Library သင်ဝႆႉၼႆၶႃႈ။



### 2. ႁူႉၸၵ်း `setContent`
ၼႂ်း `MainActivity.kt` ၸဝ်ႈၵဝ်ႇတေႁၼ် Code ၸိူင်ႉၼႆ:
```kotlin
override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContent {
        MaoComposeMasteryTheme {
            // ၼႆႉပဵၼ်တီႈၼႄ UI ႁဝ်းၶႃႈ
            Greeting("Sai Mao")
        }
    }
}
```
* **`setContent`**: ဢၼ်ၼႆႉပဵၼ် "ၵူင်" တႃႇတေဢဝ် UI (Jetpack Compose) မႃးသႂ်ႇၶႃႈ။ ပေႃးဢမ်ႇမီးမၼ်း၊ ၾူၼ်းတေဢမ်ႇၼႄသင်ၶႃႈ။

### 3. ႁူႉၸၵ်း `@Composable`
ဢၼ်ၼႆႉပဵၼ် "ႁူဝ်ၸႂ်" Jetpack Compose ၶႃႈ။
* Functions ဢၼ်မီး `@Composable` ယူႇတၢင်းၼိူဝ်ၼၼ်ႉ ပွင်ႇဝႃႈမၼ်းပဵၼ် "UI Component" ၶႃႈ။
* မၼ်းဢမ်ႇၸႂ်ႈ Function ထမ်ႇမတႃႇ၊ မၼ်းပဵၼ် Function ဢၼ် "တႅမ်ႈႁၢင်ႈ" (Draw UI) ၼိူဝ်ၼႃႈၸေႃးၾူၼ်းၶႃႈ။

### 4. လွင်ႈၸၢမ်းတူၺ်း (Preview)
ၼႂ်း Android Studio ၸဝ်ႈၵဝ်ႇတေႁၼ် `@Preview` ယူႇၽၢႆႇတႂ်ႈ။
* မၼ်းၸႂ်ႉတႃႇတူၺ်း UI ၼႂ်း Android Studio ၵူၺ်း၊ ဢမ်ႇလူဝ်ႇ Run ၼႂ်း Emulator ၵူႈပွၵ်ႈၵေႃႈလႆႈၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈႁဝ်း ဢမ်ႇပေႃးလႆႈသဵင်ႈ ၶၢဝ်းယၢမ်း (Save Time) ၼႃႇၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 2)
1.  ပိုတ်ႇၾၢႆႇ `MainActivity.kt` သေ၊ လႅၵ်ႈလၢႆႈၶေႃႈၵႂၢမ်းၼႂ်း `Greeting("Android")` ႁႂ်ႈပဵၼ် `Greeting("Sai Mao")` (ဢမ်ႇၼၼ် ၸိုဝ်ႈၸဝ်ႈၵဝ်ႇ)။
2.  ၼဵၵ်း **Build & Refresh** ၼႂ်းၼႃႈၸေႃး Preview (ယူႇၽၢႆႇၶႂႃ) ႁႂ်ႈမၼ်းလႅၵ်ႈလၢႆႈၸွမ်းၶႃႈ။
3.  ၸၢမ်း Run ၼႂ်း Emulator ႁႂ်ႈႁၼ်ၸိုဝ်ႈၸဝ်ႈၵဝ်ႇဢွၵ်ႇမႃးတႄႉတႄႉၶႃႈ။