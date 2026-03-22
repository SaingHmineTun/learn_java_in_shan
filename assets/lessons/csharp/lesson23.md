# Lesson 23: "Nullable Value Types" (ၵၢၼ်ၸႂ်ႉ Nullable တႃႇမၢႆၼပ်ႉ)

ၼႂ်း Lesson 22 ႁဝ်းႁူႉယဝ်ႉဝႃႈ **Value Types** (မိူၼ်ၼင်ႇ `int`, `bool`) ၼၼ်ႉ မၼ်းတေလႆႈမီး "ၵႃႈၶၼ်" (Value) ယူႇတႃႇသေႇ၊ 
မၼ်းပဵၼ် `null` ဢမ်ႇလႆႈ။ ၵူၺ်းၵႃႈ ၼႂ်းၵၢၼ်တႅမ်ႈ App တႄႉတႄႉ (မိူၼ်ၼင်ႇ ႁပ်ႉၶေႃႈမုၼ်းတီႈ Database) မၢင်ပွၵ်ႈၶေႃႈမုၼ်းၼၼ်ႉ မၼ်းဢမ်ႇမီးဝႆႉ (Missing)။

### 1. Null ၼႆႉပဵၼ်သင်?
**Null** ၼႆႉပဵၼ်ၶေႃႈၵႂၢမ်း ဢၼ်မၢႆတွင်းဝႃႈ "ဢမ်ႇမီးၶေႃႈမုၼ်း" ဢမ်ႇၼၼ် "ပဝ်ႇပၢင်ႇ"။
* **int:** ၵႃႈၶၼ်တႄႇႁူဝ်မၼ်းပဵၼ် `0` (ဢမ်ႇၸႂ်ႈ Null)။
* **string:** မၼ်းပဵၼ် Reference Type လႄႈ မၼ်းပဵၼ် `null` ဝႆႉ သင်ဢမ်ႇသႂ်ႇဝႆႉ ၵႃႈၶၼ်သင်။

### 2. လၢႆးသၢင်ႈ Nullable Type (ၸႂ်ႉမၢႆ `?`)
တႃႇႁႂ်ႈ Value Type ပဵၼ် Null လႆႈၼၼ်ႉ ႁဝ်းတေလႆႈသႂ်ႇ **Question Mark (?)** ဝႆႉၽၢႆႇလင် Data Type ၼၼ်ႉဢေႃႈ။

```csharp
int? age = null; // တေႃႈလဵဝ် age ပဵၼ် null လႆႈယဝ်ႉ
bool? isSingle = null;

if (age.HasValue) {
    Console.WriteLine($"Age is: {age.Value}");
} else {
    Console.WriteLine("Age is unknown.");
}
```


### 3. Null-Coalescing Operator (ၸႂ်ႉမၢႆ `??`)
မိူဝ်ႈႁဝ်းဢဝ်ၶေႃႈမုၼ်း Nullable Variable မႃးၸႂ်ႉ၊ ႁဝ်းၵႆႉလူဝ်ႇသႂ်ႇ "ၵႃႈၶၼ်တႅၼ်းတၢင်" (Default Value) ပေႃးမၼ်းပဵၼ် Null ဝႆႉ။ လွင်ႈၼႆႉ ႁဝ်းၸႂ်ႉမၢႆ **`??`** ၶႃႈ။

```csharp
int? databaseScore = null;
int finalScore = databaseScore ?? 0; // ပေႃး score ပဵၼ် null, ႁႂ်ႈဢဝ် 0 တႅၼ်း

Console.WriteLine(finalScore); // Output: 0
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Nullable:** ၼမ်ႉၵတ်ႉဢၼ်ႁဵတ်းႁႂ်ႈ Variable (Value Type) သိမ်းၵႃႈၶၼ် `null` လႆႈ။
* **HasValue:** Property ဢၼ်ၸွႆးၵူတ်ႇထတ်းဝႃႈ ၼႂ်း Variable ၼၼ်ႉမီးၶေႃႈမုၼ်းယူႇႁႃႉ (True/False)။
* **Value:** Property ဢၼ်ၸႂ်ႉတႃႇထွၼ်ဢဝ် "ၶေႃႈမုၼ်းတႄႉ" ဢွၵ်ႇမႃး (ပေႃးမၼ်းပဵၼ် Null သေၵႂႃႇႁွင်ႉ Value မၼ်းတေ Error ၶႃႈ)။
* **Null-Coalescing (??):** ၶိူင်ႈမၢႆဢၼ်လိူၵ်ႈဢဝ် ၵႃႈၶၼ်ၽၢႆႇၶႂႃ ပေႃးၵႃႈၶၼ်ၽၢႆႇသၢႆႉပဵၼ် Null။

---