## Lesson 32: Escaping vs. Non-Escaping Closures (Critical for Concurrency)

ၼႂ်း Swift ၼႆႉ Closure မီး 2 မဵဝ်း ၸွမ်းၼင်ႇ "ၸူဝ်ႈပၢၼ်" (Lifecycle) မၼ်းၶႃႈ။ ဢၼ်ၼႆႉလွင်ႈယႂ်ႇတႄႉတႄႉ မိူဝ်ႈႁဝ်းလူဝ်ႇသူင်ႇၶေႃႈมูลၵႂႃႇၼႂ်း Internet ဢမ်ႇၼၼ် ႁဵတ်းၵၢၼ်ဢၼ်ယၢဝ်းယၢဝ်းယဝ်ႉ။

### 1. Non-Escaping Closures (Default)
ပိုၼ်ႉထၢၼ်မၼ်း Closure ၵူႈဢၼ်ပဵၼ် **Non-escaping**။ မၢႆထိုင်ဝႃႈ:
*   Closure ၼၼ်ႉ တေႁဵတ်းၵၢၼ် "ၼႂ်း" Function ၼၼ်ႉၵူၺ်း။
*   မိူဝ်ႈ Function ၼၼ်ႉႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ (Return) ၵႂႃႇ၊ Closure ၵေႃႈတေ "တၢႆ" ၸွမ်းၵႂႃႇၵမ်းလဵဝ်။
*   မၼ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ Memory ၼမ် ၵွပ်ႈ Swift ႁူႉဝႃႈမၼ်းတေဢမ်ႇယူႇယၢဝ်းၶႃႈ။

### 2. Escaping Closures (`@escaping`)
**Escaping Closure** ပဵၼ် Closure ဢၼ် "လွတ်ႈ" (Escape) ဢွၵ်ႇၵႂႃႇၼွၵ်ႈ Function။ မၼ်းတေ **သိုပ်ႇမီးသၢႆၸႂ်ယူႇ** ဢမ်ႇဝႃႈ Function တူဝ်ဢၼ်သၢင်ႈမၼ်းမႃးၼၼ်ႉ တေႁဵတ်းၵၢၼ်ယဝ်ႉၵႂႃႇယဝ်ႉၵေႃႈယႃႇ။

ႁဝ်းလူဝ်ႇၸႂ်ႉ `@escaping` မိူဝ်ႈ:
1.  **Asynchronous Work:** မိူဝ်ႈလူဝ်ႇပႂ်ႉၶေႃႈมูล (မိူၼ်ၼင်ႇ Download လိၵ်ႈတႆးၼႂ်း Server)။
2.  **Storage:** မိူဝ်ႈႁဝ်းဢဝ် Closure ၵႂႃႇၵဵပ်းဝႆႉၼႂ်း Variable ၽၢႆႇၼွၵ်ႈ။

```swift
var completionHandlers: [() -> Void] = []

// လူဝ်ႇသႂ်ႇ @escaping ၵွပ်ႈႁဝ်းဢဝ် Closure ၵႂႃႇၵဵပ်းဝႆႉ (Escape ဢွၵ်ႇၼွၵ်ႈ Function)
func addToQueue(handler: @escaping () -> Void) {
    completionHandlers.append(handler)
}

func downloadData(completion: @escaping (String) -> Void) {
    // ႁဵတ်းၵၢၼ်ၼႂ်း Background Thread (လူဝ်ႇပႂ်ႉၶၢဝ်းယၢမ်း)
    DispatchQueue.global().async {
        let data = "ၶေႃႈมูลမႃးယဝ်ႉၶႃႈ"
        completion(data) // Closure ႁဵတ်းၵၢၼ် ဝၢႆးလင် Function return ၵႂႃႇယဝ်ႉ
    }
}
```



---

### 3. လွင်ႈသတိ: Strong Reference Cycles
မိူဝ်ႈႁဝ်းၸႂ်ႉ `@escaping` ၼႂ်း Class၊ ႁဝ်းလူဝ်ႇသတိလွင်ႈ **`self`** ၶႃႈ။ ၵွပ်ႈဝႃႈ Closure တေ "ၵိုတ်း" (Capture) `self` ဝႆႉ၊ မၼ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ Memory တဵမ် (Memory Leak)။ ႁဝ်းတေလႆႈၸႂ်ႉ `[weak self]` တွၼ်ႈတႃႇႁႄႉၵင်ႈၶႃႈ (ႁဝ်းတေႁဵတ်း Lesson တၢင်ႇဢၼ်တွၼ်ႈတႃႇလွင်ႈၼႆႉ)။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: မိူဝ်ႈႁဝ်းလူဝ်ႇႁွင်ႉ API တွၼ်ႈတႃႇ 'Check Update' ၶေႃ Keyboard ႁဝ်း၊ ႁဝ်းတေလႆႈၸႂ်ႉ `@escaping` closure တွၼ်ႈတႃႇႁပ်ႉၶေႃႈมูลမိူဝ်ႈမၼ်း Download ယဝ်ႉ။ ပေႃးဢမ်ႇသႂ်ႇ `@escaping` ၼႆ Swift တေဢမ်ႇပၼ် Compile ၶႃႈယဝ်ႉ။"**

---