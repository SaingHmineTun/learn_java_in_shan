## 22: Dropdowns with JComboBox

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Module 4 ၶႃႈ! ၼႂ်း Module ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း လွင်ႈၸတ်းၵၢၼ် ၶေႃႈမုၼ်းဢၼ်ပဵၼ်သဵၼ်ႈမၢႆ (Lists လႄႈ Tables) 
ဢၼ်လမ်ႇလွင်ႈတႄႉတႄႉ တွၼ်ႈတႃႇၶူင်သၢင်ႈ Application ၸတ်းၵၢၼ်ၶေႃႈမုၼ်း ၶႃႈ။ ႁဝ်းတေတႄႇၵၼ်တီႈ လွင်ႈႁဵတ်း Dropdown (သဵၼ်ႈမၢႆဢၼ်ၼဵၵ်းယဝ်ႉ ဢွၵ်ႇမႃး) ၸွမ်းလူၺ်ႈ **`JComboBox`** ၶႃႈ။

### 1. JComboBox ပဵၼ်သင်?

**`JComboBox`** ၼႆႉ ပဵၼ် Component ဢၼ်ႁဵတ်းႁႂ်ႈ User ၸၢင်ႈလိူၵ်ႈဢဝ် ၶေႃႈမုၼ်း 1 ဢၼ် ၼႂ်းသဵၼ်ႈမၢႆလၢႆလၢႆဢၼ်ၶႃႈ။
မၼ်းၸွႆႈသိမ်းဢွင်ႈတီႈ (Space-saving) လႆႈလီ ယွၼ်ႉဝႃႈ ၶေႃႈမုၼ်းတင်းသဵင်ႈ တေလပ်ႉဝႆႉ တေႃႇ User တဵၵ်းပိုတ်ႇတူၺ်းၶႃႈ။

### 2. လၢႆးသႂ်ႇၶေႃႈမုၼ်း (Adding Items)

ႁဝ်းၸၢင်ႈဢဝ်ၶေႃႈမုၼ်း သႂ်ႇၼႂ်း `JComboBox` လႆႈ 2 လၢႆးၶႃႈ:

**လၢႆးတီႈ 1: ၸႂ်ႉ Array (တွၼ်ႈတႃႇၶေႃႈမုၼ်း ဢၼ်ႁူႉဝႆႉၸဵမ်ၸဝ်ႉ)**

```java
// ၶူင်သၢင်ႈ Array ၶွင် String
String[] courses = {"Java Swing", "Python in Shan", "Flutter Basics"};

// ဢဝ် Array သႂ်ႇၵႂႃႇၽွင်း ၶူင်သၢင်ႈ Object
// လွင်ႈသႂ်ႇ <String> ၼၼ်ႉ ပဵၼ်တွၼ်ႈတႃႇမၵ်းမၼ်ႈဝႃႈ Dropdown ၼႆႉ တေသိမ်းလိၵ်ႈလၢႆလၢႆၶႃႈ (Generics)
JComboBox<String> courseBox = new JComboBox<>(courses);

```

**လၢႆးတီႈ 2: ၸႂ်ႉ `addItem()` (တွၼ်ႈတႃႇထႅမ်သႂ်ႇ ၽွင်းတိုၵ်ႉ Run Program)**

```java
JComboBox<String> courseBox = new JComboBox<>();
courseBox.addItem("Java Swing");
courseBox.addItem("Python in Shan");

```

### 3. လွင်ႈဢၢၼ်ႇဢဝ် လႄႈ လွင်ႈပႂ်ႉထွမ်ႇ (Reading & Listening)

တွၼ်ႈတႃႇႁူႉဝႃႈ User လိူၵ်ႈသင် ႁဝ်းတေၸႂ်ႉ **`getSelectedItem()`** ၶႃႈ။
ယဝ်ႉၵေႃႈ တွၼ်ႈတႃႇပႂ်ႉထွမ်ႇဝႃႈ User မီးလွင်ႈလႅၵ်ႈလၢႆႈ ဢၼ်လိူၵ်ႈဝႆႉၼၼ်ႉ မိူဝ်ႈလႂ်ၼႆ
ႁဝ်းၸၢင်ႈဢဝ် `ActionListener` ၵႂႃႇၸပ်းသႂ်ႇလႆႈ မိူၼ်ၼင်ႇ `JButton` ၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Course Selector Demo)

ၸၢမ်းတူၺ်း Code ဢၼ်ႁပ်ႉဢဝ် ၶေႃႈမုၼ်းတီႈ `JComboBox` သေ ဢဝ်ၵႂႃႇလႅၵ်ႈလၢႆႈ လိၵ်ႈၼႂ်း `JLabel` ၶႃႈ:

```java
import javax.swing.*;
import java.awt.*;

public class ComboBoxDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK Course Selector");
        frame.setSize(350, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.CENTER, 15, 20));

        // 1. ၶူင်သၢင်ႈ UI Components
        JLabel promptLabel = new JLabel("Select a Course: ");
        
        // 2. သႂ်ႇၶေႃႈမုၼ်း ၼႂ်း Array
        String[] courses = {
            "Java Swing in Shan", 
            "Python in Shan (Batch 2)", 
            "Flutter in Shan", 
            "Dart for Beginners"
        };
        
        // 3. ၶူင်သၢင်ႈ JComboBox 
        JComboBox<String> courseCombo = new JComboBox<>(courses);
        courseCombo.addItem("C# .NET"); // ထႅမ်သႂ်ႇ ၶေႃႈမုၼ်းမႂ်ႇ လႆႈထႅင်ႈ

        JLabel resultLabel = new JLabel("You selected: " + courses[0]); // Default
        resultLabel.setForeground(new Color(0, 102, 204));
        resultLabel.setFont(new Font("Arial", Font.BOLD, 14));

        // 4. သႂ်ႇ Action ပၼ် JComboBox
        courseCombo.addActionListener(e -> {
            // ဢၢၼ်ႇဢဝ် ၶေႃႈမုၼ်း ဢၼ် User လိူၵ်ႈဝႆႉ (တေလႆႈ Cast ပဵၼ် String)
            String selected = (String) courseCombo.getSelectedItem();
            
            // လၢႆႈလိၵ်ႈ ၼႂ်း Label
            resultLabel.setText("You selected: " + selected);
        });

        // 5. ဢဝ် Components သႂ်ႇၼႂ်း Frame
        frame.add(promptLabel);
        frame.add(courseCombo);
        frame.add(resultLabel);

        frame.setVisible(true);
    }
}

```

### Methods ဢၼ်လမ်ႇလွင်ႈ ၶွင် JComboBox

| Method | Function in Shan |
| --- | --- |
| `addItem(String)` | ထႅမ်ၶေႃႈမုၼ်းမႂ်ႇ သႂ်ႇတၢင်းတႂ်ႈသုတ်း ၶွင်သဵၼ်ႈမၢႆ |
| `getSelectedItem()` | ဢၢၼ်ႇဢဝ် ၶေႃႈမုၼ်း ဢၼ် User တိုၵ်ႉလိူၵ်ႈဝႆႉ (လူဝ်ႇလႆႈ Cast ပဵၼ် `String`) |
| `getSelectedIndex()` | ဢၢၼ်ႇဢဝ် မၢႆၶပ်ႉ (Index) ဢၼ်လိူၵ်ႈဝႆႉ (တႄႇတီႈ 0) |
| `setSelectedIndex(int)` | သင်ႇႁႂ်ႈမၼ်း လိူၵ်ႈဝႆႉပၼ် ၸွမ်းၼင်ႇ မၢႆၶပ်ႉ ဢၼ်ႁဝ်းသႂ်ႇ |
| `removeAllItems()` | မွတ်ႇပႅတ်ႈ ၶေႃႈမုၼ်းတင်းသဵင်ႈ ဢၼ်မီးၼႂ်း Dropdown |