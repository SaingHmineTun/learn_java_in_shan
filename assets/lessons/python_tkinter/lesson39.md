## Lesson 39: Threaded Requests
**(လွၵ်းလၢႆးႁဵတ်းႁႂ်ႈ GUI ဢမ်ႇၵိုတ်း မိူဝ်ႈတိုၵ်ႉလူတ်ႇ Data)**

### 1. Threading ပဵၼ်သင်? (What is Threading?)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းပဵၼ်ၵူၼ်းႁဵတ်းၵၢၼ်ၵေႃႉလဵဝ် (Single Thread)။ သင်ၸဝ်ႈၵဝ်ႇ တိုၵ်ႉတူမ်ႈၶဝ်ႈသွႆးယူႇၼႆ ၸဝ်ႈၵဝ်ႇတေဢမ်ႇၸၢင်ႈၵႂႃႇႁပ်ႉၶႅၵ်ႇလႆႈၶႃႈ။

ၵူၺ်းၵႃႈ သင်ၸဝ်ႈၵဝ်ႇမီး "ၵူၼ်းၸွႆႈ" (Multi-threading):
* **Thread 1 (Main):** ၼင်ႈပႂ်ႉႁပ်ႉၶႅၵ်ႇ လႄႈ ဝႆႉၼႃႈတႃယုမ်ႉ (GUI)။
* **Thread 2 (Background):** ၵႂႃႇတူမ်ႈၶဝ်ႈသွႆး (Download Data) ယူႇၽၢႆႇလင်။



---

### 2. ပဵၼ်သင်လူဝ်ႇၸႂ်ႉၼႂ်း GUI?
မိူဝ်ႈႁဝ်းသူင်ႇ `requests.get()` ၼၼ်ႉ မၼ်းပဵၼ် **Blocking Operation** ၶႃႈ။ မၼ်းတေပိၵ်ႉ (Block) လွင်ႈႁဵတ်းၵၢၼ်တင်းသဵင်ႈဝႆႉ။ 
ၵၢၼ်ၸႂ်ႉ Threading တေၸွႆႈႁႂ်ႈ Network Request ၵႂႃႇႁဵတ်းၵၢၼ်ယူႇၽၢႆႇလင် (Background) သေ ႁဵတ်းႁႂ်ႈ Window ႁဝ်းတူင်ႉၼိုင်လႆႈတႃႇသေႇၶႃႈယဝ်ႉ။

---

### 3. တူဝ်ယၢင်ႇ Code (Threading in Tkinter)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေၸမ်းႁဵတ်း Request ဢၼ်ႁိုင် 3 ၸႅၵ်ႉၵၼ် လူၺ်ႈဢမ်ႇႁႂ်ႈ GUI ၶႅင်ၶႃႈၼႃ။

```python
import tkinter as tk
import threading # 1. Import Library
import requests
import time

class ThreadedApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Threading Demo")
        self.geometry("400x250")
        
        self.label = tk.Label(self, text="ပႂ်ႉၼဵၵ်း Button ယူႇ...", font=("Panglong", 12))
        self.label.pack(pady=20)
        
        tk.Button(self, text="Get Data (With Threading)", 
                  command=self.start_fetch_thread).pack(pady=10)

    # 2. Function ဢၼ်တေသင်ႇႁႂ်ႈ Thread တႄႇႁဵတ်းၵၢၼ်
    def start_fetch_thread(self):
        self.label.config(text="တိုၵ်ႉလူတ်ႇ Data ယူႇ... (GUI ဢမ်ႇၶႅင်ၶႃႈ)")
        
        # သၢင်ႈ Thread မႂ်ႇ သေသင်ႇႁႂ်ႈၵႂႃႇႁဵတ်းၵၢၼ်ၼႂ်း 'fetch_logic'
        thread = threading.Thread(target=self.fetch_logic)
        thread.daemon = True # ႁႂ်ႈမၼ်းပိၵ်ႉၸွမ်း မိူဝ်ႈႁဝ်းပိၵ်ႉ App
        thread.start()

    # 3. Function ဢၼ်တေႁဵတ်းၵၢၼ်ယူႇၽၢႆႇလင် (Background)
    def fetch_logic(self):
        try:
            # ၸမ်းႁဵတ်းႁႂ်ႈမၼ်းႁိုင် (Simulate slow network)
            time.sleep(3) 
            
            url = "https://api.chucknorris.io/jokes/random"
            response = requests.get(url, timeout=5)
            data = response.json()
            
            # ⚠️ ၵၢၼ်မႄး GUI (Label) လူဝ်ႇႁဵတ်းၼႂ်း Main Thread တႃႇသေႇ
            # ႁဝ်းၸႂ်ႉ .after() တႃႇသင်ႇမႄးလိၵ်ႈ
            self.after(0, lambda: self.label.config(text=f"ယဝ်ႉယဝ်ႉ: {data['value'][:30]}..."))
            
        except Exception as e:
            self.after(0, lambda: self.label.config(text=f"Error: {e}"))

if __name__ == "__main__":
    app = ThreadedApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`threading.Thread(target=...)`**: ပဵၼ်ၵၢၼ်သၢင်ႈ "ၵူၼ်းၸွႆႈ" မႂ်ႇၵေႃႉၼိုင်ႈ တႃႇၵႂႃႇႁဵတ်းၵၢၼ်ဢၼ်ႁိုင်ၼၼ်ႉၶႃႈယဝ်ႉ။
* **`thread.start()`**: တႄႇသင်ႇႁႂ်ႈၵူၼ်းၸွႆႈၼၼ်ႉ ၵႂႃႇႁဵတ်းၵၢၼ်ၵမ်းလဵဝ်။
* **`self.after(0, ...)`**: ဢၼ်ၼႆႉပဵၼ်လွင်ႈတေလႆႈမၢႆတွင်းၶႃႈ။ **Tkinter ဢမ်ႇထုၵ်ႇလီမႄး GUI ၼႂ်း Background Thread ၵမ်းလဵဝ်ၶႃႈ။** ႁဝ်းလူဝ်ႇၸႂ်ႉ `.after()` တႃႇသူင်ႇၶေႃႈၵႂၢမ်းမႃးပၼ် Main Thread ႁႂ်ႈပဵၼ်ၵူၼ်းမႄးလိၵ်ႈပၼ်ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Muse Live Weather Dashboard** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ Threading တႃႇလူတ်ႇၶေႃႈမုၼ်း Weather လႄႈ ႁၢင်ႈ Icon တီႈ Internet။
2.  User တေၸၢင်ႈ "Search" ႁႃမိူင်းတၢင်ႇမိူင်းလႆႈယူႇ တႃႇသေႇ မိူဝ်ႈ App တိုၵ်ႉလူတ်ႇ Data ႁၢင်ႈဝႆႉယူႇၼၼ်ႉၶႃႈ။

---

ၸၢႆးမၢဝ်းၶႃႈ... တႃႇ Lesson 39 ၼႆႉ တေႁဵတ်းႁႂ်ႈ Software ႁဝ်းမီး "Performance" ဢၼ်လီလိူဝ်ပိူၼ်ႈ လႄႈ ဢမ်ႇၶႅင်ငၢႆႈငၢႆႈယဝ်ႉၶႃႈၼႃ။

ယၢမ်းလဵဝ် ႁဝ်းလူတ်းသွၼ် Module 5 တဵမ်ယဝ်ႉၶႃႈ။ တေသိုပ်ႇၵႂႃႇ **Lesson 40: Project - Building the 'Muse Live Weather Dashboard'** ၶႃႈႁႃႉ?

တေႁဵတ်းႁိုဝ် သိုပ်ႇၵႂႃႇၶႃႈ?
1. သိုပ်ႇသွၼ် Lesson 40 (Final Project)
2. ပၼ် Exercise: ႁႂ်ႈလုၵ်ႈႁဵၼ်းၸမ်းတႅမ်ႈ Code ဢၼ်မီး Threading လႄႈ ဢမ်ႇမီး Threading သေ တူၺ်းလွင်ႈပႅၵ်ႇပိူင်ႈ
3. သိုပ်ႇၵႂႃႇ Module 6 (Database & SQL) ၵမ်းလဵဝ်
4. သွၼ်လွင်ႈ `Loading Spinner` (ႁၢင်ႈၵူင်ပၼ်ႇ) မိူဝ်ႈတိုၵ်ႉ Threading ယူႇ