# Lesson 103: "Memory Management: How the GC Works"

ၼႂ်း C# ႁဝ်းဢမ်ႇလူဝ်ႇ "ယႃႉ" (Delete) Object ပႅတ်ႈႁင်းၵူၺ်းမိူၼ် C++ ၶႃႈ။ 
.NET Framework မီး **Garbage Collector** တႃႇၸတ်းၵၢၼ်ပၼ်ႁင်းၵူၺ်း (Automatic Memory Management) ယဝ်ႉၶႃႈ။

### 1. တူဝ်ဝတ်ႉထု ဢၼ်ယဵၼ်းပဵၼ် "ယုၵ်းယၵ်း" ၵႂႃႇ (What is Garbage?)
မိူဝ်ႈႁဝ်းသၢင်ႈ Object ဝႆႉၼႂ်း **Heap** သေယဝ်ႉ... 
သမ်ႉဢမ်ႇမီး Variable (Reference) တူဝ်လႂ် ၸိၼႄၸူးမၼ်းယဝ်ႉၼႆ... 
Object တူဝ်ၼၼ်ႉ တေပဵၼ် "ယုၵ်းယၵ်း" ၵႂႃႇယဝ်ႉ။



```csharp
void CreateStudent() {
    Student s1 = new Student { Name = "Mao" };
    // s1 ၸိၼႄၸူး Object ၼႂ်း Heap ယူႇ
} 
// ပေႃးယဝ်ႉ Method ၼႆႉ... s1 (Reference) တေတၢႆၵႂႃႇ
// ယၢမ်းလဵဝ် Object "Mao" ၼႂ်း Heap ဢမ်ႇမီးၽႂ်ၸိၼႄၸူးယဝ်ႉ
// မၼ်းပဵၼ် "Garbage" (ယုၵ်းယၵ်း) ယဝ်ႉၶႃႈ။
```

### 2. ပိူင်ၵၢၼ် (How GC Works)
GC တေလႅၼ်ႈႁင်းၵူၺ်း (Automatic) မိူဝ်ႈ Memory တေၸမ်သဵင်ႈ ဢမ်ႇၼၼ် မိူဝ်ႈ System ဝၢင်ႇယူႇၶႃႈ။
1.  **Marking:** မၼ်းတေၸွမ်းႁႃတူၺ်း Object ၵူႈဢၼ် ၼႂ်း Heap ဝႃႈ မီးၽႂ်တိုၵ်ႉၸႂ်ႉ (Reference) ယူႇႁႃႉ?
2.  **Relocating:** တူဝ်ဢၼ်မီးၵူၼ်းၸႂ်ႉယူႇ ႁႂ်ႈမၼ်းယူႇဝႆႉမိူၼ်ၵဝ်ႇ။
3.  **Compacting (Sweeping):** တူဝ်ဢၼ် ဢမ်ႇမီးၽႂ်ၸိၼႄၸူးယဝ်ႉၼၼ်ႉ မၼ်းတေ "ယႃႉ" (Delete) ပႅတ်ႈ ယဝ်ႉ။ ယဝ်ႉၵေႃႈ မၼ်းတေဢဝ် Object ၸိူဝ်းတိုၵ်ႉၸႂ်ႉဝႆႉယူႇၼၼ်ႉ မႃးၸူႉတွမ်ၵၼ် တႃႇပၼ်တီႈပဝ်ႇ (Free Space) ယႂ်ႇယႂ်ႇၼမ်ၼမ် ၶႃႈ။

### 3. Generations (သႅၼ်းဢႃႇယု)
GC ၸႅၵ်ႇ Object ပဵၼ် 3 သႅၼ်း တႃႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ဝႆး:
* **Gen 0:** Object ဢၼ်တိုၵ်ႉသၢင်ႈမႂ်ႇ (GC တူၺ်းတွၼ်ႈၼႆႉၼမ်သေပိူၼ်ႈ)။
* **Gen 1:** Object ဢၼ်ပူၼ်ႉလွတ်ႈ လွင်ႈယႃႉ (Garbage Collecting) ယဝ်ႉမႃး 1 ပွၵ်ႈ။
* **Gen 2:** Object ဢၼ်ယူႇမႃးႁိုင် (မိူၼ်ၼင်ႇ Static data ဢမ်ႇၼၼ် Long-running objects)။

### 4. ႁဵတ်းသင်ႁဝ်းလူဝ်ႇႁူႉ?
* **Performance:** သင်ႁဝ်းသၢင်ႈ Object ၼမ်ပူၼ်ႉ တီႈၼႂ်း Loop... GC တေလႆႈႁဵတ်းၵၢၼ်ၼမ် သေႁဵတ်းႁႂ်ႈ App ႁဝ်း "ထိူင်း" (Lag) လႆႈၶႃႈ။
* **Memory Leaks:** မၢင်ပွၵ်ႈႁဝ်းလိုမ်း "ထွၼ်သၢႆၵွင်ႉ" (Clear references) သေႁဵတ်းႁႂ်ႈ GC ဢမ်ႇၸၢင်ႈယႃႉ Object ဢၼ်ဢမ်ႇလူဝ်ႇၸႂ်ႉယဝ်ႉၼၼ်ႉပႅတ်ႈလႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Garbage Collector (GC):** ပိူင်ၸတ်းၵၢၼ် Memory ႁင်းၵူၺ်းၼႂ်း .NET။
* **Heap:** တီႈသိမ်း Object ၼႂ်း RAM။
* **Unreachable Object:** Object ဢၼ်ဢမ်ႇမီး Variable တူဝ်လႂ်ၸိၼႄၸူးယဝ်ႉ။
* **Generation:** ၵၢၼ်ၸႅၵ်ႇသႅၼ်း Object ၸွမ်းၼင်ႇၶၢဝ်းယၢမ်းဢႃႇယု။
* **Memory Leak:** ၵၢၼ်ဢၼ် RAM ထုၵ်ႇၸႂ်ႉၵႂႃႇတိၵ်းတိၵ်း ယွၼ်ႉ GC ဢမ်ႇၸၢင်ႈၵဵပ်းသိမ်း Memory ၶိုၼ်းလႆႈ။

---