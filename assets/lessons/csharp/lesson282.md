# Lesson 282: "Setting Up Your First ASP.NET Core Web Project"

တွၼ်ႈတႃႇတေတႄႇသၢင်ႈ Web App ၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ Visual Studio (2022 ၶိုၼ်ႈၼိူဝ်) သေလိူၵ်ႈ Template ႁႂ်ႈမႅၼ်ႈၸွမ်းၼႃႈၵၢၼ်ႁဝ်းၶႃႈ။

### 1. ၵၢၼ်လိူၵ်ႈ Project Template
မိူဝ်ႈႁဝ်းပိုတ်ႇ Visual Studio သေၼဵၵ်း **Create a new project** ယဝ်ႉၼၼ်ႉ သွၵ်ႈႁႃ:
* **ASP.NET Core Web App (Model-View-Controller)**
* *သတိ:* ယႃႇလိူၵ်ႈတူဝ်ဢၼ်ပဵၼ် "Empty" ဢမ်ႇၼၼ် "Razor Pages" ၶႃႈ။

### 2. Additional Information (ၵၢၼ် Setup ပိုၼ်ႉထၢၼ်)
မိူဝ်ႈမၼ်းထၢမ်လွင်ႈ Setup ၼၼ်ႉ:
* **Framework:** လိူၵ်ႈ .NET 8.0 (ဢမ်ႇၼၼ် Version မႂ်ႇသုတ်း ဢၼ်ပဵၼ် Long-term support)။
* **Authentication Type:** လိူၵ်ႈ None ဢွၼ်တၢင်း (တွၼ်ႈတႃႇတႄႇႁဵၼ်း)။
* **Configure for HTTPS:** မၢႆၶိတ်းဝႆႉ (တွၼ်ႈတႃႇလွင်ႈလွတ်ႈၽေး)။
* **Do not use top-level statements:** မၢႆဝႆႉ (တွၼ်ႈတႃႇႁႂ်ႈႁဝ်းႁၼ် Program.cs ဢၼ်တဵမ်ထူၼ်ႈ)။

### 3. ပိူင်သၢင်ႈ Folder ၼႂ်း Project (Folder Structure)
မိူဝ်ႈ Project ၵိူတ်ႇမႃးယဝ်ႉ ႁဝ်းတေႁၼ် Folder ၸိူဝ်းၼႆႉ:
* **Controllers/:** တီႈဝၢင်း C# Classes ဢၼ်တေၸတ်းၵၢၼ် Request။
* **Models/:** တီႈဝၢင်း Data Classes (မိူၼ် Student.cs)။
* **Views/:** တီႈဝၢင်းၾၢႆႇ `.cshtml` (HTML + C#) တွၼ်ႈတႃႇၼႄ UI။
* **wwwroot/:** တီႈၵဵပ်း Static Files မိူၼ်ၼင်ႇ CSS, JavaScript, လႄႈ ၶႅပ်းႁၢင်ႈ (Images)။
* **Program.cs:** "ႁူဝ်ၸႂ်" ၶွင် App ဢၼ်မၵ်းမၼ်ႈဝႃႈ App တေလႅၼ်ႈၸိူင်ႉႁိုဝ်။



### 4. ၵၢၼ်လႅၼ်ႈ App (Running the App)
ၼဵၵ်း **F5** ဢမ်ႇၼၼ် တုမ်ႇ Play (IIS Express/Project Name) ဢၼ်ယူႇ ၽၢႆႇၼိူဝ်ၶႃႈ:
* Visual Studio တေ Compile Code ႁဝ်း။
* မၼ်းတေပိုတ်ႇ Browser ႁင်းၵူၺ်းသေ ၼႄၼႃႈ **"Welcome"** ဢွၼ်တၢင်းသုတ်း။
* URL ၼႂ်း Browser တေပဵၼ် `https://localhost:xxxx` (xxxx ပဵၼ်မၢႆ Port ဢၼ်မၼ်းမၵ်းမၼ်ႈပၼ်)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Template:** ပိူင်သၢင်ႈဢၼ်ႁၢင်ႈႁႅၼ်းဝႆႉယဝ်ႉ တႃႇတႄႇ Project လႆႈဝႆး။
* **Localhost:** တူဝ်တႅၼ်းၶွမ်းႁဝ်း (Server ဢၼ်လႅၼ်ႈယူႇၼႂ်းၶွမ်းႁဝ်းၵမ်းလဵဝ်)။
* **Port:** "ႁူးတၢင်းၶဝ်ႈ" ဢၼ်ၸႅၵ်ႇဝႆႉတႃႇ App ၼိုင်ႈဢၼ် ၼႂ်း Server (မိူၼ်ၼင်ႇ :5001)။
* **Static Files:** ၾၢႆႇဢၼ်ဢမ်ႇလႅၵ်ႈပိၼ်ႇ (မိူၼ်ၼင်ႇ Logo ႁူင်းႁဵၼ်း)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈသႂ်ႇ "ၶႅပ်းႁၢင်ႈ" (Logo) ၶွင်ႁူင်းႁဵၼ်း ၶဝ်ႈၼႂ်း Website ၼႆ ႁဝ်းထုၵ်ႇလီဢဝ်ၾၢႆႇႁၢင်ႈၼၼ်ႉ ၵႂႃႇဝၢင်းဝႆႉၼႂ်း Folder လႂ်?
2. ႁဵတ်းသင် **Program.cs** ၸင်ႇပဵၼ်ၾၢႆႇ ဢၼ်လမ်ႇလွင်ႈသုတ်း တွၼ်ႈတႃႇတႄႇလႅၼ်ႈ App?

