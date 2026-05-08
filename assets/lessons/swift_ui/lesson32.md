

## **Module 4 | Project 4: Software Portfolio Gallery & Grid Dashboard**

### **1. ယိူင်းမၢႆ (Goal)**

သၢင်ႈ App ဢၼ်မီး "Dashboard" ၼႄ Project ၵူႈဢၼ်ဢၼ်:

* **Hero Section:** ၸႂ်ႉ `GeometryReader` လႄႈ `Visual Effects` တႃႇၼႄ Project ဢၼ်လွင်ႈယႂ်ႇသုတ်း။
* **Adaptive Grid:** ၼႄ Project ဢၼ်ၵူဝ်ႇဝႆႉပဵၼ်လွၵ်း (Grid) ဢၼ်မႄး တင်းယႂ်ႇၵႂၢင်ႈႁင်းမၼ်းၸွမ်း iPhone/iPad။
* **Glassmorphism Style:** ၸႂ်ႉ `Materials` (.ultraThinMaterial) တႃႇႁဵတ်း Card ႁႂ်ႈႁၢင်ႈလီ။
* **Horizontal Scroll:** ၸႂ်ႉ `ScrollView` တၢင်းၼွၼ်း တႃႇၼႄ Technologies ဢၼ်ၸႂ်ႉဝႆႉ။

---

### **2. Solution Code (တူဝ်ယၢင်ႇ Code)**

```swift
import SwiftUI

// 1. Data Model
struct ProjectItem: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let color: Color
}

struct PortfolioDashboardApp: View {
    let projects = [
        ProjectItem(name: "Shan Typing Tutor", category: "Desktop", color: .blue),
        ProjectItem(name: "Learn Shan App", category: "Mobile", color: .green),
        ProjectItem(name: "Wann Kart", category: "Utility", color: .orange),
        ProjectItem(name: "TMK Font Website", category: "Web", color: .purple),
        ProjectItem(name: "Shan Proverbs", category: "Web", color: .pink),
        ProjectItem(name: "Master Shan Typography", category: "Design", color: .teal)
    ]
    
    // 2. Adaptive Grid Columns
    let columns = [
        GridItem(.adaptive(minimum: 160), spacing: 16)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 25) {
                    
                    // --- Hero Section with GeometryReader ---
                    GeometryReader { proxy in
                        ZStack(alignment: .bottomLeading) {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                            
                            VStack(alignment: .leading) {
                                Text("Featured Project")
                                    .font(.caption).bold()
                                    .padding(.horizontal, 10).padding(.vertical, 4)
                                    .background(.ultraThinMaterial).cornerRadius(8)
                                
                                Text("TMK Typing Tutor Pro")
                                    .font(.title).bold().foregroundColor(.white)
                            }
                            .padding(25)
                        }
                        // ႁဵတ်းႁႂ်ႈမၼ်းပၼ်ႇၸွမ်း Scroll (Parallax hint)
                        .rotation3DEffect(.degrees(proxy.frame(in: .global).minY / -20), axis: (x: 1, y: 0, z: 0))
                    }
                    .frame(height: 200)
                    .padding(.horizontal)

                    // --- Technology Horizontal Scroll ---
                    Text("Technologies Used").font(.headline).padding(.horizontal)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(["SwiftUI", "Flutter", "Kotlin", "JavaFX", "MySQL"], id: \.self) { tech in
                                Text(tech)
                                    .padding(.horizontal, 15).padding(.vertical, 8)
                                    .background(.secondary.opacity(0.1))
                                    .clipShape(Capsule())
                            }
                        }
                        .padding(.horizontal)
                    }

                    // --- Adaptive Project Grid ---
                    Text("All Projects").font(.headline).padding(.horizontal)
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(projects) { project in
                            VStack(alignment: .leading) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(project.color.gradient)
                                        .frame(height: 120)
                                    
                                    Image(systemName: "app.fill")
                                        .font(.system(size: 40))
                                        .foregroundColor(.white.opacity(0.8))
                                }
                                
                                Text(project.name).font(.subheadline).bold()
                                Text(project.category).font(.caption).foregroundColor(.secondary)
                            }
                            .padding(10)
                            .background(.ultraThinMaterial)
                            .cornerRadius(20)
                            .shadow(color: .black.opacity(0.05), radius: 5)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
            .navigationTitle("TMK Portfolio")
            .background(Color(uiColor: .systemGroupedBackground))
        }
    }
}

```

---

### **3. Summary**

| Feature | SwiftUI Concept Used (Shan) |
| --- | --- |
| **Hero Card** | `GeometryReader` တႃႇတႅၵ်ႈ Position လႄႈ သႂ်ႇ `rotation3DEffect`။ |
| **Adaptive Grid** | `GridItem(.adaptive)` တႃႇႁႂ်ႈမၼ်းလႅၵ်ႈလွၵ်း ႁင်းမၼ်းၸွမ်း iPhone/iPad။ |
| **Glass Look** | `.ultraThinMaterial` တႃႇႁဵတ်းပိုၼ်ႉလင် Card ႁႂ်ႈတူၺ်း Modern။ |
| **Scrolling** | `ScrollView` တင်းတၢင်းတင်ႈ လႄႈ တၢင်းၼွၼ်း ပဵင်းၵၼ်။ |

---