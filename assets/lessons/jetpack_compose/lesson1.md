
## Lesson 1: Setting Up the Laboratory (Android Studio)

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေႁဵတ်းႁႂ်ႈၶွမ်ႇပိဝ်ႇတႃႇႁဝ်း ၶႅမ်ႉလီ တႃႇတေတႅမ်ႈ App ၶႃႈ။

### 1. လူတ်ႇလူင်း (Download) Android Studio
ၶိူင်ႈမိုဝ်းဢၼ်ႁဝ်းတေၸႂ်ႉၼႆႉ ၸိုဝ်ႈမၼ်းဝႃႈ **Android Studio** ၶႃႈ။ မၼ်းပဵၼ် "ႁွင်ႈၵၢၼ်" ဢၼ် Google ႁဵတ်းဝႆႉပၼ် တႃႇတႅမ်ႈ Android App ၵူႈပိူင်ၶႃႈ။
* ၵႂႃႇတီႈ Website: [developer.android.com/studio](https://developer.android.com/studio)
* ၼဵၵ်း **Download Android Studio Ladybug** (ဢမ်ႇၼၼ် Version ဢၼ်မႂ်ႇသုတ်းၼႂ်းပီ 2026)။
* ပေႃးလူတ်ႇယဝ်ႉ ၵေႃႈ Install ၸွမ်းၼင်ႇပိူင်မၼ်းၶႃႈ။

### 2. ၵေႃႇသၢင်ႈ Project မႂ်ႇ (Creating a New Project)
ပေႃးပိုတ်ႇ Program မႃးယဝ်ႉ၊ ႁဝ်းတေလႆႈလိူၵ်ႈ "ပိူင်" (Template) မၼ်းၶႃႈ။
* လိူၵ်ႈ **"Empty Compose Activity"**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇၼႃႇၶႃႈ။ ယႃႇၵႂႃႇလိူၵ်ႈ Views ဢမ်ႇၼၼ် XML ၶႃႈ။ ႁဝ်းတေၸႂ်ႉ **Jetpack Compose** ဢၼ်ပဵၼ်ပၢၼ်မႂ်ႇသုတ်းၶႃႈ။
* **Name:** `MaoComposeMastery` (ၸိုဝ်ႈ App ႁဝ်း)။
* **Language:** လိူၵ်ႈ **Kotlin** ၵူၺ်းၶႃႈ။
* **Build Configuration:** လိူၵ်ႈ **Kotlin DSL (build.gradle.kts)** ၶႃႈ။



### 3. ႁဵတ်းႁႂ်ႈၾူၼ်းပွမ် (Emulator) ႁဵတ်းၵၢၼ်
တႃႇတေတူၺ်းဝႃႈ Code ႁဝ်းတႅမ်ႈၼၼ်ႉ ဢွၵ်ႇမႃးႁၢင်ႈလီၼင်ႇႁိုဝ်၊ ႁဝ်းလူဝ်ႇမီးၾူၼ်းတႃႇၸၢမ်း (Test) ၶႃႈ။
* ၵႂႃႇတီႈ **Device Manager** (ယူႇၽၢႆႇၶႂႃ ၼိူဝ်းသုတ်း)။
* ၼဵၵ်း **"+"** ဢမ်ႇၼၼ် **Create Device**။
* လိူၵ်ႈၾူၼ်း Pixel 9 ဢမ်ႇၼၼ် ဢၼ်မႂ်ႇသုတ်း၊ ယဝ်ႉၵေႃႈ Download System Image (API 35/36) မႃးသႂ်ႇၶႃႈ။
* ပေႃးယဝ်ႉ ၼဵၵ်း "Play" လုၵ်ႈၼိုင်ႈ ႁႂ်ႈၾူၼ်းပွမ်ၼၼ်ႉ ပိုတ်ႇမႃးၶႃႈ။

### 4. လွင်ႈႁူႉပိုၼ်ႉထၢၼ် (The Declarative Mindset)
ဢၼ်ၼႆႉပဵၼ် "ဝူၼ်ႉပၢၼ်မႂ်ႇ" ၶႃႈ။ တႅမ်ႈ Android ပၢၼ်မႂ်ႇၼႆႉ မၼ်းပႅၵ်ႇပိူင်ႈၵၼ်တင်းပၢၼ်ၵဝ်ႇ (XML) ၼႃႇၶႃႈ။

* **Imperative (ပၢၼ်ၵဝ်ႇ):** မိူၼ်ၼင်ႇႁဝ်းၸႂ်ႉ (Command) ဝႃႈ "ၵႂႃႇပိုတ်ႇၾႆး၊ ၵႂႃႇပိတ်းၾႆး"။ ႁဝ်းလူဝ်ႇသင်ႇၵၢၼ်ၵူႈလွင်ႈလွင်ႈၶႃႈ။
* **Declarative (ပၢၼ်မႂ်ႇ/Compose):** ႁဝ်းတႅမ်ႈ Code ဝႃႈ "ၾႆးၼႆႉ မၼ်းတေလႆႈလႅင်းဝႆႉ"။ ပေႃးမီးလွင်ႈလႅၵ်ႈလၢႆႈသင် (State Change)၊ UI မၼ်းတေလႅၵ်ႈလၢႆႈၸွမ်းႁင်းမၼ်းၶႃႈ။ ႁဝ်းဢမ်ႇလူဝ်ႇသင်ႇၵၢၼ်ၵူႈလွင်ႈလွင်ႈ၊ ႁဝ်းၵူၺ်း "လၢတ်ႈၼႄႁၢင်ႈၽၢင်" (Describe UI) မၼ်းၵူၺ်းၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 1)
1.  Install **Android Studio** ႁႂ်ႈယဝ်ႉတူဝ်ႈ။
2.  ပိုတ်ႇ Project မႂ်ႇ ၸိုဝ်ႈဝႃႈ `MaoComposeMastery` ၸွမ်းၼင်ႇပိူင် **Empty Compose Activity**။
3.  ၸၢမ်းၼဵၵ်း **Run** (လုၵ်ႈသွၼ်းသီၶဵဝ်) ႁႂ်ႈမၼ်းဢွၵ်ႇ "Hello Android" ၼႂ်း Emulator ႁႂ်ႈလႆႈၶႃႈ။