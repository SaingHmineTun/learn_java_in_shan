## **Lesson 15: Introduction to State Drawables (ၵၢၼ်ၸတ်ႉၵၢၼ်သီၸွမ်းငဝ်းလၢႆး)**

### **1. Selectables (ၵၢၼ်လႅၵ်ႈသီမိူဝ်ႈတဵၵ်း)**
မိူဝ်ႈႁဝ်းတဵၵ်းတုမ်ႇ (Button) ၼိုင်ႈဢၼ်ၼၼ်ႉ သင်သီမၼ်းဢမ်ႇလႅၵ်ႈလၢႆႈသင်ၼႆ ၵူၼ်းၸႂ်ႉတေဢမ်ႇႁူႉဝႃႈ ၶဝ်တဵၵ်းၺႃးယဝ်ႉႁိုဝ် ၼႆၶႃႈ။ ႁဝ်းၸႂ်ႉ **`<selector>`** ၼႂ်း XML တႃႇၵႄႈလွင်ႈၼႆႉၶႃႈ။
* **State Pressed:** သီဢၼ်တေၼႄ မိူဝ်ႈၵူၼ်းၸႂ်ႉတိုၵ်ႉ "တဵၵ်း" ဝႆႉယူႇ။
* **Default State:** သီၵဝ်ႇ မိူဝ်ႈဢမ်ႇပႆႇႁဵတ်းသင်။

#### **တူဝ်ယၢင်ႇ Code ၼႂ်း `res/drawable/button_selector.xml`:**
```xml
<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:state_pressed="true" android:drawable="@color/tmk_gold" />
    
    <item android:drawable="@color/tmk_blue" />
</selector>
```
* **လၢႆးၸႂ်ႉ:** ဢဝ်ၵႂႃႇသႂ်ႇတီႈ `android:background="@drawable/button_selector"` ၶႃႈ။

---

### **2. Enabled/Disabled States (ၵၢၼ်ပိတ်း/ပိုတ်ႇ ၵၢၼ်ႁဵတ်းၵၢၼ်)**
ၵႆႉမီးငဝ်းလၢႆး ဢၼ်ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈၵူၼ်းၸႂ်ႉတဵၵ်းတုမ်ႇ (မိူၼ်ၼင်ႇ: ပႆႇသႂ်ႇ Password တဵမ်ထူၼ်ႈ)။
* **Enabled (true):** တုမ်ႇႁဵတ်းၵၢၼ်လႆႈ၊ သီႁၢင်ႈလီ။
* **Disabled (false):** တုမ်ႇတဵၵ်းဢမ်ႇလႆႈ၊ သီတေပဵၼ် "Grayed Out" (သီထဝ်ႇ) တႃႇၼႄဝႃႈ တိုၵ်ႉၵိုတ်းဝႆႉယူႇၶႃႈ။



---

### **3. Ripple Effects (ၵၢၼ်သႂ်ႇငဝ်းၼမ်ႉၽႅၼ်ႇ)**
တွၼ်ႈတႃႇ Android ပၢၼ်မႂ်ႇၼႆႉ ၵၢၼ်လႅၵ်ႈသီလၢႆလၢႆၼၼ်ႉ မၼ်းတူၺ်းဢမ်ႇၶႅမ်ႉ (Smooth) ၶႃႈ။ Google ၸင်ႇသၢင်ႈ **Ripple Effect** (ႁၢင်ႈၾၢင်မိူၼ်ၼမ်ႉတူၵ်းသႂ်ႇသေ လႅၼ်ႈဢွၵ်ႇၵႂႃႇ) ပၼ်ႁဝ်းၸႂ်ႉယဝ်ႉၶႃႈ။
* ႁဝ်းၸၢင်ႈၸႂ်ႉ **`?attr/selectableItemBackground`** တႃႇသႂ်ႇ Ripple ၼိူဝ် Views လၢႆလၢႆပိူင်ၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code ၼႂ်း XML:**
```xml
<LinearLayout
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:clickable="true"
    android:focusable="true"
    android:background="?attr/selectableItemBackground">
    
    </LinearLayout>
```

---

### **4. State List Color (ၵၢၼ်လႅၵ်ႈသီတူဝ်လိၵ်ႈ)**
ဢမ်ႇၸႂ်ဝႃႈ Background ၵူၺ်း ၸႂ်ႉလႆႈ State ၶႃႈ။ သီတူဝ်လိၵ်ႈ (TextColor) ၵေႃႈ ႁဝ်းၸၢင်ႈ ႁႂ်ႈမၼ်းလႅၵ်ႈၸွမ်းငဝ်းလၢႆးလႆႈၶႃႈ။ 
မိူၼ်ၼင်ႇ မိူဝ်ႈတဵၵ်းတုမ်ႇ ႁႂ်ႈလိၵ်ႈလႅၵ်ႈပဵၼ်သီလမ်၊ မိူဝ်ႈယူႇလၢႆလၢႆ ႁႂ်ႈပဵၼ်သီၶၢဝ် ၼႆၶႃႈ။

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
ၸၢမ်းသႂ်ႇ `android:state_enabled="false"` တူၺ်းသေ တူၺ်းႁၢင်ႈမၼ်းၼႂ်း Preview ၶႃႈ။
မၼ်းတေၸွႆးႁႂ်ႈၶဝ် ပွင်ႇၸႂ်လွင်ႈၵၢၼ်ၵုမ်းထိင်း "ငဝ်းလၢႆး" ၶွင် UI လႆႈလီလိူဝ်ၶႃႈ။