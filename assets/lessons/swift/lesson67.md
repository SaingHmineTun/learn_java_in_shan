## Lesson 67: Async Properties and Sequences: Handling Streams of Data

ၵမ်းမၢင် ႁဝ်းဢမ်ႇလႆႈၶေႃႈมูลမႃးၵမ်းလဵဝ် (Single Value)၊ ၵူၺ်းၵႃႈႁဝ်းလႆႈမႃးပဵၼ်တွၼ်ႈ ပဵၼ်တွၼ်ႈ မိူၼ်ၼင်ႇ "ၼမ်ႉလႆ" (Stream)။ Swift ၸင်ႇမီး **`AsyncSequence`** တွၼ်ႈတႃႇၸွႆးႁဝ်းၶႃႈ။

### 1. Async Read-Only Properties
ၼႂ်း Swift 5.5 ၶိုၼ်းၼိူဝ်၊ ႁဝ်းၸၢင်ႈသၢင်ႈ Computed Property ဢၼ်ပဵၼ် **`async`** လႆႈယဝ်ႉ (ၵူၺ်းၵႃႈ တေလႆႈပဵၼ် Read-only `{ get }` ၵူၺ်းၶႃႈ)။

```swift
struct KeyboardSettings {
    var cloudThemeUrl: URL
    
    // Property ဢၼ်လူဝ်ႇပႂ်ႉလူတ်ႇၶေႃႈมูล
    var currentThemeName: String {
        get async throws {
            let (data, _) = try await URLSession.shared.data(from: cloudThemeUrl)
            return String(data: data, encoding: .utf8) ?? "Default"
        }
    }
}
```

---

### 2. AsyncSequence (ၵၢၼ် Loop ပႂ်ႉၶေႃႈมูล)
ဝူၼ်ႉတူၺ်းဝႃႈ ၸၢႆးမၢဝ်းတိုၵ်ႉလူတ်ႇ File ဢၼ်ယႂ်ႇတႄႇတႄႉ။ ၸၢႆးမၢဝ်းဢမ်ႇလူဝ်ႇပႂ်ႉတေႃႇပေႃး File ၼၼ်ႉယဝ်ႉတင်းတူဝ်၊ ၸၢႆးမၢဝ်းၸၢင်ႈဢၢၼ်ႇမၼ်း "ပဵၼ်ထႅဝ် ပဵၼ်ထႅဝ်" (Line by line) မိူဝ်ႈမၼ်းတိုၵ်ႉလူတ်ႇယူႇၼၼ်ႉလႆႈၶႃႈ။

ႁဝ်းၸႂ်ႉ **`for await`** တွၼ်ႈတႃႇ Loop ၼႂ်း AsyncSequence ၶႃႈ။

```swift
func readFileFromURL(url: URL) async throws {
    // URL.lines ပဵၼ် AsyncSequence ဢၼ်သူင်ႇလိၵ်ႈမႃးပဵၼ်ထႅဝ်
    for try await line in url.lines {
        print("Received line: \(line)")
        // တီႈၼႆႈ ၸၢႆးမၢဝ်းၸၢင်ႈမႄး UI ၵမ်းလဵဝ် မိူဝ်ႈလိၵ်ႈမႃးထိုင်
    }
}
```



---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ AsyncSequence?
1.  **Memory Efficiency:** ဢမ်ႇလူဝ်ႇလူတ်ႇၶေႃႈมูลဢၼ်ယႂ်ႇၼမ် ၶဝ်ႈမႃးၼႂ်း Memory ၵမ်းလဵဝ်တင်းမူတ်း။
2.  **Real-time Updates:** ၸွႆးႁႂ်ႈ App ႁဝ်းတူင်ႉၼိုင်ၸွမ်းၶေႃႈมูล ဢၼ်တိုၵ်ႉလႆၶဝ်ႈမႃးယူႇၼၼ်ႉလႆႈ (မိူၼ်ၼင်ႇ Chat Message ဢမ်ႇၼၼ် Download Progress)။
3.  **Clean Syntax:** ၸႂ်ႉ `for-in` loop ဢၼ်ႁဝ်းယိၼ်းယၢပ်ႇယူႇယဝ်ႉ ၵူၺ်းသႂ်ႇ `await` ၶဝ်ႈၵႂႃႇၵေႃႈယဝ်ႉယဝ်ႉ။

---