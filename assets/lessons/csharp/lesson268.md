# Lesson 268: "Setting up SQL Server Express and LocalDB"

တွၼ်ႈတႃႇတေတႅမ်ႈ Code ၵွင်ႉၸူး Database ၼၼ်ႉ ႁဝ်းလူဝ်ႇမီး **Database Engine** ဢၼ်တေလႅၼ်ႈယူႇၽၢႆႇလင် (Background) ၶႃႈ။ 
Microsoft ပၼ်ႁဝ်းၸႂ်ႉလႆႈလၢႆလၢႆပိူင် ဢၼ်ဢမ်ႇလႆႈသဵင်ႈငိုၼ်း (Free) ၶႃႈဢေႃႈ။

### 1. SQL Server Express ပဵၼ်သင်?
မၼ်းပဵၼ် SQL Server **တူဝ်တႄႉ** ဢၼ် Microsoft ပၼ်ၸႂ်ႉ Free တွၼ်ႈတႃႇၵၢၼ်ႁဵၼ်း လႄႈ App လဵၵ်ႉလဵၵ်ႉ ၶႃႈ။
* **လွင်ႈလီ:** မၼ်းမီး Feature မိူၼ်တင်း Enterprise ဢၼ်ပိူၼ်ႈၸႂ်ႉၼႂ်း Company ယႂ်ႇယႂ်ႇ ၵူႈလွင်ႈ။
* **လၢႆးၸႂ်ႉ:** မၼ်းတေလႅၼ်ႈပဵၼ် "Service" ဝႆႉၼႂ်း Windows ႁဝ်းတႃႇသေႇ။

### 2. SQL Server LocalDB ပဵၼ်သင်?
ၼႆႉပဵၼ် SQL Server **Version ဢၼ်လဵၵ်ႉသုတ်း** ဢၼ်မၵ်းမၼ်ႈဝႆႉတွၼ်ႈတႃႇ Developer ၶႃႈ။
* **လွင်ႈလီ:** မၼ်းဢမ်ႇၵိၼ် CPU/RAM ၼမ်၊ မၼ်းတေလႅၼ်ႈၵေႃႈ တေႃႇမိူဝ်ႈႁဝ်းပိုတ်ႇ App ၵူၺ်း။
* **လၢႆးၸႂ်ႉ:** မၼ်းငၢႆႈသုတ်းတွၼ်ႈတႃႇၸၢမ်းတႅမ်ႈ Code (Development) ၶႃႈ။



---

### 3. လၢႆး Install ၶိူင်ႈမိုဝ်း (Step-by-Step)

ႁဝ်းလူဝ်ႇလႆႈ Install 2 ဢၼ်ၼႆႉၶႃႈ:

1.  **SQL Server Express:**
    * ၵႂႃႇတီႈ Website Microsoft သေ Download တူဝ် **SQL Server 2022 Express** (ဢမ်ႇၼၼ် Version မႂ်ႇသုတ်း)။
    * မိူဝ်ႈ Install ၼၼ်ႉ လိူၵ်ႈလၢႆး **"Basic"** ၵေႃႈယဝ်ႉယဝ်ႉၶႃႈ။ မၼ်းတေ Setup ပၼ်ႁင်းၵူၺ်းလႄႈ ၼႂ်းၼၼ်ႉ LocalDB ၵေႃႈ တေပႃးၸွမ်းၵမ်းလဵဝ်ၶႃႈ။

2.  **SQL Server Management Studio (SSMS):**
    * ၼႆႉပဵၼ် "ၼႃႈတႃ" (UI) ဢၼ်ႁဝ်းတေၸႂ်ႉလူ လႄႈ မႄး Data ၼႂ်း Database ႁဝ်းၶႃႈ။ (ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson ထႅင်ႈဢၼ်ၼိုင်ႈၶႃႈ)။

---

### 4. Connection String (သဵၼ်ႈတၢင်းၵွင်ႉၸူး)
မိူဝ်ႈႁဝ်း Setup ယဝ်ႉၼၼ်ႉ ႁဝ်းတေမီး "တီႈယူႇ" (Address) တႃႇၵွင်ႉၸူး Database ၼႂ်းၶွမ်းႁဝ်း ဢၼ်ၵႆႉပဵၼ်ၸိူင်ႉၼႆၶႃႈ:

* **LocalDB:** `(localdb)\MSSQLLocalDB`
* **Express:** `.\SQLEXPRESS` ဢမ်ႇၼၼ် `LOCALHOST\SQLEXPRESS`



---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Instance:** ၸိုဝ်ႈၶွင် Database Server ဢၼ်လႅၼ်ႈယူႇၼႂ်းၶွမ်း (မိူၼ်ၼင်ႇ SQLEXPRESS)။
* **Service:** Programm ဢၼ်လႅၼ်ႈယူႇၽၢႆႇလင် Windows လူၺ်ႈဢမ်ႇမီးၼႃႈတႃ UI။
* **Database Engine:** သုၼ်ႇၵၢင်ၶွင် Software ဢၼ်မီးၼႃႈၵၢၼ်သိမ်း လႄႈ သွၵ်ႈ Data။
* **Authentication:** ၵၢၼ်ၵူတ်ႇထတ်းသုၼ်ႇ (မိူၼ်ၼင်ႇ Windows Login ဢမ်ႇၼၼ် SQL User)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင် **ႁဝ်း** တိုၵ်ႉတႄႇႁဵၼ်းတႅမ်ႈ Code လႄႈ ဢမ်ႇၶႂ်ႈႁႂ်ႈၶွမ်းႁဝ်းလၵ်ႉ/ထိူင်းၼႆ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ SQL Server Version လႂ်? (Express ႁႃႉ? ဢမ်ႇၼၼ် LocalDB?)
2. **SSMS** ပဵၼ်တူဝ် Engine ဢၼ်သိမ်း Data ႁင်းၵူၺ်းမၼ်းႁႃႉ? ဢမ်ႇၼၼ် မၼ်းပဵၼ် "ၼႃႈတႃ" တႃႇၵွင်ႉၸူး Server ႁ?
