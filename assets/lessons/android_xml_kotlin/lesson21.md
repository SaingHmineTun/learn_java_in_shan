## **Lesson 21: Toolbars and Menus**

### **1. Material Toolbar (ၵၢၼ်သႂ်ႇႁူဝ် App)**
`Toolbar` ပဵၼ်တီႈဢၼ်ႁဝ်းၼႄၸိုဝ်ႈ App, တုမ်ႇပွၵ်ႈၶိုၼ်း (Back Button), လႄႈ တုမ်ႇလိူၵ်ႈလၢႆလၢႆပိူင်ၶႃႈ။ 
ၼႂ်း Material 3 ႁဝ်းၸႂ်ႉ `MaterialToolbar` တႃႇႁႂ်ႈမၼ်းႁၢင်ႈလီ လႄႈ ၸတ်ႉဝၢင်းငၢႆႈၶႃႈ။
* **လွင်ႈလီ:** ႁဝ်းၸၢင်ႈမႄးသီ, သႂ်ႇ Logo, ဢမ်ႇၼၼ် ပၼ်ႁၢင်ႈငဝ်း (Elevation) လႆႈၸွမ်းၼင်ႇၶႂ်ႈလႆႈၶႃႈ။



---

### **2. The Options Menu**
ၵႆႉမီးငဝ်းလၢႆး ဢၼ်ႁဝ်းမီးၶေႃႈလိူၵ်ႈၼမ် (မိူၼ်ၼင်ႇ: Settings, About, Logout) ၶႃႈ။
ႁဝ်းၸၢင်ႈဢဝ်ၶဝ်ၵႂႃႇသိမ်းဝႆႉၼႂ်း **Options Menu** ဢၼ်မီးႁၢင်ႈသၢမ်ယွတ်ႇ (Three Dots) ၽၢႆႇၶႂႃၼိူဝ်သုတ်းၶႃႈ။

* **လွၵ်းလၢႆးႁဵတ်း:**
    1. သၢင်ႈ Folder `res/menu`။
    2. သၢင်ႈၾၢႆႇ XML (မိူၼ်ၼင်ႇ `main_menu.xml`) သေ သႂ်ႇ `<item>` ၶဝ်ႈၵႂႃႇၶႃႈ။
    3. ၼႂ်း Fragment ႁဝ်းတေၸႂ်ႉ `addMenuProvider` တႃႇပိုတ်ႇၼႄ Menu ၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code ၼႂ်း `res/menu/main_menu.xml`:**
```xml
<menu xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto">
    <item
        android:id="@+id/settingsFragment"
        android:title="Settings"
        app:showAsAction="never" />
</menu>
```

---

### **3. Navigation UI (ၵၢၼ်ႁႂ်ႈ Toolbar တူင်ႉၼိုင်ၸွမ်း App)**
လွင်ႈၼႆႉ ၵတ်ႉၶႅၼ်ႇတႄႇတႄႇၶႃႈ။ ႁဝ်းၸၢင်ႈၵွင်ႉ **Toolbar** တေႃႇ **NavController** ၶႃႈ။
* **ၽွၼ်းလႆႈ:** မိူဝ်ႈႁဝ်းၶၢႆႉၼႃႈၸေႃး၊ ၸိုဝ်ႈ (Title) ၼႂ်း Toolbar တေလႅၵ်ႈလၢႆႈၸွမ်း `android:label` ဢၼ်ႁဝ်းတင်ႈဝႆႉၼႂ်း NavGraph ႁင်းၵွႆးၶႃႈ။
* **Auto Back Button:** မိူဝ်ႈႁဝ်းယူႇၼႃႈတႂ်ႈ (Detail Screen)၊ တုမ်ႇ "Back" တေဢွၵ်ႇမႃးပၼ်ႁင်းၵွႆး တႃႇႁႂ်ႈႁဝ်းပွၵ်ႈၶိုၼ်းႁိူၼ်း (Home) ၶႃႈ။



#### **တူဝ်ယၢင်ႇ Code ၼႂ်း `MainActivity.kt`:**
```kotlin
val navHostFragment = supportFragmentManager.findFragmentById(R.id.nav_host_fragment) as NavHostFragment
val navController = navHostFragment.navController

// ၵွင်ႉ Toolbar တေႃႇ Navigation
setupActionBarWithNavController(navController)
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'မိူဝ်ႈၸႂ်ႉ Toolbar ၼၼ်ႉ ႁႂ်ႈၵွင်ႉမၼ်းၸွမ်း Navigation တႃႇသေႇၶႃႈ။' 
မၼ်းတေၸွႆးႁႂ်ႈႁဝ်း ဢမ်ႇလူဝ်ႇတႅမ်ႈ Code တွၼ်ႈတႃႇတုမ်ႇ Back ႁင်းၵွႆးလႄႈ ၸိုဝ်ႈၼႃႈၸေႃးၵေႃႈ တေၵွင်ႉၵၼ်တင်း App တႃႇသေႇၶႃႈ။ 
သင်ၶႂ်ႈႁႂ်ႈ Menu ႁဵတ်းၵၢၼ် ႁႂ်ႈတင်ႈ **ID** ၶွင် Menu Item ႁႂ်ႈမိူၼ်တင်း **ID** ၶွင် Fragment ၼႂ်း NavGraph ယဝ်ႉ Navigation တေဢဝ်ႁဝ်းၵႂႃႇၼႃႈၼၼ်ႉ ႁင်းၵွႆးၶႃႈ!