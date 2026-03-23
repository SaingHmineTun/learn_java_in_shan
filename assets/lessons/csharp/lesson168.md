# Lesson 168: "Static Fields"

**Static Field** ပဵၼ် Variable ဢၼ်မီး Copy တူဝ်လဵဝ်ၵူၺ်း ၼႂ်း Memory တႃႇ Class တင်းမူတ်း။ ဢမ်ႇဝႃႈၶူးတေ `new` Object မႃး 10 တူဝ် ဢမ်ႇၼၼ် 1,000 တူဝ်... တင်းမူတ်းတေၸႂ်ႉ Static Field **တူဝ်လဵဝ်ၵၼ်** ၼၼ်ႉယဝ်ႉၶႃႈ။

### 1. ၵၢၼ်ၸႂ်ႉတႃႇ "ၼပ်ႉတူဝ်" (The Object Counter)
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းၶႂ်ႈႁူႉဝႃႈ "ၼႂ်း App ႁဝ်းၼႆႉ မီးလုၵ်ႈႁဵၼ်း တင်းမူတ်း ၵေႃႉဢၼ်ယဝ်ႉ?"။ ႁဝ်းၸၢင်ႈၸႂ်ႉ Static Field ၼႂ်း Constructor တႃႇၼပ်ႉလႆႈၶႃႈ:

```csharp
public class ShanStudent {
    public string Name { get; set; }
    
    // Static Field: မီး Copy တူဝ်လဵဝ်ၵူၺ်း တႃႇ Class တင်းမူတ်း
    public static int StudentCount = 0;

    public ShanStudent(string name) {
        Name = name;
        // ၵူႈပွၵ်ႈဢၼ် 'new' လုၵ်ႈႁဵၼ်းမႂ်ႇ... ႁႂ်ႈမၼ်းၼပ်ႉထႅမ် (+) 1
        StudentCount++;
    }
}
```

### 2. လွင်ႈပႅၵ်ႇပိူင် ၼႂ်း Memory
* **Instance Field (`Name`):** ၵူႈ Object တေမီးတီႈၵဵပ်းၸိုဝ်ႈၽႂ်မၼ်း။
* **Static Field (`StudentCount`):** တေမီးတီႈၵဵပ်း "ႁူမ်ႈၵၼ်" (Shared Location) ဝႆႉတီႈလဵဝ်ၵူၺ်းၶႃႈ။



### 3. ပၵ်းၵၢၼ်လမ်ႇလွင်ႈ
1.  **Initialize Once:** Static Field တေထုၵ်ႇသၢင်ႈဝႆႉ ၵမ်းလဵဝ်ၵူၺ်း မိူဝ်ႈ Class ၼၼ်ႉ ထုၵ်ႇႁွင်ႉၸႂ်ႉၵမ်းဢွၼ်တၢင်းသုတ်း။
2.  **Access via Class:** ၶူးတေလႆႈၸႂ်ႉ `ShanStudent.StudentCount` တႃႇႁွင်ႉၸႂ်ႉမၼ်း (ဢမ်ႇၸႂ်ႉ `s1.StudentCount`)။
3.  **Persistence:** ၵႃႈၶၼ် (Value) မၼ်းတေတိုၵ်ႉယူႇ တေႃႇ App တေပိတ်း (ဢမ်ႇႁၢႆၵႂႃႇ မိူဝ်ႈ Object တၢႆ)။

### 4. တူဝ်ယင်ႇ ၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း
သင် Object တူဝ်ၼိုင်ႈ လႅၵ်ႈလၢႆႈၵႃႈၶၼ် Static Field... Object တူဝ်တၢင်ႇၸိူဝ်း တေႁၼ်ၵႃႈၶၼ်မႂ်ႇၼၼ်ႉ ၵမ်းလဵဝ်ၶႃႈ:

```csharp
ShanStudent s1 = new ShanStudent("Sai Hla");
ShanStudent s2 = new ShanStudent("Sai Hseng");

Console.WriteLine(ShanStudent.StudentCount); // ဢွၵ်ႇ: 2

ShanStudent s3 = new ShanStudent("Nang Mo");
Console.WriteLine(ShanStudent.StudentCount); // ဢွၵ်ႇ: 3
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Shared Memory:** တီႈၵဵပ်းၶေႃႈမုၼ်း ဢၼ်ၸႂ်ႉႁူမ်ႈၵၼ်။
* **Global State:** ၵႃႈၶၼ်ဢၼ်မီးၽွၼ်းတုမ်ႉတိူဝ်ႉ ၵူႈတီႈၼႂ်း Class။
* **Initialization:** ၵၢၼ်သႂ်ႇၵႃႈၶၼ် တႄႇဢွၼ်တၢင်းသုတ်း။
* **Class Member:** တွၼ်ႈလိၵ်ႈ ဢၼ်ပဵၼ်ၶွင် Class ၵမ်းလဵဝ်။

---