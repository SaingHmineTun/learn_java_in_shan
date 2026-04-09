## Lesson 3: Understanding the Project Anatomy

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁူႉၸၵ်း Project ႁဝ်းၶႃႈ။ ပေႃးႁဝ်းႁူႉဝႃႈ ၶေႃႈမုၼ်းလႂ် ဝႆႉတီႈလႂ်ၼႆ ႁဝ်းတေတႅမ်ႈ Code လႆႈငၢႆႈလိူဝ်ၵဝ်ႇၶႃႈ။



### 1. ႁူႉၸၵ်း Folder `app`
ၼႂ်း Folder ၼႆႉ ပဵၼ်တီႈဝႆႉ Code လႄႈ ၶေႃႈမုၼ်း App ႁဝ်းၵူႈပိူင်ၶႃႈ။
* **`manifests/AndroidManifest.xml`**: ဢၼ်ၼႆႉပဵၼ် "ဝႂ်ၶႂၢင်ႉ" App ႁဝ်းၶႃႈ။ မၼ်းတေလၢတ်ႈဝႃႈ App ႁဝ်းၸိုဝ်ႈသင်၊ မီးၼႃႈၸေႃး (Activity) လၢႆဢၼ်၊ လႄႈ လူဝ်ႇၸႂ်ႉ Internet ႁိုဝ် ဢမ်ႇၸႂ်ႉ ၼႆၶႃႈ။
* **`kotlin + java/`**: တီႈၼႆႈပဵၼ်တီႈဝႆႉ Code Kotlin ႁဝ်းၶႃႈ။ ၸဝ်ႈၵဝ်ႇတေႁၼ် `MainActivity.kt` ဝႆႉတီႈၼႆႈၶႃႈ။
* **`res/` (Resources)**: တီႈၼႆႈပဵၼ် "ႁွင်ႈၵဵပ်းၶူဝ်း" ၶႃႈ။
    * `drawable/`: ဝႆႉႁၢင်ႈ (Images) လႄႈ Icons။
    * `values/`: ဝႆႉ သီ (Colors) လႄႈ ၶေႃႈၵႂၢမ်း (Strings)။
    * `font/`: (ႁဝ်းတေလႆႈၵေႃႇသၢင်ႈမႂ်ႇ) ဝႆႉလိၵ်ႈတႆး (Shan Fonts) ၶႃႈ။

### 2. ႁူႉၸၵ်း `Gradle Scripts`
ဢၼ်ၼႆႉမိူၼ်ၼင်ႇ "ၵူၼ်းၸတ်းၵၢၼ်" Project ႁဝ်းၶႃႈ။
* **`build.gradle.kts (Module :app)`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇသုတ်းၶႃႈ။ မၼ်းၸႂ်ႉတႃႇထႅမ်သႂ်ႇ Library (မိူၼ်ၼင်ႇ တႃႇႁဵတ်း Calendar ဢမ်ႇၼၼ် တႃႇႁဵတ်း Networking) ၶႃႈ။
* **`libs.versions.toml`**: ၼႂ်းပီ 2026 ၼႆႉ ႁဝ်းၵဵပ်း Version ၶွင် Library ၵူႈပိူင်ဝႆႉတီႈၼႆႈ ႁႂ်ႈမၼ်းၸတ်းပႅင်ႇငၢႆႈၶႃႈ။



### 3. ႁဵတ်းသင်လႄႈ လူဝ်ႇႁူႉ Anatomy?
ပေႃးႁဝ်းတေထႅမ်သႂ်ႇ လိၵ်ႈတႆး (Shan Font)၊ ႁဝ်းလူဝ်ႇႁူႉဝႃႈ တေလႆႈဢဝ်ၵႂႃႇသႂ်ႇၼႂ်း `res/font`။ ပေႃးႁဝ်းတေလႅၵ်ႈလၢႆႈၸိုဝ်ႈ App၊ ႁဝ်းလူဝ်ႇၵႂႃႇမႄးၼႂ်း `AndroidManifest.xml` ၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 3)
1.  ၸၢမ်းပိုတ်ႇတူၺ်း Folder `res/values/themes.xml` (ဢမ်ႇၼၼ် `Color.kt`) သေ လႅၵ်ႈလၢႆႈသီ `Purple80` ႁႂ်ႈပဵၼ်သီတၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ သီလိူင် `0xFFFFFF00`)။
2.  ပိုတ်ႇတူၺ်း `AndroidManifest.xml` သေ ႁႃတူၺ်းၶေႃႈၵႂၢမ်း `android:label` ၼၼ်ႉဝႃႈ မၼ်းတႅမ်ႈဝႆႉၸိုဝ်ႈ App ႁဝ်းႁိုဝ်ၶႃႈ။
3.  ၸၢမ်း "ၵေႃႇသၢင်ႈ" Folder မႂ်ႇ ၼႂ်း `res` သေ ပၼ်ၸိုဝ်ႈဝႃႈ `font` ၶႃႈ။ (ၼဵၵ်း Right Click တီႈ `res` -> New -> Android Resource Directory -> လိူၵ်ႈ Resource type ပဵၼ် `font`)။
