# Lesson 133: "Property Access Modifiers: Public Get but Private Set"

မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈႁႂ်ႈပိူၼ်ႈ (Other Classes) **"ဢၢၼ်ႇလႆႈ"** ၶေႃႈမုၼ်းႁဝ်းယူႇ၊ ၵူၺ်းၵႃႈ ႁဝ်းဢမ်ႇၶႂ်ႈပၼ်ပိူၼ်ႈ **"မႄးလႆႈ"** ၶႃႈ။ ႁဝ်းၶႂ်ႈမႄးၵႃႈၶၼ်ၼၼ်ႉ လုၵ်ႉတီႈၼႂ်း Class ႁဝ်းႁင်းၵူၺ်းၵူၺ်း။



### 1. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းၸၢင်ႈသႂ်ႇ Access Modifier (မိူၼ်ၼင်ႇ `private`) ဝႆႉၽၢႆႇၼႃႈ `get` ဢမ်ႇၼၼ် `set` ၼႂ်း Property လဵဝ်ၵၼ်လႆႈၶႃႈ။

```csharp
public class ShanPlayer {
    // ပိူၼ်ႈဢၢၼ်ႇလႆႈ (Public) ၵူၺ်းၵႃႈ ႁဝ်းမႄးလႆႈၵေႃႉလဵဝ် (Private Set)
    public int Score { get; private set; }

    public ShanPlayer() {
        Score = 0; // Initialize လႆႈ
    }

    public void AddScore(int points) {
        Score += points; // မႄးလႆႈ ၼႂ်း Class ႁင်းၵူၺ်း
    }
}
```

### 2. ပိူင်ၵၢၼ် (Rules)
* **Property Level:** တေလႆႈပဵၼ် Access Modifier ဢၼ် "ၵႂၢင်ႈ" သေပိူၼ်ႈ (မိူၼ်ၼင်ႇ `public`)။
* **Accessor Level:** တေလႆႈပဵၼ် Access Modifier ဢၼ် "ၵႅၼ်ႇ" သေ Property Level (မိူၼ်ၼင်ႇ `private`)။
* **One Modifier Only:** ႁဝ်းသႂ်ႇ Modifier လႆႈၵူၺ်းတီႈ `get` ဢမ်ႇၼၼ် `set` **တူဝ်လႂ်တူဝ်ၼိုင်ႈၵူၺ်း**၊ တေလႆႈမီးတူဝ်ၼိုင်ႈ ဢၼ်ၸႂ်ႉ Modifier ၶွင် Property ၼၼ်ႉၶႃႈ။

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
* **Encapsulation:** ႁဝ်းၵႅတ်ႇၶႄၶေႃႈမုၼ်း (Data Protection) ဢမ်ႇပၼ်ၵေႃႉၼွၵ်ႈမႃးမႄးၸွမ်းၸႂ်၊ ၵူၺ်းၵႃႈ ႁဝ်းယွၼ်ႇပၼ်ႁႂ်ႈၶဝ် "ႁူႉ" (Observe) လႆႈၵႃႈၶၼ်ယူႇ။
* **State Control:** ၸွႆးႁႂ်ႈႁဝ်းႁူႉတႅတ်ႉတေႃးဝႃႈ ၶေႃႈမုၼ်းၼႆႉ တေထုၵ်ႇမႄးလုၵ်ႉတီႈ Methods ၼႂ်း Class ႁဝ်းၵူၺ်း (မိူၼ်ၼင်ႇ `UpdateScore()`)။

### 4. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
```csharp
ShanPlayer player = new ShanPlayer();
Console.WriteLine(player.Score); // 0 (Read OK)

player.AddScore(10); // Method ၼႂ်း Class မႄးပၼ် Score = 10
// player.Score = 500; // Error! (Set accessor is private)
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Access Modifier:** Keyword ၵုမ်းထိင်းသုၼ်ႇၶဝ်ႈၸႂ်ႉ။
* **Asymmetric Access:** ၵၢၼ်မၵ်းမၼ်ႈသုၼ်ႇ ဢၢၼ်ႇ လႄႈ မႄး ႁႂ်ႈဢမ်ႇမိူၼ်ၵၼ်။
* **Internal Setter:** မၢင်ပွၵ်ႈၸႂ်ႉ `internal set` တႃႇပၼ်ၵူၼ်းၼႂ်း Project လဵဝ်ၵၼ်မႄးလႆႈ။
* **Encapsulation:** ၵၢၼ်ႁေႃႇႁႄႉၶေႃႈမုၼ်း ႁႂ်ႈမီးလွင်ႈၵႅတ်ႇၶႄ။

---