## Lesson 69: The MainActor: Ensuring UI Updates Always Happen on the Correct Thread

ၼႂ်း iOS Development, မၼ်းမီးပၵ်းပဝ်းဢၼ်ၶိုၵ်ႉတွၼ်းဢၼ်ၼိုင်ႈ: **"ၵၢၼ်လႅၵ်ႈလၢႆႈ UI (မိူၼ်ၼင်ႇ ၼႄတူဝ်လိၵ်ႈ, ပႅၵ်ႇသီ Keyboard) တေလႆႈႁဵတ်းၼႂ်း Main Thread (Main Queue) ၵူၺ်း"**။ သင်ႁဝ်းၵႂႃႇမႄး UI ၼႂ်း Background Thread (တီႈဢၼ်ႁဝ်းလူတ်ႇၶေႃႈมูล), App တေ Crash ဢမ်ႇၼၼ် ႁဵတ်းၵၢၼ်ၽိတ်းပိူင်ႈၶႃႈ။

**MainActor** ပဵၼ် Actor ဢၼ်ၶိုၵ်ႉတွၼ်း ဢၼ် Swift မၵ်းမၼ်ႈဝႆႉပၼ် တွၼ်ႈတႃႇႁဵတ်းၵၢၼ်ၸွမ်း Main Thread ႁင်းၵူၺ်းၶႃႈ။

### 1. ၵၢၼ်ၸႂ်ႉ `@MainActor` ၵပ်း Function
သင်ႁဝ်းမီး Function ဢၼ်လူဝ်ႇမႄး UI, ႁဝ်းၸၢင်ႈသႂ်ႇ Attribute **`@MainActor`** ဝႆႉၽၢႆႇၼႃႈ `func` ၶႃႈ။



```swift
@MainActor
func updateKeyboardUI() {
    // Code တီႈၼႆႈ တေထုၵ်ႇႁဵတ်းၵၢၼ်ၼႂ်း Main Thread သေႇသေႇ
    self.label.text = "Shan Language Loaded"
}
```

### 2. ၵၢၼ်ၸႂ်ႉ `@MainActor` ၵပ်း Class
သင်ႁဝ်းသႂ်ႇ `@MainActor` ဝႆႉၼိူဝ် Class (မိူၼ်ၼင်ႇ ViewModels ၼႂ်း SwiftUI), Property လႄႈ Method ၵူႈတူဝ်ၼႂ်း Class ၼၼ်ႉ တေႁဵတ်းၵၢၼ်ၼႂ်း Main Thread တင်းမူတ်းၶႃႈ။

```swift
@MainActor
class KeyboardViewModel: ObservableObject {
    @Published var currentKey: String = ""
    
    func keyWasTapped(_ key: String) {
        currentKey = key // လွတ်ႈၽေး ၵွပ်ႈမၼ်းယူႇၼႂ်း MainActor
    }
}
```

---

### 3. ၵၢၼ်ၸႂ်ႉ `MainActor.run`
ၵမ်းမၢင် ႁဝ်းမီး Code ဢၼ်ႁဵတ်းၵၢၼ်ၼႂ်း Background (မိူၼ်ၼင်ႇလူတ်ႇၶေႃႈมูลယဝ်ႉ) သေ ႁဝ်းၵူၺ်းၶႂ်ႈ "ဝႄ်ၼ်း" တွၼ်ႈဢၼ်မႄး UI ၼၼ်ႉ ၶိုၼ်းမႃးၸူး Main Thread, ႁဝ်းၸၢင်ႈၸႂ်ႉ **`MainActor.run`** ၶႃႈ။

```swift
func downloadTheme() async {
    let data = await api.getTheme() // ႁဵတ်းၵၢၼ်ၼႂ်း Background
    
    // ဝႄ်ၼ်းၶိုၼ်းမႃးမႄး UI
    await MainActor.run {
        self.themeColor = .green
    }
}
```

---

### 4. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ MainActor?
1.  **UI Safety:** ႁႄႉၵင်ႈပၼ်ႁႃ "Main Thread Checker" Error ဢၼ် Developer iOS ၵႆႉထူပ်း။
2.  **Performance:** ၸႅၵ်ႇၵၢၼ်ၼၵ်း (Background) လႄႈ ၵၢၼ်ၼႄႁၢင်ႈ (Main) ဢွၵ်ႇၼႂ်းၵၼ်လႅင်းလႅင်း။
3.  **Compiler Protection:** ၼႂ်း Swift 6, Compiler တေထဵင် (Error) ၵမ်းလဵဝ် သင်ၸၢႆးမၢဝ်းၶတ်းၸႂ်တေမႄး UI ဢွၵ်ႇၼႂ်း Main Thread ၶႃႈ။

---