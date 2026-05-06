

## **Module 1 | Project 1: Thung Mao Kham Identity App**

### **1. Goal**
သၢင်ႈၼႃႈၸေႃး Digital Profile ဢၼ်မီး:
*   ႁၢင်ႈ Logo (Circular Image with Shadow).
*   ၸိုဝ်ႈ လႄႈ ၶေႃႈၵႂၢမ်းပိုတ်ႇၼႄ (Title & Subtitle).
*   တွၼ်ႈၵပ်းသိုပ်ႇ (Contact Section) ဢၼ်ၸႂ်ႉ Subview structs.
*   ပိုၼ်ႉလင်ဢၼ်မီးသီ Gradient ႁၢင်ႈလီ။

### **2. Structure & Components**
ႁဝ်းတေၸႅၵ်ႇ Code ပဵၼ် 3 တွၼ်ႈယႂ်ႇၶႃႈ:
1.  **Background Layer:** ၸႂ်ႉ `ZStack` လႄႈ `LinearGradient`။
2.  **Profile Header:** ၸႂ်ႉ `VStack` တႃႇဝၢင်း Logo လႄႈ ၸိုဝ်ႈ။
3.  **Info Cards:** ၸႂ်ႉ `ContactRow` struct ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼႂ်း Lesson 7။

---

### **3. Solution Code (တူဝ်ယၢင်ႇ Code)**

```swift
import SwiftUI

struct TMKIdentityApp: View {
    var body: some View {
        ZStack {
            // 1. Background Gradient
            LinearGradient(colors: [.blue.opacity(0.3), .white], 
                           startPoint: .topLeading, 
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                // 2. Profile Header
                VStack {
                    Image(systemName: "person.circle.fill") // လႅၵ်ႈပဵၼ် Logo တေႉလႆႈ
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .foregroundStyle(.blue)
                        .padding(10)
                        .background(.white)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    
                    Text("ထုင်ႉမၢဝ်းၶမ်း")
                        .font(.custom("NamKhone-Regular", size: 32)) // သင်မီး Font တႆး
                        .bold()
                    
                    Text("Thung Mao Kham Group")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                }
                
                Divider()
                    .padding(.horizontal, 40)
                
                // 3. Contact Section (Using Subviews)
                VStack(spacing: 15) {
                    InfoRow(icon: "briefcase.fill", text: "Programming & Education")
                    InfoRow(icon: "mappin.and.ellipse", text: "Muse, Northern Shan State")
                    InfoRow(icon: "globe", text: "www.thungmaokham.com")
                }
                .padding(.horizontal)
                
                Spacer()
                
                // 4. Footer
                Text("Established 2019")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            .padding()
        }
    }
}

// Reusable Subview တႃႇၼႄ Row ၵူႈဢၼ်
struct InfoRow: View {
    let icon: String
    let text: String
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: icon)
                .foregroundStyle(.blue)
                .frame(width: 30)
            
            Text(text)
                .font(.subheadline)
            
            Spacer()
        }
        .padding()
        .background(Color.white.opacity(0.8))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    TMKIdentityApp()
}
```

---

### **Summary**

| Feature | Swift UI Concept Used (Shan) |
| :--- | :--- |
| **Background** | `ZStack` လႄႈ `LinearGradient` တႃႇႁဵတ်း Layer တၢင်းလင်။ |
| **Circular Image** | `.clipShape(Circle())` လႄႈ `.shadow()` တႃႇမႄးႁၢင်ႈ။ |
| **Alignment** | `VStack(alignment: .center)` တႃႇၸတ်းႁႂ်ႈၵူႈလွင်ႈယူႇၵၢင်။ |
| **Spacers** | ၸႂ်ႉ `Spacer()` တႃႇယၼ် Footer ႁႂ်ႈတူၵ်းၵႂႃႇယူႇၽၢႆႇတႂ်ႈသုတ်း။ |
| **Refactoring** | `InfoRow` struct ၸွႆႈႁႂ်ႈ Code ၼႂ်း body မူတ်းသႂ် လႄႈ ၸႂ်ႉၶိုၼ်းလႆႈငၢႆႈ။ |

---