## **Lesson 15: Working with ImageView (Student Photo Setup)**

**ImageView** ပဵၼ် Node ဢၼ်မီးၼႃႈၵၢၼ် "ၼႄႁၢင်ႈ" (Displaying Images) ၶႃႈ။ 
ၼႂ်း JavaFX, `ImageView` တေလႆႈၸႂ်ႉ **`Image`** (Object) တႃႇမႃးၼႄၼိူဝ်မၼ်းထႅင်ႈတွၼ်ႈၼိုင်ႈၶႃႈ။

### **1. Setup in Scene Builder**
မိူဝ်ႈႁဝ်းလၢၵ်ႈ `ImageView` ဝၢင်းသႂ်ႇၼႂ်း ID Card ယဝ်ႉ၊ ႁဝ်းတေလႆႈမႄး Settings ၸိူဝ်းၼႆႉၶႃႈ:
* **Preserve Ratio:** (လွင်ႈယႂ်ႇသုတ်း) တဵၵ်းလိူၵ်ႈဝႆႉ တွၼ်ႈတႃႇႁႂ်ႈႁၢင်ႈလုၵ်ႈႁဵၼ်း **ဢမ်ႇလူႉ** (Distorted) မိူဝ်ႈႁဝ်းမႄး Size မၼ်းၶႃႈ။
* **Fit Width / Fit Height:** မၵ်းမၼ်ႈၶွင်ယႂ်ႇ ၶႅပ်းႁၢင်ႈ (မိူၼ်ၼင်ႇ 100x100) ႁႂ်ႈမၼ်းဢၢပ်ႈၵၼ်တင်း Card ႁဝ်းၶႃႈ။
* **fx:id:** တင်ႈၸိုဝ်ႈဝႃႈ `imgStudent` တွၼ်ႈတႃႇႁွင်ႉၸႂ်ႉၼႂ်း Java ၶႃႈ။



### **2. Loading Image from Code (Java)**
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈႁႂ်ႈ App ႁဝ်းလူတ်ႇႁၢင်ႈ Default (မိူၼ်ၼင်ႇႁၢင်ႈၵူၼ်းပဝ်ႇๆ) မႃးၼႄဝႆႉဢွၼ်တၢင်း။

#### **IdController.java**
```java
@FXML
private ImageView imgStudent;

// Method တွၼ်ႈတႃႇလႅၵ်ႈလၢႆႈႁၢင်ႈလုၵ်ႈႁဵၼ်း
public void setStudentImage(String imagePath) {
    // 1. သၢင်ႈ Image Object (လူတ်ႇဢဝ်တီႈ Resources)
    Image image = new Image(getClass().getResourceAsStream(imagePath));
    
    // 2. ဢဝ် Image သႂ်ႇပၼ် ImageView
    imgStudent.setImage(image);
}
```



### **3. Sample FXML Code for ImageView**
ၼႂ်းၾၢႆႇ FXML ၶူး၊ `ImageView` တေမီးႁၢင်ႈၾၢင်ၼင်ႇၼႆၶႃႈ:

```xml
<ImageView fx:id="imgStudent" 
           fitHeight="120.0" 
           fitWidth="100.0" 
           pickOnBounds="true" 
           preserveRatio="true">
   <image>
      <Image url="@../images/user_default.png" />
   </image>
</ImageView>
```

### **4. Best Practices for Images (Assets)**
တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းလူတ်ႇႁၢင်ႈလႆႈၼၼ်ႉ ႁဝ်းတေလႆႈဝၢင်းၾၢႆႇႁၢင်ႈဝႆႉၼင်ႇၼႆၶႃႈ:
* ဝၢင်းၾၢႆႇႁၢင်ႈဝႆႉၼႂ်း Folder **`src/main/resources/images/`**။
* ၸႂ်ႉ **PNG** တွၼ်ႈတႃႇႁၢင်ႈ Icons ဢၼ်မီး Background ပဝ်ႇ။
* ၸႂ်ႉ **JPG** တွၼ်ႈတႃႇႁၢင်ႈလုၵ်ႈႁဵၼ်း ဢၼ်မီးသီၼမ်ၼႃႇၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **ImageView:** ပဵၼ် "ၵူတ်ႇ" တႃႇၼႄႁၢင်ႈၼိူဝ် UI။
* **Preserve Ratio:** ၸွႆႈႁႂ်ႈႁၢင်ႈဢမ်ႇယူႉ မိူဝ်ႈမႄး Size။
* **Image Object:** ပဵၼ်တူဝ် "လူတ်ႇ" ၾၢႆႇႁၢင်ႈတႄႉတႄႉ တီႈ Resources မႃးသႂ်ႇၼႂ်း ImageView။