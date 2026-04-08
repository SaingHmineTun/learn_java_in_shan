# Lesson 295: "XAML, Visual Tree, and Hot Reload"

### 1. XAML ပဵၼ်သင်?
**XAML** (eXtensible Application Markup Language) ပဵၼ်လိၵ်ႈ XML ဢၼ်ၸႂ်ႉမၵ်းမၼ်ႈႁၢင်ႈၽၢင် App ၶႃႈ။ 
ႁဝ်းၸႂ်ႉ Tags မိူၼ်ၼင်ႇ `<Button />`, `<Label />`, `<Entry />` တွၼ်ႈတႃႇသၢင်ႈ UI ၶႃႈဢေႃႈ။

### 2. Understanding the "Visual Tree"
ၼႂ်း Mobile App ၼိုင်ႈၼႃႈၼႆႉ UI မၼ်းတေယူႇသွၼ်ႉၵၼ်ပဵၼ်ၸၼ်ႉ (Hierarchy) မိူၼ်တင်း "ၵိင်ႇတူၼ်ႈမႆႉ" ၶႃႈ။
* **Parent:** တူဝ်ဢၼ်ၵုမ်း (မိူၼ်ၼင်ႇ `VerticalStackLayout`)။
* **Children:** တူဝ်ဢၼ်ယူႇၽၢႆႇၼႂ်း (မိူၼ်ၼင်ႇ `Label` ဢမ်ႇၼၼ် `Button`)။
* **Visual Tree:** ပွင်ႇဝႃႈ ၵၢၼ်ၵွင်ႉၵၢႆႇၵၼ်ၶွင် UI တင်းမူတ်း ဢၼ်တႄႇလုၵ်ႉတီႈ **ContentPage** လူင်းၵႂႃႇၶႃႈ။



### 3. XAML Hot Reload (မႄးသေ ႁၼ်ၵမ်းလဵဝ်)
ၼႆႉပဵၼ် Feature ဢၼ် "ၸတ်းၵၢၼ်" (Handle) ၵၢၼ်တႅမ်ႈ UI ႁႂ်ႈဝႆးလိူဝ်ၵဝ်ႇၶႃႈ:
* မိူဝ်ႈႁဝ်းလႅၼ်ႈ App ယူႇၼၼ်ႉ သင်ႁဝ်းလႅၵ်ႈပိၼ်ႇသီတူဝ်လိၵ်ႈ ဢမ်ႇၼၼ် မႄးလိၵ်ႈၼႂ်း XAML သေ **Save** (Ctrl+S) ၼႆ
* ၼႃႈတႃ App ၼႂ်း Emulator တေလႅၵ်ႈပိၼ်ႇၸွမ်း **ၵမ်းလဵဝ်** လူၺ်ႈဢမ်ႇလူဝ်ႇ Stop သေ Run မႂ်ႇၶႃႈ!



---

### 4. တူဝ်ယင်ႇ Code ပိုၼ်ႉထၢၼ်

```xml
<ContentPage xmlns="http://schemas.microsoft.com/dotnet/2021/maui"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
             x:Class="ShanApp.MainPage">

    <VerticalStackLayout Spacing="25" Padding="30">
        
        <Label Text="မႂ်ႇသုင်ၶႃႈ Shan Community!"
               FontSize="32"
               HorizontalOptions="Center" />

        <Button Text="ၼဵၵ်းတီႈၼႆႈ"
                Clicked="OnCounterClicked"
                HorizontalOptions="Center" />
                
    </VerticalStackLayout>

</ContentPage>
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Markup:** လၢႆးတႅမ်ႈလိၵ်ႈဢၼ်ၸႂ်ႉ Tag တွၼ်ႈတႃႇမၵ်းမၼ်ႈပိူင်သၢင်ႈ (မိူၼ် XAML, HTML)။
* **Attribute:** ၶေႃႈမုၼ်းထႅမ်ၼႂ်း Tag (မိူၼ်ၼင်ႇ `FontSize="32"`)။
* **Hierarchy:** ပိူင်သၢင်ႈၸၼ်ႉထၢၼ်ႈ လုၵ်ႉတီႈတူဝ်ၼွၵ်ႈ ၶဝ်ႈၵႂႃႇၸူးတူဝ်ၼႂ်း။
* **Runtime:** ယၢမ်းဢၼ် App ႁဝ်းတိုၵ်ႉလႅၼ်ႈ (Run) ယူႇၼၼ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၼႂ်း Visual Tree ၼၼ်ႉ သင်ႁဝ်းမီး `<VerticalStackLayout>` သေၽၢႆႇၼႂ်းမၼ်းမီး `<Label>` ၼႆ တူဝ်လႂ်ပဵၼ် **Parent**?
2. **XAML Hot Reload** ၸွႆႈ Developer လႆႈၸိူင်ႉႁိုဝ် မိူဝ်ႈတႅမ်ႈ App?
