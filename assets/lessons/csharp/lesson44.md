# Lesson 44: "Logical Operators in Control Flow"

ၽိူဝ်ႇတႃႉတေတႅမ်ႈ `if` သွၼ်ႉၵၼ်ၼမ်ၼမ် (Nested If)၊ ႁဝ်းၸႂ်ႉၶိူင်ႈမၢႆၸိူဝ်းၼႆႉ တႃႇႁူမ်ႈၶေႃႈထၢမ် (Conditions) ဝႆႉၼႂ်းထႅဝ်လဵဝ်ၵၼ်ၶႃႈ။

### 1. The AND Operator (`&&`)
မၼ်းတေႁဵတ်းၵၢၼ် ပေႃး **"တင်းသွင်ၽၢႆႇ"** ပဵၼ် True ၵူၺ်း။
* **တူဝ်ယင်ႇ:** တႃႇလႆႈ "ၶဝ်ႈႁဵၼ်း" (Admission) တေလႆႈမီး "Score သုင်" **လႄႈ** "ပၼ်လႆႈၵႃႈႁဵၼ်း"။

```csharp
if (score >= 80 && hasPaidTuition) {
    Console.WriteLine("You are admitted to the class!");
}
```

### 2. The OR Operator (`||`)
မၼ်းတေႁဵတ်းၵၢၼ် ပေႃး **"ၽၢႆႇၼိုင်ႈ"** ပဵၼ် True ယဝ်ႉ။
* **တူဝ်ယင်ႇ:** တႃႇလႆႈ "ၶဝ်ႈပွႆး" (Entry) တေလႆႈမီး "ဝႂ် (Ticket)" **ဢမ်ႇၼၼ်** ပဵၼ် "VIP"။

```csharp
if (hasTicket || isVIP) {
    Console.WriteLine("Welcome to the Shan Concert!");
}
```



### 3. The NOT Operator (`!`)
မၼ်းၸႂ်ႉတႃႇ **"ပိၼ်ႇၽၢႆႇ"** (Reverse)။ ပေႃး True ပဵၼ် False၊ ပေႃး False ပဵၼ် True။
* **တူဝ်ယင်ႇ:** သင်ဝႃႈ "ဢမ်ႇၸႂ်ႈ" ၵူၼ်းၶဝ်ႈလဵၼ်ႈ (Not Logged In)။

```csharp
bool isLoggedIn = false;

if (!isLoggedIn) {
    Console.WriteLine("Please login first.");
}
```

### 4. Short-Circuiting (Review)
သတိဝႆႉဝႃႈ C# တေၼပ်ႉလုၵ်ႉၽၢႆႇသၢႆႉၵႂႃႇၶႃႈ:
* **`&&`**: ပေႃးၽၢႆႇသၢႆႉပဵၼ် **False** ယဝ်ႉ၊ မၼ်းတေဢမ်ႇၵႂႃႇတူၺ်းၽၢႆႇၶႂႃ (Skip)။
* **`||`**: ပေႃးၽၢႆႇသၢႆႉပဵၼ် **True** ယဝ်ႉ၊ မၼ်းတေဢမ်ႇၵႂႃႇတူၺ်းၽၢႆႇၶႂႃ (Skip)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Logical AND (&&):** ၶိူင်ႈမၢႆဢၼ်တေပဵၼ် True ပေႃး Conditions တင်းမူတ်းမႅၼ်ႈၸွမ်းၵၼ်။
* **Logical OR (||):** ၶိူင်ႈမၢႆဢၼ်တေပဵၼ် True ပေႃးမီး Condition ဢၼ်ၼိုင်ႈမႅၼ်ႈ။
* **Logical NOT (!):** ၶိူင်ႈမၢႆဢၼ်ပိၼ်ႇၵႃႈၶၼ် Boolean ပိၼ်ႈၽိူၼ်။
* **Short-circuiting:** လွၵ်းလၢႆးဢၼ် Compiler ၵိုတ်းၼပ်ႉသၢင်ႈၵမ်းလဵဝ် မိူဝ်ႈႁူႉၽွၼ်းလႆႈယဝ်ႉ တႃႇႁႂ်ႈ App ႁဵတ်းၵၢၼ်ၽႂ်း။

---