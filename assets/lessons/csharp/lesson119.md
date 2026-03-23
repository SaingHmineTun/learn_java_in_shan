# Lesson 119: "The 'public' Modifier"

မိူဝ်ႈႁဝ်းသႂ်ႇ Keyword **`public`** ဝႆႉၽၢႆႇၼႃႈ Class ဢမ်ႇၼၼ် Member (Field/Method) ၸိုင်... 
မၼ်းပွင်ႇဝႃႈ **"ဢမ်ႇမီးၶေႃႈႁၢမ်ႈ"** (No restrictions) ၶႃႈ။

### 1. ၼႃႈတီႈ ဢၼ်ႁၼ်လႆႈမၼ်း (Visibility Scope)
* **ၼႂ်း Class လဵဝ်ၵၼ်:** ႁၼ်လႆႈ။
* **ၼႂ်း Project (Assembly) လဵဝ်ၵၼ်:** ႁၼ်လႆႈ။
* **လုၵ်ႉတီႈ Project တၢင်ႇဢၼ် (External Reference):** ၵေႃႈႁၼ်လႆႈ။



### 2. ပိူင်သၢင်ႈ (Syntax)
```csharp
public class ShanMessenger {
    public string MessageTitle; // Field ပဵၼ် public (ဢမ်ႇပေႃးလီ)

    public void SendMessage() { // Method ပဵၼ် public (လီယဝ်ႉ)
        Console.WriteLine("Sending Message...");
    }
}
```

### 3. မိူဝ်ႈလႂ်ၸင်ႇလူဝ်ႇၸႂ်ႉ `public`?
* **Methods:** ၸႂ်ႉတႃႇ Methods ဢၼ်ႁဝ်းၶႂ်ႈပၼ် "ၵူၼ်းၼွၵ်ႈ" (Other classes) ႁွင်ႉၸႂ်ႉ (မိူၼ်ၼင်ႇ `Start()`, `Calculate()`, `Save()`)။
* **Classes:** ၸႂ်ႉတႃႇ Class ဢၼ်ႁဝ်းၶႂ်ႈႁႂ်ႈ Project တၢင်ႇဢၼ် ၸႂ်ႉသၢင်ႈ Object လႆႈ။
* **Constants:** ၸႂ်ႉတႃႇၵႃႈၶၼ် ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈ (Constants) လႆႈ။

### 4. လွင်ႈလူဝ်ႇၾၢင်ႉ (The Risk)
သင်ႁဝ်း ႁဵတ်းႁႂ်ႈ Fields (Data) တင်းမူတ်းပဵၼ် `public` ၸိုင်:
* ၽႂ်ၵေႃႈယႃႇ ၸၢင်ႈမႃးမႄးၶေႃႈမုၼ်းလႆႈ ၵူႈၶၢဝ်းယၢမ်း။
* ႁဝ်းဢမ်ႇၸၢင်ႈ "ၵူတ်ႇထတ်း" (Validate) ဝႃႈ ၶေႃႈမုၼ်းဢၼ်ၶဝ်မႄးၼၼ်ႉ မႅၼ်ႈႁိုဝ်/ၽိတ်းႁိုဝ်။
* မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်း "ၸပ်းၵၼ်" (Tightly Coupled) ပူၼ်ႉတီႈ၊ ပေႃးမႄးတီႈၼိုင်ႈ တုမ်ႉတိူဝ်ႉၵူႈတီႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Public Modifier:** Keyword ဢၼ်ပၼ်သုၼ်ႇၶဝ်ႈၸႂ်ႉ ၵူႈတီႈၼႂ်း Codebase။
* **API (Application Programming Interface):** တွၼ်ႈဢၼ်ပဵၼ် `public` ၼႂ်း Class ႁဝ်း (တွၼ်ႈဢၼ်ပၼ်ပိူၼ်ႈႁွင်ႉၸႂ်ႉ)။
* **Unrestricted Access:** ၵၢၼ်ၶဝ်ႈၸူး ဢၼ်ဢမ်ႇမီးၶေႃႈႁႄႉၵၢင်ႈ။
* **Exporting:** ၵၢၼ်ပၼ်သုၼ်ႇ Class ႁႂ်ႈၸႂ်ႉလႆႈ ၼွၵ်ႈ Assembly (DLL)။

---