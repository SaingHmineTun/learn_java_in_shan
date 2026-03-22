# Lesson 31: "Logical Operators" (ၶိူင်ႈမၢႆပၢႆးဝူၼ်ႉ)

Logical Operators ၼႆႉၸႂ်ႉတႃႇဢဝ်ၵႃႈၶၼ် `bool` (true/false) လၢႆလၢႆဢၼ် မႃးၼပ်ႉသၢင်ႈၸွမ်းၵၼ်ၶႃႈ။

### 1. ၶိူင်ႈမၢႆပၢႆးဝူၼ်ႉ 3 ပိူင်

| Operator    | Name | Meaning                                             | Example (A=true, B=false) | Result |
|:------------| :--- |:----------------------------------------------------| :--- | :--- |
| **`&&`**    | **AND** | တေလႆႈ **"မႅၼ်ႈတင်းသွင်"** ၸင်ႇတေပဵၼ် true           | `A && B` | **false** |
| **`\|\|`** | **OR** | **"မႅၼ်ႈဢၼ်ၼိုင်ႈၵေႃႈ"** တေပဵၼ် true                | `A || B` | **true** |
| **`!`**     | **NOT** | **"ပိၼ်ႇၽၢႆႇ"** (True ပဵၼ် False / False ပဵၼ် True) | `!A` | **false** |



### 2. လွင်ႈႁဵတ်းၵၢၼ် Short-Circuit
C# ၼႆႉမၼ်း "လႅတ်း" (Smart) ၼႃႇၶႃႈ။ မၼ်းတေဢမ်ႇၼပ်ႉသၢင်ႈထႅင်ႈ ပေႃးမၼ်းႁူႉ ၽွၼ်းလႆႈမၼ်း ဢွၼ်ၼႃႈယဝ်ႉ:
* **`&&` (AND):** သင်ဝႃႈဢၼ်ၽၢႆႇသၢႆႉပဵၼ် **false** ယဝ်ႉ၊ မၼ်းတေဢမ်ႇတူၺ်းၽၢႆႇၶႂႃထႅင်ႈ (ယွၼ်ႉဝႃႈမၼ်းဢမ်ႇမီးတၢင်းပဵၼ် true လႆႈယဝ်ႉ)။
* **`||` (OR):** သင်ဝႃႈဢၼ်ၽၢႆႇသၢႆႉပဵၼ် **true** ယဝ်ႉ၊ မၼ်းတေဢမ်ႇတူၺ်းၽၢႆႇၶႂႃထႅင်ႈ (ယွၼ်ႉဝႃႈမၼ်းပဵၼ် true ယဝ်ႉယဝ်ႉ)။

### 3. တူဝ်ယင်ႇ Code တႄႉတႄႉ
```csharp
bool hasUsername = true;
bool hasPassword = false;

// တေလႆႈမီးတင်းသွင်ယၢင်ႇ ၸင်ႇတေပဵၼ် true
bool canLogin = hasUsername && hasPassword; 
Console.WriteLine(canLogin); // Output: false

// မီးဢၼ်လႂ်ဢၼ်ၼိုင်ႈၵေႃႈလႆႈ
bool canEnter = hasUsername || hasPassword;
Console.WriteLine(canEnter); // Output: true

// ပိၼ်ႇၽၢႆႇ
Console.WriteLine(!hasUsername); // Output: false
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Logical Operator:** ၶိူင်ႈမၢႆဢၼ်ၸႂ်ႉတႃႇႁဵတ်းၵၢၼ်ၼိူဝ် ၵႃႈၶၼ် Boolean။
* **AND (&&):** တေလႆႈမႅၼ်ႈတင်းသွင်ၽၢႆႇ ၸင်ႇတေပၼ်ၶိုၼ်း true။
* **OR (||):** မႅၼ်ႈၽၢႆႇလဵဝ်ႈၵေႃႈ တေပၼ်မႃးၶိုၼ်း true။ သင်ဢမ်ႇမႅၼ်ႈ တင်းသွင်ၽၢႆႇ ၸင်ႇတေပဵၼ် false။
* **NOT (!):** ၶိူင်ႈမၢႆဢၼ်ၸႂ်ႉတႃႇပိၼ်ႇ (Invert) ၵႃႈၶၼ် Boolean။
* **Short-circuiting:** ၵၢၼ်ၵိုတ်းၼပ်ႉသၢင်ႈၵမ်းလဵဝ် မိူဝ်ႈႁူႉၽွၼ်းလႆႈယဝ်ႉ တႃႇႁႂ်ႈ App ႁဵတ်းၵၢၼ်ၽႂ်း။

---