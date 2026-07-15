## 21: Project: Responsive Dashboard Shell

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Project လိုၼ်းသုတ်း ၶွင် Module 3 ၶႃႈ! ၼႂ်း Module ၼႆႉ ႁဝ်းလႆႈႁဵၼ်းမႃး `BorderLayout`, `BoxLayout`, `JPanel` (Nesting လွင်ႈဢဝ်ထပ်းၵၼ်) လႄႈ `JScrollPane` (လွင်ႈႁဵတ်းႁႂ်ႈလၢၵ်ႈလႆႈ) ယဝ်ႉၶႃႈ။

ယၢမ်းလဵဝ် ႁဝ်းတေဢဝ်ၶေႃႈမုၼ်းတင်းသဵင်ႈၼႆႉ မႃးၶူင်သၢင်ႈ **Dashboard Shell** (ပိူင်ငဝ်ႈၶၢမ်ႇ Dashboard) ဢၼ်မီးၼႃႈတႃမိူၼ် Application ၸတ်းၵၢၼ်တႄႉတႄႉ (Management System) ဢၼ်ႁဝ်းၸၢင်ႈဢဝ်ၵႂႃႇသိုပ်ႇၸႂ်ႉၼႂ်း Capstone Project လႆႈၶႃႈ။

### ပိူင်သၢင်ႈ Project (UI Architecture)

တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ UI ႁဝ်း Responsive (လၢၵ်ႈယိုတ်ႈလႆႈလီ) ၼၼ်ႉ၊ ႁဝ်းတေၸႅၵ်ႇ Layout ပဵၼ် 3 တွၼ်ႈ ၸွမ်းၼင်ႇပိူင် `BorderLayout`:

1. **NORTH (Header Panel):** ၸႂ်ႉ `BorderLayout` ထႅင်ႈ တွၼ်ႈတႃႇဢဝ် ၸိုဝ်ႈ Logo ဝႆႉၽၢႆႇသၢႆႉ လႄႈ ၸိုဝ်ႈ User ဝႆႉၽၢႆႇၶႂႃ။
2. **WEST (Sidebar Panel):** ၸႂ်ႉ `BoxLayout` (`Y_AXIS`) တွၼ်ႈတႃႇၶပ်ႉ Button မဵၼူး (Menu) လူင်းမႃးသိုဝ်ႈသိုဝ်ႈ။
3. **CENTER (Main Content Panel):** ၸႂ်ႉ `GridLayout` တွၼ်ႈတႃႇသႂ်ႇ "Card" ၶေႃႈမုၼ်းလၢႆလၢႆဢၼ်၊ ယဝ်ႉဢဝ်ၵႂႃႇသႂ်ႇဝႆႉၼႂ်း `JScrollPane` တွၼ်ႈတႃႇႁႂ်ႈလၢၵ်ႈတူၺ်းလႆႈ မိူဝ်ႈၶေႃႈမုၼ်းၼမ်မႃးၶႃႈ။

---

### Code တႃႇ Project (Dashboard)

တႅမ်ႈ Code ၽၢႆႇတႂ်ႈၼႆႉသေ ၸၢမ်း Run တူၺ်းၶႃႈ။ Code ၼႆႉ တေႁၼ်လႆႈၸႅင်ႈလီဝႃႈ လွင်ႈၸႂ်ႉ **Nesting** မၼ်းႁဵတ်းႁႂ်ႈ UI ယႂ်ႇယႂ်ႇ ၶပ်ႉၵၼ်လႆႈလီၸိူင်ႉႁိုဝ်။

```java
import javax.swing.*;
import java.awt.*;

public class DashboardProject {
    public static void main(String[] args) {
        // 1. ၶူင်သၢင်ႈ Main Frame
        JFrame frame = new JFrame("TMK Student Management - Dashboard");
        frame.setSize(800, 500); // ဢဝ် Window ယႂ်ႇဢိတ်းၼိုင်ႈ
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout()); // Layout ငဝ်ႈပဵၼ် BorderLayout

        // ==========================================
        // 2. HEADER PANEL (NORTH)
        // ==========================================
        JPanel headerPanel = new JPanel();
        headerPanel.setLayout(new BorderLayout());
        headerPanel.setBackground(new Color(0, 102, 204)); // သီသွမ်ႇ
        headerPanel.setBorder(BorderFactory.createEmptyBorder(15, 20, 15, 20)); // Padding

        JLabel logoLabel = new JLabel("TMK Admin Portal");
        logoLabel.setForeground(Color.WHITE);
        logoLabel.setFont(new Font("Arial", Font.BOLD, 22));

        JLabel userLabel = new JLabel("Welcome, Sai Mao");
        userLabel.setForeground(Color.WHITE);
        userLabel.setFont(new Font("Arial", Font.PLAIN, 16));

        headerPanel.add(logoLabel, BorderLayout.WEST);
        headerPanel.add(userLabel, BorderLayout.EAST);

        // ==========================================
        // 3. SIDEBAR PANEL (WEST)
        // ==========================================
        JPanel sidebarPanel = new JPanel();
        sidebarPanel.setLayout(new BoxLayout(sidebarPanel, BoxLayout.Y_AXIS));
        sidebarPanel.setBackground(new Color(40, 40, 40)); // သီလမ်
        sidebarPanel.setBorder(BorderFactory.createEmptyBorder(20, 15, 20, 15));
        sidebarPanel.setPreferredSize(new Dimension(200, 0)); // မၵ်းမၼ်ႈ တၢင်းၵႂၢင်ႈ Sidebar

        // ၶူင်သၢင်ႈလႄႈ သႂ်ႇ Menu Buttons
        String[] menuItems = {"Dashboard", "Students", "Courses", "Settings", "Logout"};
        for (String item : menuItems) {
            JButton menuBtn = new JButton(item);
            menuBtn.setMaximumSize(new Dimension(170, 40)); // ႁႂ်ႈ Button ၵႂၢင်ႈတဵမ် Sidebar
            menuBtn.setFont(new Font("Arial", Font.PLAIN, 16));
            menuBtn.setFocusPainted(false);
            
            sidebarPanel.add(menuBtn);
            sidebarPanel.add(Box.createVerticalStrut(10)); // ၶၢင်ႈပဝ်ႇ 10px ၼႂ်းၵႄႈ Button
        }

        // ==========================================
        // 4. MAIN CONTENT PANEL (CENTER) + JScrollPane
        // ==========================================
        JPanel contentPanel = new JPanel();
        // ၸႂ်ႉ GridLayout တွၼ်ႈတႃႇႁဵတ်း Card ၶေႃႈမုၼ်း (Rows: လၢႆထႅဝ်ၵေႃႈလႆႈ (0), Cols: 2)
        contentPanel.setLayout(new GridLayout(0, 2, 15, 15)); 
        contentPanel.setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20));

        // ဢဝ် Loop သေ သႂ်ႇ Data Cards လၢႆလၢႆဢၼ် တႃႇတူၺ်းဝႃႈမၼ်းလၢၵ်ႈလႆႈ (Scroll)
        for (int i = 1; i <= 10; i++) {
            JPanel card = new JPanel();
            card.setLayout(new BorderLayout());
            card.setBackground(Color.WHITE);
            card.setBorder(BorderFactory.createLineBorder(Color.LIGHT_GRAY, 1));
            card.setPreferredSize(new Dimension(0, 150)); // ႁႂ်ႈ Card ၼိုင်ႈဢၼ် သုင် 150px
            
            JLabel cardTitle = new JLabel("Statistic Report #" + i, SwingConstants.CENTER);
            cardTitle.setFont(new Font("Arial", Font.BOLD, 18));
            card.add(cardTitle, BorderLayout.CENTER);
            
            contentPanel.add(card);
        }

        // ဢဝ် Content Panel သႂ်ႇၼႂ်း ScrollPane
        JScrollPane scrollPane = new JScrollPane(contentPanel);
        scrollPane.getVerticalScrollBar().setUnitIncrement(16); // ႁႂ်ႈလၢၵ်ႈလႆႈဝႆး
        scrollPane.setBorder(null); // ဢဝ်ၶွပ်ႇ ScrollPane ဢွၵ်ႇ ႁႂ်ႈႁၢင်ႈလီ

        // ==========================================
        // 5. ဢဝ် Panels တင်းသဵင်ႈ သႂ်ႇၼႂ်း Main Frame
        // ==========================================
        frame.add(headerPanel, BorderLayout.NORTH);
        frame.add(sidebarPanel, BorderLayout.WEST);
        frame.add(scrollPane, BorderLayout.CENTER); // သႂ်ႇ ScrollPane (ဢမ်ႇၸႂ်ႈ contentPanel)

        // 6. ၼႄ Window
        frame.setVisible(true);
    }
}

```

### လွင်ႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ

* **`setPreferredSize(new Dimension(200, 0))`**: ႁဝ်းၸႂ်ႉတွၼ်ႈတႃႇမၵ်းမၼ်ႈ ႁႂ်ႈ Sidebar (WEST) မီးတၢင်းၵႂၢင်ႈ 200 pixels တႃႇသေႇ။ (တၢင်းသုင် 0 ပွင်ႇဝႃႈ ႁႂ်ႈမၼ်းလၢၵ်ႈယိုတ်ႈၸွမ်း Frame ႁင်းၵူၺ်း)။
* **`GridLayout(0, 2, 15, 15)`**: ၼႂ်း Content Panel၊ ႁဝ်းသႂ်ႇ row ပဵၼ် `0` ၶႃႈ။ ပွင်ႇဝႃႈ "တေမီးလၢႆထႅဝ်ၵေႃႈလႆႈ၊ ၵူၺ်းၵႃႈ ၼိုင်ႈထႅဝ် တေလႆႈမီး 2 လွၵ်း (Columns)" ၶႃႈ။
* ပေႃးႁဝ်း Run လႄႈ လၢၵ်ႈယိုတ်ႈ (Resize) Window တူၺ်း၊ တေလႆႈႁၼ်ဝႃႈ Header လႄႈ Sidebar မၼ်းတေၶၢႆႉၸွမ်းလႆႈႁၢင်ႈလီသေ၊ Content ၵၢင်ၼၼ်ႉၵေႃႈ လၢၵ်ႈလူင်း (Scroll) လႆႈလွတ်ႈလွတ်ႈလႅဝ်းလႅဝ်းၶႃႈ!