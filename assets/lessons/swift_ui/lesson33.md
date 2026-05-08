
## **Module 5 | Lesson 33: Introduction to Concurrency: Async/Await in SwiftUI**

### **1. Concurrency ပဵၼ်သင်?**

ၼႂ်းၵၢၼ်ႁဵတ်း App ၼၼ်ႉ မၼ်းတေမီးၵၢၼ်ဢၼ် "ၸႂ်ႉၶၢဝ်းယၢမ်းၼမ်" မိူၼ်ၼင်ႇ ၵၢၼ် Download ႁၢင်ႈ ဢမ်ႇၼၼ် ၵၢၼ်လူတ်ႇ Data လုၵ်ႉတီႈ Server ယဝ်ႉ။

* သင်ႁဝ်းႁဵတ်းၵၢၼ်ၸိူဝ်းၼႆႉၼိူဝ် **Main Thread** (ဢၼ်ၵုမ်းထိင်း UI) ၼႆၸိုင် App ႁဝ်းတေ "ၶႅင်" (Freeze) သေ User တေၼဵၵ်းသင်ၵေႃႈဢမ်ႇလႆႈယဝ်ႉ။
* **Concurrency** ၸွႆႈႁႂ်ႈ App ႁဝ်းႁဵတ်းၵၢၼ် လၢႆလၢႆလွင်ႈ ၼႂ်းၶၢဝ်းလဵဝ်ၵၼ်သေ (In parallel) ႁဵတ်းႁႂ်ႈ UI ႁဝ်းလႅၼ်ႈလီယူႇတႃႇသေႇၶႃႈယဝ်ႉ။

### **2. Async / Await ပဵၼ်သင်?**

မၼ်းပဵၼ် "လၢႆးလၢတ်ႈ" (Syntax) ဢၼ်မႂ်ႇ လႄႈ ငၢႆႈသုတ်း ၼႂ်း Swift တႃႇၸတ်းၵၢၼ်လွင်ႈပႂ်ႉထႃး (Asynchronous work) ယဝ်ႉ။

* **`async`:** မၵ်းမၼ်ႈဝႃႈ Function ၼႆႉ တေလႆႈၸႂ်ႉ ၶၢဝ်းယၢမ်းႁိုင် (မၼ်းတေဢမ်ႇပၼ် Result မႃးၵမ်းလဵဝ်)။
* **`await`:** ပဵၼ်ၵၢၼ်သင်ႇႁႂ်ႈ App "ၵိုတ်းဝႆႉ" (Suspend) တီႈၼၼ်ႈ တေႃႇထိုင်ၵၢၼ်ၼၼ်ႉယဝ်ႉတူဝ်။ ပေႃးယဝ်ႉယဝ်ႉ ၸင်ႇသိုပ်ႇႁဵတ်းထႅဝ်တႂ်ႈမၼ်းၼႆယဝ်ႉ။

### **3. Task { } ၼႂ်း SwiftUI**

ယွၼ်ႉၼႂ်း SwiftUI ၼႆႉ Views ၵမ်ႈၼမ်ပဵၼ် Synchronous (ႁဵတ်းၵၢၼ်ၵမ်းလဵဝ်) လႄႈ
ႁဝ်းလူဝ်ႇၸႂ်ႉ **`Task`** တႃႇသၢင်ႈ "ပိုၼ်ႉတီႈ" ဢၼ်တေၸၢင်ႈႁွင်ႉၸႂ်ႉ `async` functions လႆႈယဝ်ႉ။

---

### **4. Example Code: Mock Data Loading**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ႁဵတ်း Function တႃႇ "လူတ်ႇ" Data ဢၼ်ၵိၼ်ၶၢဝ်းယၢမ်း 2 ၸႅၵ်ႉၵႅၼ်ႉ (Seconds) ၶႃႈ:

```swift
import SwiftUI

struct ConcurrencyLessonView: View {
    @State private var message = "Ready to load data..."
    @State private var isLoading = false
    
    var body: some View {
        VStack(spacing: 20) {
            if isLoading {
                ProgressView() // ၼႄႁၢင်ႈပၼ်ႇပၼ်ႇ (Loading)
            }
            
            Text(message)
                .font(.headline)
            
            Button("Fetch Data") {
                // 1. သၢင်ႈ Task တႃႇႁွင်ႉၸႂ်ႉ Async function
                Task {
                    await fetchData()
                }
            }
            .buttonStyle(.borderedProminent)
            .disabled(isLoading)
        }
        .navigationTitle("Async / Await")
    }
    
    // 2. မၵ်းမၼ်ႈ Function ႁႂ်ႈပဵၼ် 'async'
    func fetchData() async {
        isLoading = true
        message = "Connecting to Server..."
        
        // 3. 'await' တႃႇပႂ်ႉထႃႈ (တူဝ်ယၢင်ႇ ပႂ်ႉ 2 ၸႅၵ်ႉၵႅၼ်ႉ)
        try? await Task.sleep(nanoseconds: 2 * 1_000_000_000)
        
        message = "Data loaded successfully from TMK!"
        isLoading = false
    }
}

```

---

### **Summary**

| Keyword | Purpose (Shan)                                                              |
| --- |-----------------------------------------------------------------------------|
| **Concurrency** | ၵၢၼ်ႁဵတ်းႁႂ်ႈ App ႁဵတ်းၵၢၼ်လၢႆလၢႆလွင်ႈ မိူဝ်ႈလဵဝ်ၵၼ် လူၺ်ႈဢမ်ႇႁႂ်ႈ UI ၶၢင်။ |
| **async** | သင်ႇႁႂ်ႈ Function ၼၼ်ႉ ႁူႉဝႃႈမၼ်းတေမီးၵၢၼ်ပႂ်ႉထႃႈ (Asynchronous)။           |
| **await** | တီႈဢၼ် App တေပႂ်ႉ ႁႂ်ႈ Data ဢွၵ်ႇမႃး ၸင်ႇသိုပ်ႇၵႂႃႇထႅဝ်ၼႃႈ။                 |
| **Task** | ပိုၼ်ႉတီႈ ဢၼ်ပၼ်သုၼ်ႇႁႂ်ႈႁဝ်း ႁွင်ႉၸႂ်ႉ Async code ၼႂ်း SwiftUI View။       |

---