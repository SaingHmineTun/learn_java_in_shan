## 11: Listening to Button Clicks (ActionListener)

ၼႂ်း Lesson 10 ၼၼ်ႉ ႁဝ်းလႆႈႁူႉယဝ်ႉဝႃႈ `JButton` (Event Source) ၼႆႉ လူဝ်ႇလႆႈမီး `ActionListener` (Listener / ၽူႈႁဵတ်းၵၢၼ်) တွၼ်ႈတႃႇႁဵတ်းၵၢၼ်လႆႈ။ 
ယၢမ်းလဵဝ် ႁဝ်းတေမႃးတႅမ်ႈ Code တွၼ်ႈတႃႇႁႂ်ႈပုမ်ႇ Button ႁဝ်း ႁဵတ်းၵၢၼ်လႆႈတႄႉတႄႉယဝ်ႉၶႃႈ!

### 1. ActionListener ပဵၼ်သင်?

**`ActionListener`** ၼႆႉ ပဵၼ် Interface ဢၼ်ၼိုင်ႈ ၼႂ်း Java ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇပႂ်ႉထွမ်ႇ လွင်ႈၼဵၵ်း (Click events) ၶႃႈ။ 
တွၼ်ႈတႃႇၸႂ်ႉမၼ်း၊ ႁဝ်းတေလႆႈ ၶူင်သၢင်ႈ Method ဢၼ်ၼိုင်ႈ ဢၼ်မီးၸိုဝ်ႈဝႃႈ **`actionPerformed(ActionEvent e)`** ၶႃႈ။

* Code ဢၼ်ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်း Run မိူဝ်ႈ User ၼဵၵ်း Button ၼၼ်ႉ တေလႆႈဢဝ်သႂ်ႇဝႆႉ ၼႂ်း Method ၼႆႉၶႃႈ။

### 2. လၢႆးတႅမ်ႈ Code (2 လၢႆး)

တွၼ်ႈတႃႇဢဝ် `ActionListener` ၵႂႃႇၸပ်းသႂ်ႇ (add) တီႈ Button ၼၼ်ႉ မီးလၢႆးတႅမ်ႈ 2 လၢႆး ဢၼ်ၵႆႉၸႂ်ႉၶႃႈ:

#### လၢႆးတီႈ 1: Anonymous Inner Class (လၢႆးတဵမ် / လၢႆးၵဝ်ႇ)

လၢႆးၼႆႉ ပဵၼ်လၢႆးဢၼ် ႁၼ်လႆႈလီဝႃႈ Java မၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်။ ႁဝ်းတေၶူင်သၢင်ႈ Object လႄႈ Override method ၼႂ်းၼၼ်ႉၵမ်းလဵဝ်။

```java
myButton.addActionListener(new ActionListener() {
    @Override
    public void actionPerformed(ActionEvent e) {
        // Code ဢၼ်ၶႂ်ႈႁႂ်ႈ Run မိူဝ်ႈၼဵၵ်း
        System.out.println("Button was clicked!");
    }
});

```

#### လၢႆးတီႈ 2: Lambda Expression (လၢႆးပွတ်း / လၢႆးမႂ်ႇ Java 8+)

ယွၼ်ႉဝႃႈ `ActionListener` မီး Method `actionPerformed` ဢၼ်လဵဝ်ၵူၺ်းလႄႈ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ **Lambda (`->`)** သေ တႅမ်ႈႁႂ်ႈမၼ်းပွတ်း လႄႈ ႁၢင်ႈလီလႆႈၶႃႈ။ **(လၢႆးၼႆႉ ပဵၼ်လၢႆးဢၼ် Developer ၶဝ် ၸႂ်ႉၼမ်သုတ်း ယၢမ်းလဵဝ်ၶႃႈ)**

```java
myButton.addActionListener(e -> {
    // Code ဢၼ်ၶႂ်ႈႁႂ်ႈ Run မိူဝ်ႈၼဵၵ်း
    System.out.println("Button was clicked using Lambda!");
});

```

---

### Code တူဝ်ယၢင်ႇ (Building an Interactive UI)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Code ဢၼ်မီး `JLabel` လႄႈ `JButton` ၶႃႈ။ ပေႃးႁဝ်းၼဵၵ်း Button ၼၼ်ႉ၊ ႁဝ်းတေလၢႆႈလိၵ်ႈ လႄႈ သီ ၶွင် Label ၼၼ်ႉၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class ButtonClickDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Action Listener Demo");
        frame.setSize(350, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.CENTER, 20, 20));

        // 1. ၶူင်သၢင်ႈ Component
        JLabel messageLabel = new JLabel("Hello! Please press the button.");
        messageLabel.setFont(new Font("Arial", Font.BOLD, 14));
        
        JButton clickButton = new JButton("Click Me!");

        // 2. သႂ်ႇ Action ပၼ် Button (ၸႂ်ႉ Lambda Expression)
        clickButton.addActionListener(e -> {
            // လွင်ႈတူင်ႉၼိုင် မိူဝ်ႈၼဵၵ်း:
            // - လၢႆႈလိၵ်ႈၼႂ်း Label
            messageLabel.setText("Great! You just clicked the button.");
            // - လၢႆႈသီတူဝ်လိၵ်ႈ ႁႂ်ႈပဵၼ် သီလႅင်
            messageLabel.setForeground(Color.RED);
        });

        // 3. ဢဝ် Component သႂ်ႇၼႂ်း Frame
        frame.add(messageLabel);
        frame.add(clickButton);
        frame.setVisible(true);
    }
}

```

### လွင်ႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ:

ၼႂ်း code ပႃႈၼိူဝ်ၼႆႉ၊ တူဝ်လႅၵ်ႈ (variable) `messageLabel` ၼၼ်ႉ တေလႆႈၶူင်သၢင်ႈဝႆႉ **ၽၢႆႇၼိူဝ်** လႄႈ ၽၢႆႇၼွၵ်ႈ ၶွင် `addActionListener` ၶႃႈ။ 
ပေႃးႁဝ်းၶူင်သၢင်ႈမၼ်းဝႆႉ ၽၢႆႇတႂ်ႈ၊ Code ဢၼ်ယူႇၼႂ်း Action ၼၼ်ႉ တေဢမ်ႇႁူႉၸၵ်းမၼ်းသေ တေပဵၼ် Error ၶႃႈ။