# Lesson 40: "The Anatomy of a Boolean Expression"

မိူဝ်ႇႁဝ်း ပႆႇလဵပ်ႈႁဵၼ်း `if` ဢမ်ႇၼၼ် `switch` ၼၼ်ႉ ႁဝ်းလူဝ်ႇပွင်ႇၸႂ်ဝႃႈ "လွင်ႈထတ်းသိၼ်" (Decision) ၼႂ်း C# မၼ်းၵူတ်ႇထတ်းၼင်ႇႁိုဝ်။ 
ၵူႈလွင်ႈလွင်ႈ ၼႂ်း Control Flow မၼ်းႁဵတ်းၵၢၼ်ၸွမ်း **Boolean** (`true` ဢမ်ႇၼၼ် `false`) ၵူၺ်းၶႃႈ။

### 1. Boolean Expression ပဵၼ်သင်?
မၼ်းပဵၼ်ထႅဝ် Code ဢၼ်ၼပ်ႉသၢင်ႈယဝ်ႉ သမ်ႉသူင်ႇၽွၼ်းလႆႈမႃးပဵၼ် `true` (မႅၼ်ႈ) ဢမ်ႇၼၼ် `false` (ၽိတ်း)။
* **တူဝ်ယင်ႇ:** `age >= 18`
    * ပေႃး age ပဵၼ် 20 -> ၽွၼ်းလႆႈမၼ်းပဵၼ် `true`
    * ပေႃး age ပဵၼ် 15 -> ၽွၼ်းလႆႈမၼ်းပဵၼ် `false`

### 2. တွၼ်ႈပိုၼ်ႉထၢၼ် 3 ယၢင်ႇ
ၼႂ်း Boolean Expression ၼိုင်ႈဢၼ် ၵႆႉမီးတွၼ်ႈၸိူဝ်းၼႆႉၶႃႈ:

1.  **Variables/Values (Operands):** ၶေႃႈမုၼ်းဢၼ်ႁဝ်းဢဝ်မႃးတႅၵ်ႈၵၼ် (မိူၼ်ၼင်ႇ `userScore`, `50`)။
2.  **Comparison Operators:** ၶိူင်ႈမၢႆတႅၵ်ႈၵၼ် (မိူၼ်ၼင်ႇ `==`, `!=`, `>`, `<`, `>=`, `<=`)။
3.  **Logical Operators:** ၶိူင်ႈမၢႆႁူမ်ႈ (မိူၼ်ၼင်ႇ `&&`, `||`, `!`) တႃႇႁဵတ်းႁႂ်ႈၽွၼ်းလႆႈႁဝ်း ယုင်ႈယၢပ်ႈၶိုၼ်ႈ။



### 3. "Gatekeeper" ၶွင် Control Flow
ဝူၼ်ႉတူၺ်းဝႃႈ Boolean Expression ၼႆႉပဵၼ် "ၵူၼ်းပႂ်ႉၽၵ်းတူ" (Gatekeeper) ဢေႃႈ။
* ပေႃး Expression ပဵၼ် **True** -> ၽၵ်းတူပိုတ်ႇ (App ႁဵတ်းၵၢၼ်ၼႂ်း Code Block ၼၼ်ႉ)။
* ပေႃး Expression ပဵၼ် **False** -> ၽၵ်းတူပိၵ်ႉ (App ၶၢမ်ႈ Code Block ၼၼ်ႉၵႂႃႇ)။

```csharp
bool isSunny = true;
bool isHot = (temperature > 35); // ၼႆႉၵေႃႈပဵၼ် Boolean Expression
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Boolean Expression:** ထႅဝ် Code ဢၼ်ပၼ်ၽွၼ်းလႆႈပဵၼ် True ဢမ်ႇၼၼ် False။
* **Control Flow:** ပိူင်ၵၢၼ်ဢၼ်မၵ်းမၼ်ႈဝႃႈ ထႅဝ် Code လႂ်တေလႆႈႁဵတ်းၵၢၼ် ဢွၼ်တၢင်း/ဝၢႆးလင်။
* **Condition:** ၶေႃႈထၢမ် ဢၼ်ၸႂ်ႉ တႃႇတႅပ်းတတ်ႉ တၢင်းပႆ Program။ ၵႂႃႇၼႆႈ မႃးၼႆႈ။
* **Evaluation:** ၵၢၼ်ဢၼ် Compiler ၼပ်ႉသၢင်ႈ Expression သေ ႁႃၵႃႈၶၼ်သုတ်းမၼ်း (True/False)။

---