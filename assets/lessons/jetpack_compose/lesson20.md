## Lesson 20: Library Integration & Interoperability

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈၵၢၼ်ထႅမ်သႂ်ႇ **ShanLanguageTools** ၶဝ်ႈၼႂ်း Project လႄႈ ၵၢၼ်ႁဵတ်းႁႂ်ႈ Kotlin ႁွင်ႉၸႂ်ႉ Code Java ၼႂ်း Library ၼၼ်ႉလႆႈၶႃႈ။

### 1. ၵၢၼ်ထႅမ်သႂ်ႇ ShanLanguageTools (Step-by-Step)

တွၼ်ႈတႃႇတေဢဝ် Library ၶွင် Sai Mao မႃးၸႂ်ႉၼၼ်ႉ ႁဝ်းလူဝ်ႇမႄး တီႈၼႂ်း Gradle 2 တီႈၶႃႈ:

#### **ၵ. ထႅမ်ႈသႂ်ႇတီႈလူတ်ႇလူင်း (Add Repository)**
ၵႂႃႇတီႈၾၢႆႇ `settings.gradle.kts` သေ ထႅမ်သႂ်ႇ **JitPack** တွၼ်ႈတႃႇႁႂ်ႈ Android Studio ႁူႉဝႃႈ တေလႆႈၵႂႃႇ Download Library တီႈလႂ်ၶႃႈ။

```kotlin
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
        maven { url = uri("https://www.jitpack.io") } // 👈 ထႅမ်သႂ်ႇတီႈၼႆႈ
    }
}
```

#### **ၶ. ထႅမ်သႂ်ႇ Dependency**
ၵႂႃႇတီႈၾၢႆႇ `build.gradle.kts (Module :app)` သေ ဢဝ်ၸိုဝ်ႈ Library သႂ်ႇၶဝ်ႈၵႂႃႇၶႃႈ:

```kotlin
dependencies {
    // ၸိုဝ်ႈ Library ၶွင် aj Sai Mao
    implementation("com.github.SaingHmineTun:ShanLanguageTools:1.0.1")
}
```


---

### 2. Java-Kotlin Interoperability (ၵၢၼ်ႁွင်ႉၸႂ်ႉ)

မိူဝ်ႈႁဝ်း Sync Gradle ယဝ်ႉတူဝ်ႈယဝ်ႉ၊ App ႁဝ်းတေမီး "ၵၢၼ်ႁူႉၸၵ်း" တင်း Code Java ဢၼ်ယူႇၼႂ်း Library ၼၼ်ႉယဝ်ႉၶႃႈ။

#### **ၵၢၼ်ႁွင်ႉၸႂ်ႉၼႂ်း Kotlin**
ၼႂ်း Kotlin ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉ Class Java လႆႈၵမ်းလဵဝ် မိူၼ် Code Kotlin ထမ်ႇမတႃႇ ဢမ်ႇလူဝ်ႇၸႂ်ႉ Keyword `new` ၶႃႈ။

```kotlin

@Preview(showBackground = true,)
@Composable
fun TestTaiNuea() {
    val helloInShan = "မႂ်ႇသုင်ၶႃႈ"
    val helloInTaiNuea = TaiNueaConverter.shn2tdd(helloInShan)
    Column {
        Text(helloInShan)
        Text(helloInTaiNuea)
    }
}
```



---

### 3. လွင်ႈပၼ်ၾၢင်ႉ (Crucial Tips)
* **Sync First:** ၵူႈပွၵ်ႈ ဢၼ်ႁဝ်းၵႂႃႇမႄးၼႂ်း Gradle ၼၼ်ႉ ယႃႇလိုမ်းၼဵၵ်း **Sync Now** ၶႃႈ။ ပေႃးဢမ်ႇ Sync ၼႆ Kotlin တေဢမ်ႇႁၼ် Class Java ၶႃႈ။
* **Package Name:** ယႃႇလိုမ်း `import` ႁႂ်ႈထိုင်တီႈ Package မၼ်း (it.saimao...) ၸင်ႇတေႁွင်ႉၸႂ်ႉလႆႈၶႃႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 20)
1.  ထႅမ်သႂ်ႇ **JitPack** လႄႈ **Dependency** ႁႂ်ႈယဝ်ႉတူဝ်ႈသေ ၼဵၵ်း Sync ၶႃႈ။
2.  ၼႂ်း `MainActivity.kt` ၸၢမ်း `import` တူၺ်း `TaiNueaConverter` ဝႃႈ မၼ်းၶိုၼ်ႈသီလႅင်ႁိုဝ်ဢမ်ႇၶိုၼ်ႈၶႃႈ။
3.  **Challenge:** ၸၢမ်းႁွင်ႉၸႂ်ႉ `ShanZawgyiConverter` (ဢၼ်မီးၼႂ်း Library ၼၼ်ႉၼင်ႇၵဝ်ႇ) သေ လႅၵ်ႈလိၵ်ႈ Zawgyi ပဵၼ် Unicode တူၺ်းၼႂ်း Logcat ၶႃႈ။
