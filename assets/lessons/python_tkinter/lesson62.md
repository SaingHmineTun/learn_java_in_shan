## Lesson 62: Error Handling & Logging
**(လွၵ်းလၢႆးၵူတ်ႇထတ်း ပၼ်ႁႃ လႄႈ ၵၢၼ်မၢႆတွင်း Error)**

### 1. `try...except` ပဵၼ်သင်?
မၼ်းပဵၼ် "ၶႅပ်းၵင်ႇ" (Safety Net) ၶႃႈယဝ်ႉ။ ႁဝ်းလၢတ်ႈတေႃႇ Python ဝႃႈ: *"ၸၢမ်းႁဵတ်းၵၢၼ် (try) ၼႆႉတူၺ်း၊ သင်မီးပၼ်ႁႃ (except) ၼႆ ႁႂ်ႈၼႄလိၵ်ႈလၢတ်ႈပၼ် User လီလီ၊ ယႃႇပၼ် App တၢႆၵႂႃႇ"*။



---

### 2. Logging ပဵၼ်သင်?
မိူဝ်ႈ Software လူႉ ၼႂ်း Computer ပိူၼ်ႈၼၼ်ႉ ႁဝ်းဢမ်ႇႁူႉဝႃႈ "ပဵၼ်သင်မၼ်းၸင်ႇလူႉ"။ **Logging** တေၸွႆႈတႅမ်ႈမၢႆတွင်းဝႆႉၼႂ်း File `.log` (မိူၼ်ၼင်ႇ Diary) ဝႃႈ ဝၼ်းထိလႂ်၊ ၶၢဝ်းယၢမ်းလႂ်၊ ပၼ်ႁႃသင်ပဵၼ်ၶႃႈယဝ်ႉ။

---

### 3. တူဝ်ယၢင်ႇ Code (Robust Function)
ႁဝ်းၸၢမ်းတႅမ်ႈ Code ဢၼ်မီးတင်း Error Handling လႄႈ Logging ၼႆႉသႂ်ႇၼႂ်း Project ႁဝ်းၶႃႈ:

```python
import logging
from tkinter import messagebox

# 1. တႄႇသၢင်ႈ Logging System
logging.basicConfig(
    filename="app_error.log", 
    level=logging.ERROR,
    format="%(asctime)s - %(levelname)s - %(message)s"
)

def safe_generate_certificate(name):
    try:
        # ၸၢမ်းႁဵတ်းၵၢၼ် ဢၼ်ၸၢင်ႈမီးပၼ်ႁႃ
        if name == "":
            raise ValueError("Student name is empty!")
            
        # (Code တႃႇထုတ်ႇ Certificate ယူႇတီႈၼႆႈ...)
        print(f"Generating for {name}...")

    except FileNotFoundError as e:
        # သင်ဢမ်ႇႁၼ် File Template
        logging.error(f"File missing: {e}")
        messagebox.showerror("Error", "ဢမ်ႇႁၼ် File Template ၶႃႈ! ၶႅၼ်းတေႃႈၵူတ်ႇထတ်း assets/images ၶႃႈ။")

    except Exception as e:
        # သင်မီးပၼ်ႁႃတၢင်ႇမဵဝ်း (Unknown Errors)
        logging.error(f"Unexpected error: {e}")
        messagebox.showerror("System Error", f"မီးပၼ်ႁႃဢၼ်ဢမ်ႇမၢင်ႇမႅတ်ႈ: {e}")
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`raise ValueError()`**: ႁဝ်းသၢင်ႈ Error ႁင်းႁဝ်း သင် User ႁဵတ်းၽိတ်း (တူဝ်ယၢင်ႇ: ဢမ်ႇတႅမ်ႈၸိုဝ်ႈ)။
* **`logging.error()`**: မၼ်းတေဢမ်ႇၼႄတီႈ Screen၊ ၵူၺ်းၵႃႈ မၼ်းတေသိုပ်ႇသိမ်းဝႆႉၼႂ်း `app_error.log`။ ပေႃး User သူင်ႇ File ၼႆႉမႃးပၼ်ႁဝ်း ႁဝ်းတေမႄး Bug လႆႈငၢႆႈၶႃႈယဝ်ႉ။
* **Specific Exceptions**: ႁဝ်းၸတ်းၵၢၼ် `FileNotFoundError` ပႅၵ်ႇပိူင်ႈတင်း Error တၢင်ႇၸိူဝ်း ၼင်ႇႁိုဝ်ပေႃးတေလၢတ်ႈတေႃႇ User လႆႈၸႅင်ႈလႅင်းၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Project** ၼႆႉ:
1.  ၵူႈ Function ဢၼ်ၵွင်ႉတင်း **File (Assets)** ဢမ်ႇၼၼ် **Internet (API)** လူဝ်ႇၸႂ်ႉ `try...except` တႃႇသေႇ။
2.  ၵၢၼ်မီး **Logging** ႁဵတ်းႁႂ်ႈ Software ႁဝ်းတူၺ်းပဵၼ် "Professional Product" တႄႉတႄႉၶႃႈၼႃ။

---