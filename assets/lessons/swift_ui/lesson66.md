

## **Module 9 | Lesson 66: Asset Management and Catalog Optimization**

### **1. Using Asset Catalogs (.xcassets)**

ၼႂ်း Xcode, **Assets.xcassets** ပဵၼ်တီႈၵဵပ်းၶေႃႈမုၼ်းတင်းမူတ်း ဢၼ်ဢမ်ႇၸႂ်ႉ Code ယဝ်ႉ။

* **Color Sets:** တႅၼ်းတွၼ်ႈတေၸႂ်ႉ Color Hex Code ၼႂ်း Code ၵူႈတီႈ၊ ႁဝ်းၸၢင်ႊသၢင်ႈ **Color Set** ဝႆႉၼႂ်း Assets ယဝ်ႉ။
* *Benefit:* ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈသီလၢႆလၢႆမဵဝ်း တႃႇ **Light Mode** လႄႈ **Dark Mode** ဝႆႉၼႂ်းၸိုဝ်ႈလဵဝ်ၵၼ်ယဝ်ႉ။


* **Image Sets:** ၵဵပ်းႁၢင်ႈ (Icons, Backgrounds)။

---

### **2. Optimization Techniques (လၢႆးႁဵတ်းႁႂ်ႈ App လႅၼ်ႈဝႆး)**

#### **A. Vector Images (PDF vs SVG)**

တႅၼ်းတွၼ်ႈတေၸႂ်ႉႁၢင်ႈ PNG လၢႆလၢႆသႅၼ်း (1x, 2x, 3x) ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ **SVG** ယဝ်ႉ။

* **လၢႆးႁဵတ်း:** ဢဝ်ၾၢႆႇ SVG သႂ်ႇၼႂ်း Assets ယဝ်ႉ တူၺ်းတီႈ Attributes Inspector သေ Check လွၵ်း **"Preserve Vector Data"** လႄႈ လႅၵ်ႈ **Resizing** ပဵၼ် **"Single Scale"** ၶႃႈ။
* *Result:* Xcode တေၸတ်းၵၢၼ် Resize ႁၢင်ႈ ႁႂ်ႈၸႅင်ႈလႅင်း ၼႂ်း iPhone ၵူႈသႅၼ်း လႄႈ File Size တေလဵၵ်ႉတေႉတေႉ။

#### **B. Symbol Images (SF Symbols)**

သင်ပဵၼ် Icons ထမ်ႇမတႃႇ (မိူၼ်ၼင်ႇ ႁၢင်ႈ Settings, Trash, Home) ၼႆ ယႃႇပေၸႂ်ႉႁၢင်ႈ Image။ ၸႂ်ႉ **SF Symbols** ဢၼ် Apple မီးဝႆႉပၼ်ၼၼ်ႉ လီလိူဝ်ယဝ်ႉ။

* *Benefit:* မၼ်းၸၢင်ႈလႅၵ်ႈ Weight (Bold/Light) လႆႈ လႄႈ ဢမ်ႇၵိၼ် Memory ၼမ်။

---

### **3. Naming Conventions (လၢႆးတင်ႈၸိုဝ်ႈ ႁႂ်ႈၸတ်းၵၢၼ်ငၢႆႈ)**

သင် Project ႁဝ်းယႂ်ႇမႃးၼႆ ၸိုဝ်ႈ Assets တေလွင်ႈယႂ်ႇတေႉတေႉ။ ႁဝ်းထုၵ်ႇလီၸႂ်ႉပိူင် **Prefix** (ႁူဝ်ၼႃႈ) ၼင်ႇၼႆယဝ်ႉ:

* `ic_` တႃႇ Icons (မိူၼ်ၼင်ႇ: `ic_checkmark`, `ic_trash`)
* `img_` တႃႇ Images (မိူၼ်ၼင်ႇ: `img_welcome_bg`)
* `clr_` တႃႇ Colors (မိူၼ်ၼင်ႇ: `clr_primary_blue`)

---

### **4. Example: Global Color Management**

မိူဝ်ႈႁဝ်းမၵ်းမၼ်ႈ Color Set ၼႂ်း Assets ၸိုဝ်ႈဝႃႈ `TMKBrandColor` ယဝ်ႉၼၼ်ႉ ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉၼႂ်း Code ငၢႆႈငၢႆႈၼင်ႇၼႆၶႃႈ:

```swift
extension Color {
    static let tmkBrand = Color("TMKBrandColor")
}

// ၵၢၼ်ၸႂ်ႉတိုဝ်း
Text("Welcome to TMK")
    .foregroundColor(.tmkBrand)

```

---

### **Summary**

| Asset Type | Optimization Tip (Shan) |
| --- | --- |
| **Images** | ၸႂ်ႉ SVG (Vector) တႃႇလူတ်း File Size လႄႈ ႁႂ်ႈႁၢင်ႈၸႅင်ႈ။ |
| **Colors** | ၸႂ်ႉ Color Sets တႃႇ Support Light/Dark Mode ႁင်းမၼ်း။ |
| **Fonts** | ၸႂ်ႉ Custom Fonts ဢၼ်ပဵၼ် `.ttf` ဢမ်ႇၼၼ် `.otf` သေ မၵ်းမၼ်ႈဝႆႉၼႂ်း Assets။ |
| **Memory** | မွတ်ႇပႅတ်ႈ (Delete) Assets ဢၼ်ဢမ်ႇၸႂ်ႉယဝ်ႉ ႁႂ်ႈပဵၼ်ၵၢၼ်။ |

---