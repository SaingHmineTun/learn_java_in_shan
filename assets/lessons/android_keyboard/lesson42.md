## **Lesson 42: ProGuard & R8: Security & Size Optimization**

### **1. Why do we need this?**

* **Reduce App Size:** ႁဵတ်းႁႂ်ႈ Size APK ဢွၼ်ႇလူင်းလိူဝ်ၵဝ်ႇ (မၢင်ပွၵ်ႈလူတ်ႇလူင်းလႆႈ 30%-50%) လူၺ်ႈၵၢၼ်တတ်း Code ဢၼ်ဢမ်ႇၸႂ်ႉပႅတ်ႈ။
* **Code Obfuscation:** လႅၵ်ႈၸိုဝ်ႈ Class လႄႈ Method ႁႂ်ႈပဵၼ် `a`, `b`, `c` ၼင်ႇႁိုဝ်ၵူၼ်းတၢင်ႇၵေႃႉ တေဢမ်ႇၸၢင်ႈမႃး "လၵ်ႉၵၢႆႇ" (Decompile) Code ၸဝ်ႈၵဝ်ႇလႆႈငၢႆႈငၢႆႈ။
* **Optimization:** R8 တေၸွႆႈမႄး Code ၸဝ်ႈၵဝ်ႇ ႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ဝႆး ၼႂ်း Runtime ၶႃႈ။

---

### **2. Enabling R8 in `build.gradle`**

Android Studio ၸႂ်ႉ **R8** တႅၼ်း ProGuard ၵႂႃႇယဝ်ႉ၊ ၵွၺ်းၵႃႈႁဝ်းတိုၵ်ႉၸႂ်ႉၾၢႆႇ Rule မိူၼ်ၵဝ်ႇၶႃႈ။

#### **A. Update `build.gradle (Module: app)`**

```gradle
android {
    buildTypes {
        release {
            // 1. ပိုတ်ႇၵၢၼ်တတ်း Code ဢၼ်ဢမ်ႇၸႂ်ႉပႅတ်ႈ
            isMinifyEnabled = true
            
            // 2. ပိုတ်ႇၵၢၼ်တတ်း Resources ဢၼ်ဢမ်ႇၸႂ်ႉ (Icons/Images)
            isShrinkResources = true
            
            // 3. သႂ်ႇ Rules တွၼ်ႈတႃႇ ProGuard
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
}
```

---

### **3. Writing Custom ProGuard Rules**

ယွၼ်ႉ Keyboard ႁဝ်းၸႂ်ႉ XML Layouts လႄႈ Custom Views ၼမ်၊ မၢင်ပွၵ်ႈ R8 ၸၢင်ႈတတ်း Code ဢၼ်ႁဝ်းလူဝ်ႇၸႂ်ႉပႅတ်ႈ (Over-shrinking)။ ႁဝ်းလူဝ်ႇမၢႆဝႆႉဝႃႈ တူဝ်လႂ် "ယႃႇပႆႇတတ်း" ၶႃႈ။

**ၼႂ်း `proguard-rules.pro`:**

```pro
# 1. ယႃႇပႆႇတတ်း Custom Views ဢၼ်ႁဝ်းၸႂ်ႉၼႂ်း XML Layouts
-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
}

# 2. ယႃႇပႆႇတတ်း Keyboard Service ႁဝ်း
-keep class * extends android.inputmethodservice.InputMethodService

# 3. သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ Models (မိူၼ်ၼင်ႇ JSON) ႁႂ်ႈ Keep မၼ်းဝႆႉ
-keepclassmembers class com.tmkgroup.keyboard.models.** { *; }

# 4. လူတ်ႇယွၼ်ႇ Log Messages ၼင်ႇႁိုဝ်တေဢမ်ႇသူင်ႇ Info ဢွၵ်ႇၵႂႃႇ
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
}
```



---

### **4. Resource Shrinking (လၢင်ႉ Assets)**

မိူဝ်ႈႁဝ်းပိုတ်ႇ `isShrinkResources = true`, Android တေၸႅတ်ႈတူၺ်းဝႃႈ Icons ဢမ်ႇၼၼ် Images လႂ် ဢၼ်ဢမ်ႇထုၵ်ႇႁွင်ႉၸႂ်ႉၼႂ်း Code သေမၼ်းတေတတ်းဢွၵ်ႇပႅတ်ႈ ႁင်းၵူၺ်းၶႃႈ။

* **Important:** သင်ၸဝ်ႈၵဝ်ႇႁွင်ႉ Icon လူၺ်ႈလၢႆး "Dynamic" (မိူၼ်ၼင်ႇ `getResources().getIdentifier(...)`), ၸဝ်ႈၵဝ်ႇလူဝ်ႇသၢင်ႈၾၢႆႇ `keep.xml` ဝႆႉၼႂ်း `res/raw/` ၼင်ႇႁိုဝ် Android တေဢမ်ႇတတ်းမၼ်းပႅတ်ႈၶႃႈ။

---

### **5. Safety & Verification (လွင်ႈၵူတ်ႇထတ်း)**

မိူဝ်ႈပိုတ်ႇ `Minify` ယဝ်ႉ၊ **လူဝ်ႇၸႅတ်ႈ (Test) App ၸဝ်ႈၵဝ်ႇ ၼႂ်း Release Mode** တႃႇသေႇၶႃႈ:

1. **Check Popup Keys:** မၼ်ႈၸႂ်ဝႃႈ Popup Views ဢၼ်သၢင်ႈလူၺ်ႈ Dynamic Logic တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ။
2. **Analyze APK:** ၸႂ်ႉ Tool **`Build > Analyze APK`** ၼႂ်း Android Studio တွၼ်ႈတႃႇတူၺ်းဝႃႈ Size App ႁဝ်းလူတ်ႇလူင်းလႆႈၵႃႈႁိုင်ယဝ်ႉ။
3. **Keep Mapping:** Android တေထုၵ်ႈၾၢႆႇ `mapping.txt` ဢွၵ်ႇမႃးၶႃႈ။ သိမ်းမၼ်းဝႆႉလီလီၶႃႈ၊ ယွၼ်ႉမိူဝ်ႈ App Crash ႁဝ်းလူဝ်ႇၸႂ်ႉမၼ်းတွၼ်ႈတႃႇ "ဢၢၼ်ႇ" Code ဢၼ် Obfuscate ယဝ်ႉၼၼ်ႉၶိုၼ်းၶႃႈ။



---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Shrink:** တတ်း Code/Resources ဢၼ်ဢမ်ႇၸႂ်ႉ ႁႂ်ႈ Size ဢွၼ်ႇ။
* **Obfuscate:** လႅၵ်ႈၸိုဝ်ႈ Code ႁႂ်ႈၵူၼ်းတၢင်ႇၵေႃႉဢၢၼ်ႇဢမ်ႇဢွၵ်ႇ တွၼ်ႈတႃႇ Security။
* **Keep Rules:** မၢႆဝႆႉ Views လႄႈ Services ဢၼ်လူဝ်ႇၸႂ်ႉ ၼင်ႇႁိုဝ် App တေဢမ်ႇ Broken။

---