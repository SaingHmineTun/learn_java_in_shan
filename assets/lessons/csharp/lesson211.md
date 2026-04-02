# Lesson 211: "Raising and Subscribing to Custom Events"

ၵၢၼ်ပိုၼ်ႈၶၢဝ်ႇ မီးပၵ်းပိူင် ဢၼ်ႁဝ်းတေလႆႈႁဵတ်းၸွမ်း ႁႂ်ႈ Code ႁဝ်းဢမ်ႇလူႉ (Safe) ၶႃႈ။

### 1. လၢႆးပိုၼ်ႈၶၢဝ်ႇ ႁႂ်ႈလွတ်ႈၽေး (Safe Raising)
မိူဝ်ႈႁဝ်းတေ "ပိုၼ်ႈၶၢဝ်ႇ" (Raise Event) ၼၼ်ႉ ႁဝ်းတေလႆႈၵူတ်ႇထတ်းဝႃႈ **"မီးၵူၼ်းထွမ်ႇယူႇႁႃႉ?"** (Is anyone subscribed?)။ 
သင်ဢမ်ႇမီးၵူၼ်းထွမ်ႇ သေႁဝ်းပိုၼ်ႈၶၢဝ်ႇၵႂႃႇ... App ႁဝ်းတေပဵၼ် `NullReferenceException` ၵမ်းလဵဝ်ၶႃႈ။

ႁဝ်းၸႂ်ႉ **`?.Invoke`** တႃႇၵူတ်ႇထတ်း `null` လၢႆးပွတ်းၶႃႈ:

```csharp
// လၢႆးတႅမ်ႈဢၼ်လွတ်ႈၽေး (Null-conditional operator)
OnNewsPublished?.Invoke(this, e);
```

### 2. လၢႆးတူၵ်းလူင်းႁပ်ႉၶၢဝ်ႇ (Subscribing)
Subscriber တေၸႂ်ႉ **`+=`** တႃႇသိုပ်ႇၵွင်ႉတင်း Event ၼၼ်ႉၶႃႈ။ ႁဝ်းၸၢင်ႈၸႂ်ႉတင်း **Method ဢၼ်မီးၸိုဝ်ႈ** ဢမ်ႇၼၼ် **Lambda Expression** ၵေႃႈလႆႈၶႃႈ။

```csharp
// ၸႂ်ႉ Method ဢၼ်မီးၸိုဝ်ႈ
publisher.OnNewsPublished += HandleNews;

// ၸႂ်ႉ Lambda Expression
publisher.OnNewsPublished += (s, e) => Console.WriteLine(e.Title);
```

### 3. တူဝ်ယင်ႇ Code: ၵၢၼ်ပိုၼ်ႈၶၢဝ်ႇ "Shan Language Lesson"
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး App သွၼ်လိၵ်ႈတႆး ဢၼ်ပိုၼ်ႈၶၢဝ်ႇမိူဝ်ႈ "တွၼ်ႈသွၼ်မႂ်ႇ" ဢွၵ်ႇမႃးၶႃႈ။

```csharp
using System;

// 1. ၶေႃႈမုၼ်းၶၢဝ်ႇ (Data)
public class LessonEventArgs : EventArgs {
    public string LessonName { get; set; }
}

// 2. ၽူႈပိုၼ်ႈၶၢဝ်ႇ (Publisher)
public class ShanTeacher {
    public event EventHandler<LessonEventArgs> NewLessonReady;

    public void StartLesson(string name) {
        Console.WriteLine($"\n[Teacher] တွၼ်ႈသွၼ် '{name}' ႁႅၼ်းယဝ်ႉၶႃႈ!");
        
        // ပိုၼ်ႈၶၢဝ်ႇ (Raise Event)
        OnNewLessonReady(new LessonEventArgs { LessonName = name });
    }

    // လၢႆးတႅမ်ႈ Protected Virtual Method (Standard Pattern)
    protected virtual void OnNewLessonReady(LessonEventArgs e) {
        NewLessonReady?.Invoke(this, e);
    }
}

// 3. ၵၢၼ်ၸႂ်ႉတႄႉ
class Program {
    static void Main() {
        ShanTeacher teacher = new ShanTeacher();

        // Subscriber 1: လုၵ်ႈႁဵၼ်း
        teacher.NewLessonReady += (s, e) => {
            Console.WriteLine($"[Student] ႁဝ်းႁႅၼ်းတႃႇႁဵၼ်း '{e.LessonName}' ယဝ်ႉ!");
        };

        // Subscriber 2: ပိူင်သၢင်ႈသိမ်း Log
        teacher.NewLessonReady += (s, e) => {
            Console.WriteLine($"[System] Logging: Lesson '{e.LessonName}' published.");
        };

        teacher.StartLesson("Delegates and Events");
    }
}
```

### 4. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ `OnEventName` Method?
ၼႂ်းပိူင် Standard ၶွင် C#... ႁဝ်းၵႆႉသၢင်ႈ Method ဢၼ်ၸိုဝ်ႈတႄႇလူၺ်ႈ **`On...`** (မိူၼ်ၼင်ႇ `OnNewLessonReady`)။
* **Encapsulation:** ႁဵတ်းႁႂ်ႈၵၢၼ်ပိုၼ်ႈၶၢဝ်ႇယူႇတီႈလဵဝ်ၵၼ်။
* **Inheritance:** သင်မီး Class လုၵ်ႉ (Subclass) မႃးသိုပ်ႇၸိူဝ်ႉၶိူဝ်း... မၼ်းၸၢင်ႈမႄး (Override) လၢႆးပိုၼ်ႈၶၢဝ်ႇၼၼ်ႉလႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Raise Event:** ၵၢၼ်ႁွင်ႉၸႂ်ႉ Event တႃႇပိုၼ်ႈၶၢဝ်ႇဢွၵ်ႇၵႂႃႇ။
* **Null-check:** ၵၢၼ်ၵူတ်ႇထတ်းဝႃႈ မီးၵူၼ်းထွမ်ႇ (Subscriber) ယူႇႁႃႉ ဢွၼ်တၢင်းတေပိုၼ်ႈၶၢဝ်ႇ။
* **Invoke:** ၵၢၼ်ႁွင်ႉၸႂ်ႉ Method ဢၼ်ၵွင်ႉဝႆႉၼႂ်း Delegate/Event။
* **Safe Invocation:** ၵၢၼ်ၸႂ်ႉ `?.` တႃႇႁႄႉၵၢင်ႈဢမ်ႇပၼ် App ၶျႃး (Crash)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ၸၢမ်းတႅမ်ႈ Code **`ShanTranslatorApp`**။
1.  သၢင်ႈ Event **`OnTranslateFinished`** ဢၼ်သူင်ႇ `string result` ၵႂႃႇၸွမ်။
2.  ၼႂ်း `Main` ႁႂ်ႈမီး Subscriber 2 ၵေႃႉ (ၵေႃႉၼိုင်ႈၼႄလိၵ်ႈ၊ ထႅင်ႈၵေႃႉၼိုင်ႈ ၼႄၶေႃႈၵႂၢမ်းဝႃႈ "Saved to history")။
3.  ၸၢမ်းပိုၼ်ႈၶၢဝ်ႇတူၺ်းၶႃႈ။