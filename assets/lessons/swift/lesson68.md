## Lesson 68: Actors: Protecting Shared State from Data Races

မိူဝ်ႈႁဝ်းမီး Code လၢႆလၢႆတွၼ်ႈ (Multiple Tasks) ဢၼ်ၶတ်းၸႂ်တေ "မႄး" (Modify) ၶေႃႈมูล တူဝ်လဵဝ်ၵၼ်ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်၊ မၼ်းတေၵတ်ႉပဵၼ် **Data Race**။ ၼႆႉႁဵတ်းႁႂ်ႈၶေႃႈมูลလူႉ ဢမ်ႇၼၼ် App Crash လႆႈၶႃႈ။

Swift ၸင်ႇမီး **Actor** ဢၼ်ပဵၼ် Reference Type (မိူၼ် Class) ၵူၺ်းၵႃႈမၼ်းမီးၼမ်ႉၵတ်ႉၶိုၵ်ႉတွၼ်ႈ: **မၼ်းတေပၼ်ၶႂၢင်ႉႁႂ်း Code တွၼ်ႈလဵဝ်ၵူၺ်း ၶဝ်ႈမႃးမႄးၶေႃႈมูลၼႂ်းတူဝ်မၼ်းလႆႈ ၼႂ်းၼိုင်ႈၶၢဝ်းယၢမ်း**။

### 1. Syntax ၵၢၼ်သၢင်ႈ Actor
ႁဝ်းၸႂ်ႉ Keyword **`actor`** တႅၼ်း `class` ၶႃႈ။

```swift
actor KeyboardStats {
    var totalTaps: Int = 0
    
    func incrementTaps() {
        totalTaps += 1 // ၼႂ်း actor, မၼ်းတေၸတ်းၵၢၼ်ႁႂ်ႈလွတ်ႈၽေးႁင်းၵူၺ်း
    }
}
```

### 2. ၵၢၼ်ၶဝ်ႈၸႂ်ႉ (Isolation)
ၵွပ်ႈဝႃႈ Actor တေလူဝ်ႇ "ၸတ်းၵျူႇ" (Queue) ၵၢၼ်ႁဵတ်းၵၢၼ်၊ မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Method ဢမ်ႇၼၼ် Property ၶေႃ Actor ၼႂ်းတီႈတၢင်ႇ၊ ႁဝ်းတေလႆႈၸႂ်ႉ **`await`** သေႇသေႇ (ဢမ်ႇဝႃႈ Method ၼၼ်ႉတေပဵၼ် async ႁႃႉ ဢမ်ႇၸႂ်ႈၵေႃႈယႃႇ)။

```swift
let stats = KeyboardStats()

Task {
    // လူဝ်ႇ await ၵွပ်ႈႁဝ်းလူဝ်ႇ "ပႂ်ႉ" တေႃႇပေႃး Actor လွတ်ႈ (Free)
    await stats.incrementTaps()
    let taps = await stats.totalTaps
    print("Total taps: \(taps)")
}
```



---

### 3. လွင်ႈပႅၵ်ႇပႅင်ႇၵပ်း Class
| Feature | Class | Actor |
| :--- | :--- | :--- |
| **Type** | Reference Type | Reference Type |
| **Inheritance** | လႆႈ (Support) | ဢမ်ႇလႆႈ (Not Support) |
| **Data Race Safety** | ဢမ်ႇလွတ်ႈၽေးႁင်းၵူၺ်း | **လွတ်ႈၽေး (Safe)** |
| **Access** | Direct Access | **Asynchronous Access (await)** |

---

### 4. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Actor?
1.  **Thread Safety:** ဢမ်ႇလူဝ်ႇမႃးတႅမ်ႈ Code Lock (မိူၼ်ၼင်ႇ Mutex ဢမ်ႇၼၼ် Semaphores) ႁင်းၵူၺ်းဢၼ်ယၢပ်ႇယၢပ်ႇ။
2.  **Concurrency Safety:** Swift Compiler တေၸွႆးၵူတ်ႇထတ်းဝႃႈ ၸၢႆးမၢဝ်းဢမ်ႇလႆႈမႄးၶေႃႈมูลလူၺ်ႈဢမ်ႇလွတ်ႈၽေး။
3.  **Clean State:** ၸွႆးႁႂ်ႈ Shared Data (ၶေႃႈมูลဢၼ်ၸႂ်ႉၸွမ်းၵၼ်) မီးလွင်ႈတႅတ်ႈတေႃးသေႇသေႇ။

---