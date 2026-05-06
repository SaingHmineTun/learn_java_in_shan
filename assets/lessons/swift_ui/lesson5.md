

## **Module 1 | Lesson 5: Images & SF Symbols: Resizing and Rendering Modes**

### **1. SF Symbols ပဵၼ်သင်?**
**SF Symbols** ပဵၼ် Library Icon ဢၼ် Apple သၢင်ႈဝႆႉပၼ်လႄႈ မီးၼမ်လိူဝ် 5,000 ပၢႆယဝ်ႉ။
မၼ်းပဵၼ် **Vector-based** လႄႈ မၼ်းပႅၵ်ႇပိူင်ႈတင်း Image ယူဝ်းယူဝ်း ယွၼ်ႉမၼ်းႁဵတ်းၵၢၼ်မိူၼ်ၼင်ႇ "Font" ယဝ်ႉ။
*   **လၢႆးၸႂ်ႉ:** `Image(systemName: "globe")`
*   **ၽွၼ်းလီ:** ႁဝ်းၸၢင်ႈလႅၵ်ႈလၢႆႈ Weight (Bold, Light) လႄႈ တင်းယႂ်ႇ (Size) မၼ်းလႆႈငၢႆႈငၢႆႈ။

### **2. Resizing Images (လၢႆးၸတ်းတင်းယႂ်ႇ ၶွင်ၶႅပ်းႁၢင်ႈ)**
ၼႂ်း SwiftUI ၼႆႉ Image တေၼႄႁၢင်ႈၸွမ်း "တင်းယႂ်ႇၶႅပ်းႁၢင်ႈ" (Original Size) မၼ်းတႃႇသေႇယဝ်ႉ။
ၵူၺ်းၵႃႈ မၢင်လႂ်ၼႆႉ ပေႃးႁၢင်ႈယႂ်ႇၼႃႇ မၼ်းတေတူၺ်းယၢပ်ႇလႄႈ ႁဝ်းၸၢင်ႈမႄးလႆႈ ၼင်ႇၼႆယဝ်ႉ။
*   **`.resizable()`:** တေလႆႈသႂ်ႇ Modifier ၼႆႉၵွၼ်ႇ ၸင်ႇတေၸၢင်ႈလႅၵ်ႈလၢႆႈ Size မၼ်းလႆႈ။
*   **`.aspectRatio(contentMode: .fit)`:** ၸွႆႈႁႂ်ႈႁၢင်ႈႁဝ်း ဢမ်ႇၵွႆ (ဢမ်ႇပွတ်း၊ ဢမ်ႇယၢဝ်း) မိူဝ်ႈႁဝ်းလႅၵ်ႈ Size မၼ်း။

### **3. Rendering Modes (လၢႆးၼႄသီ)**
မိူဝ်ႈႁဝ်းၸႂ်ႉ Icon ၼၼ်ႉ ႁဝ်းလိူၵ်ႈလၢႆးၼႄသီလႆႈ 2 မဵဝ်း:
*   **Template Mode:** ႁဝ်းၸၢင်ႈဢဝ် Modifier `.foregroundStyle(.red)` မႃးယုၵ်ႉသီမၼ်းလႆႈၸွမ်းၸႂ်။
*   **Original Mode:** ၼႄသီငဝ်ႈမၼ်း (မိူၼ်ၼင်ႇ Multi-color symbols ၶွင် Apple)။



### **4. Hierarchical vs. Palette Styles**
ယၢမ်းလဵဝ် SF Symbols ၸၢင်ႈမီးလၢႆလၢႆသီ (Multi-tone) ၼႂ်း Icon လဵဝ်ၵၼ်ယဝ်ႉ:
*   **`.symbolRenderingMode(.hierarchical)`:** မၼ်းတေဢဝ်သီလဵဝ်ၵၼ်သေ ပၼ်ၼမ်ႉၼၵ်း (Opacity) ပႅၵ်ႇၵၼ် ၼႂ်း Icon ၼၼ်ႉ။
*   **`.symbolRenderingMode(.palette)`:** ႁဝ်းၸၢင်ႈလိူၵ်ႈသီပႅၵ်ႇၵၼ် သႂ်ႇၼႂ်းတွၼ်ႈ (Layer) ပႅၵ်ႇၵၼ် ၼႂ်း Icon လဵဝ်။

---

### **Example Code (တူဝ်ယၢင်ႇ)**
```swift
import SwiftUI

struct Lesson5View: View {
    var body: some View {
        VStack(spacing: 30) {
            
            // 1. Local Image (ႁၢင်ႈဢၼ်မီးၼႂ်း Assets)
            // တေလႆႈသႂ်ႇ .resizable() ၵွၼ်ႇ ၸင်ႇတေမႄး frame လႆႈ
            Image("TMK_Logo") // သႂ်ႇၸိုဝ်ႈ Image ၼႂ်း Assets ႁဝ်း
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .shadow(radius: 10)

            // 2. SF Symbol (ယူဝ်းယူဝ်း)
            Image(systemName: "keyboard.fill")
                .font(.system(size: 60))
                .foregroundStyle(.blue)

            // 3. SF Symbol (Multi-color Palette)
            // ၸႂ်ႉ .palette တႃႇလိူၵ်ႈသီပႅၵ်ႇၵၼ် ၼႂ်း Layer ၼိုင်ႈဢၼ်
            Image(systemName: "cloud.sun.rain.fill")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.gray, .yellow, .blue)
                .font(.system(size: 80))

            // 4. SF Symbol (Hierarchical)
            // ဢဝ်သီလဵဝ်ၵၼ်သေ ပၼ်ၼမ်ႉၼၵ်း (Opacity) ပႅၵ်ႇၵၼ်
            Image(systemName: "shareplay")
                .symbolRenderingMode(.hierarchical)
                .foregroundStyle(.purple)
                .font(.system(size: 80))
        }
        .padding()
    }
}

#Preview {
    Lesson5View()
}
```

### **Summary (သူးပ်းႁူဝ်တွၼ်ႈႁဵၼ်း)**

| Topic | Explanation (Shan) |
| :--- | :--- |
| **SF Symbols** | Icon Library ၶွင် Apple ဢၼ်ပဵၼ် Vector (ၸႂ်ႉ `systemName`)။ |
| **.resizable()** | တေလႆႈသႂ်ႇ Modifier ၼႆႉၵွၼ်ႇ ၸင်ႇတေၸၢင်ႈမႄး Size ႁၢင်ႈလႆႈ။ |
| **Content Mode** | `.fit` (ႁႂ်ႈႁၼ်တင်းႁၢင်ႈ) ဢမ်ႇၼၼ် `.fill` (ႁႂ်ႈတဵမ်ဢွင်ႈတီႈ)။ |
| **Foreground Style** | ၸႂ်ႉတႃႇလႅၵ်ႈသီ Icon (မိူၼ်ၼင်ႇလႅၵ်ႈသီ Font)။ |
| **Symbol Rendering** | လၢႆးၸတ်းသီ Icon ႁႂ်ႈမီးလၢႆ Layer (Hierarchical/Palette)။ |

---