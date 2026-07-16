## 47: Saving App Preferences Locally

ၼႂ်း Lesson ၸိူဝ်းပူၼ်ႉမႃးၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈသိမ်းၶေႃႈမုၼ်း သႂ်ႇၽၢႆႇ `.txt` လႄႈ လွင်ႈဢၢၼ်ႇၽၢႆႇ `.csv` ၵႂႃႇယဝ်ႉၶႃႈ။ 
မိူဝ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း လွၵ်းလၢႆးသိမ်းၶေႃႈမုၼ်း ထႅင်ႈပိူင်ၼိုင်ႈ ဢၼ်လမ်ႇလွင်ႈတႄႉတႄႉ တွၼ်ႈတႃႇ Application ၵူႈဢၼ် — ၼၼ်ႉပဵၼ် **လွင်ႈသိမ်း App Preferences** ၶႃႈ။

မိူဝ်ႈ User လိူၵ်ႈၸႂ်ႉ "Dark Mode" ဢမ်ႇၼၼ် မၵ်းမၼ်ႈ "Font Size" ဝႆႉၼၼ်ႉ၊ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈၶဝ် လႆႈမႃးၼဵၵ်းလႅၵ်ႈလၢႆႈမႂ်ႇ ၵူႈပွၵ်ႈ မိူဝ်ႈပိုတ်ႇ Program ၶႃႈ။ ႁဝ်းလူဝ်ႇလႆႈသိမ်း ၶေႃႈမုၼ်းၸိူဝ်းၼႆႉဝႆႉ ၼႂ်းၶိူင်ႈၶႃႈ။

### 1. လွင်ႈၸႂ်ႉတိုဝ်း java.util.Properties

တွၼ်ႈတႃႇသိမ်း Settings ၸိူဝ်းၼႆႉ၊ Java မီး Class ဢၼ်ငၢႆႈလႄႈ ၶႅမ်ႉလႅပ်ႈသုတ်း ဢၼ်ႁွင်ႉဝႃႈ **`Properties`** ၶႃႈ။
မၼ်းတေသိမ်းၶေႃႈမုၼ်း ပဵၼ်ၵူႈ **Key-Value (ၸိုဝ်ႈ-ၶေႃႈမုၼ်း)** လႄႈ တႅမ်ႈဢွၵ်ႇမႃးပဵၼ် ၽၢႆႇ `.properties` ၶႃႈ။

ပိူင်ယၢင်ႇ ၶေႃႈမုၼ်း ၼႂ်းၽၢႆႇ `config.properties`:

> theme=dark
> username=Sai Mao
> autoSave=true

### 2. Method လၵ်း 4 ဢၼ် ၶွင် Properties

1. **`setProperty(String key, String value)`**: တွၼ်ႈတႃႇ မၵ်းမၼ်ႈ ဢမ်ႇၼၼ် လႅၵ်ႈလၢႆႈ ၶေႃႈမုၼ်း။
2. **`getProperty(String key, String defaultValue)`**: တွၼ်ႈတႃႇ ဢၢၼ်ႇဢဝ် ၶေႃႈမုၼ်းဢွၵ်ႇမႃး။ (ပေႃးႁႃ Key ၼၼ်ႉ ဢမ်ႇႁၼ်၊ မၼ်းတေဢဝ် `defaultValue` ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼၼ်ႉ ပၼ်တႅၼ်းၶႃႈ)။
3. **`store(OutputStream, String comment)`**: တွၼ်ႈတႃႇ ဢဝ်ၶေႃႈမုၼ်း တင်းသဵင်ႈ တႅမ်ႈသိမ်းသႂ်ႇၼႂ်း ၽၢႆႇတႄႉတႄႉ (Save to file)။
4. **`load(InputStream)`**: တွၼ်ႈတႃႇ ဢၢၼ်ႇဢဝ် ၶေႃႈမုၼ်း တီႈၼႂ်းၽၢႆႇ မႃးသႂ်ႇၼႂ်း Program ႁဝ်း မိူဝ်ႈတႄႇပိုတ်ႇ Window (Load from file)။

---

### Code တူဝ်ယၢင်ႇ (App Settings Manager)

ႁဝ်းမႃးၸၢမ်း ၶူင်သၢင်ႈ UI လဵၵ်ႉလဵၵ်ႉဢၼ်ၼိုင်ႈ ဢၼ်မီး Checkbox တွၼ်ႈတႃႇ "Dark Mode" လႄႈ TextField တွၼ်ႈတႃႇ "Username" ၶႃႈ။
မိူဝ်ႈပိုတ်ႇ Program မႃး ႁႂ်ႈမၼ်းဢၢၼ်ႇဢဝ် Settings ၵဝ်ႇမႃး လႄႈ မိူဝ်ႈၼဵၵ်း Save ႁႂ်ႈမၼ်း သိမ်းသႂ်ႇၽၢႆႇဝႆႉၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.util.Properties;

public class PreferencesDemo {
    // ၶူင်သၢင်ႈ Properties Object တွၼ်ႈတႃႇၸတ်းၵၢၼ် Settings
    private static Properties appProps = new Properties();
    private static final String CONFIG_FILE = "app_config.properties";

    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK App Preferences");
        frame.setSize(400, 250);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.LEFT, 20, 20));

        // 1. ၶူင်သၢင်ႈ UI Components
        JLabel userLabel = new JLabel("Username:");
        JTextField userField = new JTextField(15);
        JCheckBox darkModeCheck = new JCheckBox("Enable Dark Mode");
        JButton saveBtn = new JButton("Save Settings");

        frame.add(userLabel);
        frame.add(userField);
        frame.add(darkModeCheck);
        frame.add(saveBtn);

        // ==========================================
        // 2. LOAD PREFERENCES (မိူဝ်ႈတႄႇပိုတ်ႇ Program)
        // ==========================================
        File configFile = new File(CONFIG_FILE);
        if (configFile.exists()) {
            try (FileInputStream fis = new FileInputStream(configFile)) {
                appProps.load(fis); // ဢၢၼ်ႇၶေႃႈမုၼ်းလုၵ်ႉတီႈၽၢႆႇ မႃးသႂ်ႇၼႂ်း appProps
                
                // ဢဝ်ၶေႃႈမုၼ်း မႃးသႂ်ႇၼႂ်း UI (ၸႂ်ႉ Default Value ပေႃးဝႃႈ ဢမ်ႇမီး)
                userField.setText(appProps.getProperty("username", ""));
                
                String isDark = appProps.getProperty("darkMode", "false");
                darkModeCheck.setSelected(Boolean.parseBoolean(isDark)); // လႅၵ်ႈ String ပဵၼ် Boolean

            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }

        // လႅၵ်ႈလၢႆႈ သီ UI ၵမ်းလဵဝ် ၸွမ်းၼင်ႇ Setting ဢၼ် Load မႃး
        applyTheme(frame, darkModeCheck.isSelected());

        // ==========================================
        // 3. SAVE PREFERENCES (မိူဝ်ႈၼဵၵ်း Button)
        // ==========================================
        saveBtn.addActionListener(e -> {
            // ဢဝ်ၶေႃႈမုၼ်း လုၵ်ႉတီႈ UI သႂ်ႇၼႂ်း appProps (သႂ်ႇပဵၼ် String ၵူၺ်း)
            appProps.setProperty("username", userField.getText());
            appProps.setProperty("darkMode", String.valueOf(darkModeCheck.isSelected()));

            // တႅမ်ႈသိမ်းသႂ်ႇ ၽၢႆႇ
            try (FileOutputStream fos = new FileOutputStream(CONFIG_FILE)) {
                // "TMK App Configurations" ၼႆႉ တေပဵၼ် Comment ၼိူဝ်သုတ်း ၼႂ်းၽၢႆႇ
                appProps.store(fos, "TMK App Configurations"); 
                
                JOptionPane.showMessageDialog(frame, "Settings saved successfully!");
                
                // လႅၵ်ႈလၢႆႈ သီ UI ၵမ်းလဵဝ်
                applyTheme(frame, darkModeCheck.isSelected());
                
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(frame, "Error saving settings!", "Error", JOptionPane.ERROR_MESSAGE);
            }
        });

        frame.setVisible(true);
    }

    // Method တႃႇလႅၵ်ႈလၢႆႈ သီ (Dark Mode vs Light Mode)
    private static void applyTheme(JFrame frame, boolean isDark) {
        Color bgColor = isDark ? new Color(40, 40, 40) : new Color(240, 240, 240);
        frame.getContentPane().setBackground(bgColor);
        
        // သင်ႇႁႂ်ႈ UI ဢၼ်လႅၵ်ႈလၢႆႈသီၼၼ်ႉ ၼႄဢွၵ်ႇမႃး
        SwingUtilities.updateComponentTreeUI(frame); 
    }
}

```

### ၶေႃႈမၢႆတွင်း (Key Takeaways)

1. **လွင်ႈၸႂ်ႉ `try-with-resources`:** ၼႂ်း Code ၼၼ်ႉ ႁဝ်းလႆႈၸႂ်ႉ `try (FileOutputStream fos = ...)` ၶႃႈ။ ၼႆႉပဵၼ် လွၵ်းလၢႆးတႅမ်ႈ Code ဢၼ်လီသုတ်း တွၼ်ႈတႃႇ File I/O ယွၼ်ႉဝႃႈ Java တေ **ပိၵ်ႉၽၢႆႇ (Close stream)** ပၼ်ႁဝ်းႁင်းၵူၺ်း မိူဝ်ႈႁဵတ်းၵၢၼ်ယဝ်ႉ ဢမ်ႇၼၼ် မိူဝ်ႈမီး Error၊ ႁဵတ်းႁႂ်ႈၽၢႆႇႁဝ်း ဢမ်ႇၶမ် (File locked) ၶႃႈ။
2. **ၵူႈဢၼ် ပဵၼ် String မူတ်း:** ၼႂ်း `Properties` ၼၼ်ႉ ႁဝ်းသိမ်းလႆႈ `String` ၵူၺ်းၶႃႈ။ ပေႃးႁဝ်းၶႂ်ႈသိမ်း မၢႆၼပ်ႉ (int) ဢမ်ႇၼၼ် မၢႆထုၵ်ႇၽိတ်း (boolean)၊ ႁဝ်းတေလႆႈ လႅၵ်ႈမၼ်းပဵၼ် String ဢွၼ်တၢင်း (ပိူင်ယၢင်ႇ: `String.valueOf(true)`)၊ လႄႈ မိူဝ်ႈ Load မႃးၶိုၼ်း ၵေႃႈတေလႆႈ လႅၵ်ႈၶိုၼ်း (ပိူင်ယၢင်ႇ: `Boolean.parseBoolean("true")`) ၶႃႈ။

> ၸၢမ်း Run Code ၼႆႉ, ၼဵၵ်း Enable Dark Mode, ၼဵၵ်း Save Settings သေ ပိၵ်ႉ Program ပႅတ်ႈၶႃႈ။ ပေႃးၶိုၼ်းပိုတ်ႇမႂ်ႇ၊ မၼ်းတေတိုၼ်းပဵၼ် သီလမ်ဝႆႉထႃႈ ၵမ်းလဵဝ်ၶႃႈ!