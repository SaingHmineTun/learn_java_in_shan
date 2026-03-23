# Lesson 136: "The 'init' Only Setter"

**`init`** ပွင်ႇဝႃႈ **"Initialization Only"** ၶႃႈ။ မၼ်းပဵၼ် Keyword ဢၼ်မႃးတႅၼ်းတီႈ `set` သေ မီးပိူင်ၵၢၼ်ဝႃႈ: "ပၼ်မႄးၵႃႈၶၼ်လႆႈ ၵူၺ်းၼႂ်းတွၼ်ႈဢၼ် **သၢင်ႈ Object (Creation)** ၼၼ်ႉၵူၺ်း၊ ဝၢႆးၼၼ်ႉ လႅၵ်ႈလၢႆႈဢမ်ႇလႆႈယဝ်ႉ" ၼႆၶႃႈ။



### 1. ပႅၵ်ႇတင်း `set` ၼင်ႇႁိုဝ်?
* **`set`:** ပိူၼ်ႈမႃးမႄးၵႃႈၶၼ်လႆႈ ၵူႈၶၢဝ်းယၢမ်း (Read-Write)။
* **`init`:** ပိူၼ်ႈမႃးမႄးလႆႈ ၵူၺ်းၼႂ်း **Constructor** ဢမ်ႇၼၼ် **Object Initializer** (တွၼ်ႈ { ... } မိူဝ်ႈ `new` ၼၼ်ႉ) ၶႃႈ။

### 2. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းၸႂ်ႉမၼ်းၼႂ်း Auto-Property လႆႈငၢႆႈๆ ၼင်ႇၼႆၶႃႈ:

```csharp
public class ShanBook {
    public string Isbn { get; init; } // ၸႂ်ႉ init တႅၼ်း set
    public string Title { get; set; }
}
```

### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
မိူဝ်ႈႁဝ်းၸႂ်ႉ `init`... ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ်လႆႈ မိူဝ်ႈသၢင်ႈ Object ၶႃႈ:

```csharp
// ၼႆႉႁွင်ႉဝႃႈ Object Initializer (ပၼ်ၵႃႈၶၼ်လႆႈယူႇ)
var myBook = new ShanBook { 
    Isbn = "978-123", 
    Title = "Shan History" 
};

myBook.Title = "Updated Title"; // OK: Title ပဵၼ် set
// myBook.Isbn = "978-999";    // Error! (init-only property မႄးဢမ်ႇလႆႈယဝ်ႉ)
```

### 4. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ `init`?
1.  **Immutability:** ၸွႆးႁဵတ်းႁႂ်ႈ Object ႁဝ်း "ၼိမ်" သေ ဢမ်ႇမီးၽႂ်မႃးမႄးၶေႃႈမုၼ်းလမ်ႇလွင်ႈ ဝၢႆးသေၵိူတ်ႇယဝ်ႉ။
2.  **Object Initializer Support:** Read-only property (`{ get; }`) ၼၼ်ႉ ႁဝ်းပၼ်ၵႃႈၶၼ် လုၵ်ႉတီႈ `{ Isbn = "..." }` ဢမ်ႇလႆႈ (တေလႆႈၸႂ်ႉ Constructor ၵူၺ်း)။ ၵူၺ်းၵႃႈ `init` ၼႆႉ ပၼ်ႁဝ်းၸႂ်ႉ Object Initializer လႆႈသေ တိုၵ်ႉၵႅတ်ႇၶႄလွင်ႈမႄး (Modify) ဝႆႉယူႇၶႃႈ။
3.  **Cleaner Code:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Constructor ဢၼ်မီး Parameter ၼမ်ๆ ၵေႃႈ ၸၢင်ႈပၼ်ၵႃႈၶၼ်တႄႇလႆႈငၢႆႈๆ ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Init-Only Setter:** Accessor ဢၼ်ပၼ်သုၼ်ႇမႄးၵႃႈၶၼ် ၵူၺ်းၼႂ်းၶၢဝ်းယၢမ်း Initialization။
* **Object Initializer:** လၢႆးသၢင်ႈ Object သေပၼ်ၵႃႈၶၼ် ၼႂ်းမၢႆ `{ }`။
* **Immutability:** ပိူင်ၵၢၼ်ဢၼ် Object ဢမ်ႇလႅၵ်ႈလၢႆႈ (State-stable)။
* **Post-Creation Modification:** ၵၢၼ်မႄးၶေႃႈမုၼ်း ဝၢႆးသေ Object ၵိူတ်ႇယဝ်ႉ (ဢၼ် `init` ႁၢမ်ႈဝႆႉ)။

---