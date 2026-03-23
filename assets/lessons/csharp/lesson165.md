# Lesson 165: "Polymorphism through Interfaces"

**Interface Polymorphism** ပွင်ႇဝႃႈ "ၵၢၼ်ၸႂ်ႉ Variable ၶွင် Interface တႃႇသိမ်း Object ၸိူဝ်ႉၶိူဝ်းသင်ၵေႃႈလႆႈ ဢၼ်ႁပ်ႉၵတိ (Implement) Interface ၼၼ်ႉဝႆႉ" ၼၼ်ႉယဝ်ႉ။



### 1. Decoupled Code ပဵၼ်သင်?
* **Coupled Code:** မိူဝ်ႈ Class A တေလႆႈႁူႉၸႅင်ႈလႅင်းဝႃႈ Class B ပဵၼ်သင်တႄႉတႄႉ ၸင်ႇတေႁဵတ်းၵၢၼ်ၸွမ်လႆႈ။ (မႄးယၢပ်ႇ)
* **Decoupled Code:** မိူဝ်ႈ Class A ႁူႉၵူၺ်းဝႃႈ "Object တူဝ်ၼႆႉ ႁဵတ်းၼႃႈတီႈ (Interface) ၼႆႉလႆႈ" သေ ဢမ်ႇလူဝ်ႇႁူႉဝႃႈမၼ်းပဵၼ် Class သင်တႄႉတႄႉ။ (မႄးငၢႆႈ)

### 2. တူဝ်ယင်ႇ ၼႂ်း Shan Multimedia Player
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Interface **`IVideoPlayer`** ဢၼ်မီး Method `PlayVideo()`။

```csharp
public interface IVideoPlayer {
    void PlayVideo(string fileName);
}

// ႁဝ်းမီးလၢႆးပိုတ်ႇ Video လၢႆလၢႆပိူင်
public class Mp4Player : IVideoPlayer {
    public void PlayVideo(string fileName) => Console.WriteLine($"Playing MP4: {fileName}");
}

public class AviPlayer : IVideoPlayer {
    public void PlayVideo(string fileName) => Console.WriteLine($"Playing AVI: {fileName}");
}
```

### 3. ၵၢၼ်ၸႂ်ႉ Interface ပဵၼ် Parameter (The Magic)
ၼႆႉပဵၼ်တွၼ်ႈဢၼ်လမ်ႇလွင်ႈသုတ်းၶႃႈ။ ႁဝ်းၸၢင်ႈတႅမ်ႈ Method ဢၼ်ႁပ်ႉဢဝ် **Interface** ပဵၼ် Parameter လႆႈၶႃႈ:

```csharp
public class ShanMediaApp {
    // Method ၼႆႉ ဢမ်ႇလူဝ်ႇႁူႉဝႃႈပဵၼ် Mp4 ဢမ်ႇၼၼ် Avi
    // မၼ်းႁူႉၵူၺ်းဝႃႈ တူဝ်ဢၼ်သူင်ႇမႃးၼၼ်ႉ 'PlayVideo' လႆႈ
    public void StartMovie(IVideoPlayer player, string file) {
        player.PlayVideo(file);
    }
}
```

### 4. ႁဵတ်းသင်ၸင်ႇလီလိူဝ်?
1. **Easy to Extend:** မိူဝ်ႈဝၼ်းၼိုင်ႈ ၶူးၶႂ်ႈထႅမ် `MkvPlayer` ၶဝ်ႈမႃး... ၶူးဢမ်ႇလူဝ်ႇၵႂႃႇမႄး Code ၼႂ်း `ShanMediaApp` သေထႅဝ်ၶႃႈ။ ၶူးၵူၺ်းလူဝ်ႇသၢင်ႈ Class မႂ်ႇ သေသူင်ႇၶဝ်ႈၵႂႃႇၵူၺ်း။
2. **Pluggable Architecture:** Code ႁဝ်းမိူၼ်ၼင်ႇ "ပလၢၵ်ႉၾႆး" (Plug)။ ႁဝ်းၸၢင်ႈဢဝ် Object လႂ်ၵေႃႈလႆႈ မႃးသႂ်ႇ (Plug-in) ၸႂ်ႉၸွမ်ၵၼ်လႆႈ ၸွမ်းၼင်ႇၵတိ (Interface) ဢၼ်မၵ်းမၼ်ႈဝႆႉၼၼ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Decoupling:** ၵၢၼ်ႁဵတ်းႁႂ်ႈ Code ဢမ်ႇၵွင်ႉၵၢႆႇၵၼ်ၼမ်လိူဝ်ပူၼ်ႉတီႈ။
* **Interface Polymorphism:** ၵၢၼ်ၸႂ်ႉ Interface တႃႇႁဵတ်းႁႂ်ႈ Object မီးလၢႆႁၢင်ႈ။
* **Pluggability:** လွင်ႈလႅတ်းသႅဝ်း ဢၼ်ၸၢင်ႈလႅၵ်ႈလၢႆႈ Object လႆႈငၢႆႈ။
* **Abstraction Layer:** ၸၼ်ႉဢၼ်ၸႅၵ်ႇ "လၢႆးၸႂ်ႉ" (Usage) လႄႈ "လၢႆးႁဵတ်း" (Implementation)။

---