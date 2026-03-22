# Lesson 42: "The 'else' and 'else if' Clauses"

မိူဝ်ႈႁဝ်းမီးတၢင်းလိူၵ်ႈလၢႆသဵၼ်ႈ၊ ႁဝ်းၸႂ်ႉ `else` လႄႈ `else if` တႃႇသင်ႇၵၢၼ် Program ၶႃႈ။

### 1. The 'else' Clause (ပေႃးဢမ်ႇၼၼ်)
`else` ၼႆႉတေႁဵတ်းၵၢၼ် မိူဝ်ႈ `if` ပဵၼ် **False** ၶႃႈ။ မၼ်းမိူၼ်ၼင်ႇ "တၢင်းလိူၵ်ႈသုတ်းပၢႆ" (Last Resort) ဢေႃႈ။

```csharp
int age = 15;

if (age >= 18) {
    Console.WriteLine("You can vote.");
} else {
    Console.WriteLine("You are too young to vote.");
}
```

### 2. The 'else if' Clause (သင်ဝႃႈ... သမ်ႉပဵၼ်...)
မိူဝ်ႈႁဝ်းမီးၶေႃႈထၢမ် (Condition) ၼမ်သေ 1 ဢၼ်၊ ႁဝ်းၸႂ်ႉ `else if` တႃႇသိုပ်ႇထၢမ်ၵႂႃႇၸၼ်ႉၼိုင်ႈယဝ်ႉ ၸၼ်ႉၼိုင်ႈၶႃႈ။

```csharp
int score = 75;

if (score >= 80) {
    Console.WriteLine("Grade: A");
} else if (score >= 70) {
    Console.WriteLine("Grade: B");
} else if (score >= 60) {
    Console.WriteLine("Grade: C");
} else {
    Console.WriteLine("Grade: F");
}
```


### 3. လွင်ႈလူဝ်ႇၾၢင်ႉ (Logic Flow)
* **Execution Order:** C# တေၵူတ်ႇထတ်း လုၵ်ႉတၢင်းၼိူဝ်လူင်းတၢင်းတႂ်ႈ။ ပေႃးမၼ်းႁၼ်ပဵၼ် (True) သေတီႈတီႈၼႆ တွၼ်ႈဢၼ်ၵိုတ်းဝႆႉၽၢႆႇတႂ်ႈၼၼ်ႉ မၼ်းတေ **ဢမ်ႇတူၺ်းယဝ်ႉ** (Skip) သေ တေၶၢမ်ႈပူၼ်ႉၵႂႃႇၵူၺ်းယဝ်ႉ။
* **Mutual Exclusion:** ၼႂ်းၸုမ်း `if-else if-else` ၼိုင်ႈဢၼ်ၼၼ်ႉ Code Block တေႁဵတ်းၵၢၼ်လႆႈ **"ဢၼ်လဵဝ်ၵူၺ်း"** (Only one block executes)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Clause:** တွၼ်ႈသိုပ်ႇၶွင် Statement (မိူၼ်ၼင်ႇ else ဢၼ်လူဝ်ႇမီး if ဢွၼ်တၢင်း)။
* **Ladder:** ပိူင်တႅမ်ႈ `else if` လၢႆလၢႆၸၼ်ႉ ဢၼ်မိူၼ်ၼင်ႇ "ၶိုၼ်ႈလႆ" (If-Else-If Ladder)။
* **Default Path:** ၸိုဝ်ႈႁွင်ႉထႅင်ႈပိူင်ၼိုင်ႈၶွင် `else` ယွၼ်ႉမၼ်းပဵၼ်တၢင်းပႆသုတ်ႉ မိူဝ်ႈဢမ်ႇမီးဢၼ်လႂ်မႅၼ်ႈ။
* **Mutual Exclusion:** လွၵ်းလၢႆး ဢၼ်ပၼ်သုၼ်ႇ ႁႂ်ႈမီးတၢင်းလိူၵ်ႈဢၼ်လဵဝ်ၵူၺ်း ႁဵတ်းၵၢၼ်လႆႈၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်။

---