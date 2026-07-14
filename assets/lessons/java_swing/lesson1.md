
## 1: Introduction to Java Swing & JFrame

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး လွင်ႈၶူင်သၢင်ႈ **Desktop Application** ၶႃႈ! ပူၼ်ႉမႃးၼႆႉ လုၵ်ႈႁဵၼ်းၶဝ်လႆႈတႅမ်ႈမႃး **Console** application (ဢၼ်မီးတူဝ်လိၵ်ႈလၢႆလၢႆၼၼ်ႉ) သေတႃႉ၊ ယၢမ်းလဵဝ် ႁဝ်းတေမႃးတႄႇၶူင်သၢင်ႈ **Graphical User Interface (GUI)** ဢၼ်မီးၼႃႈၸေႃးႁၢင်ႈလီလီ၊ မီးပိူၵ်ႉ (buttons) လႄႈ ဢွင်ႈတီႈတႅမ်ႈလိၵ်ႈ (text fields) ၸိူဝ်းၼၼ်ႉယဝ်ႉ။

### Java Swing ပဵၼ်သင်?

**Java Swing** ၼႆႉ ပဵၼ် library ဢၼ်ၼိုင်ႈ ၼႂ်း Java ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၶူင်သၢင်ႈ GUI သေ ႁဵတ်းႁႂ်ႈ application ႁဝ်းမီးၼႃႈၸေႃး (window) ၶႃႈ။ 
မၼ်းထုၵ်ႇၶူင်သၢင်ႈမႃးၼိူဝ် **AWT (Abstract Window Toolkit)** ဢၼ်ၵဝ်ႇၼၼ်ႉသေ၊ မၼ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ UI ႁဝ်းႁၢင်ႈလီလႄႈ ၸႂ်ႉလႆႈမိူၼ်ၵၼ် 
ပေႃး run ၼိူဝ် Mac, Windows, ဢမ်ႇၼၼ် Linux ၶႃႈ။

### JFrame ပဵၼ်သင်?

**`JFrame`** ၼႆႉ ပဵၼ်ပိုၼ်ႉထၢၼ်လိုၵ်ႉသုတ်း (basic building block) တႃႇ Java Swing application တင်းသဵင်ႈၶႃႈ။ 
လႆႈဝႃႈမၼ်းပဵၼ် "Main Window" ဢမ်ႇၼၼ် "ၽႃႈယၢင် (Canvas)" ပဝ်ႇပဝ်ႇ ဢၼ်ႁဝ်းတေဢဝ် **UI Components** လၢႆလၢႆဢၼ် မႃးသႂ်ႇၼၼ်ႉၶႃႈ။

* ပေႃးဢမ်ႇမီး `JFrame`၊ ႁဝ်းတေဢမ်ႇၸၢင်ႈၼႄ ၼႃႈၸေႃး GUI သင်လႆႈ။

---

### လွင်ႈၶူင်သၢင်ႈ JFrame ဢွၼ်တၢင်းသုတ်း

တွၼ်ႈတႃႇတေပိုတ်ႇၼႃႈၸေႃး window ဢွၼ်တၢင်းသုတ်းၼၼ်ႉ၊ ႁဝ်းတေလႆႈ ႁွင်ႉၸႂ်ႉ `JFrame` class ဢၼ်မီးၼႂ်း package `javax.swing` သေ 
ႁဵတ်းႁႂ်ႈမၼ်း `visible` (ႁၼ်လႆႈ) ၶႃႈ။

ၸၢမ်းတူၺ်း Code ၽၢႆႇတႂ်ႈၼႆႉလႆႈၶႃႈ:

```java
import javax.swing.JFrame;

public class Main {
    public static void main(String[] args) {
        // 1. ၶူင်သၢင်ႈ JFrame Object ဢၼ်မႂ်ႇ
        JFrame frame = new JFrame();

        // 2. ၵိုၵ်းၸိုဝ်ႈ (Title) ပၼ် ၼႃႈၸေႃး window ႁဝ်း
        frame.setTitle("My First Swing Window");

        // 3. မၵ်းမၼ်ႈ ၶະၼၢတ်ႈ (Size) window (width, height)
        frame.setSize(400, 300);

        // 4. ႁဵတ်းႁႂ်ႈ window ၼႄပၼ် ၼိူဝ် Screen
        frame.setVisible(true);
    }
}

```

> **မၢႆတွင်း (Note):** ပေႃးသူၸဝ်ႈ run code ၼႆႉ၊ window ဢွၵ်ႇမႃးတႄႉယဝ်ႉ။ ၵူၺ်းၵႃႈ ပေႃးသူၸဝ်ႈ ၼဵၵ်းပိၵ်ႉ (X) window ၼၼ်ႉ၊ program မၼ်းတေဢမ်ႇယုတ်းသေ တေ run ယူႇတိၵ်းတိၵ်းၶႃႈ။ ႁဝ်းတေလႆႈမႃး ၵႄႈလိတ်ႈလွင်ႈၼႆႉ ၼႂ်း Lesson 2!