

## **Module 5 | Lesson 37: Image Caching and AsyncImage**

### **1. AsyncImage ပဵၼ်သင်?**

`AsyncImage` ပဵၼ် Built-in View ၼႂ်း SwiftUI ဢၼ်ၸွႆႈလူတ်ႇႁၢင်ႈလုၵ်ႉတီႈ URL ႁင်းမၼ်းယဝ်ႉ။

* မၼ်းတေလူတ်ႇႁၢင်ႈပဵၼ် **Asynchronous** (ဢမ်ႇႁဵတ်းႁႂ်ႈ UI ၶႅင်)။
* ႁဝ်းၸၢင်ႈ မၵ်းမၼ်ႈႁၢင်ႈၽၢင် မိူဝ်ႈတိုၵ်ႉလူတ်ႇယူႇ (Placeholder) လႄႈ မိူဝ်ႈလူတ်ႇယဝ်ႉၶႃႈ။

### **2. Image Caching ပဵၼ်သင်?**

**Caching** ၵေႃႈပဵၼ်ၵၢၼ် "သိမ်းႁၢင်ႈ" ဝႆႉၼႂ်း Memory ဢမ်ႇၼၼ် ၼႂ်းၶိူင်ႈ (Storage) ယဝ်ႉ။

* **Why?:** မိူဝ်ႈ User ပွၵ်ႈမႃးတူၺ်းထႅင်ႈပွၵ်ႈၼိုင်ႈၼၼ်ႉ App တေဢဝ်ႁၢင်ႈၼၼ်ႉမႃးၼႄၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇၵႂႃႇ Download တီႈ Internet မႂ်ႇ။
* **Problem:** `AsyncImage` တေဢမ်ႇသိမ်းႁၢင်ႈဝႆႉ (No caching) တႃႇသေႇ။ ပေႃးႁဝ်းပိၵ်ႉ View ယဝ်ႉပိုတ်ႇမႃးမႂ်ႇၼႆ မၼ်းတေလူတ်ႇမႂ်ႇတႃႇသေႇၶႃႈ။

---

### **3. Example Code: Basic AsyncImage**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်လူတ်ႇႁၢင်ႈ Logo TMK ဢမ်ႇၼၼ် ႁၢင်ႈသင်တၢၼ်းၶႃႈ:

```swift
import SwiftUI

struct AsyncImageLessonView: View {
    let imageURL = URL(string: "https://tmkacademy.com/images/course-swiftui.png")
    
    var body: some View {
        VStack {
            // 1. ၸႂ်ႉ AsyncImage တႃႇလူတ်ႇႁၢင်ႈ
            AsyncImage(url: imageURL) { phase in
                switch phase {
                case .empty:
                    // တိုၵ်ႉလူတ်ႇယူႇ
                    ProgressView()
                        .frame(width: 200, height: 200)
                
                case .success(let image):
                    // လူတ်ႇယဝ်ႉ
                    image
                        .resizable()
                        .aspectRatio(contentSize: .fit)
                        .frame(width: 200, height: 200)
                        .cornerRadius(15)
                
                case .failure:
                    // လူတ်ႇဢမ်ႇလႆႈ (Error)
                    Image(systemName: "photo.circle.fill")
                        .font(.system(size: 100))
                        .foregroundStyle(.gray)
                
                @unknown default:
                    EmptyView()
                }
            }
            
            Text("TMK Course Image")
                .font(.headline)
        }
    }
}

```

---

### **4. External Libraries for Advanced Caching**

ယွၼ်ႉ `AsyncImage` ပႆႇမီး Caching ဢၼ်ၶႅမ်ႉလႄႈ Programmer ၵမ်ႈၼမ်ၸႂ်ႉတိုဝ်း Library ၽၢႆႇၼွၵ်ႈ (Third-party) မိူၼ်ၼင်ႇ:

* **Kingfisher:** ပဵၼ် Library ဢၼ်ၶႅမ်ႉသုတ်း တႃႇၸတ်းၵၢၼ် Caching ၼႂ်း iOS။
* **SDWebImageSwiftUI:** ငၢႆႈ လႄႈ လႅၼ်ႈဝႆ။

---

### **Summary**

| Concept | Explanation (Shan)                                                            |
| --- |-------------------------------------------------------------------------------|
| **AsyncImage** | Built-in View တႃႇလူတ်ႇႁၢင်ႈ လုၵ်ႉတီႈ URL။                                     |
| **Placeholder** | View ဢၼ်ၼႄဝႆႉ တိုၵ်ႉပႂ်ႉႁၢင်ႈလူတ်ႇမႃး (မိူၼ်ၼင်ႇ ProgressView)။               |
| **Caching** | ၵၢၼ်ၵဵပ်းႁၢင်ႈဝႆႉ တႃႇဢမ်ႇလူဝ်ႇ Download လၢႆလၢႆပွၵ်ႈ၊ ၸွႆႈလူတ်း Data Internet။ |
| **Phases** | ၵၢၼ်ၸတ်းၵၢၼ်ငဝ်းလၢႆး (Empty, Success, Failure) ၶွင်ၵၢၼ်လူတ်ႇႁၢင်ႈ။            |

---