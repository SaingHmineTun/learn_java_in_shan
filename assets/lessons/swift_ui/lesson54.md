

## **Module 7 | Lesson 54: CloudKit Integration: Syncing Data Across Devices**

### **1. CloudKit + SwiftData မၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?**

မိူဝ်ႈႁဝ်းပိုတ်ႇ CloudKit သႂ်ႇၼႂ်း App ၼၼ်ႉ SwiftData တေဢဝ် Local Database (ၼႂ်းၶိူင်ႈ) ၵွင်ႉၸူး **iCloud Private Database** ယဝ်ႉ။

* **Automatic Sync:** မိူဝ်ႈမီးၵၢၼ် Insert/Update/Delete တီႈၶိူင်ႈၼိုင်ႈၼၼ်ႉ မၼ်းတေသူင်ႇၵႂႃႇတီႈ iCloud သေ ၸၼ်လူင်းမႃးပၼ် ၶိူင်ႈတၢင်ႇၸိူဝ်းႁင်းမၼ်းယဝ်ႉ။
* **Offline Support:** သင်ဢမ်ႇမီး Internet ၼႆ App တေၵဵပ်းဝႆႉၼႂ်းၶိူင်ႈ။ ၵူၺ်းၵႃႈ ပေႃးမီး Internet မႃးၼႆ မၼ်းတေ Sync ပၼ်ၶိုၼ်းႁင်းၵူၺ်းယဝ်ႉ။

### **2. Requirements (တွၼ်ႈဢၼ်လူဝ်ႇမၵ်းမၼ်ႈ)**

တႃႇႁႂ်ႈ SwiftData Sync ၸွမ်း CloudKit လႆႈၼၼ်ႉ Model ႁဝ်းလူဝ်ႇၸွမ်းပိူင် ၸိူဝ်းၼႆႉၶႃႈ:

1. **Optional Properties:** Property တင်းမူတ်း (လိူဝ်သေတူဝ် ဢၼ်မီး Default value) လူဝ်ႇပဵၼ် **Optional** (`?`) ဢမ်ႇၼၼ် မီး **Default Value** တႃႇသေႇ။
2. **No Unique Constraints:** တေၸႂ်ႉ `(.unique)` ဢမ်ႇလႆႈ (ၼႂ်း Version ပၢၼ်မႂ်ႇၼႆႉ ၸၢင်ႈမီးၵၢၼ်လႅၵ်ႈလၢႆႈ ၵူၺ်းၵႃႈ ပိုၼ်ႉထၢၼ်တႄႉ ၶဝ်ႈၸႂ်ဝႃႈ iCloud လူဝ်ႇလွင်ႈလွတ်ႈလႅဝ်းၶႃႈ)။
3. **Relationships:** တေလႆႈမၵ်းမၼ်ႈ Relationship ႁႂ်ႈပဵၼ် **Optional** ၶႃႈ။

---

### **3. Example Code: CloudKit Compatible Model**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်မႄး Model ႁႂ်ႈမၼ်း Sync ၸွမ်း iCloud လႆႈၶႃႈ:

```swift
import Foundation
import SwiftData

@Model
class CloudTask {
    // Property တင်းမူတ်းလူဝ်ႇမီး Default value ဢမ်ႇၼၼ် ပဵၼ် Optional
    var title: String = "New Task"
    var isCompleted: Bool = false
    var createdAt: Date = Date.now
    
    // Relationship လူဝ်ႇပဵၼ် Optional
    var project: TMKProject?
    
    init(title: String, isCompleted: Bool = false) {
        self.title = title
        self.isCompleted = isCompleted
    }
}

```

---

### **4. Steps to Enable CloudKit (လၢႆးပိုတ်ႇၸႂ်ႉ)**

1. **Signing & Capabilities:** ၵႂႃႇတီႈ Xcode Project Settings သေ ထႅမ် **"iCloud"** Capability ၶဝ်ႈၵႂႃႇ။
2. **CloudKit Service:** လိူၵ်ႈ **"CloudKit"** သေ သၢင်ႈ (ဢမ်ႇၼၼ် လိူၵ်ႈ) **Container ID** (မိူၼ်ၼင်ႇ `iCloud.com.tmk.taskapp`)။
3. **Background Modes:** ထႅမ် **"Remote notifications"** ၶဝ်ႈၵႂႃႇ (တႃႇႁႂ်ႈ App ႁူႉမိူဝ်ႈမီး Data မႂ်ႇလုၵ်ႉတီႈ Cloud)။
4. **Initialize Container:** ၼႂ်း Code ႁဝ်းဢမ်ႇလူဝ်ႇမႄးသင်ၼမ်၊ SwiftData တေႁူႉႁင်းမၼ်းဝႃႈ လူဝ်ႇ Sync ၸွမ်း iCloud ၼႆယဝ်ႉ။

---

### **Summary**

| Action | Result (Shan) |
| --- | --- |
| **Setup iCloud** | ႁဵတ်းႁႂ်ႈ App မီးပိုၼ်ႉတီႈၵဵပ်း Data ၼိူဝ် Cloud ၶွင် Apple။ |
| **Optional Props** | ႁဵတ်းႁႂ်ႈ Database Schema ၸွမ်းပိူင် CloudKit လႆႈ။ |
| **Remote Notifications** | ၸွႆႈႁႂ်ႈ App မႄး Data ၵမ်းလဵဝ် မိူဝ်ႈမီးၵၢၼ် Update လုၵ်ႉၶိူင်ႈတၢင်ႇဢၼ်။ |
| **Private Database** | Data ၼႆႉတေယူႇၼႂ်း iCloud Account ၶွင် User ၵူၺ်း၊ ႁဝ်း (Developer) တေဢမ်ႇႁၼ်လႆႈၶႃႈ။ |

---