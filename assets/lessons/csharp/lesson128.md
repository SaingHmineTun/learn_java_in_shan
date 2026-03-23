# Lesson 128: "What are Properties? Moving Beyond Public Fields"

ၼႂ်း Module 10 (Lesson 125) ႁဝ်းႁူႉယဝ်ႉဝႃႈ ႁဝ်းဢမ်ႇထုၵ်ႇလီပၼ် Fields ပဵၼ် `public`။ ၵူၺ်းၵႃႈ သင်ႁဝ်းၸႂ်ႉ `GetMethod()` လႄႈ `SetMethod()` ၵူႈတူဝ်... Code ႁဝ်းတေယၢဝ်းသေ တူၺ်းယၢပ်ႇၼႃႇၶႃႈ။ C# ၸင်ႇပၼ် **Properties** မႃး တႃႇၵႄႈပၼ်ႁႃၼႆႉၶႃႈ။

### 1. Property ပဵၼ်သင်?
**Property** ပဵၼ် Member ၶွင် Class ဢၼ်မီးႁၢင်ႈၽၢင်မိူၼ် "Field" (Variable) ၵူၺ်းၵႃႈ မၼ်းလႅၼ်ႈမိူၼ် "Method" ၶႃႈ။ မၼ်းပဵၼ် "ၵူၼ်းယႅၼ်ႇၽၵ်း" (Gatekeeper) ဢၼ်ၸွႆးၵုမ်းထိင်း လွင်ႈလူတ်ႇ (Read) လႄႈ လွင်ႈမႄး (Write) ၶေႃႈမုၼ်းၶႃႈ။



### 2. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
* **Data Protection:** ႁႄႉၵၢင်ႈဢမ်ႇပၼ်မႄးၶေႃႈမုၼ်း ၸွမ်းၼင်ႇၸႂ် (မိူၼ်ၼင်ႇ ပၼ် Age = -5)။
* **Encapsulation:** လပ်ႉ Private Field (Backing Field) ဝႆႉၽၢႆႇလင် သေပၼ် Property ပဵၼ်တၢင်းၶဝ်ႈ။
* **Ease of Use:** ၵူၼ်းၸႂ်ႉ Code ႁဝ်း တေႁၼ်မၼ်းမိူၼ် Variable လုၵ်ႈၼိုင်ႈ (ၸႂ်ႉမၢႆ `=` လႆႈၵမ်းလဵဝ်) ဢမ်ႇလူဝ်ႇႁွင်ႉ Method ၶႃႈ။

### 3. ပိူင်သၢင်ႈ (The Concept)
Property မီးတွၼ်ႈၵၢၼ်ႁဵတ်းသၢင်ႈ 2 ဢၼ် ဢၼ်ႁဝ်းႁွင်ႉဝႃႈ **Accessors**:
1.  **`get` (Getter):** လႅၼ်ႈမိူဝ်ႈမီးၵူၼ်းမႃး "ဢၢၼ်ႇ" ၵႃႈၶၼ် (Read)။
2.  **`set` (Setter):** လႅၼ်ႈမိူဝ်ႈမီးၵူၼ်းမႃး "ပၼ်" ၵႃႈၶၼ် (Write)။

### 4. တူဝ်ယင်ႇ Comparison
**လၢႆးၵဝ်ႇ (Public Field - ဢမ်ႇလီ):**
```csharp
public int Age; // ၽႂ်ၵေႃႈမႄးလႆႈ ဢမ်ႇမီးပိူင်
```

**လၢႆးမႂ်ႇ (Property - လႅတ်းသႅဝ်း):**
```csharp
private int _age; // Backing Field (လပ်ႉဝႆႉ)

public int Age {
    get { return _age; }
    set { 
        if (value > 0) _age = value; // မီးၵၢၼ်ၵူတ်ႇထတ်း
    }
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Property:** Member ဢၼ်ပၼ်သုၼ်ႇၶဝ်ႈၸူး Field လူၺ်းမီး Logic ၵုမ်းထိင်း။
* **Accessor:** တွၼ်ႈ Code (`get` ဢမ်ႇၼၼ် `set`) ဢၼ်ယူႇၼႂ်း Property။
* **Backing Field:** Private Variable ဢၼ်သိမ်းၶေႃႈမုၼ်းတႄႉတႄႉ ဝႆႉၽၢႆႇလင် Property။
* **Value Keyword:** Keyword ၶူးဝိသဵတ်ႇ ဢၼ်ၸႂ်ႉႁပ်ႉၵႃႈၶၼ် ဢၼ်ပိူၼ်ႈသူင်ႇမႃးပၼ် Property။

---