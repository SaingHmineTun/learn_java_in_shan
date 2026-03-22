# Lesson 43: "Nested If Statements"

**Nested If** ၼႆႉမၼ်းပဵၼ်ၵၢၼ်ဢဝ် `if` statement ၵႂႃႇဝႆႉၼႂ်း Code Block `{ }` ၶွင် `if` ထႅင်ႈဢၼ်ၼိုင်ႈၶႃႈ။

### 1. တူဝ်ယင်ႇ Basic Nesting
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈၵူတ်ႇထတ်း "ၵူၼ်းၶဝ်ႈလဵၼ်ႈ" (Login)။ 
ထီႉၼိုင်ႈလူဝ်ႇမီး Username၊ ထီႉသွင်လူဝ်ႇမီး Password။

```csharp
string username = "admin";
string password = "123";

if (username == "admin") {
    if (password == "123") {
        Console.WriteLine("Login Successful!");
    } else {
        Console.WriteLine("Wrong Password.");
    }
} else {
    Console.WriteLine("User not found.");
}
```



### 2. The "Deep Nesting" Trap (ၵၢၼ်တႅမ်ႈသွၼ်ႉၵၼ်ၼမ်လႅတ်း)
ပေႃးႁဝ်းတႅမ်ႈ `if` သွၼ်ႉၵၼ် 4-5 ၸၼ်ႉ၊ Code ႁဝ်းတေလၢၵ်ႈၵႂႃႇၽၢႆႇၶႂႃတိၵ်းတိၵ်း (Arrow Code) သေ ႁဵတ်းႁႂ်ႈ Developer ၵေႃႉတႅမ်ႈၸွမ်းၵေႃႈယုင်ႈ၊ ၵေႃႉမႃးဢၢၼ်ႇၵေႃႈ ႁူဝ်ၶႆႈၶႃႈ။

### 3. လၢႆးၵႄႈ (Avoiding the Trap)
ႁဝ်းမီး 2 လၢႆး ဢၼ်တေၸွႆးႁႂ်ႈ Code ႁဝ်းသႅၼ်ႈသႂ် (Clean) ၶိုၼ်ႈၶႃႈ:

* **ၸႂ်ႉ Logical Operators (&&):** ၽိူဝ်ႇတႃႉ တႅမ်ႈ if သွၼ်ႉၵၼ်ၼၼ်ႉ ၸႂ်ႉတိုဝ်းမၼ်းသေ တႅမ်ႈႁူမ်ႈၵၼ်ၼႂ်းထႅဝ်လဵဝ်လႆႈ။
    ```csharp
    // လၢႆးသႅၼ်ႈသႂ်
    if (username == "admin" && password == "123") {
        Console.WriteLine("Login Successful!");
    }
    ```
* **Guard Clauses (Return Early):** ၵူတ်ႇထတ်းဢၼ် "ၽိတ်း" ဢွၼ်တၢင်းသေ ႁႂ်ႈမၼ်းဢွၵ်ႇ (Exit) ၵႂႃႇၵမ်းလဵဝ်။
    ```csharp
    if (username != "admin") {
        Console.WriteLine("User not found.");
        return; // ဢွၵ်ႇၵႂႃႇၵမ်းလဵဝ်
    }

    if (password != "123") {
        Console.WriteLine("Wrong Password.");
        return;
    }

    Console.WriteLine("Login Successful!");
    ```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Nested:** လွင်ႈဢၼ်ဢဝ်ၶိူင်ႈၼိုင်ႈ ၵႂႃႇသႂ်ႇဝႆႉၼႂ်းထႅင်ႈၶိူင်ႈၼိုင်ႈ (မိူၼ်ၼင်ႇ ႁူင်းၼူၵ်ႉ)။
* **Arrow Code:** Code ဢၼ်မီး `if` သွၼ်ႉၵၼ် ၼမ်ၼႃႇလႄႈ ႁၢင်ႈမၼ်းမိူၼ်မၢႆၸီႉ (>)။
* **Guard Clause:** ထႅဝ် Code ဢၼ်ၵူတ်ႇထတ်း ၶေႃႈၽိတ်းပိူင်ႇဢွၼ်တၢင်း တႃႇ "ၵႅတ်ႇၶႄ" ဢမ်ႇႁႂ်ႈ Code သိုပ်ႇႁဵတ်းၵၢၼ်။
* **Readability:** ၼမ်ႉၵတ်ႉၶွင် Code ဢၼ်ႁဵတ်းႁႂ်ႈ ၵူၼ်းဢၢၼ်ႇပွင်ႇၸႂ်လႆႈငၢႆႈ။

---
