## 2: Setting Window Properties & Sizing

ၼႂ်း Lesson 1 ၼၼ်ႉ ႁဝ်းလႆႈႁၼ်ဝႃႈ ပေႃးႁဝ်းၼဵၵ်းပိၵ်ႉ (X) window ယဝ်ႉၵေႃႈ program ႁဝ်းတိုၵ်ႉ run ယူႇၽၢႆႇလင် (background) ၼႂ်း IDE ႁဝ်းၶႃႈ။

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈမၵ်းမၼ်ႈ **Properties** လႄႈ **Sizing** ၵူႈလွင်ႈလွင်ႈ တွၼ်ႈတႃႇႁႂ်ႈ window ႁဝ်းႁဵတ်းၵၢၼ်လႆႈလီ၊ 
မီးပိူင်သၢင်ႈ (behavior) ဢၼ်မၢၼ်ႇမႅၼ်ႈ သေၵဝ်ႇၶႃႈ။

---

### Properties ဢၼ်တေလႆႈႁူႉ

ႁဝ်းမီး Method တင်းၼမ် တႃႇမႃးၵုမ်းထိင်း `JFrame` ၶႃႈ။ Properties ပိုၼ်ႉထၢၼ် ဢၼ်တေလႆႈၸႂ်ႉတႃႇသေႇမီးၼင်ႇၼႆ:

### 1. လွင်ႈပိၵ်ႉ Program ႁႂ်ႈပိၵ်ႉလႆႈ (Default Close Operation)

ပေႃးႁဝ်းဢမ်ႇသႂ်ႇ code သင်၊ `JFrame` တေၵူၺ်း "ဢဝ်ႁၢႆ" (hide) ၼႃႈၸေႃးၵႂႃႇၵူၺ်း၊ ၵူၺ်းၵႃႈ Java process တိုၵ်ႉၵိုတ်းယူႇၼႂ်း memory ၶႃႈ။
တွၼ်ႈတႃႇႁႂ်ႈ program ပိၵ်ႉႁဵတ်းၵၢၼ်ၵမ်းလဵဝ် မိူဝ်ႈၼဵၵ်း (X) ၼၼ်ႉ ႁဝ်းလႆႈၸႂ်ႉ:

```java
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

```

* **`JFrame.EXIT_ON_CLOSE`** ၼႆႉ ပွင်ႇဝႃႈ ပေႃးပိၵ်ႉ window ယဝ်ႉ ႁႂ်ႈပိၵ်ႉပႃး application တင်းသဵင်ႈ ဢမ်ႇႁႂ်ႈမၼ်း run background ၶႃႈ။

### 2. ႁဵတ်းႁႂ်ႈ Window ယူႇၵၢင်ၼႃႈၸေႃး (Centering the Window)

ပေႃးႁဝ်း run program၊ ၼႃႈၸေႃး window တေၵႂႃႇဢွၵ်ႇတီႈၸဵင်ႇသၢႆႉၽၢႆႇၼိူဝ် (top-left corner) ၶႃႈ။
ပေႃးႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းဢွၵ်ႇမႃးတီႈ "ၵၢင်ၼႃႈၸေႃး (Center of Screen)" ၵမ်းလဵဝ်ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ code ၼႆႉၶႃႈ:

```java
frame.setLocationRelativeTo(null);

```

* **မၢႆတွင်း (Note):** တေလႆႈသႂ်ႇ code ၼႆႉ ဝႆႉၽၢႆႇတႂ်ႈ `setSize()` ၶႃႈ။ ပေႃးသႂ်ႇဝႆႉၽၢႆႇၼိူဝ်၊ window တေဢမ်ႇယူႇၵၢင်ၼႃႈၸေႃးလႆႈလီလီ။

### 3. လွင်ႈႁၢမ်ႈယိုတ်ႈ/ႁူၼ်း Window (Resizability)

မၢင်ပွၵ်ႈလႂ် ႁဝ်းၶႂ်ႈႁႂ်ႈ window ႁဝ်းမီး တင်းယႂ်ႇပိူင်တၢႆဝႆႉ၊ ဢမ်ႇၶႂ်ႈႁႂ်ႈ user ၶဝ် လၢၵ်ႈယိုတ်ႈ (resize) ၼႃႈၸေႃးလႆႈ။ ႁဝ်းၸႂ်ႉ:

```java
frame.setResizable(false);

```

* ပေႃးသႂ်ႇ `false`၊ ပိူၼ်ႈတေဢမ်ႇၸၢင်ႈလၢၵ်ႈၸဵင်ႇမၼ်းသေ ယိုတ်ႈႁႂ်ႈယႂ်ႇ ဢမ်ႇၼၼ် ႁူၼ်းႁႂ်ႈလဵၵ်းလႆႈၶႃႈ။ 
* ပေႃးသႂ်ႇ `true` (ဢၼ်ပဵၼ် default) တႄႉ တေၸၢင်ႈယိုတ်ႈလႆႈယူႇ။

---

### Code တူဝ်ယၢင်ႇ တင်းသဵင်ႈ

ႁဝ်းမႃးဢဝ် Properties တင်းသဵင်ႈ မႃးႁူမ်ႈၵၼ်တႅမ်ႈတူၺ်းၶႃႈ:

```java
import javax.swing.JFrame;

public class Main {
    public static void main(String[] args) {
        JFrame frame = new JFrame();

        // 1. ၵိုၵ်းၸိုဝ်ႈ window
        frame.setTitle("Window Properties Demo");

        // 2. မၵ်းမၼ်ႈ ၶะၼၢတ်ႈ (Width = 500, Height = 400 pixels)
        frame.setSize(500, 400);

        // 3. ႁၢမ်ႈယိုတ်ႈ/ႁူၼ်း window ႁႂ်ႈမီးၶะၼၢတ်ႈတၢႆတူဝ်
        frame.setResizable(false);

        // 4. ႁဵတ်းႁႂ်ႈ window ယူႇတီႈၵၢင်ၼႃႈၸေႃး screen ၵမ်းလဵဝ်
        frame.setLocationRelativeTo(null);

        // 5. ပေႃးၼဵၵ်းပိၵ်ႉ (X) ႁႂ်ႈ program ယုတ်းၵမ်းလဵဝ်
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // 6. ႁဵတ်းႁႂ်ႈ ႁၼ်လႆႈ window ၼိူဝ် screen (တေလႆႈဝႆႉတၢင်းတႂ်ႈသုတ်းသေတႃႉ)
        frame.setVisible(true);
    }
}

```

---

### ႁူဝ်ယေႃႈ Properties Methods

| Method | Parameters | Action in Shan |
| --- | --- | --- |
| `setSize(w, h)` | `int width, int height` | မၵ်းမၼ်ႈတၢင်းၵႂၢင်ႈလႄႈတၢင်းသုင် (pixel) |
| `setResizable(b)` | `boolean` (`true`/`false`) | ပၼ် / ႁၢမ်ႈ လွင်ႈလၢၵ်ႈယိုတ်ႈၼႃႈၸေႃး |
| `setLocationRelativeTo(c)` | `Component` (သႂ်ႇ `null`) | ဢဝ် window ဝႆႉတီႈၵၢင် screen |
| `setDefaultCloseOperation(op)` | `int` (သႂ်ႇ `JFrame.EXIT_ON_CLOSE`) | ပိၵ်ႉ program ပႃးမိူဝ်ႈၼဵၵ်း (X) |