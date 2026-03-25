## Lesson 55: Score Tracking
**(လွၵ်းလၢႆးသိမ်းမၢႆတွင်း Score သုင်သုတ်း ၼႂ်း Database)**

### 1. ပဵၼ်သင်လူဝ်ႇသိမ်း High Scores?
* **Competition:** ႁဵတ်းႁႂ်ႈလုၵ်ႈႁဵၼ်းၶဝ် ၶႂ်ႈတႅမ်ႈႁႂ်ႈဝႆးလိူဝ်ၵဝ်ႇ တႃႇႁႂ်ႈၸိုဝ်ႈၶဝ် ၶိုၼ်ႈယူႇတီႈၼိူဝ်သုတ်း။
* **Progress Tracking:** User တေၸၢင်ႈတူၺ်းလႆႈဝႃႈ ၼႂ်းၶၢဝ်းယၢမ်း 1 လိူၼ်ၼႆႉ ၶဝ်တႅမ်ႈဝႆးၶိုၼ်ႈၵႃႈႁိုင်ယဝ်ႉ။



---

### 2. ပိူင်ဝၢင်း Table ၼႂ်း SQLite
ႁဝ်းတေၸႂ်ႉ Table ဢၼ်မီး Column ၼင်ႇၼႆၶႃႈ:
* `id`: မၢႆလပ်ႉ (Primary Key)
* `name`: ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း
* `wpm`: ၵႃႈၶၼ် WPM ဢၼ်လႆႈ
* `date`: ဝၼ်းထိ ဢၼ်လဵၼ်ႈယဝ်ႉ

---

### 3. တူဝ်ယၢင်ႇ Code (Saving Score Logic)
ႁဝ်းၸၢမ်းတႅမ်ႈ Code ၼႆႉသႂ်ႇၼႂ်း Function `game_over` ၶွင် Software ႁဝ်းၶႃႈၼႃ:

```python
import sqlite3
from datetime import datetime

class ScoreBoard:
    def __init__(self):
        # 1. တႄႇသၢင်ႈ Database လႄႈ Table
        self.conn = sqlite3.connect("typing_scores.db")
        self.cursor = self.conn.cursor()
        self.cursor.execute('''
            CREATE TABLE IF NOT EXISTS high_scores (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                name TEXT,
                wpm INTEGER,
                date TEXT
            )
        ''')
        self.conn.commit()

    def save_score(self, name, wpm):
        # 2. သိမ်း Score မႂ်ႇ ၶဝ်ႈၼႂ်း DB
        date_str = datetime.now().strftime("%Y-%m-%d %H:%M")
        self.cursor.execute("INSERT INTO high_scores (name, wpm, date) VALUES (?, ?, ?)", 
                           (name, wpm, date_str))
        self.conn.commit()
        print(f"Score Saved: {wpm} WPM for {name}")

    def get_top_scores(self, limit=5):
        # 3. ဢဝ် Score ဢၼ်သုင်သုတ်း 5 ဢၼ်မႃးၼႄ (OrderBy DESC)
        self.cursor.execute("SELECT name, wpm FROM high_scores ORDER BY wpm DESC LIMIT ?", (limit,))
        return self.cursor.fetchall()

# --- ၵၢၼ်ၸႂ်ႉတိုဝ်းၼႂ်း Game Over ---
# score_db = ScoreBoard()
# score_db.save_score("Sai Mao", 45) 
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`ORDER BY wpm DESC`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇၶႃႈ။ မၼ်းတေၸတ်း ၶပ်ႉမၢႆ ဢဝ်မၢႆၼပ်ႉ WPM ဢၼ်ယႂ်ႇလိူဝ်ပိူၼ်ႈ ဝႆႉတီႈၼိူဝ်သုတ်း ၼင်ႇႁိုဝ်ပေႃးတေပဵၼ် Leaderboard တႄႉတႄႉၶႃႈယဝ်ႉ။
* **`datetime.now()`**: ၸွႆႈႁႂ်ႈႁဝ်းႁူႉဝႃႈ Score ၼႆႉ လႆႈမႃးမိူဝ်ႈလႂ်။
* **Limit 5**: ႁဝ်းဢမ်ႇလူဝ်ႇၼႄသဵၼ်ႈၸိုဝ်ႈတင်းသဵင်ႈ၊ ၼႄၵူၺ်း "Top 5" ၼၼ်ႉၵေႃႈ လႆႈယဝ်ႉၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Shan Typing Speed Tester** ၼၼ်ႉ:
1.  မိူဝ်ႈ Game Over ယဝ်ႉ ႁဝ်းတေပိုတ်ႇ **Popup/Dialog** တႃႇထၢမ်ၸိုဝ်ႈ User သေ ၸင်ႇသိမ်း Score ၶဝ်ႈ DB ၶႃႈယဝ်ႉ။
2.  ႁဝ်းၸၢင်ႈၼႄ **"Leaderboard Table"** ဝႆႉၼႂ်း Window ၽၢႆႇၶႂႃ တႃႇႁႂ်ႈတူၺ်းလႆႈငၢႆႈၶႃႈၼႃ။

---