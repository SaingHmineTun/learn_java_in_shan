# Lesson 188: "Generic Constraints"

သင်ႁဝ်းဢမ်ႇမၵ်းမၼ်ႈ Constraint... `T` ၼၼ်ႉ ၸၢင်ႈပဵၼ်လႆႈတင်း `int`, `string`, `class`, ဢမ်ႇၼၼ် `struct` ၵူႈပိူင်ၶႃႈ။ ၵူၺ်းၵႃႈ မၢင်ပွၵ်ႈ Logic ႁဝ်းလူဝ်ႇၸႂ်ႉ Method ဢၼ်မီးၵူၺ်းၼႂ်း Class... ႁဝ်းၸင်ႇလူဝ်ႇ "ပိတ်းလႅၼ်း" မၼ်းၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The 'where' Keyword)
ႁဝ်းတေလႆႈတႅမ်ႈ **`where T : [Constraint]`** ဝႆႉၽၢႆႇလင်ၸိုဝ်ႈ Class ဢမ်ႇၼၼ် Method ၶႃႈ။

```csharp
public class ShanRepository<T> where T : class {
    // T တေလႆႈပဵၼ် Reference Type (Class) ၵူၺ်း
    // ဢဝ် 'int' ဢမ်ႇၼၼ် 'bool' မႃးၸႂ်ႉဢမ်ႇလႆႈ
}
```

### 2. Constraints ဢၼ်ၵႆႉၸႂ်ႉ (Common Constraints)

| Syntax | Meaning (တီႈပွင်ႇ) |
| :--- | :--- |
| **`where T : class`** | `T` တေလႆႈပဵၼ် Class (Reference Type) ၵူၺ်း။ |
| **`where T : struct`** | `T` တေလႆႈပဵၼ် Value Type (int, float, bool) ၵူၺ်း။ |
| **`where T : new()`** | `T` တေလႆႈမီး Public Constructor ဢၼ်ဢမ်ႇမီး Parameter (တႃႇႁႂ်ႈႁဝ်း `new T()` လႆႈၼႂ်း Class)။ |
| **`where T : NameOfBaseClass`** | `T` တေလႆႈသိုပ်ႇၸိူဝ်ႉၶိူဝ်းမႃးလုၵ်ႉတီႈ Class ၼၼ်ႉၵူၺ်း။ |
| **`where T : INameOfInterface`** | `T` တေလႆႈ Implement Interface ၼၼ်ႉဝႆႉ။ |



### 3. တူဝ်ယင်ႇ: Multiple Constraints
ႁဝ်းၸၢင်ႈၸႂ်ႉလၢႆလၢႆဢၼ်ႁူမ်ႈၵၼ်လႆႈၶႃႈ (မၢႆတွင်းဝႃႈ `new()` တေလႆႈယူႇ **လုၼ်းသုတ်း** တႃႇသေႇ)။

```csharp
public class ShanDataHandler<T> where T : class, new() {
    public T CreateNewInstance() {
        // ယွၼ်ႉမီး new() constraint... ႁဝ်းၸင်ႇသၢင်ႈ Object မႂ်ႇလႆႈၼင်ႇၼႆ:
        return new T(); 
    }
}
```

### 4. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
1.  **Type Safety:** ႁႄႉၵၢင်ႈဢမ်ႇပၼ်ၵူၼ်းၸႂ်ႉ (Developer) သူင်ႇ Type ဢၼ်ဢမ်ႇမႅၼ်ႈၸွမ်း Logic ႁဝ်းၶဝ်ႈမႃး။
2.  **Access to Members:** သင်ႁဝ်းမၵ်းမၼ်ႈ `where T : IShanMember`... ၼႂ်း Class ၼၼ်ႉ ႁဝ်းတေႁွင်ႉၸႂ်ႉ Method ၶွင် Interface ၼၼ်ႉလႆႈၵမ်းလဵဝ်ၶႃႈ။
3.  **Compile-time Errors:** ၸွႆးႁႃတူၺ်းပၼ်ႁႃ တင်ႈတႄႇမိူဝ်ႈတိုၵ်ႉတႅမ်ႈ Code ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Generic Constraint:** ပၵ်းၵၢၼ် ဢၼ်မၵ်းမၼ်ႈပၼ် Type Parameter။
* **Reference Type Constraint (`class`):** ၵၢၼ်မၵ်းမၼ်ႈႁႂ်ႈပဵၼ် Class။
* **Value Type Constraint (`struct`):** ၵၢၼ်မၵ်းမၼ်ႈႁႂ်ႈပဵၼ် တူဝ်ၼပ်ႉ/တူဝ်မၢႆ (int, bool)။
* **Parameterless Constructor Constraint (`new()`):** ၵၢၼ်မၼ်ႈၸႂ်ဝႃႈ သၢင်ႈ Object မႂ်ႇလႆႈ။

---
