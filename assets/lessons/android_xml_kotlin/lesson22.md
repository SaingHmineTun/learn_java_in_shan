## **Lesson 22: Advanced Navigation (Bottom Navigation)**

### **1. BottomNavigationView (ၵၢၼ်သၢင်ႈတုမ်ႇလိူၵ်ႈၽၢႆႇတႂ်ႈ)**
`BottomNavigationView` ပဵၼ်ၶိူင်ႈမိုဝ်း ဢၼ်ၸွႆးႁႂ်ႈၵူၼ်းၸႂ်ႉ လႅၵ်ႈၼႃႈၸေႃးလူင် (Main Destinations) လႆႈငၢႆႈငၢႆႈ လူၺ်ႈၵၢၼ်တဵၵ်းတုမ်ႇ ၽၢႆႇတႂ်ႈၶႃႈ။
* **Standard:** ၵႆႉမီး 3 တေႃႇ 5 တုမ်ႇၶႃႈ။
* **လွင်ႈလီ:** မၼ်းႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉ ႁူႉဝႃႈၶဝ်ယူႇတီႈလႂ် ၼႂ်း App လႄႈ ၶၢႆႉၵႂႃႇၼႃႈလူင်တၢင်ႇဢၼ်လႆႈဝႆးၶႃႈ။

---

### **2. Menu Linking (ၵၢၼ်ၵွင်ႉ Menu တေႃႇ NavGraph)**
လွင်ႈၼႆႉပဵၼ် "ၼမ်ႉၵတ်ႉ" ၶွင် Navigation Component ၶႃႈ။ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code `if-else` တႃႇလႅၵ်ႈ Fragment ႁင်းၵွႆးၶႃႈ။ 
ႁဝ်းၵူၺ်းလူဝ်ႇႁဵတ်းၸွမ်းၼင်ႇၼႆ:

1.  **သၢင်ႈ Menu XML:** သၢင်ႈၾၢႆႇၼႂ်း `res/menu` (မိူၼ်ၼင်ႇ `bottom_nav_menu.xml`)။
2.  **ID Matching (လမ်ႇလွင်ႈသုတ်း):** တင်ႈ **ID** ၶွင် Menu Item ႁႂ်ႈ **"မိူၼ်ၵၼ်"** တင်း **ID** ၶွင် Fragment ၼႂ်း NavGraph။
    * *တူဝ်ယၢင်ႇ:* သင်ၼႂ်း NavGraph ၸိုဝ်ႈဝႃႈ `homeFragment` ၼႆ ၼႂ်း Menu ၵေႃႈလူဝ်ႇတင်ႈ ID ဝႃႈ `homeFragment` ၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code ၼႂ်း `activity_main.xml`:**
```xml
<com.google.android.material.bottomnavigation.BottomNavigationView
    android:id="@+id/bottom_nav"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    app:menu="@menu/bottom_nav_menu"
    app:layout_constraintBottom_toBottomOf="parent" />
```

---

### **3. Setting up in MainActivity (ၵၢၼ်ပိုတ်ႇၸႂ်ႉ)**
ႁဝ်းလူဝ်ႇၸႂ်ႉ `setupWithNavController` တႃႇၵွင်ႉ Bottom Navigation တေႃႇ NavController ၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code ၼႂ်း `MainActivity.kt`:**
```kotlin
val navHostFragment = supportFragmentManager.findFragmentById(R.id.nav_host_fragment) as NavHostFragment
val navController = navHostFragment.navController

// ၵွင်ႉ Bottom Navigation တေႃႇ NavController
binding.bottomNav.setupWithNavController(navController)
```
* **ၽွၼ်းလႆႈ:** ပေႃးႁဝ်းတဵၵ်းတုမ်ႇၽၢႆႇတႂ်ႈ၊ Navigation တေဢဝ်ႁဝ်းၵႂႃႇ Fragment ဢၼ်မီး ID တူဝ်ၼၼ်ႉ ႁင်းၵွႆးၶႃႈ။



---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'ယႃႇလိုမ်းၵူတ်ႇထတ်း ID ႁႂ်ႈမိူၼ်ၵၼ်တင်း 2 ၾၢႆႇ (Menu လႄႈ NavGraph) ၶႃႈ။' 
သင် ID ဢမ်ႇမိူၼ်ၵၼ်၊ ပေႃးတဵၵ်ႉတုမ်ႇၽၢႆႇတႂ်ႈ App တေဢမ်ႇလႅၼ်ႈၵႂႃႇတီႈလႂ်ၶႃႈ။ 
ထႅင်ႈဢၼ်ၼိုင်ႈ ႁႂ်ႈၸႂ်ႉ `BottomNavigationView` တႃႇၼႃႈၸေႃးလူင် (Top-level) ၵူၺ်း၊
ဢမ်ႇထုၵ်ႇလီၸႂ်ႉတႃႇပိုတ်ႇၼႃႈ Detail Screen ၶၼ်ႉလိုၵ်ႉၶႃႈ။