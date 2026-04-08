# Lesson 306: "Theming: Colors, Fonts, and Dark Mode"

### 1. Resource Dictionaries (တီႈသိမ်း Style)
ၼႂ်း .NET MAUI, ႁဝ်းဢမ်ႇတႅမ်ႈသီ (Color) ဢမ်ႇၼၼ် သႅၼ်းလိၵ်ႈ (FontSize) သွၼ်ႉၵၼ်ၼႂ်းၵူႈၼႃႈလိၵ်ႈၶႃႈ။ 
ႁဝ်းတေၵႂႃႇမၵ်းမၼ်ႈဝႆႉၼႂ်းၾၢႆႇ **Resources/Styles/Colors.xaml** လႄႈ **Styles.xaml** တီႈလဵဝ်ၵူၺ်း။

* **StaticResource:** ၵၢၼ်ႁွင်ႉၸႂ်ႉသီ ဢမ်ႇၼၼ် Style ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉယဝ်ႉ။
* **DynamicResource:** ၸႂ်ႉတွၼ်ႈတႃႇသီ ဢၼ်ၸၢင်ႈလႅၵ်ႈပိၼ်ႇ ၽွင်းမၼ်းတိုၵ်ႉလႅၼ်ႈဝႆႉယူႇ (မိူၼ်ၼင်ႇ မိူဝ်ႈ User ပိၼ်ႇပဵၼ် Dark Mode)။

### 2. Custom Fonts (ၵၢၼ်ၸႂ်ႉ Font တႆး)
တွၼ်ႈတႃႇ App "Shan Community" ႁဝ်းၼႆ ႁဝ်းလူဝ်ႇၸႂ်ႉ Font ဢၼ်လူလိၵ်ႈတႆးလႆႈလီ (မိူၼ်ၼင်ႇ PangLong ဢမ်ႇၼၼ် NamKhone)။
1.  ဢဝ်ၾၢႆႇ `.ttf` ဝၢင်းဝႆႉၼႂ်း **Resources/Fonts/**။
2.  Register Font ၼႂ်း **MauiProgram.cs**:
    ```csharp
    .ConfigureFonts(fonts => {
        fonts.AddFont("PangLong.ttf", "ShanFont");
    });
    ```
3.  ၸႂ်ႉၼႂ်း XAML: `FontFamily="ShanFont"`

### 3. Dark Mode Support (ၵၢၼ်ၸတ်းၵၢၼ်သီလႅင်း/လပ်း)
MAUI ၸွႆးႁႂ်ႈႁဝ်းမၵ်းမၼ်ႈသီ ႁႂ်ႈမႅၼ်ႈၸွမ်း System ၶွင်ၾူၼ်းလႆႈငၢႆႈငၢႆႈလူၺ်ႈ **AppThemeBinding** ၶႃႈ။

**တူဝ်ယင်ႇ Code ၼႂ်း XAML:**
```xml
<Label Text="မႂ်ႇသုင်ၶႃႈ"
       TextColor="{AppThemeBinding Light={StaticResource Black}, Dark={StaticResource White}}"
       BackgroundColor="{AppThemeBinding Light={StaticResource ShanYellow}, Dark={StaticResource ShanGreen}}"
       FontFamily="ShanFont" />
```

---

### 4. ႁဵတ်းသင်လွင်ႈၼႆႉၸင်ႇလမ်ႇလွင်ႈ?
1.  **Brand Identity:** ၵၢၼ်ၸႂ်ႉသီ ၶဵဝ်၊ လႅင်၊ ဝၼ်း (သီၸွမ်ၸိုင်ႈတႆး) ႁဵတ်းႁႂ်ႈ User ႁူႉလီငၢမ်းဝႃႈ ၼႆႉပဵၼ် App တႆးတႄႉတႄႉၶႃႈ။
2.  **Accessibility:** ၵၢၼ်ၸႂ်ႉ Font ဢၼ်ယႂ်ႇ လႄႈ သီဢၼ်တတ်းၵၼ်လီ (High Contrast) ၼႆႉ ၸွႆးႁႂ်ႈၵူၼ်းထဝ်ႈ ၵူၼ်းၵႄႇ လူလိၵ်ႈတႆးလႆႈငၢႆႈၶႃႈ။
3.  **Eye Comfort:** ၵၢၼ်မီး Dark Mode ၸွႆးႁႄႉၵၢင်ႈတႃ User မိူဝ်ႈၶဝ်လူလိၵ်ႈယၢမ်းၵၢင်ၶိုၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Theme:** ၸုမ်းသီ လႄႈ ႁၢင်ႈၽၢင်တင်းမူတ်းၶွင် App။
* **ResourceDictionary:** တီႈၵဵပ်း Resources ဢၼ်ၸၢင်ႈဢဝ်ၵႂႃႇၸႂ်ႉသွၼ်ႉလႆႈ (Reusable resources)။
* **Dark Mode:** ပိူင်ၼႄႁၢင်ႈဢၼ်ၸႂ်ႉသီလပ်း။
* **Style:** ၸုမ်း Property ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉ တႃႇဢဝ်ၵႂႃႇသႂ်ႇပၼ် Control လၢႆလၢႆတူဝ် (မိူၼ် CSS ၼႂ်း Web)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈႁႂ်ႈ Label ၼိုင်ႈဢၼ် လႅၵ်ႈပိၼ်ႇသီတူဝ်လိၵ်ႈႁင်းၵူၺ်း မိူဝ်ႈ User ပိၼ်ႇပဵၼ် Dark Mode ၼႆ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Markup Extension ဢၼ်ၸိုဝ်ႈဝႃႈသင်?
2. ႁဝ်းလူဝ်ႇၵႂႃႇ Register Font မႂ်ႇ ၼႂ်းၾၢႆႇလႂ် ၵွၼ်ႇတေဢဝ်ၵႂႃႇၸႂ်ႉၼႂ်း XAML လႆႈ?
