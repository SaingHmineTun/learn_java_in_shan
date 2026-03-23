# Lesson 156: "Abstract vs. Virtual Methods"

ဝူၼ်ႉတူၺ်းငၢႆႈๆ ၼင်ႇၼႆၶႃႈ:
* **Abstract** ပဵၼ် "ၵၢၼ်မၵ်းမၼ်ႈ" (Requirement) - **တေလႆႈႁဵတ်း**။
* **Virtual** ပဵၼ် "တၢင်းလိူၵ်ႈ" (Option) - **မႄးၵေႃႈလႆႈ ဢမ်ႇမႄးၵေႃႈလႆႈ**။



### 1. Abstract Method (တေလႆႈမီး)
* **Body:** ဢမ်ႇမီး Code Block `{ }` ၼႂ်း Class ပေႃး။
* **Implementation:** Class လုၵ်ႈ **တေလႆႈ** (Must) `override` တႃႇသေႇ၊ ဢမ်ႇၼၼ် Compiler တေလၢတ်ႈ Error ၶႃႈ။
* **Class Type:** ၸႂ်ႉလႆႈၵူၺ်းၼႂ်း **Abstract Class** ၶႃႈ။
* **Why use?:** မိူဝ်ႈႁဝ်းႁူႉဝႃႈ Class လုၵ်ႈ "လူဝ်ႇမီး" လၢႆးႁဵတ်းသၢင်ႈၼၼ်ႉ၊ ၵူၺ်းၵႃႈ ႁဝ်းဢမ်ႇပၼ် Default Logic လႆႈၶႃႈ။

### 2. Virtual Method (မႄးလႆႈ)
* **Body:** **တေလႆႈမီး** Code Block `{ }` ၼႂ်း Class ပေႃး (Default Logic)။
* **Implementation:** Class လုၵ်ႈ တေ `override` ၵေႃႈလႆႈ ဢမ်ႇၼၼ် တေၸႂ်ႉ Logic ၶွင်တူဝ်ပေႃးၵမ်းလဵဝ်ၵေႃႈလႆႈၶႃႈ။
* **Class Type:** ၸႂ်ႉလႆႈတင်းၼႂ်း **Normal Class** လႄႈ **Abstract Class** ၶႃႈ။
* **Why use?:** မိူဝ်ႈႁဝ်းမီး Default Logic ပၼ်ဝႆႉယဝ်ႉ၊ ၵူၺ်းၵႃႈ ပၼ်သုၼ်ႇ Class လုၵ်ႈ မႃးလႅၵ်ႈလၢႆႈ (Customization) လႆႈၶႃႈ။

---

### 3. ပႅၵ်ႇပိူင်ၵၼ်ၼင်ႇႁိုဝ်? (Table Summary)

| Feature | Abstract Method | Virtual Method |
| :--- | :--- | :--- |
| **Method Body `{ }`** | **ဢမ်ႇမီး** (No implementation) | **မီး** (Default implementation) |
| **Override in Child?** | **တေလႆႈ (Required)** | **တၢင်းလိူၵ်ႈ (Optional)** |
| **Keywords** | `abstract` | `virtual` |
| **Class Requirement** | တေလႆႈယူႇၼႂ်း Abstract Class | ယူႇၼႂ်း Class သင်ၵေႃႈလႆႈ |
| **Goal** | မၵ်းမၼ်ႈ "ၵတိ" (Enforce a contract) | ပၼ် "တၢင်းလိူၵ်ႈ" (Provide an option) |

---

### 4. တူဝ်ယင်ႇ Code (The Shan Developer Context)

```csharp
public abstract class ShanApp {
    // Abstract: ၵူႈ App တေလႆႈမီးလၢႆး "ပိုတ်ႇ" ႁင်းၵူၺ်းမၼ်း (တေလႆႈတႅမ်ႈမႂ်ႇ)
    public abstract void Open();

    // Virtual: ၵူႈ App မီးလၢႆး "ပိတ်း" မိူၼ်ၵၼ်၊ ၵူၺ်းၵႃႈ သင်ၶႂ်ႈမႄးၵေႃႈလႅၵ်ႈလႆႈ
    public virtual void Close() {
        Console.WriteLine("App is closing normally...");
    }
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Forced Implementation:** ၵၢၼ်บังคับ (Force) ႁႂ်ႈတႅမ်ႈ Code (တူဝ်ယင်ႇ Abstract)။
* **Default Implementation:** Logic ပိုၼ်ႉထၢၼ် ဢၼ်ပၼ်ဝႆႉဢွၼ်တၢင်း (တူဝ်ယင်ႇ Virtual)။
* **Signature Only:** မီးၵူၺ်းၸိုဝ်ႈ လႄႈ Parameter (တူဝ်ယင်ႇ Abstract)။
* **Overridability:** လွင်ႈလႅတ်းသႅဝ်း ဢၼ်ပၼ်သုၼ်ႇလုၵ်ႈလၢၼ်မႄးလႆႈ။

---