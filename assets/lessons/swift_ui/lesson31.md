
## **Module 4 | Lesson 31: Visual Effects: Blur, Shadows, and Materials**

### **1. Materials**

Materials ပဵၼ်လွင်ႈၵၢၼ်သႂ်ႇပိုၼ်ႉလင် ဢၼ်မီးလွင်ႈ "သႂ်" (Translucent) ႁႂ်ႈႁၼ်ထိုင် Content ၽၢႆႇလင်မၼ်းၼၼ်ႉယဝ်ႉ။

* **Styles:** `.ultraThinMaterial`, `.thinMaterial`, `.regularMaterial`, `.thickMaterial`။
* **Usage:** ၸႂ်ႉတႃႇႁဵတ်း Overlay ဢမ်ႇၼၼ် Navigation Bar ဢၼ်ႁၢင်ႈလီၶႃႈ။

### **2. Blur**

ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ View ၼိုင်ႈဢၼ် "ဝၢဝ်း" (Blur) ၵႂႃႇၸွမ်းၼင်ႇၶၼ် (Radius) ဢၼ်ႁဝ်းမၵ်းမၼ်ႈပၼ်ယဝ်ႉ။

* **လၢႆးတႅမ်ႈ:** `.blur(radius: 5)`

### **3. Shadows**

ၵၢၼ်သႂ်ႇငဝ်း ၸွႆႈႁႂ်ႈ View ႁဝ်း "ဝႅၼ်" (Float) ၶိုၼ်ႈမႃးသေ ႁဵတ်းႁႂ်ႈမၼ်းမီး Depth ယဝ်ႉ။

* **လၢႆးတႅမ်ႈ:** `.shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)`

---

### **4. Example Code: Glassmorphism Card**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ Card ဢၼ်မီးပိုၼ်ႉလင်ပဵၼ်ၵႅဝ်ႈ လႄႈ မီးငဝ်းၶႅမ်ႉၶႅမ်ႉၶႃႈ:

```swift
import SwiftUI

struct VisualEffectsView: View {
    var body: some View {
        ZStack {
            // 1. Background Image ဢမ်ႇၼၼ် သီလၢႆလၢႆမဵဝ်း
            LinearGradient(colors: [.blue, .purple, .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                // 2. Card ဢၼ်ၸႂ်ႉ Materials (Glass Effect)
                VStack {
                    Image(systemName: "cpu")
                        .font(.system(size: 50))
                        .foregroundStyle(.white)
                        .padding()
                    
                    Text("TMK AI Course")
                        .font(.title).bold()
                        .foregroundStyle(.white)
                    
                    Text("Learn to build smarter apps.")
                        .foregroundStyle(.white.opacity(0.8))
                }
                .frame(width: 300, height: 200)
                // သႂ်ႇပိုၼ်ႉလင် ႁႂ်ႈပဵၼ် Material
                .background(.ultraThinMaterial) 
                .cornerRadius(30)
                // သႂ်ႇငဝ်း (Shadow)
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 10)
                
                // 3. Blur Effect Demo
                Circle()
                    .fill(.white)
                    .frame(width: 100, height: 100)
                    .blur(radius: 20) // ႁဵတ်းႁႂ်ႈဝၢဝ်း
                    .overlay(Text("Glow").bold())
            }
        }
    }
}

```

---

### **Summary**

| Effect | Explanation (Shan)                                                          |
| --- |-----------------------------------------------------------------------------|
| **Material** | ပိုၼ်ႉလင်ဢၼ်မီးလွင်ႈ ဝၢဝ်း (Blur) ႁင်းမၼ်း။                                 |
| **Blur** | Modifier တႃႇႁဵတ်းႁႂ်ႈ View ၼၼ်ႉဝၢဝ်းၵႂႃႇ (ၸႂ်ႉတႃႇ Glow ဢမ်ႇၼၼ် Privacy)။    |
| **Shadow** | သႂ်ႇငဝ်း ႁႂ်ႈ View ႁဝ်းမီး Depth လႄႈ ႁၼ်ၸႅင်ႈလိူဝ်ၵဝ်ႇ။                     |
| **Glassmorphism** | Design Style ဢၼ်ၸႂ်ႉ Material + Shadow ႁႂ်ႈ App တူၺ်း ၶိုတ်းၵၢပ်ႈ (Modern)။ |

---
