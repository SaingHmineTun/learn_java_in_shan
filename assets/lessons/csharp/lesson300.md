# Lesson 300: "User Input & Mobile Forms"

### 1. Entries vs. Editors (တႅမ်ႈထႅဝ်လဵဝ် vs. တႅမ်ႈလၢႆထႅဝ်)
ၼႂ်း .NET MAUI မီး Control ပိူင်လူင် 2 ဢၼ်တွၼ်ႈတႃႇႁပ်ႉလိၵ်ႈၶႃႈ:
* **Entry:** ၸႂ်ႉတွၼ်ႈတႃႇႁပ်ႉလိၵ်ႈ "ထႅဝ်လဵဝ်" (Single-line)။ မိူၼ်ၼင်ႇ ၸိုဝ်ႈ User, Password, ဢမ်ႇၼၼ် Email။
* **Editor:** ၸႂ်ႉတွၼ်ႈတႃႇႁပ်ႉလိၵ်ႈ "လၢႆထႅဝ်" (Multi-line)။ မိူၼ်ၼင်ႇ ၵၢၼ်တႅမ်ႈ "ပိုၼ်းသုၼ်ႇတူဝ်" ဢမ်ႇၼၼ် "ၶေႃႈၵႂၢမ်းပိုတ်ႇလၢတ်ႈ" ယၢဝ်းယၢဝ်း ၶႃႈ။



### 2. Keyboard Customization (ၵၢၼ်လိူၵ်ႈ Keyboard)
ၼႆႉပဵၼ်လွင်ႈလမ်ႇလွင်ႈသုတ်း တွၼ်ႈတႃႇ Mobile UI ၶႃႈ။ ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈႁႂ်ႈ Keyboard လႅၵ်ႈပိၼ်ႇၸွမ်းလူၺ်ႈ Property `Keyboard` ၼႂ်း XAML:
* `Keyboard="Email"`: တေမီးတူဝ်မၢႆ `@` ၼႄမႃးႁႂ်ႈတႅမ်ႈငၢႆႈ။
* `Keyboard="Numeric"`: တေၼႄမၢႆတူဝ် (Numbers) ၵူၺ်း။
* `Keyboard="Chat"`: တေမီး Emoji ၼႄပႃးမႃး။

### 3. Data Validation (ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်း)
ႁဝ်းတေလႆႈၵူတ်ႇထတ်းဝႃႈ User တႅမ်ႈၶေႃႈမုၼ်းမႅၼ်ႈႁႃႉ ၵွၼ်ႇတေသူင်ႇၵႂႃႇသိမ်း။ ႁဝ်းၵႆႉၸႂ်ႉ **Two-Way Binding** ၸွမ်းတင်း ViewModel (Module 299) တွၼ်ႈတႃႇၵူတ်ႇထတ်းၶႃႈ:

**တူဝ်ယင်ႇ Code ၼႂ်း XAML:**
```xml
<VerticalStackLayout Padding="20" Spacing="10">
    <Label Text="တႅမ်ႈၸိုဝ်ႈၶူး:" />
    <Entry Text="{Binding TeacherName}" 
           Placeholder="တႅမ်ႈၸိုဝ်ႈၼႆႈၶႃႈ..." 
           Keyboard="Default" />
    
    <Label Text="* ၶႅၼ်းတေႃႈတႅမ်ႈၸိုဝ်ႈၽွင်ႈ" 
           TextColor="Red" 
           IsVisible="{Binding IsNameInvalid}" />
           
    <Button Text="မၢႆတွင်း" Command="{Binding SaveCommand}" />
</VerticalStackLayout>
```

---

### 4. ႁဵတ်းသင်လွင်ႈၼႆႉၸင်ႇလမ်ႇလွင်ႈ?
1. **User Experience (UX):** သင်ႁဝ်းပိုတ်ႇ Keyboard မႅၼ်ႈၸွမ်းၼႃႈၵၢၼ်ၼႆ User တေၸႂ်ႉ App ႁဝ်းလႆႈငၢႆႈ လႄႈ ဝႆးၶႃႈ။
2. **Data Integrity:** ၵၢၼ်ၵူတ်ႇထတ်း ၸွႆးႁႄႉၵၢင်ႈဢမ်ႇႁႂ်ႈၶေႃႈမုၼ်းၽိတ်းပိူင် ၶဝ်ႈၵႂႃႇၼႂ်း Database ႁဝ်းၶႃႈ။
3. **Security:** ၵၢၼ်ၸႂ်ႉ `IsPassword="True"` ၼႂ်း Entry ၼႆႉ တေၸွႆႈသိမ်း Password ႁႂ်ႈပဵၼ်တူဝ်မၢႆ `●` တႃႇလွင်ႈလွတ်ႈၽေးၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Placeholder:** လိၵ်ႈဢၼ်ၼႄဝႆႉၸၢင်ၸၢင် ၼႂ်း Entry တွၼ်ႈတႃႇၼႄဝႃႈ တေလႆႈတႅမ်ႈသင်။
* **IsPassword:** Property ဢၼ်ၸွႆးသိမ်းတူဝ်လိၵ်ႈ ႁႂ်ႈပဵၼ်တူဝ်မၢႆလပ်ႉ (Password masking)။
* **Validation:** ၵၢၼ်ၵူတ်ႇထတ်းဝႃႈ ၶေႃႈမုၼ်းမႅၼ်ႈၸွမ်းပၵ်းၵၢၼ်ႁႃႉ။
* **ReturnCommand:** ၵၢၼ်သင်ႇႁႂ်ႈ App ႁဵတ်းၵၢၼ်သေလွင်ႈလွင်ႈ မိူဝ်ႈ User ၼဵၵ်း Enter ၼိူဝ် Keyboard။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈႁပ်ႉ "မၢႆၾူၼ်း" လုၵ်ႉတီႈ User ၼႆ ႁဝ်းထုၵ်ႇလီမၵ်းမၼ်ႈ `Keyboard` ပဵၼ်သႅၼ်းလႂ် ၼႂ်း Entry?
2. **Editor** ပႅၵ်ႇပိူင်တင်း **Entry** ၸိူင်ႉႁိုဝ် တီႈၵၢၼ်ႁပ်ႉၶေႃႈမုၼ်း?