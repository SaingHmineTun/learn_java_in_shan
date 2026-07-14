## 12: Reading and Validating User Input

ၼႂ်း Lesson 11 ၼၼ်ႉ ႁဝ်းလႆႈႁူႉလၢႆးၼဵၵ်း Button လႄႈ လၢႆးၸႂ်ႉ `ActionListener` ယဝ်ႉၶႃႈ။
ယၢမ်းလဵဝ် ႁဝ်းတေမႃးႁဵၼ်း လၢႆးဢၢၼ်ႇဢဝ် ၶေႃႈမုၼ်း (Input) ဢၼ် User ပေႃႉသႂ်ႇၼႂ်း `JTextField` မိူဝ်ႈၶဝ်ၼဵၵ်း Button ၼၼ်ႉၶႃႈ။
လိူဝ်သေၼၼ်ႉ ႁဝ်းတေလႆႈ **ၵူတ်ႇတူၺ်း (Validate)** ပႃးဝႃႈ ၶေႃႈမုၼ်းဢၼ်ၶဝ်သႂ်ႇမႃးၼၼ်ႉ ၸွင်ႇၸႂ်ႈဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉ ၼႆၶႃႈ။

### 1. လွင်ႈဢၢၼ်ႇဢဝ်လိၵ်ႈ (Reading the Input)

တွၼ်ႈတႃႇဢၢၼ်ႇဢဝ် လိၵ်ႈဢၼ်မီးၼႂ်း `JTextField`၊ ႁဝ်းတေလႆႈၸႂ်ႉ Method **`getText()`** ၶႃႈ။

```java
String userInput = myTextField.getText();

```

*မၢႆတွင်း: ၶေႃႈမုၼ်းဢၼ်လႆႈမႃးတင်းသဵင်ႈၼႆႉ တေပဵၼ် `String` (တူဝ်လိၵ်ႈ) လၢႆလၢႆၶႃႈ။*

### 2. လွင်ႈလႅၵ်ႈလၢႆႈ တူဝ်လိၵ်ႈ ပဵၼ် မၢႆၼပ်ႉ (Data Conversion)

ပေႃးႁဝ်းၶႂ်ႈဢဝ် Input ၼၼ်ႉမႃး ၼပ်ႉသွၼ်ႇ (Calculate) မိူၼ်ၼင်ႇ ႁဵတ်း မၢႆၼပ်ႉ (Calculator) ၼၼ်ႉ၊ ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ် `String` မႃး လေႃး, ထွၼ်, ၸႅၵ်ႇ, ၵုၼ်း လႆႈ။ 
ႁဝ်းတေလႆႈလႅၵ်ႈလၢႆႈမၼ်းပဵၼ် **`int`** ဢမ်ႇၼၼ် **`double`** ဢွၼ်တၢင်းၶႃႈ:

* လႅၵ်ႈပဵၼ်မၢႆတဵမ် (`int`): `int number = Integer.parseInt(userInput);`
* လႅၵ်ႈပဵၼ်မၢႆၸုတ်ႇ (`double`): `double decimal = Double.parseDouble(userInput);`

### 3. လွင်ႈၵူတ်ႇတူၺ်း လႄႈ ႁႄႉၵင်ႈ Error (Validation & Try-Catch)

ပေႃးႁဝ်းသင်ႇႁႂ်ႈ Program လႅၵ်ႈလၢႆႈ "10" ပဵၼ်မၢႆၼပ်ႉၼႆ မၼ်းတေလႆႈယူႇၶႃႈ။ ၵူၺ်းၵႃႈ ပေႃး User သႂ်ႇ "ABC" ဢမ်ႇၼၼ် ပွႆႇပဝ်ႇဝႆႉသေ ၼဵၵ်း Button လူး? 
လွင်ႈလႅၵ်ႈလၢႆႈၼၼ်ႉ တေၽိတ်းပိူင်ႈသေ ႁဵတ်းႁႂ်ႈ Program ႁဝ်း လူႉ (Crash) လႄႈ တေဢွၵ်ႇ Error ဢၼ်ႁွင်ႉဝႃႈ `NumberFormatException` ၶႃႈ။

တွၼ်ႈတႃႇႁႄႉၵင်ႈလွင်ႈၼႆႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ **`try-catch`** block တွၼ်ႈတႃႇၵူတ်ႇတူၺ်း (Validate) မၼ်းၶႃႈ:

```java
try {
    // ၸၢမ်းလႅၵ်ႈလၢႆႈပဵၼ် မၢႆၼပ်ႉ (ပေႃးၽိတ်း တေဝႅၼ်ၵႂႃႇတီႈ catch ၵမ်းလဵဝ်)
    int age = Integer.parseInt(userInput);
    // ပေႃးထုၵ်ႇမႅၼ်ႈ တေႁဵတ်းၵၢၼ်တီႈၼႆႈ တေႃႇသုတ်း
} catch (NumberFormatException ex) {
    // ပေႃးသႂ်ႇလိၵ်ႈၽိတ်း (ပိူင်ယၢင်ႇ သႂ်ႇ A, B, C) တေမႃး Run Code တီႈၼႆႈ
    // ႁဝ်းၸၢင်ႈၼႄ လိၵ်ႈၽိတ်း (Error message) တီႈၼႆႈလႆႈ
}

```

---

### Code တူဝ်ယၢင်ႇ (Age Calculator)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Program လဵၵ်ႉလဵၵ်ႉ ဢၼ်ႁပ်ႉဢဝ် ဢႃႇယု (Age) သေ ၼပ်ႉသွၼ်ႇပၼ်ဝႃႈ ပီၼႃႈ တေလႆႈဢႃယုၵႃႈႁိုဝ် ၼႆၶႃႈ။ 
ပေႃးသႂ်ႇၽိတ်း တေၼႄလိၵ်ႈသီလႅင် တွၼ်ႈတႃႇပၼ်သတိၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class InputValidationDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Age Calculator");
        frame.setSize(350, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.CENTER, 10, 20));

        // 1. ၶူင်သၢင်ႈ Components
        JLabel promptLabel = new JLabel("Enter your age: ");
        JTextField ageField = new JTextField(10);
        JButton calcButton = new JButton("Calculate");
        JLabel resultLabel = new JLabel("Result will show here.");

        // 2. သႂ်ႇ Action ပၼ် Button
        calcButton.addActionListener(e -> {
            String input = ageField.getText(); // ဢၢၼ်ႇဢဝ်လိၵ်ႈ

            // ၵူတ်ႇတူၺ်းဝႃႈ User ပွႆႇပဝ်ႇဝႆႉႁိုဝ်ဢမ်ႇပဝ်ႇ
            if (input.isEmpty()) {
                resultLabel.setText("Error: Please enter a number.");
                resultLabel.setForeground(Color.RED);
                return; // ယုတ်းလွင်ႈႁဵတ်းၵၢၼ် ပွၵ်ႈၶိုၼ်း
            }

            // ၸႂ်ႉ try-catch တွၼ်ႈတႃႇ ႁႄႉၵင်ႈ Error
            try {
                int age = Integer.parseInt(input); // လႅၵ်ႈလၢႆႈပဵၼ် int
                int nextYearAge = age + 1; // ၼပ်ႉသွၼ်ႇ
                
                resultLabel.setText("Next year, you will be " + nextYearAge + ".");
                resultLabel.setForeground(new Color(0, 150, 0)); // သီၶဵဝ်
            } catch (NumberFormatException ex) {
                // ပေႃးသႂ်ႇ A, B, C ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈလၢႆလၢႆ တေဢွၵ်ႇတီႈၼႆႈ
                resultLabel.setText("Error: Invalid number format!");
                resultLabel.setForeground(Color.RED);
            }
        });

        // 3. ဢဝ် Components သႂ်ႇၼႂ်း Frame
        frame.add(promptLabel);
        frame.add(ageField);
        frame.add(calcButton);
        frame.add(resultLabel);
        
        frame.setVisible(true);
    }
}

```