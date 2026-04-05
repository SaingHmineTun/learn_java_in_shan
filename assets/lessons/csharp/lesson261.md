# Lesson 261: "WPF Styling and Templating"

WPF ၸွႆးႁႂ်ႈႁဝ်းၸႅၵ်ႇလွင်ႈ "ပိူင်သၢင်ႈ" (Structure) ဢွၵ်ႇလုၵ်ႉတီႈ "ႁၢင်ႈၽၢင်" (Appearance) ၶႃႈဢေႃႈ။

### 1. Styling (ၵၢၼ်မၵ်းမၼ်ႈႁၢင်ႈၽၢင်)
**Style** ပဵၼ်ၵၢၼ်ဢဝ် Property လၢႆလၢႆဢၼ် (မိူၼ်ၼင်ႇ Background, FontSize, Padding) မႃးႁူမ်ႈၵၼ်ဝႆႉၼႂ်းၸိုဝ်ႈလဵဝ်ၶႃႈ။
* **StaticResource:** ႁဝ်းတႅမ်ႈ Style ဝႆႉတီႈလဵဝ် (ၼႂ်း App.xaml) သေ ဢဝ်ၵႂႃႇၸႂ်ႉလႆႈၵူႈၼႃႈၸေႃးၶႃႈ။
* **TargetType:** ႁဝ်းၸၢင်ႈလၢတ်ႈဝႃႈ "ႁႂ်ႈ Button ၵူႈတူဝ်ၼႂ်း App မီးႁၢင်ႈၸိူင်ႉၼႆ" ၼႆၶႃႈ။

```xml
<Style x:Key="ShanButtonStyle" TargetType="Button">
    <Setter Property="Background" Value="Gold" />
    <Setter Property="FontSize" Value="20" />
    <Setter Property="Foreground" Value="Black" />
</Style>

<Button Style="{StaticResource ShanButtonStyle}" Content="ၼဵၵ်း" />
```



### 2. Control Templates (ၵၢၼ်ပိၼ်ႇႁၢင်ႈ Control)
ၼႆႉပဵၼ် "ႁႅင်းလူင်" ထႅင်ႈဢၼ်ၼိုင်ႈၶႃႈ။ **ControlTemplate** ပၼ်သုၼ်ႇႁႂ်ႈႁဝ်း "ပိၼ်ႇႁၢင်ႈ" Control ၼၼ်ႉၵႂႃႇတင်းမူတ်းၶႃႈ။
* **တူဝ်ယင်ႇ:** ႁဝ်းၶႂ်ႈႁႂ်ႈ Button ႁဝ်းမီးႁၢင်ႈ **"မူၼ်း"** (Circle) တႅၼ်းႁၢင်ႈသီႇၸဵင်ႇၼႆ ႁဝ်းၸၢင်ႈၸႂ်ႉ Template တႃႇတႅမ်ႈ `Ellipse` (ႁၢင်ႈမူၼ်း) ဝႆႉၽၢႆႇၼႂ်း Button ၼၼ်ႉလႆႈၶႃႈ။

### 3. Triggers (ၵၢၼ်တူင်ႉၼိုင်ၸွမ်းငဝ်းလၢႆး)
ႁဝ်းၸၢင်ႈတႅမ်ႈ Code ၼႂ်း XAML ႁႂ်ႈမၼ်း "လႅၵ်ႈသီ" မိူဝ်ႈ User ဢဝ် Mouse ၵႂႃႇၸိ (Hover) ၼိူဝ်မၼ်းၶႃႈ။
* **IsMouseOver:** မိူဝ်ႈ Mouse ယူႇၼိူဝ် Button ႁႂ်ႈလႅၵ်ႈပဵၼ်သီလႅင်။
* **IsPressed:** မိူဝ်ႈၼဵၵ်းပုမ်ႇယူႇ ႁႂ်ႈမၼ်း "ယုပ်ႉ" (Shrink) လူင်းဢိတ်းၼိုင်ႈ။



### 4. Resources (တီႈၵဵပ်းၶူဝ်းၶွင်)
WPF မီး **ResourceDictionary** ဢၼ်မိူၼ်တင်း "ႁႅင်းၵဵပ်းသီ" ၶႃႈ။ ႁဝ်းၸၢင်ႈသၢင်ႈၾိုင််း `.xaml` ႁင်းၵူၺ်းတွၼ်ႈတႃႇၵဵပ်းသီ (Colors) လႄႈ ပိူင်လိၵ်ႈ (Fonts) ႁႂ်ႈ App ႁဝ်းမီး Standard မိူၼ်ၵၼ်တင်းမူတ်းၶႃႈ။

---

### ႁဵတ်းသင် Styling ၸင်ႇၸွႆးႁဝ်း?
1. **Consistency:** App ႁဝ်းတေမီးသီ လႄႈ ပိူင်လိၵ်ႈမိူၼ်ၵၼ်ၵူႈၼႃႈၸေႃး။
2. **Speed:** မိူဝ်ႈၶူးသင်ႇမႄးသီ App တင်းမူတ်း... ႁဝ်းမႄးတီႈလဵဝ်ၵူၺ်း ယဝ်ႉတင်း App ၶႃႈ။
3. **Professional Look:** ႁဝ်းၸၢင်ႈသၢင်ႈ UI ဢၼ်ႁၢင်ႈလီမိူၼ် App ပၢၼ်မႂ်ႇ (Modern UI) လႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Setter:** တူဝ်မၵ်းမၼ်ႈၵႃႈၶၼ် Property (Property = Background, Value = Red)။
* **Template:** ပိူင်သၢင်ႈၽၢႆႇၼႂ်းၶွင် Control ဢၼ်ႁဝ်းပိၼ်ႇလႆႈ။
* **Trigger:** ငဝ်းလၢႆးဢၼ်တေႁဵတ်းႁႂ်ႈ Style လႅၵ်ႈပိၼ်ႇ (မိူၼ် Hover)။
* **Resource:** Object ဢၼ်ႁဝ်းသိမ်းဝႆႉတႃႇၸႂ်ႉလၢႆလၢႆပွၵ်ႈ (မိူၼ် Colors, Styles)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင် **ႁဝ်း** ၶႂ်ႈမႄး Button ၵူႈတူဝ်ၼႂ်း App ႁႂ်ႈပဵၼ်သီလႅင် ၵမ်းလဵဝ်... ႁဝ်းထုၵ်ႇလီသႂ်ႇ Attribute **`TargetType`** ပဵၼ်သင် ၼႂ်း Style?
2. **ControlTemplate** ပႅၵ်ႇတင်း **Style** ၸိူင်ႉႁိုဝ်? (Hint: Style မႄးၵႃႈၶၼ် Property၊ Template မႄး "ႁၢင်ႈၽၢင်" ပိူင်သၢင်ႈမၼ်းၶႃႈ)။