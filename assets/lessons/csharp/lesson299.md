# Lesson 299: "The MVVM Pattern & Data Binding"

### 1. MVVM ပဵၼ်သင်?
**MVVM** ပဵၼ်လၢႆးၸႅၵ်ႇ Code ဢွၵ်ႇပဵၼ် 3 တွၼ်ႈၼင်ႇၼႆၶႃႈ:
* **Model:** ၶေႃႈမုၼ်း (Data) မိူၼ်ၼင်ႇ Class `Student`။
* **View:** ၼႃႈတႃ App (XAML) ဢၼ် User ႁၼ်။
* **ViewModel:** ၵူၼ်းၵႄႈၵၢင် ဢၼ်သိမ်း Logic လႄႈ Data တႃႇၼႄၼိူဝ် View။ မၼ်းတေဢမ်ႇႁူႉဝႃႈ View မီးႁၢင်ႈၸိူင်ႉႁိုဝ်၊ မၼ်းၵူၺ်းမီးၼႃႈၵၢၼ် "ႁၢင်ႈႁႅၼ်း Data" ပၼ်ၶႃႈ။



### 2. Data Binding (ၵၢၼ်ၵွင်ႉ Data ႁင်းၵူၺ်း)
**Data Binding** ပဵၼ် "သၢႆၵွင်ႉ" ဢၼ်ႁဵတ်းႁႂ်ႈ View လႄႈ ViewModel လၢတ်ႈၵႂၢမ်းတေႃႇၵၼ်လႆႈ ၸိူင်ႉၼႆၶႃႈ:
* သင်ႁဝ်းလႅၵ်ႈပိၼ်ႇၸိုဝ်ႈၼႂ်း **ViewModel** ၼႆ ၼႃႈတႃ App (View) တေလႅၵ်ႈၸွမ်းႁင်းၵူၺ်း။
* သင် User တႅမ်ႈလိၵ်ႈၼႂ်း **View** ၼႆ ၶေႃႈမုၼ်းၼၼ်ႉတေ ထုၵ်ႇၵႂႃႇၵဵပ်းဝႆႉၼႂ်း **ViewModel** ႁင်းၵူၺ်း။

### 3. IPropertyNotifyChanged (ၵၢၼ်လၢတ်ႈၼႄဝႃႈ Data လႅၵ်ႈယဝ်ႉ)
တွၼ်ႈတႃႇႁႂ်ႈ View ႁူႉဝႃႈ "ViewModel လႅၵ်ႈပိၼ်ႇၶေႃႈမုၼ်းယဝ်ႉယဝ်ႉၼႃ" ၼႆၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Interface ဢၼ်ၸိုဝ်ႈဝႃႈ `INotifyPropertyChanged` ၶႃႈ။

**တူဝ်ယင်ႇ Code ၼႂ်း ViewModel:**
```csharp
public class StudentViewModel : INotifyPropertyChanged
{
    private string _name;
    public string Name
    {
        get => _name;
        set {
            _name = value;
            // လၢတ်ႈၼႄ View ဝႃႈ "Name လႅၵ်ႈယဝ်ႉၼႃ"
            OnPropertyChanged(nameof(Name));
        }
    }

    public event PropertyChangedEventHandler PropertyChanged;
    void OnPropertyChanged(string name) => 
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
}
```

**ၼႂ်း XAML (View):**
```xml
<Label Text="{Binding Name}" FontSize="24" />
```

---

### 4. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇ MVVM?
1.  **Testability:** ႁဝ်းၸၢင်ႈၸၢမ်း Code Logic (ViewModel) လႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇပိုတ်ႇ Emulator။
2.  **Clean Code:** XAML မီးၼႃႈၵၢၼ်ၼႄႁၢင်ႈၵူၺ်းသေ C# ၼႂ်း ViewModel မီးၼႃႈၵၢၼ်ၸတ်း Data ၵူၺ်း။
3.  **Efficiency:** ၸွႆးႁႂ်ႈၵၢၼ်တႅမ်ႈ App ယႂ်ႇယႂ်ႇ မိူၼ်ၼင်ႇ "Shan Learn" (Project ႁဝ်း) ဢမ်ႇယုင်ႈယၢင်ႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Data Binding:** ၵၢၼ်ၵွင်ႉ Property ၼႂ်း C# ၸူး Attribute ၼႂ်း XAML။
* **BindingContext:** တူဝ်မၵ်းမၼ်ႈဝႃႈ "ၼႃႈလိၵ်ႈၼႆႉ တေဢဝ် Data လုၵ်ႉတီႈ ViewModel တူဝ်လႂ်"။
* **Command:** ၵၢၼ်ၵွင်ႉတုမ်ႇ (Button Click) ၸူး Method ၼႂ်း ViewModel တႅၼ်းၵၢၼ်ၸႂ်ႉ Code-behind။
* **ObservableCollection:** List ၶေႃႈမုၼ်းဢၼ်ၵတ်ႉၶႅၼ်ႇ၊ သင်ႁဝ်း Add/Remove Data ၼႆ UI တေ Update ၸွမ်းႁင်းၵူၺ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၼႂ်း MVVM ၼၼ်ႉ သုၼ်ႇလႂ်ဢၼ်မီးၼႃႈၵၢၼ် "သိမ်း Logic လႄႈ ႁၢင်ႈႁႅၼ်း Data တႃႇၼႄ"? (Model, View, ဢမ်ႇၼၼ် ViewModel?)
2. **Data Binding** ၸွႆး Developer လႆႈၸိူင်ႉႁိုဝ်? (ႁဝ်းတိုၵ်ႉလူဝ်ႇတႅမ်ႈ `label.Text = "..."` ၼႂ်း Code-behind ယူႇႁႃႉ?)