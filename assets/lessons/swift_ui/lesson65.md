
## **Module 9 | Lesson 65: App Icons and Launch Screens**

မိူဝ်ႈ User ႁၼ် App ႁဝ်းၼႂ်း Store ဢမ်ႇၼၼ် ၼိူဝ်ၼႃႈၸေႃး iPhone ၶဝ်ၼၼ်ႉ
လွင်ႈႁၼ်ထိုင်ပွၵ်ႈၵမ်းၼိုင်ႈ (First Impression) ၼၼ်ႉ လွင်ႈယႂ်ႇသုတ်းယဝ်ႉ။

### **1. App Icons (ႁၢင်ႈဢႆႇၶွၼ်ႇ App)**

App Icon ပဵၼ် "ၼႃႈတႃ" ၶွင် App ယဝ်ႉ။ ၼႂ်း iOS, Icon လူဝ်ႇမီးဝႆႉ လၢႆလၢႆသႅၼ်း (Sizes) တႃႇၼႄၼႂ်း Settings, Notifications, လႄႈ Home Screen ယဝ်ႉ။

* **Simple is Best:** ယႃႇသႂ်ႇလိၵ်ႈၼမ် ဢမ်ႇၼၼ် ႁၢင်ႈဢၼ်ယုင်ႈၼႃႇ။ ၸႂ်ႉ Logo ဢၼ်ၸႅင်ႈလႅင်း။
* **No Transparency:** App Icon လူဝ်ႇပဵၼ်သႅၼ်း သီႇၸဵင်ႇ (Square) ဢၼ်ဢမ်ႇမီးပိုၼ်ႉပဝ်ႇ။ Apple တေတတ်းၸဵင်ႇမၼ်းႁႂ်ႈမူၼ်းႁင်းမၼ်း။
* **Asset Catalog:** ၼႂ်း Xcode, ႁဝ်းၵူၺ်းလူဝ်ႇသႂ်ႇႁၢင်ႈသႅၼ်း **1024x1024 px** ၼိုင်ႈဢၼ်ၵူၺ်း။ တင်ႇသႅၼ်းၼၼ်ႉ Xcode တေၸတ်းၵၢၼ်ပၼ် တင်းမူတ်းႁင်းၵူၺ်း။

### **2. Launch Screens (ၼႃႈၸေႃး App)**

Launch Screen ပဵၼ်ၼႃႈၸေႃးဢၼ်ဢွၵ်ႇမႃး "ၵမ်းလဵဝ်" မိူဝ်ႈ User ပိုတ်ႇ App ယဝ်ႉ။
မၼ်းၸွႆႈႁႂ်ႈ User ႁူႉဝႃႈ App ႁဝ်းဝႆး လႄႈ တိုၵ်ႉလူတ်ႇ (Loading) ယူႇ ၼႆယဝ်ႉ။

* **Storyboard vs Image:** ပၢၼ်မႂ်ႇၼႆႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ **LaunchScreen.storyboard** ဢမ်ႇၼၼ် မၵ်းမၼ်ႈဝႆႉၼႂ်း **Info.plist** တႃႇၼႄ Logo ဝႆႉၵၢင်ၼႃႈၸေႃးယဝ်ႉ။
* **Consistent UI:** ႁၢင်ႈၽၢင် Launch Screen လူဝ်ႇမိူၼ်တင်းၼႃႈၸေႃးၶွင် App ႁႂ်ႈမၼ်းလႅၼ်ႈၸူးၵၼ်လႆႈၼိမ် (Smooth) ယဝ်ႉ။

---

### **3. How to Set Up in Xcode (လၢႆးႁဵတ်း)**

**တႃႇ App Icon:**

1. ၵႂႃႇတီႈ **Assets** ၼႂ်း Xcode။
2. လိူၵ်ႈ **AppIcon**။
3. လၢၵ်ႈ (Drag) ႁၢင်ႈ 1024x1024 px သႂ်ႇၼႂ်းလွၵ်း **1024 (All Sizes)**။ 

**တႃႇ Launch Screen:**

1. ၵႂႃႇတီႈ **Project Settings** -> **General** -> **Development Info**။
2. လိူၵ်ႈ **Launch Screen File** (ၵမ်ႈၼမ်ပဵၼ် LaunchScreen.storyboard)။
3. ၼႂ်း Storyboard, ထႅမ် `UIImageView` သေ သႂ်ႇ Logo ၸဝ်ႈၵဝ်ႇဝႆႉၵၢင်ၼႃႈၸေႃး။

---

### **Summary**

| Component | Goal (Shan)                                | Key Requirement                            |
| --- |--------------------------------------------|--------------------------------------------|
| **App Icon** | ႁဵတ်းႁႂ်ႈ User ႁၼ်လႆႈ လႄႈ ၼဵၵ်းပိုတ်ႇငၢႆႈ။ | 1024x1024 px, Single High-Res Image.       |
| **Launch Screen** | ႁဵတ်းႁႂ်ႈ App တူၺ်းဝႆး လႄႈ ပဵၼ်ၵၢၼ်။       | မိူၼ်တင်း UI ၼႃႈၸေႃးႁႅၵ်ႈ (Splash Screen). |

---
