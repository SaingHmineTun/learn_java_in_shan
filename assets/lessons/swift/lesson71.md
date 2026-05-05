## Lesson 71: Continuations: Bridging Older Completion Handlers to Modern Async

ၵႆႉမၢင်ႁဝ်းလူဝ်ႇၸႂ်ႉ Library ၵဝ်ႇၵဝ်ႇ ဢမ်ႇၼၼ် API ၶေႃ Apple ဢၼ်ယင်းၸႂ်ႉ **Completion Handlers** (Closures) ယူႇ။ ပေႃးႁဝ်းၶႂ်ႈဢဝ်မၼ်းမႃးၸႂ်ႉၼႂ်း Function `async` ႁဝ်း၊ ႁဝ်းတေလႆႈၸႂ်ႉ **CheckedContinuation** ၶႃႈ။

### 1. ပၼ်ႁႃ: Completion Handler ဢၼ်ဢၢၼ်ႇယၢပ်ႇ
```swift
// Code ပိူင်ၵဝ်ႇ
func oldFetchData(completion: @escaping (String) -> Void) {
    // ႁဵတ်းၵၢၼ် Background...
    completion("Data loaded")
}
```

### 2. ၵၢၼ်ၸႂ်ႉ `withCheckedContinuation`
ႁဝ်းၸၢင်ႈ "ႁေႃႇ" (Wrap) Function ၵဝ်ႇၼၼ်ႉ ႁႂ်ႈမၼ်းပဵၼ် `async` လႆႈငၢႆႈငၢႆႈၶႃႈ။

```swift
func fetchData() async -> String {
    return await withCheckedContinuation { continuation in
        oldFetchData { result in
            // သူင်ႇၵႃႈၶၼ်ၶိုၼ်းၸူး async world
            continuation.resume(returning: result)
        }
    }
}
```

---

### 3. ပၵ်းပဝ်းဢၼ်လွင်ႈယႂ်ႇသုတ်း
မိူဝ်ႈၸႂ်ႉ Continuation, ၸၢႆးမၢဝ်းတေလႆႈမၼ်ႈၸႂ်ဝႃႈ:
*   **Resume exactly once:** တေလႆႈႁွင်ႉ `continuation.resume` **ၼိုင်ႈပွၵ်ႈတႅတ်ႈတေႃး**။
*   သင်ႁွင်ႉသွင်ပွၵ်ႈ -> App တေ Crash။
*   သင်ဢမ်ႇႁွင်ႉသေပွၵ်ႈ -> Function တေပႂ်ႉ (Suspend) ၵႂႃႇတေႃႇၸၢတ်ႈသုတ်း (Memory Leak)။



---

### 4. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Continuations?
1.  **Modernization:** ၸွႆးႁႂ်ႈႁဝ်းမႄး Code ပိုၼ်ႉထၢၼ် (Refactor) ႁႂ်းပဵၼ် `async/await` လႆႈတင်းမူတ်း လူၺ်ႈဢမ်ႇလူဝ်ႇလႅၵ်ႈလၢႆႈ Library ၵဝ်ႇ။
2.  **Clean Code:** လႅၵ်ႈလၢႆႈ "Callback Hell" ႁႂ်ႈပဵၼ် Linear Code ဢၼ်ဢၢၼ်ႇငၢႆႈ။
3.  **Error Handling:** သင် API ၵဝ်ႇသူင်ႇ Error မႃး၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ `withCheckedThrowingContinuation` တွၼ်ႈတႃႇ `resume(throwing:)` ၸွမ်းပိူင် `do-catch` လႆႈၶႃႈ။

---