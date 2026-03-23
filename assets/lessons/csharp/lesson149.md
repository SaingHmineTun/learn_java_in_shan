# Lesson 149: "The 'is' and 'as' Operators"

မိူဝ်ႈႁဝ်း "ပိၼ်ႇၸိူဝ်ႉၶိူဝ်း" (Casting) ၼၼ်ႉ... သင်ႁဝ်းပိၼ်ႇၽိတ်း (မိူၼ်ၼင်ႇ ဢဝ် `Dog` ၵႂႃႇပိၼ်ႇပဵၼ် `Cat`) ၸိုင်... App ႁဝ်းတေၸၢင်ႈၶျႃး (Crash) ၶႃႈ။ ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ Operators ၼႆႉ တႃႇႁဵတ်းႁႂ်ႈမၼ်း **Safe** (လွတ်ႈၽေး) ၶႃႈ။



### 1. The 'is' Operator (ၵူတ်ႇထတ်း)
Keyword **`is`** ၸႂ်ႉတႃႇၵူတ်ႇထတ်းဝႃႈ Object ၼိုင်ႈတူဝ် ပဵၼ်ၸိူဝ်ႉၶိူဝ်း (Type) ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉႁႃႉ? မၼ်းတေသူင်ႇၵႃႈၶၼ်ပဵၼ် **`true`** ဢမ်ႇၼၼ် **`false`** ၶႃႈ။

```csharp
Staff s = new Teacher();

if (s is Teacher) {
    Console.WriteLine("This staff is a Teacher!");
}
```

**Modern 'is' (C# 7.0+):** ႁဝ်းၸၢင်ႈၵူတ်ႇထတ်း သေ သၢင်ႈ Variable မႂ်ႇ ၵမ်းလဵဝ်လႆႈၶႃႈ:
```csharp
if (s is Teacher t) {
    t.Teach(); // ၸႂ်ႉ 't' လႆႈၵမ်းလဵဝ် ၼႂ်းတွၼ်ႈ 'if' ၼႆႉ
}
```

### 2. The 'as' Operator (ပိၼ်ႇၸိူဝ်ႉၶိူဝ်း)
Keyword **`as`** ၸႂ်ႉတႃႇ "ၸၢမ်းပိၼ်ႇ" (Try Casting) Object ၼၼ်ႉ ႁႂ်ႈပဵၼ်ၸိူဝ်ႉၶိူဝ်းဢၼ်ႁဝ်းၶႂ်ႈလႆႈၶႃႈ။
* သင်ပိၼ်ႇလႆႈ: မၼ်းတေသူင်ႇ Object တူဝ်ၼၼ်ႉမႃး (ပဵၼ် Type မႂ်ႇ)။
* သင်ပိၼ်ႇဢမ်ႇလႆႈ: မၼ်းတေသူင်ႇ **`null`** မႃး (ဢမ်ႇ Crash) ၶႃႈ။

```csharp
Staff s = new Staff();
Teacher t = s as Teacher; // ၸၢမ်းပိၼ်ႇ Staff ပဵၼ် Teacher

if (t != null) {
    t.Teach();
} else {
    Console.WriteLine("Casting failed!");
}
```

### 3. ပႅၵ်ႇပိူင်ၵၼ်ၼင်ႇႁိုဝ်?
| Operator | လွင်ႈႁဵတ်းသၢင်ႈ (Function) | ၵႃႈၶၼ်ဢၼ်သူင်ႇ (Result) |
| :--- | :--- | :--- |
| **`is`** | ၵူတ်ႇထတ်းၸိူဝ်ႉၶိူဝ်း | `true` / `false` |
| **`as`** | ၸၢမ်းပိၼ်ႇၸိူဝ်ႉၶိူဝ်း | `Object` / `null` |

### 4. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
1.  **Safety:** ႁႄႉၵၢင်ႈဢမ်ႇပၼ် `InvalidCastException` ၵိူတ်ႇၶဝ်ႈၼႂ်း App ႁဝ်း။
2.  **Polymorphism Handling:** ၸွႆးႁႂ်ႈႁဝ်းၸႅၵ်ႇလႅၼ်းလႆႈဝႃႈ ၼႂ်း List ဢၼ်ႁူမ်ႈၵၼ်ဝႆႉၼၼ်ႉ တူဝ်လႂ်ပဵၼ်သင်တႄႉတႄႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Type Casting:** ၵၢၼ်ပိၼ်ႇၸိူဝ်ႉၶိူဝ်းၶွင် Object တူဝ်ၼိုင်ႈ ၵႂႃႇၸူးထႅင်ႈတူဝ်ၼိုင်ႈ။
* **Safe Casting:** ၵၢၼ်ပိၼ်ႇၸိူဝ်ႉၶိူဝ်း လူၺ်းဢမ်ႇႁဵတ်းႁႂ်ႈ App ၶျႃး (Crash)။
* **Runtime Type Checking:** ၵၢၼ်ၵူတ်ႇထတ်းၸိူဝ်ႉၶိူဝ်း မိူဝ်ႈ App တိုၵ်ႉလႅၼ်ႈယူႇ။
* **Null Check:** ၵၢၼ်ၵူတ်ႇထတ်းဝႃႈ ၶေႃႈမုၼ်းပဵၼ် null (ဢမ်ႇမီးသင်) ႁႃႉ?

---