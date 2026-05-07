

## **Module 3 | Lesson 19: NavigationStack: Mastering Push and Pop Transitions**

### **1. NavigationStack ပဵၼ်သင်?**
`NavigationStack` ပဵၼ် Container ဢၼ်လူဝ်ႇလႆႈႁေႃႇ (Wrap) Views ႁဝ်းဝႆႉ တႃႇႁႂ်ႈမၼ်းၸၢင်ႈလႅၵ်ႈ ၼႃႈၸေႃးလႆႈၼႆယဝ်ႉ။
*   မၼ်းတေမီး **Navigation Bar** ၽၢႆႇၼိူဝ် ဢၼ်ၼႄ `navigationTitle`။
*   မၼ်းတေၸတ်းၵၢၼ် **Back Button** ႁႂ်ႈႁင်းမၼ်း မိူဝ်ႈႁဝ်းၵႂႃႇၼႃႈမႂ်ႇ။

### **2. NavigationLink (ပုမ်ႇတႃႇၵႂႃႇၼႃႈမႂ်ႇ)**
`NavigationLink` ပဵၼ်ပုမ်ႇဢၼ်ႁဝ်းၼဵၵ်းသေ မၼ်းတေ "Push" ၼႃႈၸေႃးမႂ်ႇၶိုၼ်ႈမႃးသွၼ်ႉဝႆႉ ယူႇတီႈၼိူဝ် ၼႃႈၸေႃးၵဝ်ႇယဝ်ႉ။
*   **Destination:** ၼႃႈၸေႃးဢၼ်ႁဝ်းၶႂ်ႈၵႂႃႇ။
*   **Label:** ႁၢင်ႈၽၢင်ပုမ်ႇ (Text/Image) ဢၼ် User တေလႆႈၼဵၵ်း။



### **3. Push & Pop ႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?**
*   **Push:** ပဵၼ်ၵၢၼ်ဢဝ်ၼႃႈၸေႃးမႂ်ႇ မႃးသွၼ်ႉ (Stack) သႂ်ႇၼိူဝ်ၼႃႈၸေႃးၵဝ်ႇ။
*   **Pop:** ပဵၼ်ၵၢၼ်ထွၼ်ၼႃႈၸေႃး ဢၼ်ယူႇၼိူဝ်သုတ်းဢွၵ်ႇသေ ပွၵ်ႈမႃးၼႃႈၸေႃး ၽၢႆႇတႂ်ႈမၼ်း (Back)။

---

### **4. Example Code: Simple Navigation**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၵွင်ႉၼႃႈจอ A ၵႂႃႇၸူး ၼႃႈจอ B ၶႃႈ:

```swift
import SwiftUI

struct NavigationLessonView: View {
    var body: some View {
        // 1. လူဝ်ႇမီး NavigationStack ႁေႃႇဝႆႉတၢင်းၼွၵ်ႈသုတ်း
        NavigationStack {
            VStack(spacing: 20) {
                Text("ၼႃႈၸေႃးထီႉၼိုင်ႈ (First Screen)")
                    .font(.headline)
                
                // 2. ၸႂ်ႉ NavigationLink တႃႇၵႂႃႇၼႃႈမႂ်ႇ
                NavigationLink {
                    // Destination View (ၼႃႈၸေႃးဢၼ်တေၵႂႃႇ)
                    SecondScreen()
                } label: {
                    Text("ၵႂႃႇၼႃႈၸေႃးထႅင်ႈဢၼ်ၼိုင်ႈ")
                        .buttonStyle(.borderedProminent)
                }
            }
            .navigationTitle("TMK Home") // သႂ်ႇ Title တီႈ Bar
        }
    }
}

// ၼႃႈจอထႅင်ႈဢၼ်ၼိုင်ႈ
struct SecondScreen: View {
    var body: some View {
        VStack {
            Text("ၼႃႈၸေႃးထီႉသွင် (Second Screen)")
                .font(.title)
            
            Text("SwiftUI တေၸတ်းၵၢၼ် Back Button ပၼ်ႁင်းမၼ်းၶႃႈ။")
                .padding()
        }
        .navigationTitle("Details")
        // ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ Display Mode လႆႈ
        .navigationBarTitleDisplayMode(.inline)
    }
}
```

---

### **Summary**

| Component | Explanation (Shan)                                                      |
| :--- |:------------------------------------------------------------------------|
| **NavigationStack** | Container တၢင်းၼွၵ်ႈသုတ်း ဢၼ်ပၼ်သုၼ်ႇႁႂ်ႈ Navigation ႁဵတ်းၵၢၼ်။         |
| **NavigationLink** | ပုမ်ႇဢၼ်ၸႂ်ႉတႃႇ Push (ၵႂႃႇ) ၼႃႈၸေႃးမႂ်ႇ။                                |
| **navigationTitle** | ၶေႃႈၵႂၢမ်းဢၼ်တေၼႄတီႈ Navigation Bar ၽၢႆႇၼိူဝ်။                          |
| **Automatic Back** | SwiftUI တေပၼ် Back Button လႄႈ Swipe Gesture တႃႇပွၵ်ႈမႃး (Pop) ႁင်းမၼ်း။ |

---