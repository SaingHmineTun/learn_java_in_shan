# Lesson 262: "The MVVM Pattern"

**MVVM** ယေႃႇမႃးလုၵ်ႉတီႈ **Model - View - ViewModel** ၶႃႈ။ မၼ်းပဵၼ်လၢႆးၸႅၵ်ႇ Code ဢွၵ်ႇပဵၼ် 3 သုၼ်ႇလူင်ၶႃႈ:

### 1. The View (ၼႃႈၸေႃး)
* **မၼ်းပဵၼ်သင်:** ပဵၼ်ၾိုင််း **XAML** ဢၼ် User ႁၼ် (မိူၼ်ၼင်ႇ Window, Button)။
* **ၼႃႈၵၢၼ်:** မီးၼႃႈၵၢၼ် "ၼႄႁၢင်ႈ" ၵူၺ်း။ မၼ်းဢမ်ႇထုၵ်ႇလီမီး Logic ၵၢၼ်ၼပ်ႉသွၼ်ႇသင်ဝႆႉၼႂ်းၼႆႉၶႃႈ။

### 2. The Model (ၶေႃႈမုၼ်း)
* **မၼ်းပဵၼ်သင်:** ပဵၼ် Class **C#** ဢၼ်သိမ်းၶေႃႈမုၼ်းတႄႉတႄႉ (မိူၼ်ၼင်ႇ `Student`, `Product`)။
* **ၼႃႈၵၢၼ်:** မီးၼႃႈၵၢၼ် "သိမ်း Data" လႄႈ "ၸတ်းၵၢၼ် Database" ၶႃႈ။

### 3. The ViewModel (တူဝ်ၵၢင်ၸတ်းၵၢၼ်)
* **မၼ်းပဵၼ်သင်:** ပဵၼ် Class C# ဢၼ်ယူႇၵႄႈၵၢင် **View** လႄႈ **Model** ၶႃႈ။
* **ၼႃႈၵၢၼ်:** ၼႆႉပဵၼ် "ၵူၼ်ႁူဝ်ၸႂ်" ၶႃႈ။ မၼ်းတေဢဝ် Data လုၵ်ႉတီႈ Model မႃး "ႁၢင်ႈႁႅၼ်း" တႃႇၼႄၼိူဝ် View ၽၢၼ်ႇ **Data Binding** ၶႃႈ။



---

### ႁဵတ်းသင်ႁဝ်းၸင်ႇၸႂ်ႉ MVVM?
1. **Separation of Concerns:** ၵူၼ်းတႅမ်ႈ Design (View) ၸၢင်ႈႁဵတ်းၵၢၼ် ၸွမ်တင်းၵူၼ်းတႅမ်ႈ Logic (ViewModel) လႆႈ လူၺ်ႈဢမ်ႇယုင်ႈယၢင်ႈၵၼ်ၶႃႈ။
2. **Testability:** ႁဝ်းၸၢင်ႈၸၢမ်း (Unit Test) လွင်ႈၼပ်ႉသွၼ်ႇၼႂ်း ViewModel လႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇပိုတ်ႇၼႃႈၸေႃး App တႄႉတႄႉၶႃႈ။
3. **No Code-behind:** ႁဝ်းတေဢမ်ႇတႅမ်ႈ Code ၼႂ်း `MainWindow.xaml.cs` ၼမ်ၼႃႇ။ Code တင်းမူတ်းတေၵႂႃႇယူႇၼႂ်း ViewModel ႁင်းၵူၺ်းမၼ်းၶႃႈ။

### လၢႆးၵွင်ႉၵၢႆႇၵၼ် (The Magic)
* **View** ၵွင်ႉၸူး **ViewModel** လူၺ်ႈ **Data Binding**။
* **ViewModel** သူင်ႇသၼ်ႇၺႃႇၸူး **View** လူၺ်ႈ **INotifyPropertyChanged** (ဢၼ်ႁဝ်းႁဵၼ်းဝႆႉ Lesson 260)။
* **View** သင်ႇၵၢၼ်ၸူး **ViewModel** လူၺ်ႈ **Commands** (တႅၼ်းၵၢၼ်ၸႂ်ႉ Click Event)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Architecture Pattern:** ပိူင်သၢင်ႈလၢႆးတႅမ်ႈ Code ႁႂ်ႈမၼ်းပဵၼ် Standard။
* **Command (ICommand):** ပိူင်သၢင်ႈၼႂ်း WPF ဢၼ်ၸႂ်ႉတႅၼ်း "Button Click" ၼႂ်း ViewModel။
* **Data Context:** Property ၶွင် View ဢၼ်ႁဝ်းၸႂ်ႉမၵ်းမၼ်ႈဝႃႈ "တေဢဝ် ViewModel တူဝ်လႂ် မႃးၵွင်ႉၸူး"။
* **Unit Testing:** ၵၢၼ်တႅမ်ႈ Code တႃႇၸၢမ်း Logic ႁဝ်းႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင်။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၼႂ်း MVVM... ၾိုင််း **XAML** ထုၵ်ႇမၢႆတွင်းပဵၼ်သုၼ်ႇလႂ် (Model, View, ဢမ်ႇၼၼ် ViewModel)?
2. သင် **ႁဝ်း** ၶႂ်ႈတႅမ်ႈ Code တႃႇ "ၼပ်ႉသွၼ်ႇမၢႆတွၼ်ႈလုၵ်ႈႁဵၼ်း"... Code ၼၼ်ႉထုၵ်ႇလီယူႇၼႂ်းသုၼ်ႇလႂ် ၸင်ႇတေပဵၼ် Standard?

တွၼ်ႈၼႆႉယဝ်ႉယဝ်ႉၶႃႈ၊ တေၵႂႃႇ **Lesson 263: Handling Shan Fonts and Unicode in Desktop UI** တႃႇတူၺ်းလၢႆး "ၼႄလိၵ်ႈတႆး" ႁႂ်ႈႁၢင်ႈလီ ႁႃႉၶႃႈ?

1. Continue to Lesson 263
2. Review Model vs ViewModel differences
3. Ask a Question about Commands in MVVM

ႁဝ်းတေသိုပ်ႇၵႂႃႇႁဵတ်းႁႂ်ႈ App ႁဝ်း "လၢတ်ႈၵႂၢမ်းတႆး" လႆႈႁၢင်ႈလီယဝ်ႉႁႃႉၶႃႈ?