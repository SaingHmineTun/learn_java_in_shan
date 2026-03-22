# Lesson 22: "Value Types vs. Reference Types" (ၵၢၼ်သိမ်းၶေႃႈမုၼ်းၼႂ်း Memory)

ၼႂ်း C# ၼၼ်ႉ Memory မီး 2 တီႈ ဢၼ်ႁဝ်းလူဝ်ႇႁူႉဝႆ့။ ၶဝ်ပဵၼ် **Stack** လႄႈ **Heap** ဢေႃႈ။

### 1. Value Types (သိမ်းဝႆႉၼႂ်း Stack)
**Value Types** ၼႆႉမိူၼ်ၼင်ႇ "ၵွၵ်းဢွၼ်ႇ" ဢၼ်သိမ်း "ၵႃႈၶၼ်" မၼ်းဝႆႉတႅတ်ႉတႅတ်ႉတေႃးတေႃး ၼႂ်း **Stack**။ မိူဝ်ႈႁဝ်းဢဝ် Variable ၼိုင်ႈဢၼ် ၵႂႃႇပၼ်ထႅင်ႈဢၼ်ၼိုင်ႈ မၼ်းတေ "ၵေႃပီႇ" ၵႃႈၶၼ်မၼ်းၵႂႃႇၵမ်းလဵဝ်။
* **Types:** `int`, `double`, `bool`, `char`, `struct`, `enum`။
* **Memory:** **Stack** ၼႆႉႁဵတ်းၵၢၼ်ၽႂ်းၼႃႇ ၵူၺ်းၵႃႈမၼ်းမီးတီႈၵႅပ်ႈ။

```csharp
int a = 10;
int b = a; // ၵေႃပီႇ 10 ၵႂႃႇသႂ်ႇၼႂ်း b (a လႄႈ b ဢမ်ႇၵိုၵ်းၵၼ်ယဝ်ႉ)
b = 20;    // a တေတိုၵ်ႉပဵၼ် 10 ယူႇမိူၼ်ၵဝ်ႇ
```

### 2. Reference Types (သိမ်းဝႆႉၼႂ်း Heap)
**Reference Types** ၼႆႉသမ်ႉ ဢမ်ႇသိမ်းၶေႃႈမုၼ်းဝႆႉၼႂ်း Stack။ မၼ်းတေသိမ်း "တီႈယူႇ" (Address) ဝႆႉၼႂ်း Stack သေ ဢဝ် "တူဝ်ၶေႃႈမုၼ်းတႄႉ" ၵႂႃႇဝႆႉၼႂ်း **Heap** ဢေႃႈ။
* **Types:** `string`, `class`, `object`, `array`။
* **Memory:** **Heap** ၼႆႉယႂ်ႇၼႃႇ ၵူၺ်းၵႃႈ လူဝ်ႇၶၢဝ်းယၢမ်းတႃႇၸတ်းၵၢၼ် (Garbage Collection)။

```csharp
int[] list1 = { 1, 2, 3 };
int[] list2 = list1; // ၸီႉၵႂႃႇတီႈ Heap တီႈလဵဝ်ၵၼ်
list2[0] = 99;       // list1[0] ၵေႃႈတေပဵၼ် 99 ၵႂႃႇၸွမ်းယဝ်ႉ
```



### 3. ပႅၵ်ႇၵၼ်ၼင်ႇႁိုဝ်?

| Feature | Value Types (Stack) | Reference Types (Heap)        |
| :--- | :--- |:------------------------------|
| **Storage** | သိမ်း "Value" တႄႉ | သိမ်း "Address" (တီႈယူႇ)      |
| **Speed** | ၽႂ်းၼႃႇ (Fast) | ထိူင်းဢိတ်းၼိုင်ႈ (Slower)    |
| **Assignment** | ၵေႃပီႇၶေႃႈမုၼ်းမႂ်ႇ (Copy) | ၸီႉၵႂႃႇတီႈလဵဝ်ၵၼ် (Reference) |
| **Null** | ဢမ်ႇပဵၼ် `null` လႆႈ (လိူဝ်သေ Nullable) | ပဵၼ် `null` လႆႈ               |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Stack:** Memory ဢၼ်ၸတ်းၵၢၼ်လႅတ်းၽႂ်း တႃႇသိမ်း Variable ဢွၼ်ႇ လႄႈ ၵၢၼ်ႁွင်ႉ Method။
* **Heap:** Memory ဢၼ်ယႂ်ႇ တႃႇသိမ်း Object ယႂ်ႇယႂ်ႇ (မိူၼ်ၼင်ႇ String ယၢဝ်းယၢဝ်း ဢမ်ႇၼၼ် Class)။
* **Pointer/Reference:** "ႁွႆးၸီႉ" ဢၼ်လၢတ်ႈၼႄဝႃႈ ၶေႃႈမုၼ်းတႄႉတႄႉ မီးဝႆႉတီႈလႂ်ၼႂ်း Heap။
* **Garbage Collector (GC):** ၶိူင်ႈမိုဝ်းၼႂ်း .NET ဢၼ်ၸွႆး "လၢင်ႉ" Memory ၼႂ်း Heap ပႅတ်ႇ မိူဝ်ႈႁဝ်းဢမ်ႇၸႂ်ႉယဝ်ႉ။

---