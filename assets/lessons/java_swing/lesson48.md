## 48: Project: Offline Contact Manager App

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Project လိုၼ်းသုတ်း ၶွင် Module 7 ၶႃႈ! ၼႂ်း Module ၼႆႉ ႁဝ်းလႆႈႁဵၼ်းမႃး လွင်ႈႁဵတ်းႁႂ်ႈ UI ႁဵတ်းၵၢၼ်လီ (EDT လႄႈ `SwingWorker`), လွင်ႈၼႄ Progress Bar လႄႈ လွင်ႈသိမ်းၶေႃႈမုၼ်း သႂ်ႇၼႂ်းၶိူင်ႈ (Text, CSV လႄႈ Properties) ၵႂႃႇယဝ်ႉၶႃႈ။

မိူဝ်ႈၼႆႉ ႁဝ်းတေဢဝ် လွၼ်ႉမွၼ်း ၸိူဝ်းၼႆႉတင်းသဵင်ႈ မႃးႁူမ်ႈၵၼ်သေ ၶူင်သၢင်ႈ **TMK Offline Contact Manager (ပရူဝ်ႇၵႅမ်ႇ သိမ်းမၢႆၾူင်း)** ဢၼ်ႁဵတ်းၵၢၼ်လႆႈတႄႉတႄႉ ၶႃႈ!

### 1. ပိူင်သၢင်ႈ Project (Architecture)

Application ႁဝ်းတေမီး လွင်ႈႁဵတ်းၵၢၼ် 3 ၸၼ်ႉ:

1. **Preferences (`tmk_config.properties`):** တွၼ်ႈတႃႇသိမ်းဝႆႉဝႃႈ User လိူၵ်ႈၸႂ်ႉ "Dark Mode" ႁိုဝ် "Light Mode" သေ ဢၢၼ်ႇဢဝ်မႃးၸႂ်ႉ ၵမ်းလဵဝ် မိူဝ်ႈပိုတ်ႇ Program။
2. **Data Persistence (`tmk_contacts.csv`):** ၶေႃႈမုၼ်း ၸိုဝ်ႈ လႄႈ မၢႆၾူင်း တင်းသဵင်ႈ တေသိမ်းဝႆႉၼႂ်းၽၢႆႇ CSV ၼႆႉၶႃႈ။
3. **Background Tasks (`SwingWorker` + `JProgressBar`):** မိူဝ်ႈၼဵၵ်း Save ဢမ်ႇၼၼ် Load ၶေႃႈမုၼ်း ႁဝ်းတေဢဝ်ၵႂႃႇႁဵတ်းၼိူဝ် Background Thread တွၼ်ႈတႃႇယႃႇႁႂ်ႈ UI ၶမ် လႄႈ တေမီး Progress Bar ၼႄပၼ်ဝႃႈ ႁဵတ်းယဝ်ႉလၢႆပိူဝ်ႇသႅၼ်းယဝ်ႉ။

---

### Code တႃႇ Project (TMK Contact Manager)

တႅမ်ႈ Code ၽၢႆႇတႂ်ႈၼႆႉသေ ၸၢမ်း Run တူၺ်းၶႃႈ။ (ႁဝ်းလႆႈသႂ်ႇ `Thread.sleep(100)` ဝႆႉ တွၼ်ႈတႃႇပွမ်ႁဵတ်းဝႃႈ ၽၢႆႇမၼ်းယႂ်ႇ လႄႈ ႁႂ်ႈလႆႈႁၼ် Progress Bar လႅၼ်ႈၶႃႈ)។

```java
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Properties;

public class ContactManagerProject {
    private JFrame frame;
    private DefaultTableModel tableModel;
    private JProgressBar progressBar;
    private JCheckBox darkModeCheck;
    
    private final String DATA_FILE = "tmk_contacts.csv";
    private final String CONFIG_FILE = "tmk_config.properties";
    private Properties appProps = new Properties();

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new ContactManagerProject().initUI());
    }

    private void initUI() {
        frame = new JFrame("TMK Contact Manager (Offline)");
        frame.setSize(600, 500);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout(10, 10));
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        // ==========================================
        // 1. TOP PANEL (Settings လႄႈ Inputs)
        // ==========================================
        JPanel topPanel = new JPanel(new GridLayout(2, 1, 5, 5));
        
        // Theme Toggle
        darkModeCheck = new JCheckBox("Enable Dark Mode");
        darkModeCheck.addActionListener(e -> saveThemePreference());
        topPanel.add(darkModeCheck);

        // Input Fields
        JPanel inputPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        JTextField nameField = new JTextField(12);
        JTextField phoneField = new JTextField(12);
        JButton addBtn = new JButton("➕ Add");
        
        inputPanel.add(new JLabel("Name:"));
        inputPanel.add(nameField);
        inputPanel.add(new JLabel("Phone:"));
        inputPanel.add(phoneField);
        inputPanel.add(addBtn);
        topPanel.add(inputPanel);

        frame.add(topPanel, BorderLayout.NORTH);

        // ==========================================
        // 2. CENTER PANEL (Table)
        // ==========================================
        String[] columns = {"Name", "Phone Number"};
        tableModel = new DefaultTableModel(columns, 0);
        JTable table = new JTable(tableModel);
        table.setRowHeight(25);
        frame.add(new JScrollPane(table), BorderLayout.CENTER);

        // Action တႃႇ Add Button
        addBtn.addActionListener(e -> {
            String name = nameField.getText().trim();
            String phone = phoneField.getText().trim();
            if (!name.isEmpty() && !phone.isEmpty()) {
                tableModel.addRow(new String[]{name, phone});
                nameField.setText("");
                phoneField.setText("");
            } else {
                JOptionPane.showMessageDialog(frame, "Please enter both name and phone!");
            }
        });

        // ==========================================
        // 3. BOTTOM PANEL (Actions လႄႈ Progress)
        // ==========================================
        JPanel bottomPanel = new JPanel(new BorderLayout(10, 10));
        
        JPanel actionPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        JButton loadBtn = new JButton("📂 Load Data");
        JButton saveBtn = new JButton("💾 Save Data");
        actionPanel.add(loadBtn);
        actionPanel.add(saveBtn);
        
        progressBar = new JProgressBar(0, 100);
        progressBar.setStringPainted(true);
        
        bottomPanel.add(actionPanel, BorderLayout.WEST);
        bottomPanel.add(progressBar, BorderLayout.CENTER);

        frame.add(bottomPanel, BorderLayout.SOUTH);

        // Actions တွၼ်ႈတႃႇ လွင်ႈ Load လႄႈ Save
        loadBtn.addActionListener(e -> loadDataAsync(loadBtn, saveBtn));
        saveBtn.addActionListener(e -> saveDataAsync(loadBtn, saveBtn));

        // ==========================================
        // 4. Initialize Configs 
        // ==========================================
        loadThemePreference();
        frame.setVisible(true);
    }

    // ==========================================
    // Properties Logic (Dark Mode)
    // ==========================================
    private void loadThemePreference() {
        File file = new File(CONFIG_FILE);
        if (file.exists()) {
            try (FileInputStream fis = new FileInputStream(file)) {
                appProps.load(fis);
                boolean isDark = Boolean.parseBoolean(appProps.getProperty("darkMode", "false"));
                darkModeCheck.setSelected(isDark);
                applyTheme(isDark);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void saveThemePreference() {
        boolean isDark = darkModeCheck.isSelected();
        appProps.setProperty("darkMode", String.valueOf(isDark));
        try (FileOutputStream fos = new FileOutputStream(CONFIG_FILE)) {
            appProps.store(fos, "TMK Configs");
            applyTheme(isDark);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void applyTheme(boolean isDark) {
        Color bgColor = isDark ? new Color(45, 45, 45) : new Color(240, 240, 240);
        Color fgColor = isDark ? Color.WHITE : Color.BLACK;
        
        frame.getContentPane().setBackground(bgColor);
        darkModeCheck.setForeground(fgColor);
        // လႅၵ်ႈသီ ၵူႈဢၼ်ၼႂ်း UI (ပိူင်ငၢႆႈ)
        SwingUtilities.updateComponentTreeUI(frame);
    }

    // ==========================================
    // SwingWorker Logic (CSV Reading / Writing)
    // ==========================================
    private void loadDataAsync(JButton loadBtn, JButton saveBtn) {
        Path path = Path.of(DATA_FILE);
        if (!Files.exists(path)) {
            JOptionPane.showMessageDialog(frame, "No saved data found!");
            return;
        }

        loadBtn.setEnabled(false);
        saveBtn.setEnabled(false);
        tableModel.setRowCount(0); // Clear table
        progressBar.setValue(0);

        SwingWorker<Void, Object[]> worker = new SwingWorker<Void, Object[]>() {
            @Override
            protected Void doInBackground() throws Exception {
                List<String> lines = Files.readAllLines(path);
                int total = lines.size();
                
                for (int i = 0; i < total; i++) {
                    if (lines.get(i).trim().isEmpty()) continue;
                    
                    String[] data = lines.get(i).split(",");
                    int progress = (int) (((i + 1) / (double) total) * 100);
                    
                    Thread.sleep(50); // ပွမ်ၸႂ်ႉၶၢဝ်းယၢမ်း ႁႂ်ႈႁၼ် Progress
                    
                    // သူင်ႇၶေႃႈမုၼ်း Array ဢၼ်မီး Data လႄႈ Progress ၵႂႃႇၸူး process()
                    publish(new Object[]{data, progress}); 
                }
                return null;
            }

            @Override
            protected void process(List<Object[]> chunks) {
                for (Object[] chunk : chunks) {
                    String[] rowData = (String[]) chunk[0];
                    int progress = (int) chunk[1];
                    
                    tableModel.addRow(rowData); // Add Data to Table
                    progressBar.setValue(progress); // Update Progress
                }
            }

            @Override
            protected void done() {
                loadBtn.setEnabled(true);
                saveBtn.setEnabled(true);
                progressBar.setString("Load Complete!");
            }
        };
        worker.execute();
    }

    private void saveDataAsync(JButton loadBtn, JButton saveBtn) {
        if (tableModel.getRowCount() == 0) {
            JOptionPane.showMessageDialog(frame, "Table is empty. Nothing to save!");
            return;
        }

        loadBtn.setEnabled(false);
        saveBtn.setEnabled(false);
        progressBar.setValue(0);

        SwingWorker<Void, Integer> worker = new SwingWorker<Void, Integer>() {
            @Override
            protected Void doInBackground() throws Exception {
                StringBuilder sb = new StringBuilder();
                int rows = tableModel.getRowCount();
                
                for (int i = 0; i < rows; i++) {
                    String name = tableModel.getValueAt(i, 0).toString();
                    String phone = tableModel.getValueAt(i, 1).toString();
                    sb.append(name).append(",").append(phone).append("\n");
                    
                    int progress = (int) (((i + 1) / (double) rows) * 100);
                    Thread.sleep(100); // ပွမ်ၸႂ်ႉၶၢဝ်းယၢမ်း
                    publish(progress);
                }
                
                // တႅမ်ႈသႂ်ႇၽၢႆႇ (Overwrite)
                Files.writeString(Path.of(DATA_FILE), sb.toString());
                return null;
            }

            @Override
            protected void process(List<Integer> chunks) {
                int latestProgress = chunks.get(chunks.size() - 1);
                progressBar.setValue(latestProgress);
            }

            @Override
            protected void done() {
                loadBtn.setEnabled(true);
                saveBtn.setEnabled(true);
                progressBar.setString("Save Complete!");
            }
        };
        worker.execute();
    }
}

```

### ၶေႃႈမၢႆတွင်း တႃႇ Project ၼႆႉ!

1. **လွင်ႈၸတ်းၵၢၼ် State ၶွင် UI:** မိူဝ်ႈ `SwingWorker` တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇၼၼ်ႉ၊ ႁဝ်းလႆႈသင်ႇ `loadBtn.setEnabled(false)` တွၼ်ႈတႃႇႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈ User ၼဵၵ်းထပ်းၵၼ် သွင်သၢမ်ၵမ်း (ဢၼ်ၸၢင်ႈႁဵတ်းႁႂ်ႈ ၽၢႆႇလူႉလႅဝ်လႆႈ) ၶႃႈ။
2. **Object[] ၼႂ်း publish():** ၼႂ်း `loadDataAsync` ၼၼ်ႉ ႁဝ်းလူဝ်ႇသူင်ႇ ၶေႃႈမုၼ်း လိၵ်ႈတႃႇသႂ်ႇ Table (String[]) လႄႈ မၢႆၼပ်ႉ Progress (Integer) ၽွမ်ႉၵၼ်လႄႈ၊ ႁဝ်းၸင်ႇလႆႈႁုပ်ႈမၼ်းပဵၼ် `Object[]` ဢၼ်လဵဝ်သေ သူင်ႇပၼ် `process()` ၶႃႈ။

---