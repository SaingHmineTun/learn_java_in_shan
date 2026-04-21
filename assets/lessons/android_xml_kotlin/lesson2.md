## **Lesson 3: Introduction to XML Layouts (ပိုၼ်ႉထၢၼ်လွင်ႈ XML Layout)**

### **1. Declarative UI (ၵၢၼ်ၸႅၵ်ႇ Look လႄႈ Behavior)**
တႃႇတေတႅမ်ႈ Android App ၼိုင်ႈဢၼ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႅၵ်ႇ ၵၢၼ်ႁဵတ်းၵၢၼ်မၼ်း ပဵၼ် 2 ပုၼ်ႈၶႃႈ:
* **XML (Look):** ၸႂ်ႉတႃႇ "ဢွၵ်ႇပိူင်" ၼႃႈၸေႃး။ မၼ်းတေၼႄဝႃႈ တုမ်ႇ (Button) မီးတီႈလႂ်၊ လိၵ်ႈ (Text) မီးသီသင်။
* **Kotlin (Behavior):** ၸႂ်ႉတႃႇ "ၵုမ်းထိင်း" လွင်ႈတူင်ႉၼိုင်။ မိူၼ်ၼင်ႇ သင်တဵၵ်းတုမ်ႇၼႆႉယဝ်ႉ ႁႂ်ႈမၼ်းၵႂႃႇၼႃႈလႂ် ၼႆၶႃႈ။

---

### **2. Views & ViewGroups (ပိူင်သၢင်ႈ UI Tree)**
ၼႂ်းၼႃႈၸေႃး Android ၼိုင်ႈဢၼ်ၼၼ်ႉ ႁဝ်းၸႅၵ်ႇဝႆႉ ၾၢင်ႁၢင်ႈပဵၼ် 2 ပိူင်လူင်ၶႃႈ:
* **Views:** ပဵၼ် "ၶိူင်ႈၸႂ်ႉ" ဢၼ်ၵူၼ်းၸႂ်ႉတေႁၼ် လႄႈ တဵၵ်းလႆႈ (မိူၼ်ၼင်ႇ: TextView, Button, ImageView)။
* **ViewGroups (Layouts):** ပဵၼ် "တီႈသိမ်း" ဢၼ်ဢဝ် Views တၢင်းၼမ်မႃးၸတ်ႉဝႆႉ (မိူၼ်ၼင်ႇ: ConstraintLayout, LinearLayout)။



---

### **3. XML Attributes Example (တူဝ်ယၢင်ႇ Code)**
မႃးတူၺ်းလွၵ်းလၢႆးတႅမ်ႈ **TextView** (တူဝ်လိၵ်ႈ) လႄႈ **Button** (တုမ်ႇ) ၼႂ်း XML ၶႃႈ:

#### **တူဝ်ယၢင်ႇ TextView:**
```xml
<TextView
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="မႂ်ႇသုင်ၶႃႈ TMK"
    android:textSize="24sp"
    android:textColor="#003366"
    android:background="#FFD700" />
```

#### **တူဝ်ယၢင်ႇ Button:**
```xml
<Button
    android:layout_width="200dp"
    android:layout_height="60dp"
    android:text="တဵၵ်းတီႈၼႆႈ"
    android:backgroundTint="#003366" />
```

---

### **4. Units of Measurement (လွၵ်းလၢႆးၼပ်ႉဢၢၼ်ႇ dp လႄႈ sp)**
တီႈၼႂ်း Android ႁဝ်းဢမ်ႇၸႂ်ႉ Pixels (px) ၶႃႈ၊ ယွၼ်ႉဝႃႈၾူၼ်းၵူႈလုၵ်ႈ ၼႃႈၸေႃးယႂ်ႇလဵၵ်ႉ ဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။ ႁဝ်းၸႂ်ႉၼင်ႇ တီႈတႂ်ႈၼႆႉၶႃႈ:

* **dp (Density-independent Pixels):** ၸႂ်ႉတႃႇ "တၢင်းယႂ်ႇလဵၵ်ႉ" ၶွင် Views (မိူၼ်ၼင်ႇ တုမ်ႇယႂ်ႇ 100dp)။ မၼ်းတေႁဵတ်းႁႂ်ႈ ယူႇၼႂ်းၾူၼ်းလုၵ်ႈလႂ်ၵေႃႈ တၢင်းယႂ်ႇမၼ်းတေမိူၼ်ၵၼ်ၶႃႈ။
* **sp (Scale-independent Pixels):** ၸႂ်ႉတႃႇ "တူဝ်လိၵ်ႈ" (Text)။ မၼ်းမိူၼ်ၼင်ႇ dp ၼင်ႇၵဝ်ႇ၊ ၵူၺ်းၵႃႈ သင်ၵူၼ်းၸႂ်ႉၾူၼ်း ၵႂႃႇမႄး Font ၼႂ်း Settings ႁႂ်ႈယႂ်ႇၼႆ လိၵ်ႈၼႂ်း App ႁဝ်းၵေႃႈ တေယႂ်ႇၸွမ်းၶႃႈ။

---

### **5. Understanding Width & Height (ၵၢၼ်မႄးတၢင်းၵႂၢင်ႈလႄႈတၢင်းသုင်)**
တွၼ်ႈတႃႇ `layout_width` လႄႈ `layout_height` ၼၼ်ႉ ႁဝ်းမီးၶေႃႈၵႂၢမ်းလမ်ႇလွင်ႈ 2 ဢၼ်ၶႃႈ:
1.  **`match_parent`**: တႃႇႁႂ်ႈမၼ်း "ၵႂၢင်ႈမိူၼ်" ၼႃႈၸေႃး (ဢမ်ႇၼၼ် ၵႂၢင်ႈမိူၼ် ViewGroup ဢၼ်မၼ်းယူႇဝႆႉ)။
2.  **`wrap_content`**: တႃႇႁႂ်ႈမၼ်း "ၵႂၢင်ႈမိူၼ်တူဝ်လိၵ်ႈ" ဢမ်ႇၼၼ် မိူၼ်ႁၢင်ႈၾၢင် ဢၼ်မီးၼႂ်းမၼ်းၵူၺ်းၶႃႈ။

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
မိူဝ်ႈလႅၵ်ႈလၢႆႈ ၾၢင်ႁၢင်ႈၼႆႉ တူၺ်းတီႈ **Design Preview** ၼႂ်း Android Studio ၶႃႈ။ 
မိူဝ်ႈႁဝ်းမႄး `textSize` ဢမ်ႇၼၼ် `background` ၼၼ်ႉ ႁဝ်းတေႁၼ်မၼ်းလႅၵ်ႈလၢႆႈၵႂႃႇၵမ်းလဵဝ်၊ မၼ်းတေၸွႆးႁႂ်ႈႁဝ်း ပွင်ႇၸႂ်ငၢႆႈၶႃႈ။