## **Lesson 20: Using Custom Fonts (Shan & Google Fonts)**

တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းၼႄလိၵ်ႈတႆးလႆႈႁၢင်ႈလီ လႄႈ မိူၼ်ၵၼ်ၵူႈတီႈၼၼ်ႉ ႁဝ်းတေလႆႈ "ၾင်" (Embed) ၾၢႆႇ Font ဝႆႉၼႂ်း Project ႁဝ်းၶႃႈ။

### **1. Adding Fonts to Resources**
ဢွၼ်တၢင်းသုတ်း ၶူးတေလႆႈဢဝ်ၾၢႆႇ Font (**.ttf** ဢမ်ႇၼၼ် **.otf**) မႃးဝၢင်းဝႆႉၼႂ်း Folder Resources ၶႃႈ။
* **Path:** `src/main/resources/fonts/NamKhone.ttf`

### **2. Registering Font in CSS**
ႁဝ်းတေၸႂ်ႉ **`@font-face`** ၼႂ်း CSS တွၼ်ႈတႃႇႁွင်ႉ Font ၼၼ်ႉမႃးၸႂ်ႉၼႂ်း App ၶႃႈ။

**ၼႂ်း style.css:**
```css
/* 1. လူတ်ႇ Font တႆးမႃးဝႆႉၼႂ်း App */
@font-face {
    font-family: 'NamKhone';
    src: url('../fonts/NamKhone.ttf');
}

/* 2. ၸႂ်ႉ Font ၼၼ်ႉတင်း Label ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း */
#lblCardName {
    -fx-font-family: 'NamKhone';
    -fx-font-size: 22px;
}
```


### **3. Loading Font via Java (The Safe Way)**
မၢင်ပွၵ်ႈ CSS ၸၢင်ႈမီးပၼ်ႁႃလူတ်ႇ Font ဢမ်ႇလႆႈ (မိူၼ်ၼင်ႇ Path ၽိတ်း)။ ႁဝ်းၸၢင်ႈလူတ်ႇ Font ၼႂ်း Java Code တွၼ်ႈတႃႇမၵ်းမၼ်ႈ (Confirm) ဝႃႈမၼ်းတေၸႂ်ႉလႆႈတႄႉၶႃႈ။

**ၼႂ်း IdController.java:**
```java
public void initialize() {
    // လူတ်ႇ Font တႆးတီႈ Resources (Size ၼႆႉမၵ်းမၼ်ႈဝႆႉၵေႃႈလႆႈ၊ ႁဝ်းတေၵႂႃႇမႄးၼႂ်း CSS ထႅင်ႈ)
    Font shanFont = Font.loadFont(getClass().getResourceAsStream("/fonts/NamKhone.ttf"), 14);
    
    if (shanFont == null) {
        System.out.println("Font not found!");
    }
}
```

### **4. Using Google Fonts (Modern English Look)**
သင်ႁဝ်းၶႂ်ႈလႆႈ Font လိၵ်ႈဢင်းၵိတ်ႉ ဢၼ်ႁၢင်ႈလီၼႆၸိုင် (မိူၼ်ၼင်ႇ Font **Roboto** ဢမ်ႇၼၼ် **Poppins**):
* လူတ်ႇဢဝ်တီႈ [fonts.google.com](https://fonts.google.com/)။
* ႁဵတ်းၸွမ်းၶၵ်ႉတွၼ်ႈၽၢႆႇၼိူဝ်ၼၼ်ႉ မိူၼ်ၵၼ်တင်း Font တႆးၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Custom Fonts:** ၸွႆႈႁႂ်ႈ App ၼႄလိၵ်ႈတႆးလႆႈ (Standardize) တီႈ Computer ဢမ်ႇဝႃႈၶဝ်တေမီး Font ၼႂ်း Windows ႁိုဝ်ဢမ်ႇမီးၵေႃႈယဝ်ႉ။
* **@font-face:** လၢႆးႁွင်ႉ Font ၼႂ်း CSS တူဝ်လဵဝ် ၸႂ်ႉလႆႈတင်း App။
* **Font.loadFont:** လၢႆးလူတ်ႇ Font ၼႂ်း Java ႁႂ်ႈၼႃႈမၼ်ႈဝႃႈ Font ၼၼ်ႉလူတ်ႇလႆႈတႄႉ။