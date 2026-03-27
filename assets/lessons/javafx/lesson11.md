## **Lesson 11: AnchorPane & Card Constraints (Responsive UI)**

ၼႂ်း JavaFX ၼႆႉ **AnchorPane** ပဵၼ် Layout ဢၼ်မီးဢဵၼ်ႁႅင်းသုတ်း တွၼ်ႈတႃႇသၢင်ႈ **Responsive UI**။ 
မၼ်းၸွႆႈႁႂ်ႈႁဝ်း **"ၵွင်ႉ" (Anchor/Pin)** UI elements (မိူၼ်ၼင်ႇ Button, TextField, ဢမ်ႇၼၼ် Card) ဝႆႉၸွမ်း **Edges** (ၶွပ်ႇ) ၶွင် Window ၶႃႈ။

### **1. How Anchoring Works (Scene Builder)**
မိူဝ်ႈႁဝ်းလိူၵ်ႈ (Select) ဢဝ် Object ၼိုင်ႈဢၼ်ၼႂ်း AnchorPane ယဝ်ႉ၊ ၵႂႃႇတူၺ်းတီႈ **Inspector > Layout** tab ၶႃႈ။ 
ႁဝ်းတေႁၼ်ႁၢင်ႈ Diagram ဢၼ်မီး **Lines (သဵၼ်ႈ)** 4 သဵၼ်ႈ (Top, Bottom, Left, Right) ၼၼ်ႉၶႃႈ။

* **Top/Left Anchor:** တေႁဵတ်းႁႂ်ႈ Object ၼၼ်ႉ **"ၵွင်ႉ"** ဝႆႉတၢႆ (Fixed distance) တင်းၶွပ်ႇၽၢႆႇၼိူဝ် လႄႈ ၽၢႆႇသၢႆႉတႃႇသေႇ။
* **Right/Bottom Anchor:** သင်ဝႃႈႁဝ်းတဵၵ်း (Click) လိူၵ်ႈ **ၵွင်ႉ** သဵၼ်ႈ (Lines) ၸိူဝ်းၼႆႉ၊ Object ၼၼ်ႉတေ **Stretch** (ယဵတ်ႈ) ဢမ်ႇၼၼ် **Resize** (ယႂ်ႇ) ၸွမ်းၵမ်းလဵဝ် မိူဝ်ႈ User လၢၵ်ႈ Window ႁႂ်ႈယႂ်ႇမႃးၶႃႈ။



### **2. Practical Example: Building the Student ID Template**
တွၼ်ႈတႃႇသၢင်ႈ ID Card, ႁဝ်းတေၸႂ်ႉ **AnchorPane သွင်ၸၼ်ႉ** ၶႃႈ:

1.  **Main AnchorPane (The Background):** ပဵၼ်ပိုၼ်ႉလင်ၶွင် App တင်းသဵင်ႈ။
2.  **Card AnchorPane (The ID Card):** လၢၵ်ႈ `AnchorPane` ထႅင်ႈဢၼ်ၼိုင်ႈ ဝၢင်းသႂ်ႇၼႂ်း Main AnchorPane။
    * မၵ်းမၼ်ႈ Background Color ပဵၼ်သီၶၢဝ် (White)။
    * **The Constraint:** **"ၵွင်ႉ"** (Anchor) Card ၼႆႉဝႆႉၽၢႆႇ **Top** လႄႈ **Right** ႁႂ်ႈမၼ်းယူႇၸဵင်ႇၶႂႃၼိူဝ်တႃႇသေႇ ဢမ်ႇဝႃႈ Window တေယႂ်ႇၵႃႈႁိုင်ၵေႃႈယဝ်ႉ။



### **3. Absolute Positioning vs. Responsive Layout**
* **Absolute Positioning:** Object ၼၼ်ႉတေယူႇဝႆႉတီႈၵဝ်ႇ (မိူၼ်ၼင်ႇ x=10, y=10)။
* **Responsive (Anchor Strategy):** Object ၼၼ်ႉတေတူင်ႉၼိုင် (React) ၸွမ်း Window။ ၼႆႉပဵၼ်လၢႆး Professional Apps ၶဝ်ၸႂ်ႉတိုဝ်း တႃႇႁႂ်ႈ App တူၺ်းလီ လႆႈၵူႈ Screen size ၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **AnchorPane:** ပဵၼ် Container ဢၼ်ၸႂ်ႉ **Anchors** တႃႇၸတ်းၵၢၼ် Child nodes။
* **Constraints:** ပဵၼ်ပိူင် (Rules) (Top, Bottom, Left, Right) ဢၼ်တေသင်ႇႁႂ်ႈ Object **ၵွင်ႉ** ဝႆႉတီႈလႂ်။
* **Responsive:** ၼမ်ႉၵတ်ႉၶွင် UI ဢၼ်ၸၢင်ႈလႅၵ်ႈလၢႆႈၸွမ်း မိူဝ်ႈ User **Resizes** Window ၶႃႈ။
