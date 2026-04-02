# Lesson 202: "Introduction to Delegates: Functional Pointers"

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Variable ပိူင်ၼိုင်ႈ ဢၼ်ဢမ်ႇၵဵပ်း "တူဝ်ၼပ်ႉ" (int) ဢမ်ႇၼၼ် "လိၵ်ႈ" (string)၊ 
ၵူၺ်းၵႃႈ မၼ်းၵဵပ်း **"လၢႆးႁဵတ်းၵၢၼ်" (Method)** ဝႆႉၶႃႈ။ ၼၼ်ႉယဝ်ႉၶႃႈ ဢၼ်ႁဝ်းႁွင်ႉဝႃႈ **Delegate**။

### 1. Delegate ပဵၼ်သင်?
**Delegate** ပဵၼ် Type ပိူင်ၼိုင်ႈ ဢၼ်မၵ်းမၼ်ႈ "ပိူင်ႁၢင်ႈ" (Signature) ၶွင် Method ဢၼ်မၼ်းတေၸၢမ်းၸႂ်ႉလႆႈ။ 
မၼ်းမိူၼ်ၼင်ႇ "တူဝ်တႅၼ်း" ဢၼ်ႁဝ်းသူင်ႇ Method ၵႂႃႇမႃးၼႂ်း Program ႁဝ်းလႆႈၶႃႈ။

* **လွၼ်ႉမၼ်း:** Delegate ပဵၼ် "တူဝ်ၸိ Method" (Pointer to a function)။



### 2. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?
1.  **Flexibility:** ႁဝ်းၸၢင်ႈသူင်ႇ Method ဢၼ်ၼိုင်ႈ ၵႂႃႇပဵၼ် Parameter ၼႂ်း Method ဢၼ်ၼိုင်ႈလႆႈ (Callbacks)။
2.  **Decoupling:** ႁဵတ်းႁႂ်ႈ Code တွၼ်ႈၼိုင်ႈ ဢမ်ႇလူဝ်ႇႁူႉၸၵ်း Code ထႅင်ႈတွၼ်ႈၼိုင်ႈ၊ ၵူၺ်းၵႃႈ ႁွင်ႉၸႂ်ႉၵၢၼ်ၵၼ် လူၺ်ႈ Delegate လႆႈ။

### 3. ပိူင်ႁၢင်ႈ (The Signature)
Delegate တေႁပ်ႉဢဝ် Method လႆႈၵေႃႈတေႃႇမိူဝ်ႈ Method ၼၼ်ႉမီး:
* **Return Type** မိူၼ်ၵၼ် (မိူၼ်ၼင်ႇ void ဢမ်ႇၼၼ် int)။
* **Parameters** မိူၼ်ၵၼ် (တၢင်းၼမ် လႄႈ Type တေလႆႈမိူၼ်ၵၼ်)။

### 4. တူဝ်ယင်ႇၼႂ်းလွင်ႈတႄႉ
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းတႅမ်ႈ App **"Shan News Alert"**။
* ႁဝ်းမီး Delegate ဢၼ်ၼိုင်ႈ ၸိုဝ်ႈဝႃႈ `NotifyDelegate`။
* ႁဝ်းၸၢင်ႈၸိမၼ်းၵႂႃႇတီႈ Method **"သူင်ႇ SMS"** ဢမ်ႇၼၼ် Method **"သူင်ႇ Email"** ၵေႃႈလႆႈ ၸွမ်းၼင်ႇၵူၼ်းၸႂ်ႉလိူၵ်ႈဝႆႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Delegate:** တူဝ်တႅၼ်း ဢၼ်ၵဵပ်း Reference ၶွင် Method ဝႆႉ။
* **Function Pointer:** တူဝ်ၸိဢၼ်ၼႄဝႃႈ Method ၼၼ်ႉယူႇတီႈလႂ်ၼႂ်း Memory။
* **Signature:** ပိူင်ႁၢင်ႈၶွင် Method (Return type + Parameters)။
* **Type-safe:** လွင်ႈမၼ်ႈၸႂ်ဝႃႈ Delegate တေႁပ်ႉဢဝ် Method ဢၼ်မီး Type မႅၼ်ႈၵၼ်ၵူၺ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁႂ်ႈႁဝ်းဝူၼ်ႉတူၺ်းလွင်ႈတူဝ်ယင်ႇ 2 ယိူင်ႈၼႆႉ သေတႅပ်းတတ်းဝႃႈ မၼ်းမီး **Signature** မိူၼ်ၵၼ်ႁႃႉ?
1. `void Show(string msg)` လႄႈ `void Print(string text)`
2. `int Add(int a, int b)` လႄႈ `void Result(int n)`