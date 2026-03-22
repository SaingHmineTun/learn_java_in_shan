# Lesson 25: "Explicit Type Casting" (ၵၢၼ်တဵၵ်းပိၼ်ႇ Type)

**Explicit Casting** ၼႆႉပဵၼ်ၵၢၼ်ဢၼ်ႁဝ်း "သင်ႇ" တႅတ်ႉတႅတ်ႉတေႃးတေႃး ႁႂ်ႈ Compiler ပိၼ်ႇ Type ပၼ်ယဝ်ႉ။ 
ႁဝ်းႁွင်ႉလၢႆးၼႆႉဝႃႈ **Narrowing Conversion** (ၵၢၼ်တဵၵ်းႁႂ်ႈၵႅပ်ႈ) ယဝ်ႉ။

### 1. Narrowing Conversion (ၵၢၼ်တဵၵ်းႁႂ်ႈၵႅပ်ႈ)
မၼ်းပဵၼ်ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ **"ၵွၵ်းယႂ်ႇ"** မႃးသႂ်ႇၼႂ်း **"ၵွၵ်းလဵၵ်း"**။
* **တူဝ်ယင်ႇ:** ဢဝ် `double` (မီးၸုၵ်း) မႃးပိၼ်ႇပဵၼ် `int` (မၢႆၼပ်ႉတဵမ်)။ တွၼ်ႈဢၼ်ပဵၼ် "ၸုၵ်း" ၼၼ်ႉတေႁၢႆၵႂႃႇၵမ်းလဵဝ်။

### 2. လၢႆးတႅမ်ႈ Code (Cast Operator)
ႁဝ်းလူဝ်ႇသႂ်ႇၸိုဝ်ႈ Type ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉ ဝႆႉၼႂ်းၶွပ်ႇမူၼ်း `( )` ၽၢႆႇၼႃႈ Variable ဢေႃႈ။

```csharp
double myDouble = 9.78;
int myInt = (int) myDouble; // Explicit casting: double to int

Console.WriteLine(myDouble); // Output: 9.78
Console.WriteLine(myInt);    // Output: 9 (တွၼ်ႈ .78 ၼၼ်ႉႁၢႆၵႂႃႇယဝ်ႉ)
```



### 3. The 'checked' Keyword (ၵၢၼ်ၵူတ်ႇထတ်း Overflow)
မိူဝ်ႈႁဝ်းတဵၵ်းပိၼ်ႇမၢႆၼပ်ႉယႂ်ႇၼႃႇ ၵႂႃႇသႂ်ႇၼႂ်း Type ဢၼ်လဵၵ်းလဵၵ်း (မိူၼ်ၼင်ႇ ဢဝ် 300 သႂ်ႇၼႂ်း `byte` ဢၼ်ႁပ်ႉလႆႈ 255 ၵူၺ်း)၊ မၼ်းတေပဵၼ် **Overflow** သေလႆႈမၢႆၼပ်ႉဢၼ်ၽိတ်းမႃးယဝ်ႉ။ 
သင်ၼၼ် ႁဝ်းၸႂ်ႉ `checked` တႃႇႁႂ်ႈ App ၼႄ Error (Exception) တႅၼ်းတၢင် တေပွႆႇႁႂ်ႈမၼ်းၽိတ်းၵႂႃႇၶႃႈ။

```csharp
int bigNumber = 300;
checked {
    byte smallNumber = (byte)bigNumber; // ၼႆႉတေပဵၼ် Error (OverflowException)
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Explicit Casting:** ၵၢၼ်သင်ႇႁႂ်ႈပိၼ်ႇ Type ၼႂ်း Code တႅတ်ႉတႅတ်ႉ (ၸႂ်ႉ `(type)`)။
* **Narrowing:** ၵၢၼ်တဵၵ်းၶေႃႈမုၼ်းယႂ်ႇ ႁႂ်ႈၶဝ်ႈၼႂ်းၵွၵ်းလဵၵ်း။
* **Data Loss:** လွင်ႈႁၢႆလၢႆၶွင်ၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ တူဝ်လိၵ်ႈပၢႆၸုၵ်းႁၢႆ)။
* **Overflow:** လွင်ႈဢၼ်မၢႆၼပ်ႉယႂ်ႇလိူဝ်သေ Data Type ဢၼ်တေႁပ်ႉဢဝ်မၼ်း။
* **Checked:** Keyword တႃႇၸႂ်ႉ Compiler ၵူတ်ႇထတ်းလွင်ႈ Overflow မိူဝ်ႈႁဵတ်းၵၢၼ် Casting။

---