## 13: Updating UI State Dynamically

ၼႂ်း Lesson 12 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်းလၢႆးဢၢၼ်ႇဢဝ်လႄႈ ၵူတ်ႇတူၺ်း ၶေႃႈမုၼ်းယဝ်ႉၶႃႈ။
ၵူၺ်းၵႃႈ Application ဢၼ်လီၼၼ်ႉ မၼ်းတေလႆႈမီး **Dynamic UI** (လွင်ႈလႅၵ်ႈလၢႆႈ ၼႃႈတႃ ဢမ်ႇၼၼ် လွင်ႈႁဵတ်းၵၢၼ် ၽွင်းတိုၵ်ႉ Run ယူႇ) ၶႃႈ။

ပိူင်ယၢင်ႇ - ပေႃး User ပႆႇတႅမ်ႈလိၵ်ႈတဵမ်ထူၼ်ႈ ႁဝ်းတေႁဵတ်းႁႂ်ႈ Button မၼ်းၼဵၵ်းဢမ်ႇလႆႈ (Disabled)၊ 
ဢမ်ႇၼၼ် ပေႃးၼဵၵ်း "Clear" ႁႂ်ႈမၼ်း မွတ်ႇပႅတ်ႈလိၵ်ႈတင်းသဵင်ႈသေ ဢဝ် Cursor (ၶၢႆးပေႃႉလိၵ်ႈ) ၵႂႃႇတမ်းပၼ်ၶိုၼ်းတီႈလွၵ်းဢွၼ်တၢင်းသုတ်း ၼၼ်ႉယဝ်ႉၶႃႈ။

### 1. လွင်ႈႁဵတ်းႁႂ်ႈ ၼဵၵ်းလႆႈ / ၼဵၵ်းဢမ်ႇလႆႈ (Enable / Disable)

ႁဝ်းၸၢင်ႈၵုမ်းထိင်း `JButton`, `JTextField`, ဢမ်ႇၼၼ် Component လႂ်သေဢမ်ႇဝႃႈ ႁႂ်ႈမၼ်း "တၢႆ" (Greyed out) ၵႂႃႇၸူဝ်ႈၵႅပ်ႉလႆႈ
ၸွမ်းလူၺ်ႈ Method **`setEnabled()`** ၶႃႈ။

* `myButton.setEnabled(false);` // ႁဵတ်းႁႂ်ႈၼဵၵ်းဢမ်ႇလႆႈ (Disabled)
* `myButton.setEnabled(true);`  // ႁဵတ်းႁႂ်ႈၼဵၵ်းလႆႈၶိုၼ်း (Enabled)

### 2. လွင်ႈလပ်ႉပႅတ်ႈ လႄႈ ၼႄၶိုၼ်း (Hide / Show)

မၢင်ပွၵ်ႈ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ Component ၼၼ်ႉ ၼႄယူႇၼိူဝ်ၼႃႈၸေႃး။ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`setVisible()`** တွၼ်ႈတႃႇလပ်ႉပႅတ်ႈလႆႈၶႃႈ။

* `myLabel.setVisible(false);` // လပ်ႉပႅတ်ႈ (Invisible)
* `myLabel.setVisible(true);`  // ၼႄၶိုၼ်း (Visible)

### 3. လွင်ႈမွတ်ႇပႅတ်ႈလိၵ်ႈ လႄႈ လွင်ႈၸၼ်ဢဝ် Focus (Clear & Focus)

တွၼ်ႈတႃႇႁဵတ်း Action "Reset" ဢမ်ႇၼၼ် "Clear" ပၼ် Form ၼၼ်ႉ၊ 
ႁဝ်းတေလႆႈမွတ်ႇပႅတ်ႈလိၵ်ႈ ဢၼ်မီးၼႂ်း `JTextField` ၶႃႈ။ လိူဝ်သေၼၼ်ႉ ႁဝ်းထုၵ်ႇလီဢဝ် Cursor (ဢၼ်ပေႃႉလိၵ်ႈမႃပ်ႈမႃပ်ႈၼၼ်ႉ)
ၵႂႃႇဝႆႉပၼ် ၼႂ်းလွၵ်းၼၼ်ႉၶိုၼ်း တွၼ်ႈတႃႇႁႂ်ႈ User ပေႃႉလိၵ်ႈမႂ်ႇလႆႈငၢႆႈငၢႆႈ ၸွမ်းလူၺ်ႈ **`requestFocus()`** ၶႃႈ။

* `myTextField.setText("");` // သႂ်ႇ String ပဝ်ႇ တွၼ်ႈတႃႇမွတ်ႇပႅတ်ႈ
* `myTextField.requestFocus();` // ဢဝ် Cursor ၵႂႃႇဝႆႉၼႂ်းလွၵ်းၼႆႉ

---

### Code တူဝ်ယၢင်ႇ (License Agreement Demo)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Form လဵၵ်ႉလဵၵ်ႉဢၼ်ၼိုင်ႈၶႃႈ။ တေမီး Checkbox ဢၼ်ၼိုင်ႈ။ ပေႃး User ပႆႇၼဵၵ်း Checkbox ၼၼ်ႉ၊ Button "Submit" တေၼဵၵ်းဢမ်ႇလႆႈ (Disabled) ၶႃႈ။ လႄႈ တေမီး Button "Reset" ဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇမွတ်ႇပႅတ်ႈၵူႈလွင်ႈလွင်ႈ။

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class DynamicStateDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Dynamic UI State");
        frame.setSize(350, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.CENTER, 15, 15));

        // 1. ၶူင်သၢင်ႈ Components
        JLabel nameLabel = new JLabel("Your Name:");
        JTextField nameField = new JTextField(15);
        
        JCheckBox agreeCheck = new JCheckBox("I agree to the Terms");
        
        JButton submitButton = new JButton("Submit");
        JButton resetButton = new JButton("Reset Form");

        // မၵ်းမၼ်ႈႁႂ်ႈ Submit Button ၼဵၵ်းဢမ်ႇလႆႈ (Disabled) ၸဵမ်ၸဝ်ႉ
        submitButton.setEnabled(false); 

        // 2. သႂ်ႇ Action ပၼ် Checkbox (ItemListener လႄႈ ActionListener လႆႈတင်းသွင်)
        agreeCheck.addActionListener(e -> {
            // ၵူတ်ႇတူၺ်းဝႃႈ Checkbox ထုၵ်ႇၼဵၵ်းဝႆႉ (Selected) ႁိုဝ်ဢမ်ႇ
            if (agreeCheck.isSelected()) {
                submitButton.setEnabled(true); // ပိုတ်ႇႁႂ်ႈၼဵၵ်းလႆႈ
            } else {
                submitButton.setEnabled(false); // ပိၵ်ႉၶိုၼ်း ႁႂ်ႈၼဵၵ်းဢမ်ႇလႆႈ
            }
        });

        // 3. သႂ်ႇ Action ပၼ် Reset Button
        resetButton.addActionListener(e -> {
            nameField.setText(""); // မွတ်ႇပႅတ်ႈလိၵ်ႈ
            agreeCheck.setSelected(false); // ဢဝ်မၢႆတိၵ်း (Tick) ဢွၵ်ႇ
            submitButton.setEnabled(false); // ႁဵတ်းႁႂ်ႈ Submit ၼဵၵ်းဢမ်ႇလႆႈၶိုၼ်း
            
            nameField.requestFocus(); // ဢဝ် Cursor ၵႂႃႇဝႆႉတီႈလွၵ်းၸိုဝ်ႈၶိုၼ်း
        });

        // 4. သႂ်ႇ Action ပၼ် Submit Button
        submitButton.addActionListener(e -> {
            JOptionPane.showMessageDialog(frame, "Welcome, " + nameField.getText() + "!");
        });

        // 5. ဢဝ် Components သႂ်ႇၼႂ်း Frame
        frame.add(nameLabel);
        frame.add(nameField);
        frame.add(agreeCheck);
        frame.add(submitButton);
        frame.add(resetButton);

        frame.setVisible(true);
    }
}

```

---

### Methods တႃႇလႅၵ်ႈလၢႆႈ UI State

| Method | Function in Shan |
| --- | --- |
| `setEnabled(boolean)` | ႁဵတ်းႁႂ်ႈ Component ၼဵၵ်းလႆႈ (true) ဢမ်ႇၼၼ် ၼဵၵ်းဢမ်ႇလႆႈ (false) |
| `setVisible(boolean)` | လပ်ႉပႅတ်ႈ (false) ဢမ်ႇၼၼ် ၼႄၶိုၼ်း (true) |
| `isSelected()` | ၵူတ်ႇတူၺ်းဝႃႈ JCheckBox / JRadioButton ထုၵ်ႇၼဵၵ်းလိူၵ်ႈဝႆႉႁိုဝ် |
| `setSelected(boolean)` | သင်ႇႁႂ်ႈမီးမၢႆတိၵ်း (Tick) ဢမ်ႇၼၼ် ဢဝ်ဢွၵ်ႇ |
| `requestFocus()` | ၸၼ်ဢဝ် Focus (Cursor) မႃးဝႆႉတီႈ Component ၼႆႉ |