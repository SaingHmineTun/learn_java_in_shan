## Lesson 47: Data Persistence & Backups
**(လွၵ်းလၢႆးၸတ်းၵၢၼ် File Database လႄႈ ၵႅတ်ႇၶႄ ၵၢၼ်ႁဵတ်းသဵၼ်ႈၸိုဝ်ႈ)**

### 1. Database Persistence ပဵၼ်သင်?
**Persistence** မၢႆထိုင်ဝႃႈ ၶေႃႈမုၼ်းႁဝ်း "ယူႇလႆႈႁိုင်" ပူၼ်ႉၶၢဝ်းယၢမ်းဢၼ် Software ပိၵ်ႉၵႂႃႇၼၼ်ႉၶႃႈ။
* **In-Memory:** သိမ်းဝႆႉၼႂ်း RAM (ပေႃးပိၵ်ႉၵေႃႈ App Data ႁၢႆ)။
* **Disk-Persistent:** သိမ်းဝႆႉၼႂ်း Hard Drive။ ပဵၼ် File `.db` (ပေႃးပိၵ်ႉ App ၵေႃႈ Data တိုၵ်ႉမီး)။



---

### 2. လွၵ်းလၢႆးႁဵတ်း Backup (Manual & Auto)
ႁဝ်းၸၢင်ႈၸႂ်ႉ Module `shutil` ၶွင် Python တႃႇၵေႃပီႇ (Copy) File Database ႁဝ်းၵႂႃႇဝႆႉတီႈလွတ်ႈၽေးၶႃႈ။

* **Manual Backup:** User ၼဵၵ်း Button သေ Backup ႁင်းမၼ်း။
* **Auto Backup:** မိူဝ်ႈပိုတ်ႇ App မႃး ႁႂ်ႈမၼ်းၵေႃပီႇဝႆႉပၼ်ၵမ်းလဵဝ်။

---

### 3. တူဝ်ယၢင်ႇ Code (Backup System)
ႁဝ်းၸၢမ်းတႅမ်ႈ Function ၼႆႉသႂ်ႇၼႂ်း Software ႁဝ်းတူၺ်းၶႃႈ။ မၼ်းတေသၢင်ႈ Folder `backups` သေသိမ်းဝႆႉပၼ်ၶႃႈ။

```python
import shutil
import os
from datetime import datetime
from tkinter import messagebox

def backup_database():
    source_file = "tmk_records.db"
    backup_folder = "backups"
    
    # 1. သၢင်ႈ Folder သင်ဢမ်ႇပႆႇမီး
    if not os.path.exists(backup_folder):
        os.makedirs(backup_folder)
        
    # 2. သၢင်ႈၸိုဝ်ႈ File ၸွမ်းဝၼ်းထိ (တူဝ်ယၢင်ႇ: backup_2026_03_25.db)
    timestamp = datetime.now().strftime("%Y_%m_%d_%H%M")
    destination_file = f"{backup_folder}/backup_{timestamp}.db"
    
    try:
        # 3. ၵေႃပီႇ File
        shutil.copy2(source_file, destination_file)
        messagebox.showinfo("Backup Success", f"သိမ်းၶေႃႈမုၼ်းဝႆႉတီႈ: {destination_file}")
    except Exception as e:
        messagebox.showerror("Backup Error", f"ဢမ်ႇၸၢင်ႈ Backup လႆႈ: {e}")
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`shutil.copy2()`**: ဢၼ်ၼႆႉလီလိူဝ် `copy` ယူဝ်းယူဝ်း ယွၼ်ႉမၼ်းသိမ်းပႃး Metadata (ဝၼ်းထိဢၼ်မႄး File) ဝႆႉပၼ်ၸွမ်းၶႃႈ။
* **`datetime.now()`**: ၸွႆႈႁႂ်ႈၸိုဝ်ႈ File Backup ႁဝ်းဢမ်ႇသုၵ်ႉၵၼ်။ ႁဝ်းတေႁူႉလႆႈဝႃႈ File ၼႆႉပဵၼ်ၶွင် ဝၼ်းထိလႂ်၊ ၶၢဝ်းယၢမ်းလႂ်ၶႃႈယဝ်ႉ။
* **File Validation**: မိူဝ်ႈပႆႇႁဵတ်း Backup ႁဝ်းလူဝ်ႇၵူတ်ႇထတ်းဝႃႈ File `tmk_records.db` ၼၼ်ႉ မီးတႄႉယူႇႁႃႉ (Os.path.exists)။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Student Records Manager** ၼၼ်ႉ:
1.  ႁဝ်းတေထႅမ် Button **"Export/Backup Database"** တႃႇႁႂ်ႈၶူးသွၼ်ၶဝ် သိမ်းသဵၼ်ႈၸိုဝ်ႈဝႆႉလႆႈ တီႈလွတ်ႈၽေးၶႃႈ။
2.  ၵၢၼ်ႁဵတ်း Backup ပဵၼ်လွင်ႈဢၼ် "Professional Software" ၵူႈဢၼ်လူဝ်ႇမီးၶႃႈယဝ်ႉ။

---