# Lesson 121: "The 'protected' Modifier: Sharing with Child Classes"

**`protected`** ၼႆႉ မိူၼ်တင်း "ၶူဝ်းၶွင်မွၼ်ႇ" (Inheritance) ၼႂ်းၼႃႈႁိူၼ်းၶႃႈ။ 
မၼ်းပဵၼ် Access Modifier ဢၼ်ယူႇၼႂ်းၵႄႈၵၢင် `public` လႄႈ `private`။

### 1. လႅၼ်းႁၼ် (Visibility Scope)
* **ၼႂ်း Class လဵဝ်ၵၼ်:** ႁၼ်လႆႈ လႄႈ ၸႂ်ႉလႆႈ (မိူၼ် private)။
* **ၼႂ်း Class လုၵ်ႈ (Derived/Child Classes):** **ႁၼ်လႆႈ** လႄႈ ၸႂ်ႉလႆႈ (ၼႆႉပဵၼ်တွၼ်ႈဢၼ်ပႅၵ်ႇပိူင်ၶႃႈ)။
* **ၼွၵ်ႈ Class (Other classes):** ဢမ်ႇႁၼ် လႄႈ ၸႂ်ႉဢမ်ႇလႆႈ (မိူၼ် private)။



### 2. ပိူင်သၢင်ႈ (Syntax)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Class `Staff` (ၵူၼ်းႁဵတ်းၵၢၼ်) ဢၼ်ပဵၼ် Class ပေႃး (Parent)။

```csharp
public class Staff {
    // ၸႂ်ႉ protected တႃႇပၼ်လုၵ်ႈလၢၼ်ၸႂ်ႉ
    protected string Department = "General"; 

    private string _personalId = "123-456"; // လုၵ်ႈၵေႃႈႁၼ်ဢမ်ႇလႆႈ
}

public class Teacher : Staff {
    public void ShowInfo() {
        // Teacher ၸၢင်ႈၸႂ်ႉ Department လႆႈ ယွၼ်ႉမၼ်းသိုပ်ႉမွေႇ (Inherit) မႃး
        Console.WriteLine("Working in: " + Department);
        
        // Console.WriteLine(_personalId); // Error! private တေႃႈလုၵ်ႈၵေႃႈၸႂ်ႉဢမ်ႇလႆႈ
    }
}
```

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ `protected`?
* **Code Reuse:** ႁဝ်းၸၢင်ႈတႅမ်ႈ Code ဝႆႉတီႈ Class ပေႃႈသေ ပၼ်လုၵ်ႈလၢၼ် လၢႆလၢႆ Class ဢဝ်ၵႂႃႇၸႂ်ႉ (Inherit) လႆႈယဝ်ႉ။
* **Security & Flexibility:** ႁဝ်းတိုၵ်ႉ "သိူင်ႇ" (Hide) ၶေႃႈမုၼ်းၼၼ်ႉ ဝႆႉယူႇ ဢမ်ႇပၼ်ၵေႃႉၼွၵ်ႈႁၼ်၊ ၵူၺ်းၵႃႈ ပၼ်သုၼ်ႇ "ၵူၼ်းၼႂ်းမုင်ႉႁိူၼ်း" (Child classes) ႁၼ်ၸႂ်ႉလႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Protected Modifier:** Keyword ဢၼ်ပၼ်သုၼ်ႇၸႂ်ႉလႆႈ ၼႂ်း Class မၼ်း လႄႈ Class ဢၼ်သိုပ်ႇၶွင်မွၼ်ႇ (Derived) မႃး။
* **Parent Class (Base Class):** Class ဢၼ်ပဵၼ်တူဝ်တႄႇ ပၼ်ၶွင်မွၼ်ႇ။
* **Child Class (Derived Class):** Class ဢၼ်မႃးသိုပ်ႇၶွင်မွၼ်ႇ (Inherit)။ ဢဝ်ၶေႃႈမုၼ်းလႄႈ လၢႆးႁဵတ်းသၢင်ႈ တီႈ Parent လႆႈ။
* **Inheritance:** ပိူင်ၵၢၼ်ဢဝ်ၶွင်မွၼ်ႇ ၼႂ်း OOP (တေလဵပ်ႈႁဵၼ်းလိုၵ်ႉလိူဝ်ၵဝ်ႇ ၼႂ်း Module ၼႃႈၶႃႈ)။

---