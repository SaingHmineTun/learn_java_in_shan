## **Lesson 18: Styling Buttons & TextFields**

ၼႂ်း JavaFX CSS, ႁဝ်းၸၢင်ႈမႄး Node ႁဝ်းႁႂ်ႈႁၢင်ႈလီလႆႈလူၺ်ႈ Property ၸိူဝ်းၼႆႉၶႃႈ:

### **1. Linear Gradients (ၵၢၼ်ၸႂ်ႉသီလၢႆဢၼ်)**
တႅၼ်းတွၼ်ႈ တေၸႂ်ႉသီလဵဝ် (Solid Color)၊ ႁဝ်းၸၢင်ႈၸႂ်ႉသီသွင်မဵဝ်း "ၶူၼ်း" ၵၼ် ႁႂ်ႈမၼ်းတူၺ်း Professional ၶိုၼ်ႈၶႃႈ။

**Example for Generate Button:**
```css
.button {
    /* လၢႆးသီတႄႇဢဝ် သီၾႃႉဢွၼ်ႇ တေႃႇ သီၾႃႉၵႄႇ */
    -fx-background-color: linear-gradient(to bottom, #3498db, #2980b9);
    -fx-text-fill: white;
    -fx-background-radius: 20px; /* ႁဵတ်းႁႂ်ႈၶွပ်ႇမၼ်း "မူၼ်း" */
    -fx-font-weight: bold;
}

/* မိူဝ်ႈ User ဢဝ် Mouse ဝႆႉၼိူဝ်ပုမ်ႇ (Hover) */
.button:hover {
    -fx-background-color: linear-gradient(to bottom, #2980b9, #2471a3);
}
```



### **2. Drop Shadows (သႅင်လႅတ်ႇ)**
ၵၢၼ်သႂ်ႇ Shadow တေႁဵတ်းႁႂ်ႈ Button ဢမ်ႇၼၼ် TextField ႁဝ်းတူၺ်းမိူၼ်မၼ်း "ဝိၼ်" (Float) ၶိုၼ်ႈမႃးဝႆႉၼိူဝ် Background ၶႃႈ။

**Example for Button Shadow:**
```css
.button {
    /* dropshadow(သတ်ႉသုၼ်ႇ, သီ, ၶၼၢတ်ႉသႅင်, Spread, X-offset, Y-offset) */
    -fx-effect: dropshadow(three-pass-box, rgba(0,0,0,0.2), 10, 0, 0, 4);
}
```

### **3. Styling TextFields (Input Box)**
TextField ဢၼ်မႃးၸွမ်း JavaFX ၼၼ်ႉ မၼ်းတေမီးၶွပ်ႇသီထဝ်ႈ ဢၼ်တူၺ်းယူဝ်း ၼႃႇ။ ႁဝ်းၸၢင်ႈမႄးမၼ်းႁႂ်ႈတူၺ်းလီၼင်ႇၼႆၶႃႈ:

```css
.text-field {
    -fx-background-color: #ffffff;
    -fx-border-color: #bdc3c7;
    -fx-border-radius: 5px;
    -fx-background-radius: 5px;
    -fx-padding: 8px; /* ႁဵတ်းႁႂ်ႈမီးတီႈပဝ်ႇၼႂ်း Box ၼမ်ၶိုၼ်ႈ */
}

/* မိူဝ်ႈ User တိုၵ်ႉတႅမ်ႈလိၵ်ႈယူႇ (Focused) */
.text-field:focused {
    -fx-border-color: #3498db;
    -fx-border-width: 2px; /* ႁဵတ်းႁႂ်ႈၶွပ်ႇသီၾႃႉဢွၵ်ႇမႃး */
}
```



---

### **4. How to apply in Scene Builder?**
1.  **Create File:** သၢင်ႈၾၢႆႇ `style.css` ဝႆႉၼႂ်း Resources။
2.  **Add Stylesheet:** ၼႂ်း Scene Builder, လိူၵ်ႈ **Root Node** (AnchorPane) > **Properties** > **Stylesheets** သေ Add ၾၢႆႇ CSS ၼၼ်ႉၶႃႈ။
3.  **Assign Class:** လိူၵ်ႈ Button ႁဝ်း > **Properties** > **Style Class** သေလိူၵ်ႈဢဝ် `.button` (ဢမ်ႇၼၼ် ၸိုဝ်ႈ Class ဢၼ်တင်ႈဝႆႉ) ၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **dropshadow:** ၸွႆႈႁႂ်ႈ UI ႁဝ်းမီးၼမ်ႉၼၵ်ႉ (Depth)။
* **-fx-background-radius:** ၸွႆႈႁႂ်ႈၶွပ်ႇ Nodes ႁဝ်းမူၼ်းလီ (Rounded corners)။