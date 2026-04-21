## **Lesson 19: Actions and Transitions (သၢႆလႅၼ်ႈ လႄႈ ၵၢၼ်တူင်ႉၼိုင်)**

### **1. Defining Actions (ၵၢၼ်သၢင်ႈသၢႆလႅၼ်ႈ)**
ၼႂ်း **NavGraph Editor** ၼၼ်ႉ ႁဝ်းတေႁၼ် Fragment တင်းမူတ်း ဝၢင်းဝႆႉယူႇၶႃႈ။ **Action** ၼႆႉ ပဵၼ် "သၢႆလႅၼ်ႈ" (Arrow) ဢၼ်ႁဝ်းလၢၵ်ႈ တေႃႇၵၼ်ၼၼ်ႉၶႃႈ။
* **လွင်ႈလီ:** ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code တႃႇပိုတ်ႇ Activity မိူၼ်ၵဝ်ႇ။ ႁဝ်းၵူၺ်းလူဝ်ႇသင်ႇဝႃႈ "ၸႂ်ႉ Action ID ၼႆႉသေ ၵႂႃႇၼႃႈတေႃႇၵႂႃႇ" ၼႆၵေႃႈယဝ်ႉယဝ်ႉၶႃႈ။
* **Global Actions:** သင်ႁဝ်းမီးၼႃႈၸေႃး "Settings" ဢၼ်ၶႂ်ႈႁႂ်ႈပိုတ်ႇလႆႈ တႂ်ႈၵူႈၼႃႈၸိုင် ႁဝ်းၸၢင်ႈသၢင်ႈ Global Action ဢၼ်ၵွင်ႉၸူးမၼ်းလႆႈၶႃႈ။



---

### **2. Animations (ၵၢၼ်သႂ်ႇႁၢင်ႈတူင်ႉၼိုင်)**
တႅၼ်းတၢင် ၵၢၼ်လႅၵ်ႈၼႃႈၸေႃး ႁႅင်ႈႁႅင်ႈၼၼ်ႉ ႁဝ်းၸၢင်ႈသႂ်ႇ **Animations** တႃႇႁႂ်ႈ App ႁဝ်း Smooth ၶိုၼ်ႈမႃးၶႃႈ။
* **Enter Anim:** ႁၢင်ႈတူင်ႉၼိုင် မိူဝ်ႈၼႃႈၸေႃးမႂ်ႇ "ၶဝ်ႈ" မႃး။
* **Exit Anim:** ႁၢင်ႈတူင်ႉၼိုင် မိူဝ်ႈၼႃႈၸေႃးၵဝ်ႇ "ဢွၵ်ႇ" ၵႂႃႇ။
* **Pop Enter/Exit:** ႁၢင်ႈတူင်ႉၼိုင် မိူဝ်ႈႁဝ်းတဵၵ်း "Back" (ပွၵ်ႈၶိုၼ်း) ၶႃႈ။
> **လွၵ်းလၢႆး:** ႁဝ်းၸၢင်ႈလိူၵ်ႈသႂ်ႇလႆႈငၢႆႈငၢႆႈ ၼႂ်း **Animations Block** ၽၢႆႇၶႂႃ ၶွင် NavGraph Editor ၶႃႈ။ (မိူၼ်ၼင်ႇ: `slide_in_right`, `fade_out`)။

---

### **3. The Backstack (ၵၢၼ်ၵုမ်းထိင်းပွၵ်ႈၶိုၼ်း)**
**Backstack** ၼႆႉ မိူၼ်ၼင်ႇ "သွၼ်ႉဢၢင်ႇဝၢၼ်ႇ" ၶႃႈ။ မိူဝ်ႈႁဝ်းပိုတ်ႇၼႃႈၸေႃးမႂ်ႇ Android တေဢဝ်ၼႃႈၸေႃးၼၼ်ႉ ဝၢင်းသွၼ်ႉဝႆႉ ၽၢႆႇၼိူဝ်ၶႃႈ။
* **Auto-handling:** Navigation Component တေၸွႆးႁပ်ႉၵၢၼ်တဵၵ်းတုမ်ႇ **"Back"** ႁင်းၵွႆးၶႃႈ။ မၼ်းတေ "Pop" (ထွၼ်ဢဝ်) ၼႃႈၸေႃးၼိူဝ်သုတ်းပႅတ်ႉယဝ်ႉ ၼႄၼႃႈၸေႃး ၽၢႆႇတႂ်ႈမၼ်းၶိုၼ်းၶႃႈ။
* **popUpTo:** ၵႆႉမီးငဝ်းလၢႆး ဢၼ်ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈၵူၼ်းၸႂ်ႉ ပွၵ်ႈၶိုၼ်းၼႃႈၵဝ်ႇ (မိူၼ်ၼင်ႇ: ပေႃး Login ယဝ်ႉ ဢမ်ႇၶႂ်ႈႁႂ်ႈပွၵ်ႈၵႂႃႇၼႃႈ Login ၶိုၼ်း) ၶႃႈ။ ႁဝ်းၸၢင်ႈၸႂ်ႉ `popUpTo` လႄႈ `popUpToInclusive` တႃႇ "လၢင်ႉ" (Clear) ၼႃႈၸေႃးၵဝ်ႇပႅတ်ႉၶႃႈ။



---

### **4. တူဝ်ယၢင်ႇ Code XML (Actions ၼႂ်း NavGraph):**
```xml
<fragment
    android:id="@+id/homeFragment"
    android:name="com.tmk.HomeFragment"
    android:label="Home">
    
    <action
        android:id="@+id/action_home_to_quiz"
        app:destination="@id/quizFragment"
        app:enterAnim="@anim/slide_in_right"
        app:exitAnim="@anim/slide_out_left"
        app:popEnterAnim="@anim/slide_in_left"
        app:popExitAnim="@anim/slide_out_right" />
</fragment>
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'Animations ဢၼ်လီသုတ်း ပဵၼ် Animations ဢၼ်ၵူၼ်းၸႂ်ႉဢမ်ႇၵိုင်ႉၵၢင်ႉတူၵ်းၸႂ်ၶႃႈ။'
ၸၢမ်းသႂ်ႇ Slide ဢမ်ႇၼၼ် Fade ပၢၼ်ၵၢင်ၶႃႈ။ ထႅင်ႈဢၼ်ၼိုင်ႈ ပွင်ႇၸႂ်ဝႃႈ `popUpTo` လမ်ႇလွင်ႈၼႃႇ တႃႇႁဵတ်း App ဢၼ်မီးလွင်ႈပူတ်းၽေး မိူၼ်ၼင်ႇၵၢၼ် Login ၼၼ်ႉၶႃႈ။