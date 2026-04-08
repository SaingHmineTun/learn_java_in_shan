# Lesson 279: "Introduction to Web Development with .NET: Why ASP.NET Core?"

မိူဝ်ႈႁဝ်းတႅမ်ႈ Desktop App (Module 21) ၼၼ်ႉ App ၼၼ်ႉလႅၼ်ႈလႆႈၼႂ်းၶွမ်း User ၵူၺ်း။ 
ၵူၺ်းၵႃႈ သင်ႁဝ်းၶႂ်ႈသၢင်ႈ ႁႂ်ႈၵူၼ်းတင်းၼမ်ၸႂ်ႉၸွမ်ၵၼ်လႆႈ (မိူၼ်ၼင်ႇ Facebook ဢမ်ႇၼၼ် Website ၶၢဝ်ႇတႆး) ၼႆၸိုင် ႁဝ်းလူဝ်ႇသိုပ်ႇလဵပ်ႈႁဵၼ်း **ASP.NET Core** ၶႃႈ။

### 1. ASP.NET Core ပဵၼ်သင်?
**ASP.NET Core** ပဵၼ် Framework ၶွင် Microsoft ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇသၢင်ႈ **Modern Web Applications** လႄႈ **Services (APIs)** ၶႃႈ။ 
မၼ်းပဵၼ်တူဝ်ဢၼ်မႄးသၢင်ႈမႂ်ႇ (Rebuilt) ႁႂ်ႈမၼ်းဝႆး၊ ၶိုတ်းၵၢပ်ႈ၊ လႄႈ ၸႂ်ႉလႆႈၵူႈတီႈၶႃႈ။

### 2. ႁဵတ်းသင်ႁဝ်းၸင်ႇလိူၵ်ႈၸႂ်ႉ ASP.NET Core?
တွၼ်ႈတႃႇ Developer ဢၼ်တႅမ်ႈ C# ၼၼ်ႉ ၼႆႉပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်ၵတ်ႉလိူဝ်ပိူၼ်ႈ ယွၼ်ႉ:

* **Cross-Platform:** App ဢၼ်ႁဝ်းတႅမ်ႈၼႆႉ ႁဝ်းၸၢင်ႈဢဝ်ၵႂႃႇလႅၼ်ႈၼိူဝ် **Windows, Linux, ဢမ်ႇၼၼ် macOS** ၵေႃႈလႆႈၶႃႈ။ (ၼႆႉလမ်ႇလွင်ႈၼႃႇ တွၼ်ႈတႃႇ Hosting လူၺ်ႈဢမ်ႇလႆႈၸၢႆႇငိုၼ်းၼမ်ၶႃႈ)။
* **High Performance:** မၼ်းပဵၼ် Web Framework ဢၼ်ႁဵတ်းၵၢၼ်လႆႈဝႆးလီၶႃႈ။
* **Unified Support:** မၼ်းၸၢင်ႈသၢင်ႈလႆႈတင်း **MVC** (Website ဢၼ်မီးၼႃႈတႃ) လႄႈ **Web API** (တွၼ်ႈတႃႇသူင်ႇ Data ပၼ် Mobile App) ၼႂ်း Project လဵဝ်ၵၼ်ၶႃႈ။
* **Security:** မၼ်းပႃးပိူင်ႁႄႉၵၢင်ႈ (Security) ပိုၼ်ႉထၢၼ် ဢၼ်ၵႅၼ်ႇၶႅင်မႃးၸွမ်ၵမ်းလဵဝ်ၶႃႈ။



---

### 3. Web App ႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်? (Client vs. Server)
ၼႂ်းၵၢၼ်တႅမ်ႈ Web ၼႆႉ ႁဝ်းလူဝ်ႇႁူႉၸၵ်း 2 ၽၢႆႇၼႆႉၶႃႈ:
* **Client (The Browser):** ပဵၼ် User ဢၼ်ၸႂ်ႉ Chrome/Safari သေတႅမ်ႈ URL ၶဝ်ႈမႃး။
* **Server (ASP.NET Core App):** ပဵၼ်ၶွမ်းဢၼ်ပႂ်ႉႁပ်ႉ "ၶေႃႈထၢမ်" သေ "တွပ်ႇ" ပၼ်ၶိုၼ်းမႃးလူၺ်ႈ Website ႁၢင်ႈလီလီ ၼၼ်ႉၶႃႈ။

### 4. တူဝ်ယင်ႇၵၢၼ်ၸႂ်ႉတူဝ်တႄႉ
သင်ႁဝ်းသၢင်ႈ **"Shan Community Event Portal"**...
1. User ၶဝ်ႈမႃးၼႂ်း Browser သေတူၺ်းသဵၼ်ႈမၢႆပွႆး။
2. ASP.NET Core တေၵႂႃႇလူဢဝ် Data လုၵ်ႉၼႂ်း SQL Server (Module 22)။
3. မၼ်းတေဢဝ် Data ၼၼ်ႉမႃး "ႁၢင်ႈႁႅၼ်း" ပဵၼ် HTML သေသူင်ႇပၼ် User ၶိုၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Framework:** ၶိူင်ႈမိုဝ်းဢၼ်ပႃး Code ပိုၼ်ႉထၢၼ်ဝႆႉယဝ်ႉ တႃႇႁႂ်ႈႁဝ်းသိုပ်ႇသၢင်ႈ App လႆႈဝႆး။
* **Open Source:** Code ၶွင် ASP.NET Core ၼၼ်ႉ ၽႂ်ၵေႃႈလူလႆႈ လႄႈ ၸွႆးၵၼ်မႄးလႆႈ (Free)။
* **Hosting:** ၵၢၼ်ဢဝ် App ႁဝ်းၵႂႃႇဝၢင်းဝႆႉၼိူဝ် Server တႃႇႁႂ်း Internet ၶဝ်ႈတူၺ်းလႆႈ။
* **Kestrel:** ၸိုဝ်ႈ Web Server လဵၵ်ႉလဵၵ်ႉ ဢၼ်ပႃးဝႆႉၼႂ်း ASP.NET Core တႃႇလႅၼ်ႈ App ႁဝ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း တႅမ်ႈ Web App လူၺ်ႈ ASP.NET Core ၼႆ ႁဝ်းၸၢင်ႈဢဝ် App ၼၼ်ႉၵႂႃႇလႅၼ်ႈၼိူဝ် Server ဢၼ်ၸႂ်ႉ **Linux** လႆႈႁႃႉ?
2. လွင်ႈပႅၵ်ႇပိူင်လူင်ၵႄႈ **Client** လႄႈ **Server** ၼႂ်းလုၵ်ႈၾႃႉ Web ပဵၼ်သင်?
