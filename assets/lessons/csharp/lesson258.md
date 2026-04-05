# Lesson 258: "Introduction to WPF & XAML"

WPF ပဵၼ်ပိူင်သၢင်ႈ App ဢၼ်ၸႅၵ်ႇ **"လွင်ႈႁၢင်ႈလီ"** (Design) ဢွၵ်ႇလုၵ်ႉတီႈ **"လွင်ႈႁဵတ်းၵၢၼ်"** (Logic) တႅတ်ႈတေႃးၶႃႈ။

### 1. XAML ပဵၼ်သင်?
**XAML** (ဢၢၼ်ႇဝႃႈ: *Zammel*) ယေႃႇမႃးလုၵ်ႉတီႈ **Extensible Application Markup Language** ၶႃႈ။
* မၼ်းပဵၼ်လိၵ်ႈ XML ဢၼ်ၸႂ်ႉတႃႇ "ပိုၼ်ၽၢဝ်ႇ" (Declare) ဝႃႈ ၼႃႈၸေႃး App ႁဝ်းတေမီးသင်ပႃး။
* သင်ႁဝ်းယၢမ်ႈတႅမ်ႈ HTML (တႃႇ Website) ၼႆ XAML ၵေႃႈ တေမိူၼ်ၼၼ်ႉယဝ်ႉၶႃႈ။
* **Code-behind:** Code C# တေယူႇၼႂ်းၾၢႆႇ `.xaml.cs` သေ XAML တေယူႇၼႂ်းၾၢႆႇ `.xaml` ၶႃႈ။



### 2. ႁဵတ်းသင် XAML ၸင်ႇမီး "ႁႅင်း" (Power)?
1.  **Vector-based:** ႁၢင်ႈၽၢင်ဢၼ်တႅမ်ႈလူၺ်ႈ XAML ၼၼ်ႉ ႁဝ်းၸၢင်ႈယိုတ်ႈ ၼႃႈၸေႃးႁႂ်ႈယႂ်ႇ တၢၼ်ႇလႂ်ၵေႃႈ ႁၢင်ႈတေဢမ်ႇလႅဝ် (ဢမ်ႇပဵၼ် Pixel) ၶႃႈ။
2.  **Designer & Developer Harmony:** ၵူၼ်းတႅမ်ႈ Design ၸၢင်ႈမႄး XAML ႁႂ်ႈ App ႁၢင်ႈလီသေ Developer သမ်ႉတႅမ်ႈ C# တႃႇႁႂ်ႈ App ႁဵတ်းၵၢၼ်လႆႈ ၼႂ်းယၢမ်းလဵဝ်ၵၼ်ၶႃႈ။
3.  **Data Binding:** ၼႆႉပဵၼ် "ႁႅင်းလူင်" ၶွင်မၼ်းၶႃႈ။ ႁဝ်းၸၢင်ႈၵွင်ႉၶေႃႈမုၼ်း (Data) ၶဝ်ႈၸူး UI ႁင်းၵူၺ်းမၼ်း လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈ Code `lblResult.Text = ...` ၼမ်ၼႃႇၶႃႈ။

### 3. တူဝ်ယင်ႇ လိၵ်ႈ XAML ငၢႆႈငၢႆႈ
ဝူၼ်ႉတူၺ်းလၢႆးတႅမ်ႈတုမ်ႇ (Button) ၼႂ်း XAML ၶႃႈ:

```xml
<Button Content="ၼဵၵ်းတီႈၼႆႉ" 
        Width="150" 
        Height="50" 
        Background="SkyBlue" 
        FontSize="16" 
        Click="Button_Click" />
```
* **Content:** မိူၼ်တင်း `Text` ၼႂ်း WinForms ၶႃႈ။
* **Attributes:** ၸိူဝ်းပဵၼ် Width, Height, Background ၼၼ်ႉ ႁဝ်းတႅမ်ႈလႆႈငၢႆႈငၢႆႈမိူၼ်လိၵ်ႈ HTML ၶႃႈ။



### 4. လွင်ႈပႅၵ်ႇပိူင် ၵႄႈ WinForms လႄႈ WPF
* **WinForms:** ၸႂ်ႉ C# တႅမ်ႈႁၢင်ႈ UI ၽၢႆႇလင် (မၼ်းတႅမ်ႈပၼ်ႁင်းၵူၺ်း)။ သင်ႁဝ်းယိုတ်ႈၶိုၼ်/လူင်း Window ၼႆ Controls ၸၢင်ႈယူႇၽိတ်းတီႈ။
* **WPF:** ၸႂ်ႉ XAML တႅမ်ႈႁၢင်ႈ UI။ မၼ်းၸတ်း Layout လႆႈလီလိူဝ် (မိူၼ်ၼင်ႇၸႂ်ႉ Grid လႄႈ StackPanel)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Markup Language:** လိၵ်ႈဢၼ်ၸႂ်ႉတူဝ်မၢႆ `< >` တႃႇမၵ်းမၼ်ႈပိူင်သၢင်ႈ (မိူၼ် XAML, HTML)။
* **UI (User Interface):** ၼႃႈတၢင်ႇ ဢၼ်ၵူၼ်းၸႂ်ႉႁၼ် လႄႈ တူင်ႉၼိုင်ၸွမ်း။
* **DirectX:** ပိူင်ၸတ်းၵၢၼ် Graphics ဢၼ် WPF ၸႂ်ႉ (ဝႆးလိူဝ် GDI ၶွင် WinForms)။
* **Resolution Independence:** ၵၢၼ်ဢၼ် App ၼႄႁၢင်ႈလႆႈၸႅင်ႈလီ ၼိူဝ်ၼႃႈၸေႃးၵူႈသႅၼ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင် **ႁဝ်း** ၶႂ်ႈလႅၵ်ႈသီတူဝ်လိၵ်ႈ (Font Color) ၼႂ်း XAML... ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Attribute ဢၼ်ၸိုဝ်ႈဝႃႈသင်? (Hint: ၼႂ်း WinForms ပဵၼ် ForeColor၊ ၵူၺ်းၵႃႈၼႂ်း XAML ပဵၼ် **`Foreground`** ၶႃႈ)။
2. ႁဵတ်းသင် WPF ၸင်ႇလီလိူဝ် WinForms တွၼ်ႈတႃႇၼႃႈၸေႃး 4K ဢၼ်ယႂ်ႇယႂ်ႇ?