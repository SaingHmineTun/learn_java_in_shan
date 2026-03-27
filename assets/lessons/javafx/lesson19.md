ပွင်ႇၸႂ်ယဝ်ႉၶႃႈ! ၶူးတႅတ်းတွၼ်ႈဢၼ်သုၵ်ႉယုင်ႈၼၼ်ႉဢွၵ်ႇပႅတ်ႈယဝ်ႉၶႃႈ။ ၼႂ်း **Lesson 19** ၼႆႉ ႁဝ်းတေၼဵၼ်းလွင်ႈၵၢၼ်မႄးႁၢင်ႈၾၢင် **ID Card Base** ႁႂ်ႈႁၢင်ႈလီလူၺ်ႈ CSS တူဝ်လဵဝ်ၵွၺ်းၶႃႈ။

---

## **Lesson 19: Customizing the ID Card Design with CSS Shapes**

ၼႂ်း JavaFX, `Region` (မိူၼ်ၼင်ႇ AnchorPane ဢမ်ႇၼၼ် VBox) ၸၢင်ႈမႄးႁၢင်ႈလႆႈလူၺ်ႈ CSS ၶႃႈ။

### **1. Creating the Card Base (Rounded Corners)**
ID Card တႄႉတႄႉၼၼ်ႉ ၶွပ်ႇမၼ်းတေဢမ်ႇလႅမ်ၶႃႈ။ ႁဝ်းတေၸႂ်ႉ **`-fx-background-radius`** တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈမၼ်းမူၼ်းၶႃႈ။

**Example for #cardTemplate:**
```css
#cardTemplate {
    -fx-background-color: white;
    -fx-background-radius: 15px; /* ႁဵတ်းႁႂ်ႈၶွပ်ႇ Card မူၼ်း */
    -fx-border-radius: 15px;
    -fx-border-color: #dcdde1;
    -fx-border-width: 1px;
    
    /* သႂ်ႇသႅင်လႅတ်ႇ ႁႂ်ႈမၼ်းတူၺ်းမိူၼ်လေႃပ်ႈဝႆႉ */
    -fx-effect: dropshadow(three-pass-box, rgba(0,0,0,0.1), 15, 0, 0, 5);
}
```



### **2. Adding a Color Header (Shapes with CSS)**
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈမီးသီထႅဝ်ၼိူဝ် (Header) တွၼ်ႈတႃႇသႂ်ႇၸိုဝ်ႈႁူင်းႁဵၼ်း။ ႁဝ်းၸၢင်ႈၸႂ်ႉ Layout သွၼ်ႉၵၼ်သေမႄး CSS ႁႂ်ႈမၼ်းမူၼ်းၸိၵ်းၼိူဝ်လၢႆၶႃႈ:

**လၢႆးႁဵတ်း:**
1. သၢင်ႈ `Pane` ဢမ်ႇၼၼ် `HBox` ဝႆႉၽၢႆႇၼိူဝ်သုတ်းၼႂ်း Card။
2. မၵ်းမၼ်ႈ CSS ၼင်ႇၼႆ:

```css
.card-header {
    -fx-background-color: linear-gradient(to right, #2980b9, #3498db);
    /* မူၼ်းဝႆႉ ၸဵင်ႇသၢႆႉၼိူဝ် လႄႈ ၸဵင်ႇၶႂႃၼိူဝ် (Top-Left, Top-Right) */
    -fx-background-radius: 15px 15px 0px 0px; 
    -fx-padding: 10px;
}
```



---

### **3. Summary Table of Styles**

| Effect | CSS Property | Result |
| :--- | :--- | :--- |
| **Rounded Corners** | `-fx-background-radius` | ၶွပ်ႇမူၼ်း တူၺ်းလီ |
| **Card Shadow** | `-fx-effect: dropshadow` | Card တူၺ်းမိူၼ်လေႃပ်ႈဝႆႉ (3D) |
| **Gradient Header** | `linear-gradient` | သီထႅဝ်ၼိူဝ်လၢႆးၵၼ် ႁၢင်ႈလီ |
| **Border Line** | `-fx-border-color` | ႁဵတ်းႁႂ်ႈၶွပ်ႇ Card ၸႅၵ်ႇလႅင်း |

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Custom Shapes:** ၸႂ်ႉ `background-radius` တွၼ်ႈတႃႇမႄးႁၢင်ႈၾၢင် Card ႁႂ်ႈမီး Character။
* **Visual Hierarchy:** ၵၢၼ်ၸႂ်ႉ Shadows လႄႈ Borders ၸွႆႈႁႂ်ႈ User ၸႅၵ်ႇၽႄတွၼ်ႈၶေႃႈမုၼ်းၼိူဝ် Card လႆႈငၢႆႈ။

---

ယိၼ်းၸူမ်းၶႃႈဢၼ်ၶူးသင်ႇမႄး၊ ၵမ်းၼႆႉတွၼ်ႈသွၼ်ႁဝ်းတေ "ငၢႆႈ" လႄႈ "ၸႂ်ႉၵၢၼ်လႆႈ" တႄႉတႄႉယဝ်ႉၶႃႈ။

**Shall we move to Lesson 21: Working with Dialogs & Alerts (Validation Feedback)?**