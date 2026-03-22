# Lesson 4: "Creating and Running Your First Console Project" (ၵၢၼ်သၢင်ႈလႄႈႁဵတ်းႁႂ်ႈ Project ႁူဝ်ၼိုင်ႈႁဵတ်းၵၢၼ်)

မိူဝ်ႈႁဝ်းတေတႅမ်ႈ C# ၼၼ်ႉ ႁဝ်းဢမ်ႇတႅမ်ႈသႂ်ႇၼႂ်း Notepad ၵူၺ်း၊ 
ႁဝ်းလူဝ်ႇသၢင်ႈ **Console Project** ဢၼ်မီးပိူင်သၢင်ႈတဵမ်ထူၼ်ႈဢေႃႈ။

### 1. ၵၢၼ်သၢင်ႈ Project ၼႂ်း Visual Studio 2022
1. ပိုတ်ႇ Visual Studio 2022 ယဝ်ႉလိူၵ်ႈ **"Create a new project"**။
2. ၼႂ်းလွၵ်း Search ၼၼ်ႉတႅမ်ႈဝႃႈ **"Console App"** (လိူၵ်ႈဢၼ်မီး Logo C#)။
3. တင်ႈၸိုဝ်ႈ Project ဝႃႈ `MaoAppAcademy`။
4. လိူၵ်ႈ Framework ပဵၼ် **.NET 8.0** ဢမ်ႇၼၼ် **.NET 9.0**။
5. တဵၵ်း **Create** ယဝ်ႉ ႁဝ်းတေလႆႈၼႃႈလိၵ်ႈတႅမ်ႈ Code မႃးယဝ်ႉ။

### 2. ၵၢၼ်သၢင်ႈ Project ၼႂ်း Terminal (CLI)
ပေႃးလုၵ်ႈႁဵၼ်းၸႂ်ႉ VS Code ဢမ်ႇၼၼ် mak ၸႂ်ႉ Terminal၊ ႁဝ်းတႅမ်ႈ "ၶေႃႈသင်ႇ" (Command) ၼႆၵေႃႈလႆႈၶႃႈ:
`dotnet new console -n MyFirstApp`
(ၼႆႉပဵၼ်ၵၢၼ်သင်ႇႁႂ်ႈ .NET သၢင်ႈ Folder Project မႂ်ႇၼိုင်ႈဢၼ်)

### 3. ၵၢၼ် "Run" ႁႂ်ႈ App ႁဵတ်းၵၢၼ်
မိူဝ်ႈသၢင်ႈယဝ်ႉ ၼႂ်း File `Program.cs` ၼၼ်ႉတေမီး Code ဝႆႉဝႃႈ:
```csharp
Console.WriteLine("Hello, World!");
```
ႁဝ်းတေလႆႈတဵၵ်းလွၵ်း **Play** (သီၶဵဝ်) ယူႇၽၢႆႇၼိူဝ် ဢမ်ႇၼၼ်တဵၵ်း **F5** ၼိူဝ် Keyboard။
* **Result:** တေမီးၼႃႈလိၵ်ႈသီလမ် (Console) ဢွၵ်ႇမႃးသေ လၢတ်ႈဝႃႈ `Hello, World!` ၼၼ်ႉယဝ်ႉ။



---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Console App:** Application ဢၼ်ဢမ်ႇမီးႁူပ်ႈ (Buttons/Icons)၊ မၼ်းတူင်ႉၼိုင်လႆႈၼိူဝ် ၼႃႈလိၵ်ႈတႅမ်ႈလိၵ်ႈ (Text-based interface) ၵူၺ်း။
* **Template:** ပိူင်သၢင်ႈဢၼ် Microsoft တႅမ်ႈဝႆႉပၼ်ယဝ်ႉ တႃႇႁဝ်းတႄႇ Project လႆႈၽႂ်းၽႂ်း။
* **Build:** ၵၢၼ်ဢဝ် Code ႁဝ်းၵႂႃႇပိၼ်ႇပဵၼ် Application (File .exe) ဢၼ်ၸႂ်ႉလႆႈတႄႉ။
* **Run / Debug:** ၵၢၼ်ပိုတ်ႇ Application ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉ တႃႇတူၺ်းဝႃႈ မၼ်းႁဵတ်းၵၢၼ်လႆႈလီယူႇႁႃႉ။

---