## 32: Alert and Prompt Dialogs (JOptionPane)

ၼႂ်း Lesson ပူၼ်ႉမႃးၸိူဝ်းၼၼ်ႉ ႁဝ်းယၢမ်ႈၸႂ်ႉ `JOptionPane` တွၼ်ႈတႃႇၼႄ ၶေႃႈၵႂၢမ်းလဵၵ်ႉလဵၵ်ႉၼွႆႉၼွႆႉ (Alert) မႃးဢိတ်းဢွတ်းယဝ်ႉၶႃႈ။ 
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း လွင်ႈၸႂ်ႉတိုဝ်း **`JOptionPane`** ႁႂ်ႈလိုၵ်ႉလိုၵ်ႉလွင်ႈလွင်ႈ — ဢၼ်ပဵၼ် လွၵ်းလၢႆးငၢႆႈသုတ်း တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ Popup Window ဢွၵ်ႇမႃး တွၼ်ႈတႃႇ ပၼ်သတိ (Alert), ထၢမ်လွင်ႈတႅပ်းတတ်း (Confirm), လႄႈ ႁပ်ႉဢဝ်ၶေႃႈမုၼ်းၽႂ်းၽႂ်း (Prompt) ၶႃႈ။

`JOptionPane` ၼႆႉ မီး Method ဝႆႉ 3 ဢၼ် ဢၼ်ႁဝ်းၵႆႉၸႂ်ႉၼမ်သုတ်းၶႃႈ:

### 1. Message Dialog (တွၼ်ႈတႃႇၼႄ ၶေႃႈမုၼ်း / ၶေႃႈၽၢင်ႉ)

ၸႂ်ႉတွၼ်ႈတႃႇ ၼႄၶေႃႈၵႂၢမ်းပၼ် User လၢႆလၢႆ (ပိူင်ယၢင်ႇ: "Save Data ၶႅမ်ႉလႅပ်ႈယဝ်ႉ", "Error: ဢမ်ႇမီးၶေႃႈမုၼ်း")။

```java
// လၢႆးၸႂ်ႉဢၼ်ငၢႆႈသုတ်း
JOptionPane.showMessageDialog(frame, "This is a simple message.");

// လၢႆးၸႂ်ႉဢၼ်မီး ႁူဝ်ၶေႃႈ လႄႈ Icon လၢၵ်ႇလၢႆး
JOptionPane.showMessageDialog(frame, 
    "Cannot connect to the server!", // ၶေႃႈၵႂၢမ်း
    "Connection Error",              // ႁူဝ်ၶေႃႈ (Title)
    JOptionPane.ERROR_MESSAGE        // ပိူင် Icon (Error, Info, Warning)
);

```

> **မၢႆတွင်း:** Parameter ဢွၼ်တၢင်းသုတ်းၼၼ်ႉ ၵႆႉသႂ်ႇပဵၼ် `frame` (Window ႁဝ်း) တွၼ်ႈတႃႇႁႂ်ႈ Popup ၼႆႉ ဢွၵ်ႇမႃးတူၵ်းၵၢင် Frame ၶႃႈ။ ပေႃးႁဝ်းသႂ်ႇ `null`၊ မၼ်းတေၵႂႃႇဢွၵ်ႇ ၵၢင်ၼႃႈၸေႃး Computer (Screen) ႁဝ်းၶႃႈ။

### 2. Confirm Dialog (တွၼ်ႈတႃႇထၢမ် Yes / No)

ၸႂ်ႉတွၼ်ႈတႃႇ ထၢမ် User မိူဝ်ႈတေႁဵတ်း လွင်ႈလမ်ႇလွင်ႈ ဢၼ်ၸၢင်ႈမီးၽေး (ပိူင်ယၢင်ႇ: "ၸွင်ႇတေမွတ်ႇပႅတ်ႈ တႄႉႁိုဝ်?")။ 
မၼ်းတေသူင်ႇၶိုၼ်းမႃး မၢႆၼပ်ႉ (int) ဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇမၵ်းမၼ်ႈဝႃႈ User ၼဵၵ်းသင်။

```java
int response = JOptionPane.showConfirmDialog(frame, 
    "Are you sure you want to delete this student?", 
    "Confirm Delete", 
    JOptionPane.YES_NO_OPTION // မၵ်းမၼ်ႈႁႂ်ႈမီး Button Yes လႄႈ No
);

// ၵူတ်ႇတူၺ်း ၽွၼ်းလႆႈဝႃႈ User ၼဵၵ်း Yes ႁိုဝ်ဢမ်ႇ
if (response == JOptionPane.YES_OPTION) {
    System.out.println("Deleting student...");
} else {
    System.out.println("Action canceled.");
}

```

### 3. Input Dialog (တွၼ်ႈတႃႇႁပ်ႉ ၶေႃႈမုၼ်း လိၵ်ႈ)

ၸႂ်ႉတွၼ်ႈတႃႇ ႁႂ်ႈ User ပေႃႉၶေႃႈမုၼ်းလဵၵ်ႉလဵၵ်ႉၼွႆႉၼွႆႉ ၽႂ်းၽႂ်း (ပိူင်ယၢင်ႇ: "ၶႅၼ်းတေႃႈ ပေႃႉသႂ်ႇ ၸိုဝ်ႈၽူႈၸႂ်ႉတိုဝ်း")။ မၼ်းတေသူင်ႇၶိုၼ်းမႃး ပဵၼ် `String` ၶႃႈ။

```java
String name = JOptionPane.showInputDialog(frame, "What is your name?");

// ပေႃး User ၼဵၵ်း Cancel ဢမ်ႇၼၼ် ပိၵ်ႉ Popup ပႅတ်ႈ၊ မၼ်းတေပဵၼ် null
if (name != null && !name.trim().isEmpty()) {
    System.out.println("Welcome, " + name);
}

```

---

### Code တူဝ်ယၢင်ႇ (Dialogs Showcase)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Frame ဢၼ်မီး Button 3 ဢၼ် တွၼ်ႈတႃႇႁွင်ႉၸႂ်ႉ Popup Dialog 3 မဵဝ်းၼႆႉတူၺ်းၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class DialogsDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("JOptionPane Demo");
        frame.setSize(400, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // ၸႂ်ႉ FlowLayout တွၼ်ႈတႃႇဢဝ် Button ၶပ်ႉၵၼ်
        frame.setLayout(new FlowLayout(FlowLayout.CENTER, 20, 50));

        // 1. ၶူင်သၢင်ႈ Buttons
        JButton alertBtn = new JButton("Show Alert");
        JButton confirmBtn = new JButton("Ask Confirm");
        JButton inputBtn = new JButton("Get Input");

        // 2. သႂ်ႇ Action ပၼ် Alert Button
        alertBtn.addActionListener(e -> {
            JOptionPane.showMessageDialog(frame, 
                "Your computer is running perfectly fine!", 
                "System Status", 
                JOptionPane.INFORMATION_MESSAGE);
        });

        // 3. သႂ်ႇ Action ပၼ် Confirm Button
        confirmBtn.addActionListener(e -> {
            int result = JOptionPane.showConfirmDialog(frame, 
                "Do you want to save changes before exiting?", 
                "Save Changes?", 
                JOptionPane.YES_NO_CANCEL_OPTION, 
                JOptionPane.WARNING_MESSAGE);
                
            if (result == JOptionPane.YES_OPTION) {
                JOptionPane.showMessageDialog(frame, "Changes Saved!");
            } else if (result == JOptionPane.NO_OPTION) {
                JOptionPane.showMessageDialog(frame, "Changes Discarded.");
            } else {
                System.out.println("Action Canceled.");
            }
        });

        // 4. သႂ်ႇ Action ပၼ် Input Button
        inputBtn.addActionListener(e -> {
            String input = JOptionPane.showInputDialog(frame, "Enter a new folder name:");
            
            // ၵူတ်ႇတူၺ်းဝႃႈ User လႆႈပေႃႉလိၵ်ႈသႂ်ႇတႄႉ ႁိုဝ် (ဢမ်ႇၸႂ်ႈ null)
            if (input != null && !input.trim().isEmpty()) {
                JOptionPane.showMessageDialog(frame, "Folder '" + input + "' created successfully!");
            } else {
                JOptionPane.showMessageDialog(frame, "Folder creation canceled.", "Error", JOptionPane.ERROR_MESSAGE);
            }
        });

        // 5. ဢဝ် Component သႂ်ႇၼႂ်း Frame
        frame.add(alertBtn);
        frame.add(confirmBtn);
        frame.add(inputBtn);

        frame.setVisible(true);
    }
}

```

### လွင်ႈၸႂ်ႉ Message Types (Icons)

မိူဝ်ႈႁဝ်းၸႂ်ႉ Dialogs ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ Icon ဢၼ်တေဢွၵ်ႇမႃးၸွမ်းလႆႈ ၸွမ်းလူၺ်ႈ Constants ၸိူဝ်းၼႆႉၶႃႈ:

* `JOptionPane.INFORMATION_MESSAGE` (တူဝ် 'i' သီသွမ်ႇ - တႃႇၶေႃႈမုၼ်း)
* `JOptionPane.WARNING_MESSAGE` (ၶိူင်ႈမၢႆ '!' သီလိူင် - တႃႇၶေႃႈၽၢင်ႉ)
* `JOptionPane.ERROR_MESSAGE` (ၶိူင်ႈမၢႆ 'X' သီလႅင် - တႃႇလွင်ႈၽိတ်းပိူင်ႈ)
* `JOptionPane.QUESTION_MESSAGE` (ၶိူင်ႈမၢႆ '?' - တႃႇလွင်ႈထၢမ်)
* `JOptionPane.PLAIN_MESSAGE` (ဢမ်ႇမီး Icon သင်)