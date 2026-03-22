# Lesson 17: "The Boolean Type" (ပိူင်ၶေႃႈမုၼ်း လွင်ႈၸႂ်ႈ/ဢမ်ႇၸႂ်ႈ)

**Boolean** (ဢမ်ႇၼၼ် `bool`) ၼႆႉပဵၼ်ပိူင်ၶေႃႈမုၼ်း ဢၼ်မီးၵႃႈၶၼ် (Value) လႆႈ 2 ယၢင်ႇၵူၺ်း: **true** (ၸႂ်ႈ/ပဵၼ်တႄႉ) လႄႈ **false** (ဢမ်ႇၸႂ်ႈ/ဢမ်ႇပဵၼ်တႄႉ)။

### 1. ႁဵတ်းသင်လႄႈလူဝ်ႇၸႂ်ႉ `bool`?
ၼႂ်းၵၢၼ်တႅမ်ႈ App ႁဝ်း လူဝ်ႇၵႆႉထၢမ်ၶေႃႈထၢမ်မိူၼ်ၼင်ႇ:
* ၵူၼ်းၸႂ်ႉ Login ယဝ်ႉႁိုဝ်? (`isLoggedIn`)
* ၵၢၼ်ဢၼ်ၼႆႉ ယဝ်ႉယဝ်ႉႁိုဝ်? (`isTaskCompleted`)
* ဢသၢၵ်ႈၼႆႉ ယႂ်ႇသေ 18 ႁိုဝ်? (`isAdult`)

### 2. လၢႆးတႅမ်ႈ Code
မိူဝ်ႈႁဝ်းတင်ႈၸိုဝ်ႈ Variable တႃႇ `bool` ၼၼ်ႉ ႁဝ်းၵႆႉတႄႇတင်းၸွမ်း ၶေႃႈၵႂၢမ်း **"is"** ဢမ်ႇၼၼ် **"has"** တႃႇႁႂ်ႈဢၢၼ်ႇငၢႆႈ (မိူၼ်ၼင်ႇၶေႃႈထၢမ်) ယဝ်ႉ။

```csharp
bool isShanLanguageEnabled = true;
bool hasPaidSubscription = false;

Console.WriteLine("Is Shan Enabled? " + isShanLanguageEnabled);
```



### 3. Comparison Operators (ၶိူင်ႈမၢႆတႃႇၼပ်ႉသၢင်ႈ bool)
ႁဝ်းတေလႆႈ `bool` မႃး မိူဝ်ႈႁဝ်းဢဝ်မၢႆၼပ်ႉ 2 ဢၼ် မႃးတႅၵ်ႈၵၼ် (Compare) ၶႃႈ။

| Operator | Meaning                  | Example | Result |
| :--- |:-------------------------| :--- | :--- |
| `==` | Equal to (မိူၼ်)         | `5 == 5` | **true** |
| `!=` | Not equal to (ဢမ်ႇမိူၼ်) | `5 != 3` | **true** |
| `>` | Greater than (ယႂ်ႇသေ)    | `10 > 20` | **false** |
| `<` | Less than (လဵၵ်းသေ)      | `5 < 10` | **true** |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Boolean:** ပိူင်ၶေႃႈမုၼ်းဢၼ်မီးလႆႈ ၵႃႈၶၼ် 2 ဢၼ်ၵူၺ်း။ (true/false)။
* **Logical Foundation:** ပိုၼ်ႉထၢၼ် လွင်ႈထတ်းသၢင်ႈ (Logic) ၼႂ်း Computer။
* **Comparison Operator:** ၶိူင်ႈမၢႆ ဢၼ်ၸႂ်ႉတႅၵ်ႈၵၼ် တႃႇလႆႈမႃးၶိုၼ်း ၵႃႈၶၼ် bool (==, !=, >, <)။
* **Flag:** ၶေႃႈၵႂၢမ်းဢၼ် Developer ၵႆႉၸႂ်ႉႁွင်ႉ `bool` Variable ဢၼ်ၸႂ်ႉတႃႇမၢႆတွင်းဝႃႈ App ႁဝ်းယူႇၼႂ်း သႅၼ်း (State) လႂ်။

---