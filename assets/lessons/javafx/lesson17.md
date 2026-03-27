## **Lesson 17: Introduction to JavaFX CSS**

JavaFX CSS တေမိူၼ်တင်း CSS တီႈႁဝ်းၸႂ်ႉၼႂ်း Web Development ဝႆႉယူႇ 90% ၶႃႈ။ 
ဢၼ်ပႅၵ်ႇပၵ်းၵၼ်ၵေႃႈပဵၼ် တီႈၼႃႈ Property ၼၼ်ႉ ႁဝ်းတေလႆႈသႂ်ႇ **`-fx-`** ဝႆႉတႃႇသေႇ (မိူၼ်ၼင်ႇ `-fx-background-color`) ၶႃႈ။

### **1. Inline Styles (တႅမ်ႈသႂ်ႇၵမ်းလဵဝ်)**
**Inline Style** ပဵၼ်ၵၢၼ်တႅမ်ႈ CSS သႂ်ႇဝႆႉၼႂ်း Node ၼၼ်ႉၵမ်းသိုဝ်ႈ။
* **လၢႆးႁဵတ်း:** ၼႂ်း Scene Builder, လိူၵ်ႈ Node ယဝ်ႉၵႂႃႇတီႈ **Properties > Style** သေတႅမ်ႈသႂ်ႇၶႃႈ။
* **တူဝ်ယၢင်ႇ:** `-fx-background-color: red; -fx-text-fill: white;`
* **Advantage:** မၼ်းဝႆး လႄႈ ၸွႆႈႁႂ်ႈႁၼ်ႁၢင်ႈမၼ်းၵမ်းလဵဝ် (Quick testing)။
* **Disadvantage:** ပေႃး App ႁဝ်းယႂ်ႇမႃး ႁဝ်းတေမႄးယၢပ်ႇ ၵွပ်ႈမၼ်းသုၵ်ႉယုင်ႈဝႆႉၼႂ်း FXML ၶႃႈ။



### **2. External CSS (ၸႂ်ႉၾၢႆႇၽၢႆႇၼွၵ်ႈ)**
ၼႆႉပဵၼ်လၢႆးဢၼ် **Professional** ၶဝ်ၸႂ်ႉၶႃႈ။ ႁဝ်းတေတႅမ်ႈၾၢႆႇမႂ်ႇဢၼ်မီး Extension ပဵၼ် **`.css`** (မိူၼ်ၼင်ႇ `style.css`) သေၵွင်ႉသႂ်ႇၼႂ်း FXML ၶႃႈ။

* **လၢႆးႁဵတ်း:**
    1. သၢင်ႈၾၢႆႇ `style.css` ဝႆႉၼႂ်း Folder `resources`။
    2. ၼႂ်း Scene Builder, ၵႂႃႇတီႈ **Preview > Scene Stylesheets > Add Stylesheet** သေလိူၵ်ႈၾၢႆႇၼၼ်ႉၶႃႈ။

**Example of `style.css`:**
```css
/* မၵ်းမၼ်ႈပၼ် Button တင်းသဵင်ႈၼႂ်း App */
.button {
    -fx-background-color: #3498db;
    -fx-text-fill: white;
    -fx-border-radius: 5px;
}

/* မၵ်းမၼ်ႈပၼ် ID Card Preview ႁဝ်း */
#cardTemplate {
    -fx-background-color: linear-gradient(to bottom, #ffffff, #f1f1f1);
    -fx-effect: dropshadow(three-pass-box, rgba(0,0,0,0.1), 10, 0, 0, 5);
}
```



---

### **3. Comparison: Inline vs. External**

| Features | Inline Style               | External CSS |
| :--- |:---------------------------| :--- |
| **Speed** | ဝႆးတွၼ်ႈတႃႇ Node လဵဝ်      | ဝႆးတွၼ်ႈတႃႇ App တင်းသဵင်ႈ |
| **Organization** | သုၵ်ႉယုင်ႈ (Messy)         | မီးပိူင် (Clean) |
| **Reusability** | ဢဝ်ၸႂ်ႉၶိုၼ်းဢမ်ႇလႆႈ       | ၸႂ်ႉၶိုၼ်းလႆႈၵူႈၼႃႈ (Reusable) |
| **Best For** | တူၺ်းႁၢင်ႈဝႆးဝႆး (Testing) | သၢင်ႈ App တႄႉ (Production) |

### **4. How to Apply ID & Class**
ၼႂ်း CSS ႁဝ်းၸၢင်ႈလိူၵ်ႈ (Select) Node လႆႈသွင်လၢႆး:
* **Style Class (`.my-button`):** ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ Buttons လၢႆလၢႆ ဢၼ် မီးႁၢင်ႈမိူၼ်ၵၼ်။
* **Style ID (`#my-button`):** ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈမႄး Node တူဝ်ၼၼ်ႉတူဝ်လဵဝ် (ID တေလႆႈမိူၼ်တင်း `fx:id`) ၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **JavaFX CSS:** ၸႂ်ႉ `-fx-` prefix တွၼ်ႈတႃႇ Property တႃႇသေႇ။
* **Inline:** တႅမ်ႈသႂ်ႇၼႂ်း Scene Builder ၵမ်းလဵဝ် (တႃႇ Test)။
* **External:** တႅမ်ႈၾၢႆႇ `.css` ၸႅၵ်ႇဢွၵ်ႇ (တႃႇ Professional App)။