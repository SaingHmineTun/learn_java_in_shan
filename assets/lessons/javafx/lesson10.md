## **Lesson 10: FXML vs. Java Code (Design vs. Logic)**

တွၼ်ႈတႃႇတေႁဵတ်းႁႂ်ႈ App ႁဝ်းမႄးငၢႆႈ လႄႈ တူၺ်းလီၼၼ်ႉ JavaFX ၸႅၵ်ႇၼႃႈၵၢၼ်ဢွၵ်ႇပဵၼ် 2 တွၼ်ႈလူင်ၶႃႈ:

### **1. FXML: The "View" (Design)**
**FXML** ပဵၼ်ၾၢႆႇ XML ဢၼ်သိမ်း "ႁၢင်ႈၾၢင်" (User Interface) ၶွင် ID Card ႁဝ်းၶႃႈ။
* **မၼ်းတႅမ်ႈသင်ဝႆႉ?** မၼ်းတေမၵ်းမၼ်ႈဝႃႈ ID Card ႁဝ်းၵႂၢင်ႈၵႃႈႁိုင်၊ ႁၢင်ႈလုၵ်ႈႁဵၼ်းယူႇၽၢႆႇသၢႆႉ၊ ၸိုဝ်ႈယူႇၽၢႆႇၶႂႃ၊ သီ Card ပဵၼ်သီသင်။
* **တႅမ်ႈၼင်ႇႁိုဝ်?** ႁဝ်းတေၸႂ်ႉ **Scene Builder** လၢၵ်ႈဝၢင်း (Drag and Drop) ယဝ်ႉမၼ်းတေတႅမ်ႈ FXML ၼႆႉပၼ်ႁဝ်းႁင်းမၼ်းၶႃႈ။



### **2. Java Controller: The "Brain" (Logic)**
**Java Code** ဢၼ်မီးၼႂ်း Class Controller ၼၼ်ႉ ပဵၼ် "မၢၵ်ႇႁူဝ်ၸႂ်" ဢၼ်တေသင်ႇႁႂ်ႈ ID Card ႁဝ်းတူင်ႉၼိုင်လႆႈၶႃႈ။
* **မၼ်းတႅမ်ႈသင်ဝႆႉ?** မၼ်းတေမီး Logic မိူၼ်ၼင်ႇ: "ပေႃးတဵၵ်းတုမ်ႇ Generate ယဝ်ႉ၊ ႁႂ်ႈဢဝ်ၸိုဝ်ႈတီႈ TextField မႃးသႂ်ႇၼႂ်း Card ၼႆႉလႄႇ"။
* **တႅမ်ႈၼင်ႇႁိုဝ်?** ႁဝ်းတေလႆႈတႅမ်ႈ Code Java ႁင်းႁဝ်း ၼႂ်း IntelliJ IDEA ၶႃႈ။



---

### **3. Comparison (ၵၢၼ်ပႅၵ်ႇပၵ်းၵၼ်)**

| Features | FXML (Design)               | Java Code (Logic) |
| :--- |:----------------------------| :--- |
| **Role** | ၼႄႁၢင်ႈ (Look & Feel)       | ႁဵတ်းၵၢၼ် (Functionality) |
| **Tool** | Scene Builder               | IntelliJ IDEA |
| **Analogy** | ႁၢင်ႈၾၢင် (Body)            | မၢၵ်ႇႁူဝ်ၸႂ် (Brain) |
| **Example** | Background Color, Font Size | Math calculations, Button Clicks |

### **4. Why Not Just Use Java Code?**
သင်ဝႃႈႁဝ်းဢဝ်ၵူႈယၢင်ႇတႅမ်ႈဝႆႉၼႂ်း Java Code လၢႆလၢႆ:
* Code တေၼမ် လႄႈ သုၵ်ႉယုင်ႈၼႃႇ (Messy Code)။
* မိူဝ်ႈၶႂ်ႈမႄးသီ Card ဢမ်ႇၼၼ် မႄးဝၢင်း Position ႁဝ်းတေလႆႈႁႃ Code ၼမ်ၼႃႇ။
* **FXML** ၸွႆႈႁႂ်ႈႁဝ်းမႄး UI လႆႈဝႆးလူၺ်ႈဢမ်ႇတူင်ႉတႅၵ်ႇၸူး Logic ၶွင် App ၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Java Controller:** ပဵၼ် "တူဝ်သင်ႇၵၢၼ်" ႁႂ်ႈ UI တူင်ႉၼိုင်။
* **Separation of Concerns:** ၵၢၼ်ၸႅၵ်ႇၽႄ Design ဢွၵ်ႇတီႈ Logic ႁဵတ်းႁႂ်ႈ App ႁဝ်းမီးပိူင် (Standard Structure) ၶႃႈ။
