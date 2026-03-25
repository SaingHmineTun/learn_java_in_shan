## Lesson 61: Asset Management
**(လွၵ်းလၢႆးၸတ်းၵၢၼ် File Font လႄႈ ႁၢင်ႈ ႁႂ်ႈပႃးၵႂႃႇၸွမ်း Software)**

### 1. Assets ပဵၼ်သင်?
Assets မၢႆထိုင် File ဢၼ်ဢမ်ႇၸႂ်ႈ Code (Python) ၵူၺ်းၵႃႈ Software ႁဝ်းလူဝ်ႇၸႂ်ႉတႃႇႁဵတ်းၵၢၼ်:
* **Images:** `.png`, `.jpg` (တူဝ်ယၢင်ႇ: `template.png`, `logo.ico`)
* **Fonts:** `.ttf`, `.otf` (တူဝ်ယၢင်ႇ: `Panglong.ttf`, `Arial.ttf`)
* **Data:** `.db`, `.json`, `.csv`



---

### 2. ပိူင်ဝၢင်း Folder (Project Structure)
တႃႇတေႁဵတ်း **TMK Certificate Generator** ႁဝ်းလူဝ်ႇၸတ်း Folder ႁႂ်ႈသႅၼ်ႈသႂ်ၼင်ႇၼႆၶႃႈ:

```text
TMK_Generator/
├── main.py             # Code ပၢႆးဝူၼ်ႉ Software
├── assets/             # တီႈသိမ်း File ဢၼ်လူဝ်ႇၸႂ်ႉ
│   ├── fonts/          # သိမ်း Panglong.ttf
│   └── images/         # သိမ်း template.png
└── output/             # တီႈသိမ်း PDF ဢၼ်ထုတ်ႇယဝ်ႉ
```

---

### 3. တူဝ်ယၢင်ႇ Code (Dynamic Path Handling)
ပၼ်ႁႃဢၼ်ၵႆႉပဵၼ်ပဵၼ်: ပေႃးႁဝ်းတႅမ်ႈ `Image.open("template.png")` ၼႆ ၵူၺ်းႁဵတ်းၵၢၼ်လႆႈၼႂ်း Computer ႁဝ်းၵူၺ်း။ ပေႃးၵႂႃႇယူႇၼႂ်း Computer ပိူၼ်ႈ ၸၢင်ႈဢမ်ႇႁၼ် File ၶႃႈ။

ႁဝ်းလူဝ်ႇၸႂ်ႉ Module `os` တႃႇႁႃ **Absolute Path** ႁင်းမၼ်းၶႃႈ:

```python
import os
import sys

# 1. ႁႃတီႈယူႇ (Path) ၶွင် Folder ဢၼ် Software ႁဝ်းမီးယူႇတႄႉတႄႉ
def get_asset_path(relative_path):
    # တႃႇႁႂ်ႈႁဵတ်းၵၢၼ်လႆႈတင်းၼႂ်း Python လႄႈ ၼႂ်း .exe File
    if hasattr(sys, '_MEIPASS'):
        base_path = sys._MEIPASS
    else:
        base_path = os.path.abspath(".")

    return os.path.join(base_path, relative_path)

# --- ၵၢၼ်ၸႂ်ႉတိုဝ်း ---
# ပေႃးတေပိုတ်ႇႁၢင်ႈ Template
template_path = get_asset_path("assets/images/template.png")
font_path = get_asset_path("assets/fonts/Panglong.ttf")

print(f"Loading Template from: {template_path}")
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`os.path.join`**: ၸွႆႈႁႂ်ႈ Path ႁဝ်းမႅၼ်ႈၸွမ်းတင်း Windows (`\`) လႄႈ Mac/Linux (`/`) ၶႃႈယဝ်ႉ။
* **`sys._MEIPASS`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇသုတ်း တႃႇ Lesson 63 (PyInstaller) ၶႃႈ။ မၼ်းတေႁႃ Path ၸူဝ်ႈၶၢဝ်း မိူဝ်ႈ User ပိုတ်ႇ File `.exe` ၶႃႈၼႃ။
* **Local Fonts**: ၵၢၼ်ဢဝ် Font ပႃးၵႂႃႇၸွမ်း `assets/` တေႁဵတ်းႁႂ်ႈ Software ႁဝ်းၼႄလိၵ်ႈတႆးလႆႈ ႁၢင်ႈလီတႃႇသေႇ ဢမ်ႇဝႃႈ Computer ပိူၼ်ႈတေမီး Font ဝႆႉယူႇႁႃႉ ဢမ်ႇမီးႁႃႉ ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Project** ၼႆႉ:
1.  ႁဝ်းတေႁပ်ႉ (Import) `get_asset_path` ၵႂႃႇၸႂ်ႉၵူႈတီႈ တႃႇပိုတ်ႇႁၢင်ႈ လႄႈ Font။
2.  ၵၢၼ်ၸတ်း Assets လီလီ တေႁဵတ်းႁႂ်ႈ Software ႁဝ်းဢမ်ႇ Crash (လူႉ) ငၢႆႈငၢႆႈၶႃႈ။

---