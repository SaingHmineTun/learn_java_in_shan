## Lesson 1: Introduction to GUI & The Tkinter Lifecycle
**(ပိုၼ်ႉထၢၼ် GUI လႄႈ လွၵ်းလၢႆးႁဵတ်းၵၢၼ် Tkinter)**

### 1. GUI ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ်သင်? (What is GUI?)
ၵူႈပွၵ်ႈၼႆႉ ႁဝ်းတႅမ်ႈ Python မၼ်းဢွၵ်ႇမႃးၼႂ်း Terminal (ၼႃႈၸေႃးလမ်) ၵူၺ်း။ ၵမ်းၼႆႉ ႁဝ်းတေႁဵတ်း **GUI (Graphical User Interface)** ယဝ်ႉ။
* **GUI** ၼႆႉ ပဵၼ် Software ဢၼ်မီး Window (ၼႃႈတႃ)၊ မီး Button (တုမ်ႇ)၊ မီး Image (ၶႅပ်းႁၢင်ႈ) ႁႂ်ႈၵူၼ်းၸႂ်ႉတိုဝ်းလႆႈငၢႆႈမႃးၼၼ်ႉယဝ်ႉ။
* ၼႂ်း Python ၼႆႉ **Tkinter** ပဵၼ် Library ဢၼ်ပႃးမႃးၸွမ်း python ၵမ်းလဵဝ်ယဝ်ႉလႄႈ ၸႂ်ႉတိုဝ်းမၼ်းႁေႁဵတ်း GUI ၼႆႉ ငၢႆႈလိူဝ်ပိူၼ်ႈယဝ်ႉ။

---

### 2. လွၵ်းလၢႆးႁဵတ်းၵၢၼ် Tkinter (The Tkinter Lifecycle)
ဢၼ်ၼႆႉ လုၵ်ႈႁဵၼ်းလူဝ်ႇပွင်ႇၸႂ်တီႈသုတ်းၶႃႈ။ ၵၢၼ်ႁဵတ်းၵၢၼ် GUI ၼႆႉ မၼ်းပႅၵ်ႇပိူင်ႈတင်း Script ဝႆႉၵမ်ႈၽွင်ႈၶႃႈ။

1.  **Import:** ႁွင်ႉဢဝ် Module Tkinter မႃးၸႂ်ႉ။
2.  **Main Window:** သၢင်ႈၼႃႈတႃ (Root Window) ၶိုၼ်ႈမႃး။
3.  **Widgets:** ထႅမ်သႂ်ႇ Label, Button, Entry ၸိူဝ်းၼႆႉၶဝ်ႈၵႂႃႇ။
4.  **Main Loop (Lifecycle):** ဢၼ်ၼႆႉ ပဵၼ်လွင်ႈယႂ်ႇၶႃႈ။ မိူဝ်ႈႁဝ်း Run Program ယဝ်ႉၼၼ်ႉ Program ႁဝ်းတေ "ၼင်ႈပႂ်ႉ" (Wait) ဝႆႉတႃႇသေႇ။ မၼ်းတေပႂ်ႉတူၺ်းဝႃႈ ၵူၼ်းၸႂ်ႉတိုဝ်း တေၼဵၵ်း Button ႁႃႉ? တေတႅမ်ႈလိၵ်ႈၶဝ်ႈမႃးႁႃႉ?
    * သင်ဢမ်ႇမီး **Main Loop** ၼႆ ၼႃႈတႃ Software ႁဝ်းတေဢွၵ်ႇမႃးသေ ႁၢႆၵႂႃႇၵမ်းလဵဝ် (Flash and disappear) ၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈ ၼႂ်း PyCharm ၶႃႈ။

```python
import tkinter as tk

# 1. သၢင်ႈ Window လူင် (Root Window)
root = tk.Tk()
root.title("ပၢင်သွၼ် Python GUI - ထုင်ႉမၢဝ်းၶမ်း")
root.geometry("400x300")  # ပၼ်တင်းၵႂၢင်ႈ/တင်းသုင် (Width x Height)

# 2. သၢင်ႈ Widgets (တူဝ်ယၢင်ႇ Label)
my_label = tk.Label(root, text="မႂ်ႇသုင်ၶႃႈ! ၼႆႉပဵၼ် Software ဢွၼ်ႇႁဝ်းၶႃႈ။", font=("Panglong", 14))
my_label.pack(pady=20)  # ဢဝ်ၵႂႃႇဝၢင်းဝႆႉၼႂ်း Window

# 3. ပိုတ်ႇ Lifecycle (Main Loop)
# Program ႁဝ်းၼႆႉ သင်တေႇလႅၼ်ႈယဝ်ႉ တေဢမ်ႇပိၵ်ႉၵမ်းလဵဝ်။ မၼ်းတေပႂ်ႉႁဝ်းတေႃႇပေႃးၼဵၵ်း X (Close) ယဝ်ႉ
root.mainloop()
```

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
* **tk.Tk():** ၼႆႉပဵၼ်ၵၢၼ်ၵိူတ်ႇ Software ႁဝ်းၶိုၼ်ႈမႃး။
* **root.mainloop():** ၼႆႉပဵၼ်ၵၢၼ်သင်ႇႁႂ်ႈ Software "တိုၼ်ႇဝႆႉ" တႃႇသေႇ။ သင်ဢမ်ႇမီးထႅဝ်ၼႆႉ Software တေဢမ်ႇႁဵတ်းၵၢၼ်။
* **Shan Unicode:** မိူဝ်ႈတႅမ်ႈလိၵ်ႈတႆး လူဝ်ႇလိူၵ်ႈ Font ဢၼ်မီးၼႂ်း Computer ႁဝ်း (တူဝ်ယၢင်ႇ: Panglong, NamKhone) ၸင်ႇတေဢွၵ်ႇလႆႈႁၢင်ႈလီၶႃႈ။

---