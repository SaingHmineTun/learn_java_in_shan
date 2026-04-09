## Lesson 7: Shan Typography & Fonts

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵတ်းႁႂ်ႈ App ႁဝ်း ဢၢၼ်ႇလိၵ်ႈတႆးလႆႈၶႅမ်ႉလႅတ်း လႄႈ ႁၢင်ႈလီၶႃႈ။

### 1. ၵၢၼ်ဢဝ် Font သႂ်ႇၼႂ်း Project
ဢွၼ်တၢင်းသုတ်း ၸဝ်ႈၵဝ်ႇလူဝ်ႇမီးၾၢႆႇ Font (မိူၼ်ၼင်ႇ `NamKhone.ttf` ဢမ်ႇၼၼ် `PangLong.ttf`) ၶႃႈ။
1. ၵႂႃႇတီႈ Folder `app/src/main/res`။
2. ၼဵၵ်း Right-click တီႈ `res` -> **New** -> **Android Resource Directory**။
3. လိူၵ်ႈ Resource type ပဵၼ် **font** သေၼဵၵ်း OK။
4. ဢဝ်ၾၢႆႇ Font ၸဝ်ႈၵဝ်ႇ ၵွပ်ႉပီႉ (Copy) သေမႃးဝၢင်း (Paste) သႂ်ႇၼႂ်း Folder `font` ၼၼ်ႉၶႃႈ။
    * **မၢႆတွၼ်ႈ:** ၸိုဝ်ႈၾၢႆႇ Font တေလႆႈပဵၼ် တူဝ်လိၵ်ႈဢွၼ်ႇ (lowercase) ၵူၺ်း၊ မိူၼ်ၼင်ႇ `namkhone_regular.ttf` ၶႃႈ။

### 2. ၵေႃႇသၢင်ႈ FontFamily ၼႂ်း Kotlin
ပေႃးဢဝ် Font သႂ်ႇယဝ်ႉ ႁဝ်းလူဝ်ႇလၢတ်ႈၼႄ Code ႁဝ်းဝႃႈ တေၸႂ်ႉ Font ၼၼ်ႉၸိူင်ႉႁိုဝ်ၶႃႈ။ တႅမ်ႈၶူတ်ႉတီႈတႂ်ႈဝႆႉ တီႈၼိူဝ် Main Class ၶႃႈ။

```kotlin
val ShanFontFamily = FontFamily(
    Font(R.font.namkhone_regular, FontWeight.Normal),
    Font(R.font.namkhone_bold, FontWeight.Bold)
)
```

### 3. ၵၢၼ်ၸတ်း Typography (Line Height)
လိၵ်ႈတႆးႁဝ်းမီး "မၢႆသဵင်" ယူႇတၢင်းၼိူဝ်လႄႈတၢင်းတႂ်ႈၼမ်။ ပေႃးႁဝ်းဢမ်ႇသႂ်ႇ `lineHeight` ၼႆ လိၵ်ႈၸၢင်ႈၸပ်းၵႂႃႇၶႃႈ။

```kotlin
val ShanTypography = Typography(
    bodyLarge = TextStyle(
        fontFamily = ShanFontFamily,
        fontWeight = FontWeight.Normal,
        fontSize = 20.sp,
        lineHeight = 32.sp // သႂ်ႇဝႆႉႁႂ်ႈထႅဝ်လိၵ်ႈႁၢင်ႇၵၼ်ဢိတ်းၼိုင်ႈ
    )
)
```


### 4. ၵၢၼ်ၸႂ်ႉတူဝ်တႄႉ (Implementation)
ၵမ်းၼႆႉ ႁဝ်းၸၢင်ႈဢဝ် Font ၼၼ်ႉၵႂႃႇၸႂ်ႉၼႂ်း `Text` ႁဝ်းလႆႈယဝ်ႉၶႃႈ။

```kotlin
Text(
    text = "ၵူၼ်းႁူႉဢမ်ႇၼမ် ၵူၼ်းၵမ်ဢမ်ႇႁၢႆး",
    style = MaterialTheme.typography.bodyLarge,
    fontFamily = ShanFontFamily // ၸႂ်ႉ Font ဢၼ်ႁဝ်းသႂ်ႇဝႆႉၼၼ်ႉ
)
```

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 7)
1. ႁႃလူတ်ႇလူင်း (Download) Font တႆး (မိူၼ်ၼင်ႇ NamKhone) သေ ဢဝ်သႂ်ႇၼႂ်း Folder `res/font` ၶႃႈ။
2. ၵေႃႇသၢင်ႈ `FontFamily` ၼႂ်း `MainActivity.kt` ၶႃႈ။
3. ၸၢမ်းလႅၵ်ႈလၢႆႈ `fontSize` လႄႈ `lineHeight` တူၺ်း ႁႂ်ႈမၼ်းဢၢၼ်ႇငၢႆႈသုတ်း ၼိူဝ်ၼႃႈၸေႃး Preview ၶႃႈ။