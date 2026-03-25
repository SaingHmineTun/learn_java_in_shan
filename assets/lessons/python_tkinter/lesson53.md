## Lesson 53: Randomizing Text
**(လွၵ်းလၢႆးဢဝ်ၵႂၢမ်းၵပ်းထုၵ်ႇ တီႈ API မႃးႁဵတ်းလိၵ်ႈၸၢမ်းတႅမ်ႈ)**

### 1. ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ API Data?
* **Variety:** User တေလႆႈတႅမ်ႈလိၵ်ႈဢၼ်မႂ်ႇယူႇတႃႇသေႇ (Random)။
* **Culture:** လုၵ်ႈႁဵၼ်းၶဝ်တေလႆႈတင်း "တႅမ်ႈဝႆး" လႄႈ "တၢင်းႁူႉ" လွင်ႈၵႂၢမ်းၵပ်းထုၵ်ႇတႆးၵႂႃႇၸွမ်းၵၼ်ၶႃႈယဝ်ႉ။
* **Real Project:** ဢၼ်ၼႆႉပဵၼ်ၵၢၼ်ဢဝ် Software (Python) ၵွင်ႉတင်း Web (Vercel API) တူဝ်တႄႉၶႃႈၼႃ။



---

### 2. လွၵ်းလၢႆး Randomize (Fetch Logic)
ႁဝ်းတေၸႂ်ႉ URL ၼႆႉ `https://shan-proverbs.vercel.app/api/proverbs/random` တႃႇဢဝ်လိၵ်ႈမႃး 1 ၶေႃႈ ၵူႈပွၵ်ႈ ဢၼ်တႄႇလဵၼ်ႈ (Start Game) ၶႃႈယဝ်ႉ။

---

### 3. တူဝ်ယၢင်ႇ Code (Fetching Task for Game)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေဢဝ်လိၵ်ႈမႃးၼႄၼႂ်း Label ႁႂ်ႈ User တႅမ်ႈၸွမ်းၶႃႈၼႃ။

```python
import tkinter as tk
import requests
import threading

class TypingTaskApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK Typing - Random Proverbs")
        self.geometry("500x300")
        
        # UI Elements
        self.proverb_lbl = tk.Label(self, text="တိုၵ်ႉလူတ်ႇ Data ယူႇ...", 
                                   font=("Panglong", 14), wraplength=450, fg="blue")
        self.proverb_lbl.pack(pady=30)
        
        self.entry = tk.Entry(self, font=("Panglong", 14), width=40)
        self.entry.pack(pady=10)
        
        tk.Button(self, text="Next Proverb (New Game)", command=self.load_new_proverb).pack(pady=20)
        
        # Load တူဝ်ႁႅၵ်ႈ မိူဝ်ႈပိုတ်ႇ App
        self.load_new_proverb()

    def load_new_proverb(self):
        # ၸႂ်ႉ Threading တႃႇႁႂ်ႈ GUI ဢမ်ႇၶႅင် မိူဝ်ႈတိုၵ်ႉလူတ်ႇ Data
        threading.Thread(target=self.fetch_api_data, daemon=True).start()

    def fetch_api_data(self):
        url = "https://shan-proverbs.vercel.app/api/proverbs/random"
        try:
            response = requests.get(url, timeout=5)
            if response.status_code == 200:
                data = response.json()
                proverb = data['proverb'] # ထူၵ်းဢဝ်ၵႂၢမ်းၵပ်းထုၵ်ႇ
                
                # Update GUI ၼႂ်း Main Thread
                self.after(0, lambda: self.update_label(proverb))
            else:
                self.after(0, lambda: self.proverb_lbl.config(text="API Error!"))
        except:
            self.after(0, lambda: self.proverb_lbl.config(text="Network Error!"))

    def update_label(self, text):
        self.proverb_lbl.config(text=text, fg="black")
        self.entry.delete(0, tk.END) # လၢင်ႉလိၵ်ႈၵဝ်ႇဢွၵ်ႇ

if __name__ == "__main__":
    app = TypingTaskApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`wraplength=450`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇၶႃႈ။ ယွၼ်ႉၵႂၢမ်းၵပ်းထုၵ်ႇတႆး မၢင်ၶေႃႈမၼ်းယၢဝ်း၊ သင်ႁဝ်းဢမ်ႇသႂ်ႇ wraplength ၼႆ လိၵ်ႈတေတူၵ်းၶွပ်ႇ Window ၵႂႃႇၶႃႈယဝ်ႉ။
* **`threading.Thread`**: ႁဝ်းလူဝ်ႇၸႂ်ႉ Threading တႃႇလူတ်ႇဢဝ် Data တီႈ API ၼင်ႇႁိုဝ် Window တေဢမ်ႇၵိုတ်းၵႂႃႇ 1-2 ၸႅၵ်ႉၵၼ်ႉၶႃႈ။
* **`data['proverb']`**: ပဵၼ်ၵၢၼ် Parsing ဢဝ်ၶေႃႈမုၼ်းတူဝ်တႄႉ တီႈ API မႃးၸႂ်ႉၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Shan Typing Speed Tester** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **API** တႃႇဢဝ်ၵႂၢမ်းၵပ်းထုၵ်ႇမႂ်ႇမႂ်ႇ ၵူႈပွၵ်ႈဢၼ် User လဵၼ်ႈယဝ်ႉ 1 ၶေႃႈၶႃႈယဝ်ႉ။
2.  မၼ်းတေႁဵတ်းႁႂ်ႈ Software ႁဝ်းတူၺ်း "Professional" လႄႈ မီးၶေႃႈမုၼ်းဢၼ် လႅၵ်ႈၸွမ်းၶၢဝ်းယၢမ်း ယူႇတႃႇသေႇ ("Live") ၶႃႈၼႃ။

---