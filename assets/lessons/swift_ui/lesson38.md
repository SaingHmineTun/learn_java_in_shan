

## **Module 5 | Lesson 38: Dependency Injection for API Services**

### **1. Dependency Injection (DI) ပဵၼ်သင်?**

မိူဝ်ႈႁဝ်းမီး `ViewModel` ဢၼ်လူဝ်ႇ Networking ၼၼ်ႉ တႅၼ်းၵၢၼ်ဢၼ်ႁဝ်းတေတႅမ်ႈ Code `URLSession` သႂ်ႇၼႂ်း ViewModel ၵမ်းလဵဝ်၊
ႁဝ်းတေၸႅၵ်ႇ Networking Code ဢွၵ်ႇပဵၼ် **Service** (ဢမ်ႇၼၼ် API Client) သေ "သူင်ႇ" မၼ်းၶဝ်ႈၵႂႃႇၼႂ်း ViewModel ၼႆယဝ်ႉ။

* **Dependency:** ၶိူင်ႈမိုဝ်းဢၼ်ႁဝ်းလူဝ်ႇ (မိူၼ်ၼင်ႇ API Service)။
* **Injection:** ၵၢၼ်သူင်ႇၶိူင်ႈမိုဝ်းၼၼ်ႉၶဝ်ႈၵႂႃႇ (ၵမ်ႈၼမ်သူင်ႇၸွမ်း `init`)။

### **2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ DI?**

1. **Testability:** ႁဝ်းၸၢင်ႈသူင်ႇ "API ပွမ်" (Mock Service) ၶဝ်ႈၵႂႃႇတႃႇၵူတ်ႇထတ်း App လူၺ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ Internet တေႉတေႉ။
2. **Flexibility:** သင်ဝၼ်းၼိုင်ႈ ႁဝ်းၶႂ်ႈလႅၵ်ႈတီႈ `URLSession` ၵႂႃႇၸႂ်ႉ Library ထႅင်ႈဢၼ်ၼိုင်ႈၼႆ ႁဝ်းလႅၵ်ႈတီႈလဵဝ်ယဝ်ႉၵမ်းလဵဝ်ယဝ်ႉ။
3. **Clean Code:** ViewModel တေလူတ်းလွင်ႈၼၵ်းသေ ႁဵတ်းၵၢၼ်ၵဵဝ်ႇလူၺ်ႈ UI ၵူၺ်း။

---

### **3. Example Code: DI with Protocols**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸတ်းပိူင် API Service ၶႃႈ:

```swift
import Foundation
import Observation

// 1. မၵ်းမၼ်ႈ "ၵတိ" (Protocol) ဝႃႈ Service လူဝ်ႇႁဵတ်းသင်လႆႈ
protocol APIServiceProtocol {
    func fetchData() async throws -> String
}

// 2. Service တေႉ (ၸႂ်ႉ Internet တေႉ)
class RealAPIService: APIServiceProtocol {
    func fetchData() async throws -> String {
        // Networking code...
        return "Data from TMK Server"
    }
}

// 3. Service ပႅတ်ႉ (တႃႇ Test ၼႂ်း Preview/Mock)
class MockAPIService: APIServiceProtocol {
    func fetchData() async throws -> String {
        return "Mock Data (No Internet)"
    }
}

// 4. ViewModel ဢၼ်ႁပ်ႉ Injection
@Observable
class DIDemoViewModel {
    var data: String = ""
    private let service: APIServiceProtocol // ႁပ်ႉ Protocol တႅၼ်း Class တေႉ
    
    // Injection ၸွမ်း init
    init(service: APIServiceProtocol) {
        self.service = service
    }
    
    func load() async {
        data = (try? await service.fetchData()) ?? "Error"
    }
}

```

### **4. ၵၢၼ်ၸႂ်ႉတိုဝ်း (Implementation)**

မိူဝ်ႈႁဝ်းသၢင်ႈ View၊ ႁဝ်းၸၢင်ႈလိူၵ်ႈသူင်ႇ Service ဢၼ်ႁဝ်းၶႂ်ႈၸႂ်ႉလႆႈၶႃႈ:

```swift
// တႃႇၸႂ်ႉတေႉၼႂ်း App
let vm = DIDemoViewModel(service: RealAPIService())

// တႃႇၸႂ်ႉၼႂ်း Preview ဢမ်ႇၼၼ် Test
let mockVM = DIDemoViewModel(service: MockAPIService())

```

---

### **Summary**

| Concept | Purpose (Shan)                                                          |
| --- |-------------------------------------------------------------------------|
| **Protocol** | တႅပ်းတတ်း "ပၼ်ၵႂၢမ်းမၼ်ႈ" ဝႃႈ Service ၼၼ်ႉ လူဝ်ႇမီး Function သင်လၢႆလၢႆ။ |
| **Service Class** | တီႈၵဵပ်း Networking Logic တေႉတေႉ။                                       |
| **Injection** | ၵၢၼ်သူင်ႇ Service ၶဝ်ႈၸူး ViewModel ၸွမ်း `init`။                       |
| **Mocking** | ၵၢၼ်သၢင်ႈ Service ပွမ် တႃႇၸႂ်ႉၼႂ်းၵၢၼ် Test ႁႂ်ႈလႅၼ်ႈဝႆ။                |

---