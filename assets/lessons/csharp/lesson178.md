# Lesson 178: "ArrayList vs. List\<T\>"

ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းမီး "ထူင်လူင်" ဢၼ်ၼိုင်ႈ။

* **ArrayList** မိူၼ်ၼင်ႇ "ထူင်ဢၼ်သႂ်ႇလႆႈၵူႈပိူင်" (သႂ်ႇၶဝ်ႈ၊ သႂ်ႇငိုၼ်း၊ သႂ်ႇၾူၼ်း ႁူမ်ႈၵၼ်)။
* **List\<T\>** မိူၼ်ၼင်ႇ "ထူင်ဢၼ်မၵ်းမၼ်ႈဝႆႉ" (ထူင်သႂ်ႇၵေႃႇၾီႇၵူၺ်း၊ ထူင်သႂ်ႇငိုၼ်းၵူၺ်း)။

### 1\. ArrayList (The Legacy - ဢၼ်ၵဝ်ႇ)

ArrayList ၵဵပ်းၵူႈပိူင်ပဵၼ် **`object`** တႃႇသေႇ။

* **Type Safety:** ဢမ်ႇမီး။ ၶူးၸၢင်ႈသႂ်ႇ `int` သေ တႅပ်းၸွမ်လူၺ်ႈ `string` လႆႈ။ Compiler တေဢမ်ႇႁႄႉဝႆႉပၼ်၊ မၼ်းတေ Crash မိူဝ်ႈ Runtime ၵူၺ်းၶႃႈ။
* **Performance:** ၸႃႉ။ ယွၼ်ႉမၼ်းလႆႈႁဵတ်း **Boxing** (ပိၼ်ႇ value type ပဵၼ် object) လႄႈ **Unboxing** ၵူႈပွၵ်ႈ ဢၼ်ႁဝ်းဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃးၸႂ်ႉၶႃႈ။

### 2\. List\<T\> (The Modern - ဢၼ်မႂ်ႇ)

List\<T\> ၸႂ်ႉ Generics တႃႇမၵ်းမၼ်ႈ Type တႅတ်ႉတေႃး။

* **Type Safety:** သုင်။ သင်ၶူးမၵ်းမၼ်ႈပဵၼ် `List<int>` ယဝ်ႉ... ၶူးတေဢဝ် `string` သႂ်ႇၶဝ်ႈဢမ်ႇလႆႈသေထႅဝ်ၶႃႈ။
* **Performance:** ဝႆး။ ဢမ်ႇလူဝ်ႇႁဵတ်း Boxing/Unboxing ယွၼ်ႉ Compiler ႁူႉၸႅင်ႈဝႃႈ Data ၼၼ်ႉပဵၼ်သင်ယဝ်ႉၶႃႈ။

### 3\. တူဝ်ယင်ႇ Code ၵႄႈပႅၵ်ႇ

```csharp
using System.Collections; // တႃႇ ArrayList
using System.Collections.Generic; // တႃႇ List<T>

// --- ArrayList (Dangerous) ---
ArrayList oldList = new ArrayList();
oldList.Add(100);    // Boxing
oldList.Add("Mao");  // OK (ယုင်ႈယၢင်ႈယဝ်ႉ!)
int num = (int)oldList[0]; // Unboxing (လူဝ်ႇ Cast ႁင်းၵူၺ်း)

// --- List<T> (Safe & Fast) ---
List<int> newList = new List<int>();
newList.Add(100);    // No Boxing
// newList.Add("Mao"); // ERROR! (Compiler ႁႄႉဝႆႉပၼ်ၵမ်းလဵဝ်)
int num2 = newList[0]; // No casting needed
```

-----

### 4\. ႁဵတ်းသင်ၸင်ႇပဵၼ် Evolution?

1.  **Error Prevention:** ႁႄႉၵၢင်ႈပၼ်ႁႃ `InvalidCastException` တီႈ Runtime။
2.  **Efficiency:** ၸွႆးႁႂ်ႈ CPU ႁဵတ်းၵၢၼ်ငၢႆႈလိူဝ်ၵဝ်ႇ။
3.  **Clean Code:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Code တႃႇ Cast Type `(int)` ၶိုၼ်းလၢႆပွၵ်ႈၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Boxing:** ၵၢၼ်ႁေႃႇ Value Type (int, bool) သႂ်ႇၼႂ်း Object (Heap)။
* **Unboxing:** ၵၢၼ်ၵျွၵ်းဢဝ် Data ဢွၵ်ႇမႃးတီႈ Object ၶိုၼ်း။
* **Type Safety:** လွင်ႈမၼ်ႈၸႂ်ဝႃႈ Data Type မႅၼ်ႈၸွမ်းပိူင်။
* **Casting:** ၵၢၼ်ပိၼ်ႇ Data Type ၼိုင်ႈဢၼ် ၵႂႃႇပဵၼ်ထႅင်ႈဢၼ်ၼိုင်ႈ။

-----