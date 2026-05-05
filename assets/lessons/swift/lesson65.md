## Lesson 65: The Async/Await Pattern: Writing Linear Asynchronous Code

မိူဝ်ႈၵွၼ်ႇ, ၵၢၼ်တႅမ်ႈ Code ဢၼ်လူဝ်ႇ "ပႂ်ႉ" (မိူၼ်ၼင်ႇ လူတ်ႇၶေႃႈมูลၼိူဝ် Internet) မၼ်းယၢပ်ႇတႄႉတႄႉ ၵွပ်ႈႁဝ်းလူဝ်ႇၸႂ်ႉ Completion Handlers (Closures) ဢၼ်သေႉသၢၼ်ၵၼ်ၼမ် (Callback Hell)။ ၵူၺ်းၵႃႈယၢမ်းလဵဝ် Swift မီး **`async/await`** ဢၼ်ၸွႆးႁႂ်ႈ Code ဢၼ်ပႂ်ႉၵၼ်ၼၼ်ႉ ဢၢၼ်ႇလႆႈငၢႆႈမိူၼ် Code ထမ်ႇမတႃႇယဝ်ႉၶႃႈ။



### 1. async (လၢတ်ႈဝႃႈ: "ၵဝ်တေႁဵတ်းၵၢၼ်ယၢဝ်းၼႃ")
ႁဝ်းသႂ်ႇ Keyword **`async`** ဝႆႉၽၢႆႇလင် Function တွၼ်ႈတႃႇလၢတ်ႈၼႄဝႃႈ Function ၼႆႉၸၢင်ႈ "လိုဝ်ႈ" (Suspend) ၵၢၼ်ႁဵတ်းၵၢၼ်မၼ်းဝႆႉ ပႂ်ႉၶေႃႈมูลလႆႈၶႃႈ။

```swift
func fetchKeyboardThemes() async -> [String] {
    // ၼိူင်းဝႃႈလူဝ်ႇပႂ်ႉ 2 Sec
    try? await Task.sleep(nanoseconds: 2 * 1_000_000_000)
    return ["Dark", "Light", "Shan Culture"]
}
```

### 2. await (လၢတ်ႈဝႃႈ: "ပႂ်ႉၵမ်းၼိုင်ႈ၊ ယႃႇပေႁဵတ်းႁႂ်ႈ App ၶင်")
မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Function ဢၼ်ပဵၼ် `async`၊ ႁဝ်းလူဝ်ႇသႂ်ႇ Keyword **`await`** ဝႆႉၽၢႆႇၼႃႈၶႃႈ။ မၼ်းတေ "လိုဝ်ႈ" (Suspend) Code တွၼ်ႈၼၼ်ႉဝႆႉ၊ ၵူၺ်းၵႃႈ **မၼ်းဢမ်ႇႁဵတ်းႁႂ်ႈ UI ၶင်** ၶႃႈ။ App ယင်းတေၸၢင်ႈၼိပ်ႉလႆႈ၊ ၵႂႃႇမႃးလႆႈယူႇသေႇသေႇ။

```swift
func updateUI() async {
    print("Loading themes...")
    let themes = await fetchKeyboardThemes() // ပႂ်ႉယူႇတီႈၼႆႈ၊ ၵူၺ်းၵႃႈ App ဢမ်ႇၶင်
    print("Themes loaded: \(themes)")
}
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Async/Await?
1.  **Readability:** Code ဢၢၼ်ႇလႆႈငၢႆႈ (Top to Bottom) လူၺ်ႈဢမ်ႇလူဝ်ႇမီး { } သေႉသၢၼ်ၵၼ်ၼမ်။
2.  **Error Handling:** ၸၢင်ႈၸႂ်ႉ `do-catch` ၸွမ်း `try await` လႆႈငၢႆႈငၢႆႈ မိူၼ် Code ထမ်ႇမတႃႇ။
3.  **Thread Management:** Swift တေၸတ်းၵၢၼ်လွင်ႈ Threads (သဵၼ်ႈတၢင်းႁဵတ်းၵၢၼ် CPU) ပၼ်ႁင်းၵူၺ်း ႁႂ်ႈမၼ်းမီး Efficiency သုတ်းၶႃႈ။

---