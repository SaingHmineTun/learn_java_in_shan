## Lesson 63: PyInstaller
**(လွၵ်းလၢႆးပိၼ်ႇ Code .py ႁႂ်ႈပဵၼ် Program .exe တႃႇသူင်ႇပၼ်ပိူၼ်ႈ)**

### 1. PyInstaller ပဵၼ်သင်?
**PyInstaller** တေၵႂႃႇၵူတ်ႇထတ်း Code ႁဝ်းသေ ဢဝ် Python Interpreter တင်း Library ၸိူဝ်းဢၼ်ႁဝ်းၸႂ်ႉ (Pillow, CustomTkinter, requests) မႃးႁူမ်ႈၵၼ်ဝႆႉၼႂ်း Folder ဢၼ်လဵဝ် ဢမ်ႇၼၼ် File ဢၼ်လဵဝ်ၶႃႈယဝ်ႉ။



---

### 2. လၢႆး Install PyInstaller
ၸၢႆးမၢဝ်း လူဝ်ႇႁႂ်ႈလုၵ်ႈႁဵၼ်းၶဝ် Install တီႈ Terminal/CMD ၵွၼ်ႇၶႃႈ:
`pip install pyinstaller`

---

### 3. လၢႆးသင်ႇ Command တႃႇသၢင်ႈ .exe
တႃႇတေႁဵတ်း **TMK Certificate Generator** ႁႂ်ႈပဵၼ် Program တူဝ်တႄႉၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Command ၼင်ႇၼႆၶႃႈ:

```bash
pyinstaller --noconsole --onefile --add-data "assets;assets" --icon="assets/images/logo.ico" main.py
```

**ၶေႃႈပိုတ်ႇၸႅင်ႈ Command:**
* **`--noconsole`**: မိူဝ်ႈပိုတ်ႇ Program မႃး ယႃႇပၼ်ၼႄၼႃႈတႃ Terminal ဢၼ်မီး Code ဝႅၼ်ယူႇၼၼ်ႉ။ ႁႂ်ႈၼႄ GUI ႁဝ်းၵူၺ်းၶႃႈ။
* **`--onefile`**: ႁႂ်ႈမၼ်းႁူမ်ႈၵူႈလွင်ႈလွင်ႈ ပဵၼ် File `.exe` ဢၼ်လဵဝ်ၵူၺ်း (သူင်ႇပၼ်ပိူၼ်ႈငၢႆႈ)။
* **`--add-data "assets;assets"`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇသုတ်း! မၼ်းတေဢဝ် Folder `assets` (ႁၢင်ႈ လႄႈ Font) ပႃးၵႂႃႇၸွမ်းၼႂ်း Program ၶႃႈ။ (ၼႂ်း Mac/Linux ၸႂ်ႉ `:` တႅၼ်း `;` ၶႃႈၼႃ)။
* **`--icon`**: မၵ်းမၼ်ႈႁၢင်ႈ Icon တႃႇ Program ႁဝ်းၶႃႈ။

---

### 4. တီႈယူႇ File ဢၼ်ယဝ်ႉတူဝ်ႈ
ပေႃး PyInstaller ႁဵတ်းၵၢၼ်ယဝ်ႉ (Successful) ၼႆ:
1.  မၼ်းတေသၢင်ႈ Folder မႂ်ႇ ၸိုဝ်ႈဝႃႈ **`dist/`** (Distribution)။
2.  ၼႂ်း Folder ၼၼ်ႉ ႁဝ်းတေႁၼ် File **`main.exe`** ဢၼ်ပဵၼ် Program တူဝ်တႄႉၶႃႈယဝ်ႉ။
3.  ႁဝ်းၸၢင်ႈမႄးၸိုဝ်ႈမၼ်းပဵၼ် **`TMK_Cert_Gen.exe`** သေ သူင်ႇပၼ်ပိူၼ်ႈလႆႈၵမ်းလဵဝ်ၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Project** ၼႆႉ:
1.  မိူဝ်ႈပႆႇ Convert ႁဝ်းလူဝ်ႇၵူတ်ႇထတ်းဝႃႈ `get_asset_path` ၼႂ်း Lesson 61 ၼၼ်ႉ ႁဵတ်းၵၢၼ်လႆႈလီယူႇႁႃႉ။

---