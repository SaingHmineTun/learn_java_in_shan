## **Lesson 11: Working with Resources (Dimens & Colors)**

### **1. Hardcoding vs. Referencing**
မိူဝ်ႈႁဝ်းတႅမ်ႈ XML ႁဝ်းၵႆႉတႅမ်ႈသႂ်ႇ "24dp" ဢမ်ႇၼၼ် "#FF0000" ၵမ်းလဵဝ်ၼႂ်း Layout ၶႃႈ။ လၢႆးၼႆႉႁွင်ႉဝႃႈ **Hardcoding** ၼႆၶႃႈ။
* **ပၼ်ႁႃ:** သင်ႁဝ်းမီးၼႃႈၸေႃး 50 ဢၼ် ယဝ်ႉၶႂ်ႈမႄးသီ Red ႁႂ်ႈပဵၼ်သီ Blue တင်းမူတ်းၼႆ ႁဝ်းလူဝ်ႇလႆႈၵႂႃႇမႄး 50 တီႈၶႃႈ။
* **လၢႆးၵႄႈ (Referencing):** ႁဝ်းသိမ်းသီဝႆႉၼႂ်းၾၢႆႇလဵဝ်ၵၼ် ယဝ်ႉၸင်ႇ "ႁွင်ႉၸႂ်ႉ" (Refer) ဢဝ်ၶႃႈ။ ပေႃးမႄးတီႈလဵဝ်၊ မၼ်းတေလႅၵ်ႈလၢႆႈပၼ်တင်း App ၶႃႈ။

---

### **2. colors.xml: Defining a Brand Palette (ၵၢၼ်တင်ႈသီ Brand)**
ၼႂ်း Android Studio ၵႂႃႇတီႈ `res > values > colors.xml` ၶႃႈ။ တီႈၼႆႈႁဝ်းတေမႃးတင်ႈၸိုဝ်ႈသီ ဢၼ်ႁဝ်းတေၸႂ်ႉၼႂ်း App ၶႃႈ။
* **Primary:** သီပိူင်လူင် ၶွင် Brand (မိူၼ်ၼင်ႇ သီ Sapphire Blue)။
* **Secondary:** သီၸွႆႈ ဢၼ်ၸႂ်ႉတႃႇတုမ်ႇ ဢမ်ႇၼၼ် ႁၢင်ႈၾၢင်ဢွၼ်ႇ။
* **Surface/Background:** သီတွၼ်ႈတႃႇပိုၼ်ႉလင်။

#### **တူဝ်ယၢင်ႇ Code ၼႂ်း `colors.xml`:**
```xml
<resources>
    <color name="tmk_blue">#003366</color>
    <color name="tmk_gold">#FFD700</color>
    <color name="white">#FFFFFF</color>
</resources>
```
* **လၢႆးၸႂ်ႉၼႂ်း XML Layout:** `android:background="@color/tmk_blue"`

---

### **3. dimens.xml: Consistent Spacing (ၵၢၼ်ၵုမ်းထိင်း တၢင်းယႂ်ႇ လႄႈ ယၢၼ်ၵၼ်)**
ပၼ်ႁႃယႂ်ႇလူင်ထႅင်ႈဢၼ်ၼိုင်ႈၵေႃႈ ပဵၼ်လွင်ႈ Margin လႄႈ Padding ဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။ ႁဝ်းၸၢင်ႈၸႂ်ႉ `dimens.xml` တႃႇၵုမ်းထိင်းၶႃႈ။
* သင်ႁဝ်းတင်ႈဝႆႉဝႃႈ `standard_padding` ပဵၼ် `16dp` ၼႆ ႁဝ်းၸၢင်ႈၸႂ်ႉ မိူၼ်ၵၼ်တင်း App ၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code ၼႂ်း `dimens.xml`:**
```xml
<resources>
    <color name="padding_standard">16dp</color>
    <color name="text_size_header">24sp</color>
</resources>
```
* **လၢႆးၸႂ်ႉၼႂ်း XML Layout:** `android:padding="@dimen/padding_standard"`

---

### **4. Night Mode Support (ၵၢၼ်ႁဵတ်း Dark Mode)**
Android ၸွႆးႁႂ်ႈႁဝ်းႁဵတ်း App ဢၼ်လႅၵ်ႈသီလႆႈ မိူဝ်ႈၵူၼ်းၸႂ်ႉပိုတ်ႇ Dark Mode ၼႂ်းၾူၼ်းၶႃႈ။
* ႁဝ်းလူဝ်ႇသၢင်ႈ Folder မႂ်ႇၸိုဝ်ႈဝႃႈ `values-night` ၶႃႈ။
* ၼႂ်းၼၼ်ႉ ႁဝ်းတႅမ်ႈၾၢႆႇ `colors.xml` ဢၼ်မီး **ၸိုဝ်ႈသီမိူၼ်ၵၼ်** တင်း Folder `values` ၶႃႈ။
* **တူဝ်ယၢင်ႇ:** ၼႂ်း `values` သီ `background` ပဵၼ် #FFFFFF (သီၶၢဝ်)၊ ၵူၺ်းၵႃႈ ၼႂ်း `values-night` သီ `background` ပဵၼ် #000000 (သီလမ်)။ Android တေလိူၵ်ႈသီပၼ်ႁင်းၵွႆး ၸွမ်းၼင်ႇ Settings ၾူၼ်းၶႃႈ။



---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'ယႃႇပေၶၢတ်ႉ (Lazy) သေတႅမ်ႈသီသႂ်ႇၵမ်းလဵဝ်ၶႃႈ။' ၵႂႃႇတင်ႈဝႆႉၼႂ်း `colors.xml` တႃႇသေႇၶႃႈ။
မၼ်းတေၸွႆးႁႂ်ႈ App ႁဝ်း တူၺ်းၵတ်ႉၶႅၼ်ႇ (Professional) လႄႈ မိူဝ်ႈႁဝ်းၶႂ်ႈမႄး Brand Color ၼႂ်းဝၼ်းၼႃႈၼၼ်ႉ မၼ်းတေငၢႆႈတႄႉတႄႉၶႃႈ။"