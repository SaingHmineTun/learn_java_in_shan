# Lesson 260: "Data Binding in WPF"

ၼႂ်း WinForms... မိူဝ်ႈႁဝ်းၶႂ်ႈလႅၵ်ႈလိၵ်ႈၼိူဝ် Label ႁဝ်းတေလႆႈတႅမ်ႈ:
`lblResult.Text = "မႂ်ႇသုင်";`
ၵူၺ်းၵႃႈ ၼႂ်း WPF ႁဝ်းၸၢင်ႈ "ၵွင်ႉ" (Bind) Property `Text` ၶွင် Label ၶဝ်ႈၸူး Variable ၼႂ်း C# ဝႆႉၵမ်းလဵဝ်ၶႃႈ။

### 1. Data Binding ပဵၼ်သင်?
မၼ်းပဵၼ် "ၶူဝ်ၵွင်ႉ" ၼႂ်းၵႄႈ **UI** (XAML) လႄႈ **Data** (C# Class) ၶႃႈ။
* မိူဝ်ႈ **Data** လႅၵ်ႈပိၼ်ႇၼၼ်ႉ **UI** တေလႅၵ်ႈပိၼ်ႇၸွမ်းႁင်းၵူၺ်း။
* မိူဝ်ႈ User တႅမ်ႈလိၵ်ႈၼႂ်း **UI** ၼၼ်ႉ **Data** ၵေႃႈတေထုၵ်ႇ Update ၸွမ်းၵမ်းလဵဝ်ၶႃႈ။



### 2. Direction ၶွင် Binding
ႁဝ်းလိူၵ်ႈလၢႆးၵွင်ႉလႆႈ 3 ပိူင်လူင်ၶႃႈ:
* **One-Way:** Data -> UI ၵူၺ်း (တူဝ်ယင်ႇ: ၼႄမၢႆတွင်းလုၵ်ႈႁဵၼ်း)။
* **Two-Way:** Data <-> UI (တူဝ်ယင်ႇ: ၼႂ်း TextBox ဢၼ်ႁပ်ႉၸိုဝ်ႈ User)။
* **One-Way-to-Source:** UI -> Data ၵူၺ်း။

### 3. တူဝ်ယင်ႇ လၢႆးတႅမ်ႈ XAML
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Variable ၸိုဝ်ႈဝႃႈ `StudentName` ၼႂ်း C# ၶႃႈ:

```xml
<TextBox Text="{Binding StudentName, Mode=TwoWay}" />

<TextBlock Text="{Binding StudentName}" />
```
မိူဝ်ႈႁဝ်းတႅမ်ႈလိၵ်ႈၼႂ်း TextBox ၼၼ်ႉ လိၵ်ႈၼႂ်း TextBlock (Label) တေလႅၵ်ႈပိၼ်ႇၸွမ်း "ၵမ်းလဵဝ်" (Real-time) လူၺ်ႈႁဝ်းဢမ်ႇလႆႈတႅမ်ႈ Code C# သေထႅဝ်ၶႃႈ!

### 4. INotifyPropertyChanged
တွၼ်ႈတႃႇႁႂ်ႈ UI ႁူႉဝႃႈ "Data လႅၵ်ႈပိၼ်ႇယဝ်ႉယဝ်ႉၼႃ" ၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ Interface ဢၼ်ၸိုဝ်ႈဝႃႈ **`INotifyPropertyChanged`** ၼႂ်း Class C# ႁဝ်းၶႃႈ။

---

### ႁဵတ်းသင် Data Binding ၸင်ႇလမ်ႇလွင်ႈ?
1. **Less Code:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Code `txt.Text = student.Name` ၼမ်ၼႃႇ။
2. **Clean Code:** UI လႄႈ Data ၸႅၵ်ႇၵၼ်တႅတ်ႉတေႃး (Separation of Concerns)။
3. **Easy Maintenance:** မိူဝ်ႈမႄးပိူင်သၢင်ႈ Data... ႁဝ်းဢမ်ႇလူဝ်ႇမႃးၸွမ်းမႄး Code UI တင်းမူတ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Source:** တီႈမႃးၶွင်ၶေႃႈမုၼ်း (ၵႆႉပဵၼ် C# Class)။
* **Target:** တီႈဢၼ်တေဢဝ်ၶေႃႈမုၼ်းၵႂႃႇၼႄ (ၵႆႉပဵၼ် WPF Control)။
* **DataContext:** Object ပိူင်လူင် ဢၼ်ႁဝ်းပၼ်ႁႂ်း Window ၸႂ်ႉပဵၼ်ငဝ်ႈႁၢၵ်ႈၶေႃႈမုၼ်း တႃႇ Binding တင်းမူတ်း။
* **Path:** ၸိုဝ်ႈ Property ဢၼ်ႁဝ်းၶႂ်ႈၵွင်ႉၸူး (မိူၼ်ၼင်ႇ "StudentName")။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင် **ႁဝ်း** ၶႂ်ႈႁႂ်ႈ TextBox ၵွင်ႉတင်း Data လၢႆးဢၼ် "တႅမ်ႈတီႈၼိုင်ႈ လႅၵ်ႈတင်းသွင်ၽၢႆႇ"... ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Mode သင်?
2. Interface သင် ဢၼ် C# Class တေလႆႈၸႂ်ႉ တႃႇသူင်ႇသၼ်ႇၺႃႇလၢတ်ႈၼႄ UI ဝႃႈ Data လႅၵ်ႈပိၼ်ႇယဝ်ႉ?