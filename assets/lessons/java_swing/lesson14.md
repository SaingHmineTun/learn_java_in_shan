## 14: Project: Interactive Math Calculator

ယၢမ်းလဵဝ် ႁဝ်းလႆႈႁဵၼ်းမႃး လွင်ႈႁပ်ႉဢဝ်ၶေႃႈမုၼ်း (TextField)၊ လွင်ႈပႂ်ႉထွမ်ႇလွင်ႈၼဵၵ်း (ActionListener) လႄႈ
လွင်ႈၵူတ်ႇတူၺ်းၶေႃႈမုၼ်း (Validation) ယဝ်ႉၶႃႈ။ ၼႂ်း Project လိုၼ်းသုတ်း ၶွင် Module 2 ၼႆႉ ႁဝ်းတေမႃးဢဝ်ၶေႃႈမုၼ်းၸိူဝ်းၼႆႉ တင်းသဵင်ႈ
မႃးႁူမ်ႈၵၼ်သေ ၶူင်သၢင်ႈ **Interactive Math Calculator** (မၢႆၼပ်ႉ) ဢၼ်ၸၢင်ႈ လေႃး, ထွၼ်, ၵုၼ်း, ၸႅၵ်ႇ, လႆႈတႄႉတႄႉၼၼ်ႉယဝ်ႉၶႃႈ။

> **မၢႆတွင်း:** ႁဝ်းတေၸႂ်ႉ `GridLayout` တွၼ်ႈတႃႇၶပ်ႉ Button မၼ်းႁႂ်ႈပဵၼ်လွၵ်း မိူၼ် Calculator တႄႉတႄႉၶႃႈ။

### ပိူင်သၢင်ႈ Project (Project Architecture)

ႁဝ်းတေၶပ်ႉ Layout မၼ်းၼင်ႇၼႆ:

* **Top (North):** `JTextField` တွၼ်ႈတႃႇၼႄ မၢႆၼပ်ႉ လႄႈ ၽွၼ်းလႆႈ (Result)။
* **Center:** `JPanel` ဢၼ်ၸႂ်ႉ `GridLayout(4, 4)` တွၼ်ႈတႃႇသႂ်ႇ Button မၢႆ 1-9 လႄႈ သဵၼ်ႈမၢႆ (+, -, *, /)။
* **Bottom (South):** `JButton` တွၼ်ႈတႃႇ မွတ်ႇပႅတ်ႈ (Clear)။

---

### Code တႃႇ Project (Calculator)

တႅမ်ႈ Code ၽၢႆႇတႂ်ႈၼႆႉသေ ၸၢမ်း Run တူၺ်းၶႃႈ။ Code ၼႆႉ တေယၢဝ်းဢိတ်းၼိုင်ႈ ယွၼ်ႉမၼ်းမီးလွင်ႈၼပ်ႉသွၼ်ႇပႃးၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class MathCalculator {

    // တူဝ်လႅၵ်ႈ (Variables) ဢၼ်လူဝ်ႇၸႂ်ႉ တႃႇသိမ်းၶေႃႈမုၼ်း
    static double num1 = 0, num2 = 0, result = 0;
    static char operator;

    public static void main(String[] args) {
        // 1. ၶူင်သၢင်ႈ Frame လႄႈ Layout ပိုၼ်ႉထၢၼ်
        JFrame frame = new JFrame("TMK Calculator");
        frame.setSize(300, 400);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout()); // ၸႂ်ႉ BorderLayout တႃႇၶပ်ႉ ၼိူဝ်, ၵၢင်, တႂ်ႈ

        // 2. ၶူင်သၢင်ႈ TextField (တႃႇၼႄမၢႆ)
        JTextField displayField = new JTextField();
        displayField.setFont(new Font("Arial", Font.BOLD, 24));
        displayField.setHorizontalAlignment(JTextField.RIGHT); // ႁႂ်ႈလိၵ်ႈယူႇၽၢႆႇၶႂႃ
        displayField.setEditable(false); // ဢမ်ႇႁႂ်ႈ User ပေႃႉလိၵ်ႈလႆႈ ႁႂ်ႈၼဵၵ်း Button ၵူၺ်း
        frame.add(displayField, BorderLayout.NORTH); // ဢဝ်ဝႆႉ ၽၢႆႇၼိူဝ်

        // 3. ၶူင်သၢင်ႈ Panel တွၼ်ႈတႃႇသႂ်ႇ Buttons လႄႈ မၵ်းမၼ်ႈ Layout
        JPanel buttonPanel = new JPanel();
        buttonPanel.setLayout(new GridLayout(4, 4, 5, 5)); // 4x4 Grid, gap 5px

        // 4. ၶူင်သၢင်ႈ Buttons တင်းသဵင်ႈ
        String[] buttons = {
            "7", "8", "9", "/",
            "4", "5", "6", "*",
            "1", "2", "3", "-",
            "0", ".", "=", "+"
        };

        // Loop သေ ၶူင်သၢင်ႈ လႄႈ သႂ်ႇ Action ပၼ် Button ၵူႈဢၼ်
        for (String text : buttons) {
            JButton btn = new JButton(text);
            btn.setFont(new Font("Arial", Font.BOLD, 18));
            
            // သႂ်ႇ Action (ActionListener)
            btn.addActionListener(e -> {
                String cmd = btn.getText();
                
                // ပေႃးၼဵၵ်းမၢႆ (0-9) ဢမ်ႇၼၼ် ၸွၵ်း (.) ႁႂ်ႈဢဝ်လိၵ်ႈၵႂႃႇသႂ်ႇၼႂ်း TextField
                if (cmd.charAt(0) >= '0' && cmd.charAt(0) <= '9' || cmd.equals(".")) {
                    displayField.setText(displayField.getText() + cmd);
                } 
                // ပေႃးၼဵၵ်း (+, -, *, /) ႁႂ်ႈသိမ်းမၢႆ ဢၼ်မီးဝႆႉ (num1) လႄႈ သိမ်း operator
                else if (cmd.equals("+") || cmd.equals("-") || cmd.equals("*") || cmd.equals("/")) {
                    try {
                        num1 = Double.parseDouble(displayField.getText());
                        operator = cmd.charAt(0);
                        displayField.setText(""); // မွတ်ႇပႅတ်ႈတႃႇႁပ်ႉမၢႆထႅင်ႈဢၼ် (num2)
                    } catch (NumberFormatException ex) {
                        displayField.setText("Error");
                    }
                } 
                // ပေႃးၼဵၵ်း (=) ႁႂ်ႈၼပ်ႉသွၼ်ႇ
                else if (cmd.equals("=")) {
                    try {
                        num2 = Double.parseDouble(displayField.getText());
                        
                        // လွင်ႈၼပ်ႉသွၼ်ႇ
                        switch (operator) {
                            case '+': result = num1 + num2; break;
                            case '-': result = num1 - num2; break;
                            case '*': result = num1 * num2; break;
                            case '/': 
                                if (num2 == 0) {
                                    displayField.setText("Cannot divide by zero");
                                    return;
                                }
                                result = num1 / num2; 
                                break;
                        }
                        displayField.setText(String.valueOf(result)); // ၼႄၽွၼ်းလႆႈ
                    } catch (NumberFormatException ex) {
                        displayField.setText("Error");
                    }
                }
            });
            
            buttonPanel.add(btn); // ဢဝ် Button သႂ်ႇၼႂ်း Panel
        }

        frame.add(buttonPanel, BorderLayout.CENTER); // ဢဝ် Panel ဝႆႉၵၢင်

        // 5. ၶူင်သၢင်ႈ Clear Button လႄႈ Action မၼ်း
        JButton clearBtn = new JButton("Clear");
        clearBtn.setFont(new Font("Arial", Font.BOLD, 18));
        clearBtn.setBackground(new Color(200, 50, 50)); // သီလႅင်
        clearBtn.setForeground(Color.WHITE);
        clearBtn.setOpaque(true);
        clearBtn.addActionListener(e -> {
            displayField.setText("");
            num1 = num2 = result = 0; // မွတ်ႇပႅတ်ႈၶေႃႈမုၼ်းၼပ်ႉသွၼ်ႇ
        });
        frame.add(clearBtn, BorderLayout.SOUTH); // ဢဝ်ဝႆႉ ၽၢႆႇတႂ်ႈ

        // 6. ၼႄ Window
        frame.setVisible(true);
    }
}

```

### လွင်ႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ ၼႂ်း Project ၼႆႉ

1. **လွင်ႈၸႂ်ႉ `BorderLayout`:** ႁဝ်းၸႂ်ႉမၼ်းတွၼ်ႈတႃႇ ၸႅၵ်ႇၼႃႈၸေႃးပဵၼ် 3 တွၼ်ႈ — ၼိူဝ် (တွၼ်ႈတႃႇၼႄမၢႆ), ၵၢင် (တွၼ်ႈတႃႇ Button မၢႆ), တႂ်ႈ (တွၼ်ႈတႃႇ Clear)။ ႁဝ်းတေလႆႈႁဵၼ်းလိုၵ်ႉလိုၵ်ႉၼႂ်း Module 3 ၶႃႈ။
2. **လွင်ႈဢဝ် Panel ထပ်းၵၼ် (Nesting):** ႁဝ်းဢဝ် `buttonPanel` ဢၼ်ၸႂ်ႉ `GridLayout` ၵႂႃႇသႂ်ႇဝႆႉၼႂ်း `frame` ဢၼ်ၸႂ်ႉ `BorderLayout` ၶႃႈ။ လွင်ႈၼႆႉ ပဵၼ်လွၵ်းလၢႆး ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၶူင်သၢင်ႈ UI ဢၼ်ယႂ်ႇၶႃႈ။
3. **လွင်ႈၸႂ်ႉ `String.valueOf(result)`:** တွၼ်ႈတႃႇဢဝ် မၢႆၼပ်ႉ (`double`) ၵႂႃႇၼႄၼႂ်း `JTextField` ၶိုၼ်းၼၼ်ႉ၊ ႁဝ်းတေလႆႈလႅၵ်ႈလၢႆႈမၼ်းပဵၼ် `String` ၶိုၼ်းၶႃႈ။