

## **Module 5 | Lesson 36: Handling API States: Loading, Success, and Error Views**

### **1. API States ပဵၼ်သင်?**

ၼႂ်းၵၢၼ် Networking ၼႆႉ ႁဝ်းၸၢင်ႈၸႅၵ်ႇ "ငဝ်းလၢႆး" (State) ဢွၵ်ႇပဵၼ် 4 မဵဝ်းၼင်ႇၼႆယဝ်ႉ:

1. **Idle (တေႇ):** တိုၵ်ႉတႄႇ၊ ပႆႇလႆႈႁဵတ်းသင်။
2. **Loading (တိုၵ်ႉလူတ်ႇ):** တိုၵ်ႉၵႂႃႇဢဝ် Data ယူႇ (ထုၵ်ႇလီၼႄ ProgressView)။
3. **Success (ယဝ်ႉတူဝ်):** လႆႈ Data မႃးယဝ်ႉ (လူဝ်ႇၼႄ Content)။
4. **Failed (ဢမ်ႇၶႅမ်ႉလႅတ်ႈ):** ၵွင်ႉဢမ်ႇလႆႈ ဢမ်ႇၼၼ် Error (လူဝ်ႇၼႄၶေႃႈၵႂၢမ်း လႄႈ ပုမ်ႇ Retry)။

### **2. ၸႂ်ႉ Enum တႃႇၵုမ်းထိင်း State**

လၢႆးဢၼ်ၶႅမ်ႉသုတ်းၼႂ်း Swift ၵေႃႈပဵၼ်ၵၢၼ်ၸႂ်ႉ `enum` ဢၼ်မီး `associated values` တႃႇၵဵပ်း Data ၼၼ်ႉၶႃႈ။

---

### **3. Example Code: State-driven UI**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸတ်း View ႁႂ်ႈလႅၵ်ႈၸွမ်းငဝ်းလၢႆး API ၶႃႈ:

```swift
import SwiftUI
import Observation

// 1. မၵ်းမၼ်ႈ Enum တႃႇ State
enum APIState {
    case idle
    case loading
    case success(data: String) // ၵဵပ်း Data မႃးၸွမ်း
    case failed(error: String) // ၵဵပ်းၶေႃႈၵႂၢမ်း Error
}

@Observable
class APIViewModel {
    var state: APIState = .idle
    
    func fetchData() async {
        state = .loading // ၼႄ Loading ၵမ်းလဵဝ်
        
        do {
            // ပႅတ်ႉႁဵတ်းၼင်ႇပႂ်ႉ 2 ၸႅၵ်ႉ
            try await Task.sleep(nanoseconds: 2 * 1_000_000_000)
            
            // တူဝ်ယၢင်ႇ: သုမ်ႇ (Random) ပၼ်ဝႃႈ တေ Success ဢမ်ႇၼၼ် Failed
            if Bool.random() {
                state = .success(data: "ဢဝ်ၶေႃႈမုၼ်းတီႈ ဢိၼ်ႇထိူဝ်ႇၼႅတ်ႉ ၶႅမ်ႉလီယဝ်ႉ!")
            } else {
                throw URLError(.notConnectedToInternet)
            }
        } catch {
            state = .failed(error: "ၵွင်ႉ Internet ဢမ်ႇလႆႈၶႃႈ!")
        }
    }
}

struct APIStateView: View {
    @State private var viewModel = APIViewModel()
    
    var body: some View {
        VStack {
            // 2. ၸႂ်ႉ Switch တႃႇလိူၵ်ႈၼႄ View
            switch viewModel.state {
            case .idle:
                Text("တိုၵ်ႉပႂ်ႉၵၢၼ်သင်ႇ...")
                
            case .loading:
                VStack {
                    ProgressView()
                    Text("တိုၵ်ႉလူတ်ႇၶေႃႈမုၼ်းယူႇ...")
                }
                
            case .success(let data):
                VStack {
                    Image(systemName: "checkmark.circle.fill").foregroundColor(.green).font(.largeTitle)
                    Text(data).font(.headline).padding()
                }
                
            case .failed(let error):
                VStack {
                    Image(systemName: "exclamationmark.triangle.fill").foregroundColor(.red).font(.largeTitle)
                    Text(error).padding()
                    Button("Retry") { Task { await viewModel.fetchData() } }
                        .buttonStyle(.bordered)
                }
            }
        }
        .task {
            await viewModel.fetchData()
        }
    }
}

```

---

### **Summary**

| State | User Experience (Shan)                                             |
| --- |--------------------------------------------------------------------|
| **Loading** | User ႁူႉဝႃႈ App ဢမ်ႇၶမ်၊ တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ။                       |
| **Success** | ၼႄ Data ဢၼ်လူတ်ႇမႃးလႆႈ။                                            |
| **Failed** | ပွင်ႇၶၢဝ်ႇဝႃႈပဵၼ် Error ယွၼ်ႉသင် လႄႈ ပၼ်သုၼ်ႇ Retry (ႁဵတ်းၶိုၼ်း)။ |
| **Switch-Case** | ၸွႆႈႁႂ်ႈ Code ႁဝ်းဢမ်ႇသုၵ်ႉသၵ်ႉ လႄႈ ၸတ်းၵၢၼ်ငၢႆႈ။                  |

---