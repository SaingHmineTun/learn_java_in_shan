# Lesson 163: "Explicit Interface Implementation"

ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းတႅမ်ႈ Class **`ShanSmartDevice`** ဢၼ် Implement Interfaces သွင်ဢၼ်:
1. **`IPlayer`** (မီး Method `Play()`) - တႃႇပိုတ်ႇၵႂၢမ်း။
2. **`IGameConsole`** (မီး Method `Play()`) - တႃႇလႅၼ်ႇၵဵမ်း။

သင်ၶူးတႅမ်ႈ `public void Play() { ... }` ၼႂ်း Class ၸိုင်... C# တေဢမ်ႇႁူႉဝႃႈ ၼႆႉပဵၼ် `Play()` တွၼ်ႈတႃႇၵႂၢမ်း ဢမ်ႇၼၼ် တွၼ်ႈတႃႇၵဵမ်းၶႃႈ။ ႁဝ်းၸင်ႇလူဝ်ႇ "ၸႅၵ်ႇလႅၼ်း" မၼ်းၶႃႈ။

### 1. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းတေလႆႈသႂ်ႇ **ၸိုဝ်ႈ Interface** ဝႆႉၼႃႈၸိုဝ်ႈ Method သေ **ဢမ်ႇလူဝ်ႇသႂ်ႇ Access Modifier** (`public`) ၶႃႈ:

```csharp
public class ShanSmartDevice : IPlayer, IGameConsole {
    // Explicit Implementation တႃႇ IPlayer
    void IPlayer.Play() {
        Console.WriteLine("Music is playing...");
    }

    // Explicit Implementation တႃႇ IGameConsole
    void IGameConsole.Play() {
        Console.WriteLine("Game is starting...");
    }
}
```



### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (The Usage)
မိူဝ်ႈႁဝ်းၸႂ်ႉ Explicit Implementation ယဝ်ႉ... ႁဝ်းတေႁွင်ႉၸႂ်ႉလုၵ်ႉတီႈ Object Variable ၵမ်းလဵဝ်ဢမ်ႇလႆႈၶႃႈ။ ႁဝ်းတေလႆႈ **Cast** (ပိၼ်ႇၸိူဝ်ႉၶိူဝ်း) ၵႂႃႇၸူး Interface ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉၵွၼ်ႇၶႃႈ:

```csharp
ShanSmartDevice myDevice = new ShanSmartDevice();

// myDevice.Play(); // ERROR! (Compiler ဢမ်ႇႁူႉဝႃႈတေဢဝ်တူဝ်လႂ်)

IPlayer music = myDevice;
music.Play(); // ဢွၵ်ႇ: "Music is playing..."

IGameConsole game = myDevice;
game.Play(); // ဢွၵ်ႇ: "Game is starting..."
```

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
1. **Name Collision:** မိူဝ်ႈ Interfaces သွင်ဢၼ်မီး Method ၸိုဝ်ႈမိူၼ်ၵၼ် ၵူၺ်းၵႃႈ Logic ဢမ်ႇမိူၼ်ၵၼ်။
2. **Hiding Methods:** မိူဝ်ႈႁဝ်းဢမ်ႇၶႂ်ႈၼႄ Method ၼၼ်ႉ ၼႂ်း Class ธรรมดา (ၶႂ်ႈပၼ်ႁွင်ႉၸႂ်ႉလႆႈ ၵူၺ်းၼႂ်းၸိုဝ်ႉၶိူဝ်း Interface)။
3. **Cleaner API:** ႁဵတ်းႁႂ်ႈ Class ႁဝ်းလူလိၵ်ႈငၢႆႈလိူဝ်ၵဝ်ႇ ယွၼ်ႉမၼ်းလပ်ႉ Method ၸိူဝ်းဢၼ်ဢမ်ႇၵႆႉၸႂ်ႉဝႆႉၶႃႈ။

### 4. ပၵ်းၵၢၼ်လမ်ႇလွင်ႈ
* **No `public` keyword:** ဢမ်ႇပၼ်သႂ်ႇ `public` ၼႃႈ Method (မၼ်းပဵၼ် public ႁင်းၵူၺ်းမၼ်းယူႇယဝ်ႉ)။
* **Interface Required:** တေလႆႈႁွင်ႉၸႂ်ႉ ၽၢၼ်ႇ Interface Reference ၵူၺ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Explicit Implementation:** ၵၢၼ်တႅမ်ႈ Code ႁပ်ႉ Interface လူၺ်ႈမၵ်းမၼ်ႈၸိုဝ်ႈ Interface ၸွမ်။
* **Name Collision:** ၵၢၼ်ၸိုဝ်ႈတႅၵ်ႈၵၼ် (Conflict)။
* **Interface Casting:** ၵၢၼ်ပိၼ်ႇ Object ႁႂ်ႈပဵၼ် Interface Type တႃႇႁွင်ႉၸႂ်ႉ Method။
* **Ambiguity:** လွင်ႈဢမ်ႇၸႅင်ႈလႅင်း (Compiler ယုင်ႈယၢင်ႈ)။

---