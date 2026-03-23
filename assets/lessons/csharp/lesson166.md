# Lesson 166: "Exercise: Shan Multimedia Player"

### 1. ဝၢင်းၽႅၼ်ပိူင်သၢင်ႈ (The Blueprint)
* **`MediaFile` (Abstract Class)**: ပဵၼ် "ပိုၼ်ႉထၢၼ်" တႃႇၵူႈၾၢႆႇ။ မီး Property `Title` လႄႈ `Duration` (ယွၼ်ႉၵႂၢမ်းလႄႈဝီႇတီႇဢူဝ်ႇ မီးၸိုဝ်ႈလႄႈၶၢဝ်းယၢမ်းမိူၼ်ၵၼ်)။
* **`IPlayable` (Interface)**: မၵ်းမၼ်ႈ Method `Play()` လႄႈ `Stop()`။
* **`AudioFile` & `VideoFile` (Concrete Classes)**: သိုပ်ႇၸိူဝ်ႉၶိူဝ်းမႃး သေ Implement ၼႃႈတီႈပိုတ်ႇၵႂၢမ်း/ဝီႇတီႇဢူဝ်ႇ။

### 2. တႅမ်ႈ Code (Implementation)

```csharp
using System;
using System.Collections.Generic;

// 1. Abstract Base Class: မၼ်းပဵၼ် "သင်"? (Identity)
public abstract class MediaFile {
    public string Title { get; set; }
    public int DurationSeconds { get; set; }

    public MediaFile(string title, int duration) {
        Title = title;
        DurationSeconds = duration;
    }

    public abstract void DisplayInfo();
}

// 2. Interface: မၼ်းႁဵတ်း "သင်" လႆႈ? (Capability)
public interface IPlayable {
    void Play();
    void Stop();
}

// 3. Audio Class
public class AudioFile : MediaFile, IPlayable {
    public AudioFile(string title, int duration) : base(title, duration) { }

    public override void DisplayInfo() => Console.WriteLine($"[Audio] {Title} ({DurationSeconds}s)");

    public void Play() => Console.WriteLine($"Playing audio track: {Title}...");
    public void Stop() => Console.WriteLine($"Stopped audio: {Title}.");
}

// 4. Video Class
public class VideoFile : MediaFile, IPlayable {
    public string Resolution { get; set; } = "1080p";

    public VideoFile(string title, int duration) : base(title, duration) { }

    public override void DisplayInfo() => Console.WriteLine($"[Video] {Title} - {Resolution} ({DurationSeconds}s)");

    public void Play() => Console.WriteLine($"Streaming video: {Title} in {Resolution}...");
    public void Stop() => Console.WriteLine($"Stopped video: {Title}.");
}
```

### 3. ၵၢၼ်ၸႂ်ႉတႄႉ (Polymorphic Player)

```csharp
class Program {
    static void Main() {
        // သၢင်ႈ List ၶွင် IPlayable (Interface Polymorphism)
        // ႁဝ်းသိမ်းလႆႈတင်း Audio လႄႈ Video ယွၼ်ႉတင်းသွင်ဢၼ် "Play လႆႈ" မိူၼ်ၵၼ်
        List<IPlayable> playlist = new List<IPlayable> {
            new AudioFile("Shan Song 1", 210),
            new VideoFile("Shan Culture Movie", 3600),
            new AudioFile("Classic Tai Melody", 180)
        };

        Console.WriteLine("--- Shan Media Player Starting ---");
        
        foreach (var item in playlist) {
            item.Play(); // ႁွင်ႉၸႂ်ႉ Method ၸွမ်းၼင်ႇ Object Type တႄႉတႄႉ
            
            // ၸၢမ်းၸႂ်ႉ 'is' တႃႇၼႄၶေႃႈမုၼ်း (Abstract Class Casting)
            if (item is MediaFile media) {
                media.DisplayInfo();
            }
            Console.WriteLine("--------------------");
        }
    }
}
```



---

### လွၼ်ႉမၼ်းဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **Abstract Class** ၸွႆးႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code `Title` လႄႈ `Duration` ၶိုၼ်းလၢႆပွၵ်ႈ (Code Reuse)။
* **Interface** ၸွႆးႁႂ်ႈႁဝ်းၸၢင်ႈ "ပိုတ်ႇ" (Play) Object ၸိူဝ်ႉၶိူဝ်းသင်ၵေႃႈလႆႈ ဢၼ်မီးၼႃႈတီႈပိုတ်ႇလႆႈ (Flexibility)။
* **Decoupling**: App ႁဝ်းဢမ်ႇလူဝ်ႇႁူႉဝႃႈ ၾၢႆႇၼၼ်ႉပဵၼ် `.mp3` ဢမ်ႇၼၼ် `.mp4`၊ မၼ်းႁူႉၵူၺ်းဝႃႈ "မၼ်းပဵၼ် `IPlayable`" ၵေႃႈတူဝ်ႈယဝ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Software Design**: ၵၢၼ်ဝၢင်းၽႅၼ် ပိူင်သၢင်ႈ Code ႁႂ်ႈၸႂ်ႉလႆႈၶၢဝ်းႁိုင်။
* **Extensibility**: လွင်ႈငၢႆႈမိူဝ်ႈတေထႅမ် Format မႂ်ႇๆ (မိူၼ်ၼင်ႇ `GifFile`)။
* **Contract-Based Programming**: ၵၢၼ်တႅမ်ႈ Code ၸွမ်းၼင်ႇ "ၵတိ" ဢၼ်တူၵ်းလူင်ႇဝႆႉ။
* **Unified Interface**: ၵၢၼ်မီး "ၼႃႈၵၢၼ်" လဵဝ်ၵၼ် တႃႇ Object လၢႆလၢႆပိူင်။

---