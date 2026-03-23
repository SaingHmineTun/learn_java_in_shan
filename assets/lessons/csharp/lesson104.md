# Lesson 104: "Null-Conditional Operators (?. )"

မိူဝ်ႈႁဝ်းမီး Variable ဢၼ်ပဵၼ် **Object**၊ မၢင်ပွၵ်ႈမၼ်းဢမ်ႇမီးၶေႃႈမုၼ်းသင် (ပဵၼ် `null`)။ 
သင်ႁဝ်းၸႂ်ႉမၢႆ "ၸုတ်ႇ" (`.`) တႃႇၶဝ်ႈၸူး Field ၼႂ်းမၼ်း... 
App ႁဝ်းတေလူႉၵမ်းလဵဝ်လူၺ်း Error ဢၼ်ႁွင်ႉဝႃႈ **`NullReferenceException`** ၶႃႈ။


### 1. ပၼ်ႁႃ: The Null Crash
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Object `Student` ဢၼ်တိုၵ်ႉပဵၼ် `null` ယူႇ:

```csharp
Student s1 = null;
// Console.WriteLine(s1.Name); // Error!! App တေ Crash ၵမ်းလဵဝ်
```


### 2. လၢႆးၵဝ်ႇ (The If Check)
မိူဝ်ႈၵွၼ်ႇ ႁဝ်းတေလႆႈၵူတ်ႇထတ်းၸွမ်း `if` တႃႇသေႇ:
```csharp
if (s1 != null) {
    Console.WriteLine(s1.Name);
}
```

### 3. လၢႆးမႂ်ႇ: The `?.` Operator
ႁဝ်းၸၢင်ႈၸႂ်ႉ **`?.`** တႅၼ်းတၢင်းလႆႈၶႃႈ။ မၼ်းတေလၢတ်ႈၼႄ Compiler ဝႃႈ: "သင် Object ၼႆႉမီးယူႇတႄႉ ႁႂ်ႈႉဢဝ် Name ပၼ်၊ ၵူၺ်းၵႃႈ သင်မၼ်းပဵၼ် `null` ၸိုင် ႁႂ်ႈယူႇဝႆႉသိုဝ်ႈသိုဝ်ႈ (ပၼ် `null` ဢွၵ်ႇမႃး) သေ ဢမ်ႇလူဝ်ႇႁဵတ်းႁႂ်ႈ App လူႉၶႃႈ" ၼႆယဝ်ႉ။



```csharp
string name = s1?.Name; 
// သင် s1 ပဵၼ် null... name တေပဵၼ် null (App ဢမ်ႇ Crash)
// သင် s1 မီးယူႇတႄႉ... name တေလႆႈၸိုဝ်ႈတႄႉမၼ်း
```

### 4. ၸႂ်ႉႁူမ်ႈတင်း Null-Coalescing (`??`)
ႁဝ်းၵႆႉၸႂ်ႉ `?.` ႁူမ်ႈတင်း `??` (Lesson 56) တႃႇပၼ်ၵႃႈၶၼ် Default မိူဝ်ႈမၼ်းပဵၼ် `null` ၶႃႈ။

```csharp
// သင် s1 ပဵၼ် null ႁႂ်ႈပၼ်ၶေႃႈၵႂၢမ်း "Unknown" ဢွၵ်ႇမႃး
string displayName = s1?.Name ?? "Unknown Student";
```

### 5. ၸႂ်ႉတင်း Methods
ႁဝ်းၸၢင်ႈၸႂ်ႉ `?.` တႃႇႁွင်ႉ Method လႆႈၸိူင်ႉၼႆၸွမ်းၶႃႈ:
`s1?.Study();` // သင် s1 မီးယူႇ ၸင်ႇသင်ႇ Study

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **NullReferenceException:** Error ဢၼ်ၵႆႉပဵၼ်ၼမ်သုတ်ႉ ၼႂ်းၵၢၼ်တႅမ်ႈ C# (မိူဝ်ႈၸႂ်ႉ Variable ဢၼ်ပဵၼ် null)။
* **Null-Conditional Operator (?.):** မၢႆဢၼ်ၸွႆးၵူတ်ႇထတ်း null ဢွၼ်တၢင်း ပႆႇဢဝ်ၶေႃႈမုၼ်း။
* **Safe Navigation:** ၸိုဝ်ႈႁွင်ႉထႅင်ႈပိူင်ၼိုင်ႈ ၶွင် `?.`။
* **Short-circuiting:** သင်တွၼ်ႈၽၢႆႇၼႃႈ `?.` ပဵၼ် null ယဝ်ႉ... တွၼ်ႈၽၢႆႇလင်မၼ်း တေဢမ်ႇထုၵ်ႇလႅၼ်ႈသေ တေၶၢမ်ႈ (Skip) ၵႂႃႇၵမ်းလဵဝ်ၶႃႈ။

---