# Lesson 187: "Custom Generic Classes"

ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းၶႂ်ႈသၢင်ႈ Class **`ShanBox`** ဢၼ်မီးၼႃႈတီႈ "ၵဵပ်းၶေႃႈမုၼ်း" (Storage)။

* သင်ၶူးတႅမ်ႈ `string` ၵူၺ်း... မၼ်းတေသိမ်း `int` ဢမ်ႇလႆႈ။
* သင်ၶူးတႅမ်ႈ `object`... မၼ်းတေယုင်ႈယၢင်ႈလွင်ႈ Boxing/Unboxing။
* ၶေႃႈတွပ်ႇဢၼ်လီသုတ်းၵေႃႈပဵၼ် **Generics `<T>`** ၶႃႈ။

### 1\. ပိူင်သၢင်ႈ (Syntax)

ႁဝ်းတေလႆႈသႂ်ႇ **`<T>`** ဝႆႉၽၢႆႇလင်ၸိုဝ်ႈ Class သေ ၸႂ်ႉတူဝ် **`T`** ၼၼ်ႉ တႅၼ်း Data Type ၼႂ်း Properties ဢမ်ႇၼၼ် Methods ၶႃႈ။

```csharp
// T ပဵၼ် Placeholder တႃႇ Type ဢၼ်ႁဝ်းတေလိူၵ်ႈမိူဝ်ႈ 'new'
public class ShanBox<T> {
    private T _content;

    public void Add(T item) {
        _content = item;
    }

    public T GetContent() {
        return _content;
    }
}
```

### 2\. ၵၢၼ်ၸႂ်ႉတႄႉ (Instantiation)

မိူဝ်ႈႁဝ်းသၢင်ႈ Object... ႁဝ်းတေလႆႈမၵ်းမၼ်ႈ Type တႄႉတႄႉ ဝႆႉၼႂ်း `< >` ၶႃႈ။

```csharp
// သိမ်း string
ShanBox<string> nameBox = new ShanBox<string>();
nameBox.Add("Sai Mao");

// သိမ်း int
ShanBox<int> scoreBox = new ShanBox<int>();
scoreBox.Add(100);
```

### 3\. Multiple Type Parameters

ႁဝ်းဢမ်ႇၵူၺ်းသၢင်ႈလႆႈတူဝ်လဵဝ်ၶႃႈ၊ ႁဝ်းၸၢင်ႈသႂ်ႇလၢႆလၢႆတူဝ် (မိူၼ်ၼင်ႇ `TKey`, `TValue` ၼႂ်း Dictionary)။

```csharp
public class ShanPair<T1, T2> {
    public T1 First { get; set; }
    public T2 Second { get; set; }
}

// Usage
var pair = new ShanPair<string, int> { First = "Age", Second = 25 };
```

### 4\. ႁဵတ်းသင်ၸင်ႇလီလိူဝ်?

1.  **Code Reuse:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ `StringBox`, `IntBox`, `DoubleBox` ၸႅၵ်ႇၵၼ်။
2.  **Type Safety:** Compiler တေၵူတ်ႇထတ်းပၼ်ဝႃႈ Data Type မႅၼ်ႈႁႃႉ မိူဝ်ႈတႅမ်ႈ Code (Compile-time)။
3.  **Maintainability:** သင်လူဝ်ႇမႄး Logic... ႁဝ်းမႄးတီႈလဵဝ်ၵူၺ်း၊ မၼ်းတေမီးၽွၼ်းၸူး ၵူႈ Type ၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Type Parameter:** တူဝ် `T` ဢၼ်ၸႂ်ႉတႅၼ်း Data Type။
* **Open Type:** Class ဢၼ်တိုၵ်ႉပဵၼ် `<T>` (ပႆႇမၵ်းမၼ်ႈ Type တႄႉ)။
* **Closed Type:** Class ဢၼ်မၵ်းမၼ်ႈ Type ယဝ်ႉ (မိူၼ်ၼင်ႇ `ShanBox<int>`)။
* **Generic Logic:** လၢႆးႁဵတ်းၵၢၼ် ဢၼ်ၸႂ်ႉလႆႈတင်း Data ၵူႈပိူင်။

-----