# Lesson 50: "The 'goto' Statement" (ၵၢၼ်ဝျႅတ်ႉၶၢမ်ႈ Code)

**'goto'** ၼႆႉ ၸႂ်ႉတႃႇသူင်ႇ Program Flow ၵႂႃႇၸူး **Label** ဢၼ်ႁဝ်းတင်ႈဝႆႉၶႃႈ။

### 1. ပိူင်သၢင်ႈ (Syntax)

```csharp
goto MyLabel;

// Code တွၼ်ႈၼႆႉ တေလႆႈလုၵ်ႉၶၢမ်ႈၵႂႃႇ (Skipped)

MyLabel: 
Console.WriteLine("Jumped here!");
```

### 2. တူဝ်ယင်ႇ Code တႄႉတႄႉ
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီးၵၢၼ်ၵူတ်ႇထတ်း Error သေ ၶႂ်ႈပိုတ်ႈၵႂႃႇတီႈ "တွၼ်ႈသုတ်း" ၵမ်းလဵဝ်ၶႃႈ။

```csharp
int age = 15;

if (age < 18) {
    goto Underage;
}

Console.WriteLine("You can enter.");

Underage:
Console.WriteLine("Access Denied: You are too young.");
```

### 3. ႁဵတ်းသင်လုၵ်ႈႁဵၼ်းလူဝ်ႇ "ၾၢင်ႉ" (Why to Avoid It)
* **Spaghetti Code:** ပေႃးႁဝ်းၸႂ်ႉ `goto` ၼမ်ၼႃႇ၊ Code ႁဝ်းတေယုင်ႈမိူၼ် "သဵၼ်ႈၶဝ်ႈသွႆး" (Spaghetti)။ မၼ်းတေယၢပ်ႇတႃႇၸွမ်းတူၺ်းဝႃႈ Program လႅၼ်ႈၵႂႃႇတၢင်းလႂ်။
* **Logic Breaks:** မၼ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ Scope ၶွင် Variable ယုင်ႈယၢင်ႈသေ ၵႆႉပဵၼ် Bug ဢၼ်ႁႃယၢပ်ႇၶႃႈ။
* **Modern Alternatives:** ၼႂ်း C# မိူဝ်ႈလဵဝ် ႁဝ်းမီး `if-else`, `switch`, `return`, `break`, လႄႈ `continue` ဢၼ်ႁဵတ်းၵၢၼ်လႆႈလီသေ `goto` ၼမ်ၼႃႇယဝ်ႉ။


### 4. မိူဝ်ႈလႂ်ၸင်ႇလူဝ်ႇၸႂ်ႉ? (Rare Use Cases)
* **Breaking Deep Loops:** မိူဝ်ႈမီး Loop သွၼ်ႉၵၼ် 3-4 ၸၼ်ႉသေ ၶႂ်ႈဢွၵ်ႇမႃးတင်းမူတ်းၵမ်းလဵဝ် (ၵူၺ်းၵႃႈ ၼႆႉၵေႃႈမီးလၢႆးမႄးထႅင်ႈယူႇၶႃႈ)။
* **Switch Fall-through:** ၸႂ်ႉၼႂ်း `switch` တႃႇပိုတ်ႈၵႂႃႇၸူးထႅင်ႈ Case ၼိုင်ႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Label:** ၸိုဝ်ႈဢၼ်ႁဝ်းတင်ႈဝႆႉၼႂ်း Code (မီးမၢႆ `:` ၸွမ်းလင်) တႃႇပဵၼ်တီႈ (Target) ၶွင် `goto`။
* **Jump Statement:** ၶေႃႈၵႂၢမ်းဢၼ်လႅၵ်ႈလၢႆႈ Control Flow ႁႂ်ႈပိုတ်ႈၶၢမ်ႈထႅဝ် Code။
* **Spaghetti Code:** ၶေႃႈၵႂၢမ်းလၢတ်ႈၼႄ Code ဢၼ်ယုင်ႈယၢင်ႈၼႃႇသေ ဢမ်ႇမီးပိူင်သၢင်ႈ (Structure) ဢၼ်လီ။

---