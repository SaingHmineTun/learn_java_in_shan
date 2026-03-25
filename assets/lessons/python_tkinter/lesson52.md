## Lesson 52: Keyboard Events
**(လွၵ်းလၢႆးၵွင်ႉ Key တီႈ Keyboard ၸွမ်း Software ႁဝ်း)**

### 1. Event Binding ပဵၼ်သင်? (What is Binding?)
**Binding** မၢႆထိုင် ၵၢၼ် "မၵ်းမၼ်ႈ" ဝႃႈ သင် User ၼဵၵ်း Key ၼိုင်ႈဢၼ် (တူဝ်ယၢင်ႇ: **Space**, **Enter**, **Escape**) ၼႆ ႁႂ်ႈ Python ၵႂႃႇႁဵတ်း Function ၼိုင်ႈဢၼ် ၵမ်းလဵဝ်ၶႃႈ။



### 2. မဵဝ်း Key Events ဢၼ်ၵႆႉၸႂ်ႉ
* **`<Key>`**: ၼဵၵ်း Key တူဝ်လႂ်ၵေႃႈယႃႇ။
* **`<Return>`**: ၼဵၵ်း Key "Enter"။
* **`<space>`**: ၼဵၵ်း Key "Space bar" (ၵႆႉၸႂ်ႉတႃႇမၢႆတွင်းဝႃႈ တႅမ်ႈယဝ်ႉ 1 ၶေႃႈ)။
* **`<Escape>`**: ၼဵၵ်း Key "Esc" (တႃႇပိၵ်ႉ ဢမ်ႇၼၼ် Reset)။

---

### 3. တူဝ်ယၢင်ႇ Code (Keyboard Interaction)
ႁဝ်းၸၢမ်းတႅမ်ႈ Code ၼႆႉၶႃႈ။ မၼ်းတေ "ႁပ်ႉႁူႉ" မိူဝ်ႈ User ၼဵၵ်း Enter သေ လၢင်ႉလိၵ်ႈၼႂ်း Entry ပႅတ်ႈၶႃႈၼႃ။

```python
import tkinter as tk

class KeyBindApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK Typing - Key Binding")
        self.geometry("400x200")
        
        tk.Label(self, text="တႅမ်ႈယဝ်ႉ ၼႅၵ်း Enter တႃႇ Clear ၶႃႈ:", font=("Panglong", 12)).pack(pady=10)
        
        self.entry = tk.Entry(self, font=("Arial", 14))
        self.entry.pack(pady=10)
        
        # ⚠️ ဢၼ်ၼႆႉပဵၼ်ႁူဝ်ၸႂ်: Bind Key "Enter" ၸွမ်း Function
        self.entry.bind("<Return>", self.on_enter_pressed)
        
        # Bind Key "Space" တႃႇၼပ်ႉၶေႃႈၵႂၢမ်း
        self.entry.bind("<space>", self.on_space_pressed)

    def on_enter_pressed(self, event):
        # မိူဝ်ႈၼႅၵ်း Enter ႁႂ်ႈလၢင်ႉလိၵ်ႈ
        print("User ၼႅၵ်း Enter ယဝ်ႉ!")
        self.entry.delete(0, tk.END)

    def on_space_pressed(self, event):
        # မိူဝ်ႈၼႅၵ်း Space ႁႂ်ႈပၼ်သဵင် ဢမ်ႇၼၼ် မၢႆတွင်း
        print("User တႅမ်ႈယဝ်ႉ 1 ၶေႃႈ (Space)")

if __name__ == "__main__":
    app = KeyBindApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`widget.bind(event, function)`**: ပဵၼ်ၵၢၼ်သင်ႇႁႂ်ႈ Widget (တူဝ်ယၢင်ႇ: Entry) ပႂ်ႉထွမ်ႇ "Event" ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၶႃႈ။
* **The `event` Parameter**: ၼႂ်း Function (တူဝ်ယၢင်ႇ: `on_enter_pressed`) ႁဝ်းလူဝ်ႇလႆႈႁပ်ႉ Variable `event` တႃႇသေႇ။ မၼ်းတေပၼ်ၶေႃႈမုၼ်းႁဝ်းဝႃႈ "User ၼဵၵ်း Key လႂ်" လႄႈ "ၼဵၵ်းတီႈ Widget လႂ်" ၶႃႈယဝ်ႉ။
* **Fast Interaction**: ၼႂ်း Typing Tester တႄႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ `<space>` တႃႇၵူတ်ႇထတ်းဝႃႈ ၶေႃႈၵႂၢမ်းဢၼ်တႅမ်ႈယဝ်ႉၵႂႃႇၼၼ်ႉ "မႅၼ်ႈ" ဢမ်ႇၼၼ် "ၽိတ်း" ၵမ်းလဵဝ်ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Shan Typing Speed Tester** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **Binding** တႃႇႁႂ်ႈ Timer တႄႇႁဵတ်းၵၢၼ် ၵမ်းလဵဝ် မိူဝ်ႈ User တႄႇတႅမ်ႈတူဝ်လိၵ်ႈ (Key Event)။
2.  ႁဝ်းၸၢင်ႈၸႂ်ႉ **Enter** တႃႇ Reset ၵၢၼ်လဵၼ်ႈ ႁႂ်ႈဝႆးလိူဝ်ၵဝ်ႇၶႃႈယဝ်ႉ။

---