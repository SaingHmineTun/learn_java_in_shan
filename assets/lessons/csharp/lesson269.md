# Lesson 269: "SQL Server Management Studio (SSMS): Navigating the UI"

မိူဝ်ႈႁဝ်းပိုတ်ႇ SSMS မႃးၼၼ်ႉ ႁဝ်းတေႁၼ်ၼႃႈတႃ (UI) ဢၼ်မီးသုၼ်ႇလမ်ႇလွင်ႈ ၸိူင်ႉၼႆၶႃႈ:

### 1. The Connect Dialog (ၵၢၼ်ၵွင်ႉၸူး Server)
မိူဝ်ႈပိုတ်ႇမႃးၵမ်းလဵဝ် မၼ်းတေထၢမ် "Server Name" ၶႃႈ။
* **Server Name:** ႁႂ်ႈတႅမ်ႈ `.\SQLEXPRESS` ဢမ်ႇၼၼ် `(localdb)\MSSQLLocalDB` (ၸွမ်းၼင်ႇႁဝ်း Install ဝႆႉ)။
* **Authentication:** ၵႆႉလိူၵ်ႈ **Windows Authentication** (ဢမ်ႇလူဝ်ႇတႅမ်ႈ Password၊ မၼ်းၸႂ်ႉ Login Windows ႁဝ်းၵမ်းလဵဝ်)။



### 2. Object Explorer (တူဝ်သွၵ်ႈႁႃ Object)
ၼႆႉပဵၼ် သုၼ်ႇၽၢႆႇသၢႆႉၶွင်ၼႃႈၸေႃးၶႃႈ။
* မၼ်းတေၼႄသဵၼ်ႈမၢႆ **Databases** တင်းမူတ်း ဢၼ်မီးၼႂ်း Server ၼၼ်ႉ။
* ႁဝ်းၸၢင်ႈ "ပိုတ်ႇ" (Expand) တူၺ်း Tables, Views, လႄႈ Stored Procedures လႆႈတီႈၼႆႉၶႃႈ။

### 3. Query Editor (တီႈတႅမ်ႈၶေႃႈသင်ႇ)
ၼႆႉပဵၼ် တီႈလႅၼ်ႈၵၢၼ်ပိူင်လူင်ၶွင်ႁဝ်းၶႃႈ။
* သင်ႁဝ်းၼဵၵ်းတုမ်ႇ **"New Query"** ဢၼ်မီးဝႆႉတီႈ Menu Bar ၼႆၸိုင်။
* မၼ်းတေမီးၼႃႈလိၵ်ႈပဝ်ႇ တႃႇႁႂ်ႈႁဝ်းတႅမ်ႈလိၵ်ႈ **SQL** (မိူၼ်ၼင်ႇ `SELECT * FROM Students`)။

### 4. Results & Messages
မိူဝ်ႈႁဝ်းတႅမ်ႈ Code ယဝ်ႉ သေၼဵၵ်း **Execute (F5)**...
* **Results:** တေၼႄၶေႃႈမုၼ်း (Data) ဢၼ်ႁဝ်းသွၵ်ႈႁႃ လုၵ်ႉၼႂ်း Database မႃး။
* **Messages:** တေၼႄဝႃႈ "ၵၢၼ်ယဝ်ႉတူဝ်ႈလီႁႃႉ?" ဢမ်ႇၼၼ် "မီးၵၢၼ်တႅမ်ႈ Code ၽိတ်းႁႃႉ?" ၶႃႈ။



---

### 5. လၢႆးသၢင်ႈ Database မႂ်ႇ (ႁဵတ်းလၢႆးငၢႆႈ)
1. ၵႂႃႇတီႈ **Object Explorer**.
2. ၼဵၵ်းၶႂႃ (Right Click) ၼိူဝ် Folder **Databases**.
3. လိူၵ်ႈ **New Database...**.
4. တႅမ်ႈၸိုဝ်ႈ (မိူၼ်ၼင်ႇ `ShanCommunityDB`) သေၼဵၵ်း **OK**။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **UI (User Interface):** ၼႃႈတႃၶွင် Program ဢၼ်ပၼ်ႁဝ်းတူင်ႉၼိုင်ၸွမ်း။
* **Query:** ၶေႃႈသင်ႇဢၼ်ႁဝ်းတႅမ်ႈ တႃႇထၢမ် ဢမ်ႇၼၼ် သင်ႇ Database ႁဵတ်းၵၢၼ်။
* **Execute:** ၵၢၼ်သင်ႇႁႂ်ႈ Code ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉ တႄႇလႅၼ်ႈၵၢၼ် (Shortcut ပဵၼ် `F5`)။
* **Pane:** ၼႃႈၸေႃး ဢၼ်ၸႅၵ်ႇဝႆႉ (မိူၼ်ၼင်ႇ Object Explorer Pane)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင် **ႁဝ်း** ၶႂ်ႈသွၵ်ႈႁႃတူၺ်း Tables တင်းမူတ်း ဢၼ်မီးၼႂ်း Database ၼႆ ႁဝ်းတေလႆႈၵႂႃႇတူၺ်းတီႈ Pane လႂ်?
2. Shortcut Key မၢႆလႂ် ဢၼ်ၸႂ်ႉတႃႇသင်ႇႁႂ်ႈ SQL Code ႁဝ်းလႅၼ်ႈ (Execute)?