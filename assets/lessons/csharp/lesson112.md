# Lesson 112: "Private Constructors & Singleton"

**Private Constructor** ပွင်ႇဝႃႈ Constructor ဢၼ် **"ၵေႃႉၼွၵ်ႈ (External classes) ႁွင်ႉၸႂ်ႉဢမ်ႇလႆႈ"**။ 
မၼ်းႁႄႉဢမ်ႇပၼ်ၽႂ်ၸႂ်ႉ Keyword `new` တီႈၼွၵ်ႈ Class ၼၼ်ႉယဝ်ႉၶႃႈ။


### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇႁႄႉ?
ႁဝ်းၸႂ်ႉ Private Constructor မိူဝ်ႈ:
1.  **Static Utility Classes:** မိူဝ်ႈ Class ႁဝ်းမီးဝႆႉ static methods လၢႆလၢႆၵူၺ်း (မိူၼ်ၼင်ႇ `Math`)၊ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈၽႂ်မႃးသၢင်ႈ Object မၼ်း။
2.  **Singleton Pattern:** မိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ App ႁဝ်းမီး **"Object တူဝ်လဵဝ်"** တႃႇ Project တင်းဢၼ် (မိူၼ်ၼင်ႇ တီႈၵုမ်းထိင်း Database ဢမ်ႇၼၼ် Settings)။



### 2. Singleton Pattern ပဵၼ်သင်?
**Singleton** ပဵၼ် Design Pattern ဢၼ်မၵ်းမၼ်ႈဝႃႈ Class ၼိုင်ႈဢၼ် တေလႆႈမီး **Instance (Object) တူဝ်လဵဝ်ၵူၺ်း** သေ ပၼ်တၢင်းၶဝ်ႈၸႂ်ႉ (Access) ႁူမ်ႈၵၼ်လႆႈၵူႈတီႈၶႃႈ။

```csharp
public class DatabaseConfig {
    // 1. သၢင်ႈ Static Variable တႃႇသိမ်း Object တူဝ်လဵဝ်ၼၼ်ႉဝႆႉ
    private static DatabaseConfig _instance;

    // 2. Private Constructor: ဢမ်ႇပၼ် ၵူၼ်းၽၢႆႇၼွၵ်ႈၸႂ်ႉ 'new' သေၶူင်သၢင်ႈ object လႆႈ
    private DatabaseConfig() {
        Console.WriteLine("Database Config Initialized!");
    }

    // 3. Static Method: တႃႇပၼ် Object တူဝ်ၼၼ်ႉဢွၵ်ႇၵႂႃႇ
    public static DatabaseConfig GetInstance() {
        if (_instance == null) {
            _instance = new DatabaseConfig(); // သၢင်ႈပွၵ်ႈလဵဝ်ၵူၺ်း
        }
        return _instance;
    }
}
```

### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
```csharp
// DatabaseConfig db = new DatabaseConfig(); // Error! ႁွင်ႉဢမ်ႇလႆႈ

DatabaseConfig db1 = DatabaseConfig.GetInstance();
DatabaseConfig db2 = DatabaseConfig.GetInstance();

// db1 လႄႈ db2 ပဵၼ် Object တူဝ်လဵဝ်ၵၼ် (Reference Equality)
Console.WriteLine(db1 == db2); // True
```

### 4. တူဝ်ယင်ႇၼႂ်းၸူဝ်ႈပၢၼ်တႄႉ
* မိူၼ်တင်း "ၸွမ်ၸိုင်ႈမိူင်း" (President)။ ၼႂ်းမိူင်းၼိုင်ႈမိူင်း မီးၸွမ်ၸိုင်ႈလႆႈၵေႃႉလဵဝ်ၵူၺ်း။ ၽႂ်ၵေႃႈယႃႇ ပေႃးၶႂ်ႈႁူပ်ႉၸွမ်ၸိုင်ႈ တေလႆႈၵႂႃႇႁူပ်ႉၵေႃႉ "လဵဝ်ၵၼ်" ၼၼ်ႉၵူၺ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Private Constructor:** Constructor ဢၼ်ႁပ်ႉၸႂ်ႉလႆႈ ၼႂ်းတူဝ် Class မၼ်းၼၼ်ႉၵူၺ်း။
* **Singleton Pattern:** လွၵ်းလၢႆးတႅမ်ႈ Code ႁႂ်ႈမီး Object လႆႈတူဝ်လဵဝ် တႃႇတင်း App။
* **Lazy Initialization:** ၵၢၼ်သၢင်ႈ Object မိူဝ်ႈထုၵ်ႇႁွင်ႉၸႂ်ႉ "ပွၵ်ႈၵမ်းဢွၼ်တၢင်း" ၵူၺ်း (ဢမ်ႇၸႂ်ႈသၢင်ႈဝႆႉၸဵမ်မိူဝ်ႈတႄႇ)။
* **Global Access Point:** တီႈႁွင်ႉၸႂ်ႉ (GetInstance) ဢၼ်ၵူႈတီႈၼႂ်း Code ၶဝ်ႈၸူးလႆႈမိူၼ်ၵၼ်။

---