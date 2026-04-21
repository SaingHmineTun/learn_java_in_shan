## **Lesson 18: The Navigation Component Setup**

### **1. The Navigation Graph (NavGraph)**
**NavGraph** ၼႆႉ ပဵၼ်ၾၢႆႇ XML ဢၼ်မီးၼႃႈၸေႃး (Editor) တႃႇႁႂ်ႈႁဝ်းႁၼ် "ႁၢင်ႈၾၢင်" ၵၢၼ်လႅၼ်ႈၶွင် App တင်းမူတ်းၶႃႈ။
* မၼ်းတေၼႄ Fragment တင်းမူတ်း ဢၼ်ႁဝ်းမီး လႄႈ "သၢႆလႅၼ်ႈ" (Actions) ဢၼ်ၵွင်ႉၵၢႆႇၵၼ်ဝႆႉၼၼ်ႉၶႃႈ။
* ႁဝ်းၸၢင်ႈလၢၵ်ႈ (Drag and Drop) သၢႆလႅၼ်ႈ တေႃႇၵၼ်လႆႈငၢႆႈငၢႆႈ ၼႂ်း **Navigation Editor** ၶႃႈ။



---

### **2. NavHostFragment (တီႈဝၢင်း Fragment)**
မိူဝ်ႈႁဝ်းမီးႁၢင်ႈ (Fragments) ယဝ်ႉ ႁဝ်းလူဝ်ႇမီး "ၵွၵ်ႉႁၢင်ႈ" ဢၼ်တေပဵၼ်တီႈလႅၵ်ႈလၢႆႈ Fragment ၸိူဝ်းၼၼ်ႉၶႃႈ။ 
ႁဝ်းတေၸႂ်ႉ **`FragmentContainerView`** ၼႂ်း `activity_main.xml` သေ တင်ႈမၼ်းပဵၼ် **NavHostFragment** ၶႃႈ။
* မၼ်းတေပဵၼ် "ၼႃႈတၢင်ႇ" (Window) ဢၼ်တေၼႄ Fragment ဢၼ်ႁဝ်းလိူၵ်ႈဝႆႉၼၼ်ႉၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code ၼႂ်း `activity_main.xml`:**
```xml
<androidx.fragment.app.FragmentContainerView
    android:id="@+id/nav_host_fragment"
    android:name="androidx.navigation.fragment.NavHostFragment"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    app:defaultNavHost="true"
    app:navGraph="@navigation/nav_graph" />
```

---

### **3. NavController (တူဝ်ၵုမ်းၵၢၼ်လႅၼ်ႈ)**
သင် NavGraph ပဵၼ် "ႁၢင်ႈၽႅၼ်ႇလိၼ်" (Map) ၼႆၸိုင် **NavController** သမ်ႉပဵၼ် "ၵူၼ်းႁေႃႈလူတ်ႉ" ၶႃႈ။ 
မၼ်းပဵၼ်တူဝ်ဢၼ်တေဢဝ်ႁဝ်းၵႂႃႇ ၸွမ်းၼင်ႇသၢႆလႅၼ်ႈ ဢၼ်ႁဝ်းမတ်ႉဝႆႉၼၼ်ႉၶႃႈ။
* ႁဝ်းတေၸႂ်ႉၶေႃႈသင်ႇ **`findNavController().navigate()`** တႃႇပိုတ်ႇၼႃႈၸေႃးမႂ်ႇၶႃႈ။



#### **တူဝ်ယၢင်ႇ Code ၼႂ်း Fragment:**
```kotlin
binding.btnStartQuiz.setOnClickListener {
    // ၸႂ်ႉ ID ၶွင် Action ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼႂ်း NavGraph
    findNavController().navigate(R.id.action_homeFragment_to_quizFragment)
}
```

---

### **4. Navigation Dependencies (ၶိူင်ႈမိုဝ်းဢၼ်လူဝ်ႇသႂ်ႇ)**
တႃႇတေၸႂ်ႉ Navigation လႆႈၼၼ်ႉ ယႃႇလိုမ်းသႂ်ႇ Library ၸိူဝ်းၼႆႉၼႂ်း `build.gradle` ၼႃၶႃႈ:
* `androidx.navigation:navigation-fragment-ktx`
* `androidx.navigation:navigation-ui-ktx`

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'မိူဝ်ႈၸႂ်ႉ Navigation Editor ၼၼ်ႉ ႁႂ်ႈၶဝ်တူၺ်းတီႈ **'Start Destination'** (ႁၢင်ႈႁိူၼ်းဢွၼ်ႇ) လီလီၶႃႈ။'
မၼ်းပဵၼ် Fragment ႁူဝ်တႄႇ ဢၼ်တေပိုတ်ႇၶိုၼ်ႈမႃး မိူဝ်ႈ App တႄႇႁဵတ်းၵၢၼ်ၶႃႈ။ သင်ဢမ်ႇတင်ႈဝႆႉၼႆ App တေဢမ်ႇႁူႉဝႃႈ တေၼႄၼႃႈလႂ်ၵွၼ်ႇ ၼႆၶႃႈ။