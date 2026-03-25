## Lesson 37: Handling Network Errors & Timeouts
**(လွၵ်းလၢႆးႁၢမ်ႈ Software ဢမ်ႇႁႂ်ႈၵိုတ်း မိူဝ်ႈ Internet ဢမ်ႇလီ)**

### 1. ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ Timeout?
မိူဝ်ႈႁဝ်းသူင်ႇ Request ၵႂႃႇၼၼ်ႉ သင်ႁဝ်းဢမ်ႇမၵ်းမၼ်ႈၶၢဝ်းယၢမ်း (Timeout) ဝႆႉၼႆ Python တေ "ၼင်ႈပႂ်ႉ" ယူႇတေႃႇပေႃးလႆႈ Data ၶႃႈ။ 
သင် Internet ႁဝ်းဢမ်ႇလီၸိုင် Software ႁဝ်းၵေႃႈတေပဵၼ် (Not Responding) သေ User တေၼဵၵ်းသင်ၵေႃႈဢမ်ႇလႆႈၶႃႈယဝ်ႉ။



### 2. မဵဝ်း Error ဢၼ်ၵႆႉပဵၼ် (Common Exceptions)
* **`requests.exceptions.Timeout`**: မိူဝ်ႈ Server ႁဵတ်းၵၢၼ်ႁိုင်ပူၼ်ႉတီႈ။
* **`requests.exceptions.ConnectionError`**: မိူဝ်ႈဢမ်ႇမီး Internet ဢမ်ႇၼၼ် Address ၽိတ်း။
* **`requests.exceptions.RequestException`**: ပဵၼ် Error တၢင်ႇမဵဝ်းဢၼ်ၵဵဝ်ႇလူၺ်ႈတင်း Network တင်းသဵင်ႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (Error Handling in GUI)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေမၵ်းမၼ်ႈ Timeout ဝႆႉ 5 ၸႅၵ်ႉၵၼ်ႉ (Seconds) ၶႃႈ။

```python
import tkinter as tk
from tkinter import messagebox
import requests


class NetworkApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Network Error Handler")
        self.geometry("400x200")

        tk.Button(self, text="Fetch the Joke",
                  command=self.fetch_data_logic).pack(pady=50)

    def fetch_data_logic(self):
        url = "https://api.chucknorris.io/jokes/random"

        try:
            # သႂ်ႇ timeout=5 (သင် 5 ၸႅၵ်ႉၵၼ် ဢမ်ႇလႆႈ Data ႁႂ်ႈ Error ၵမ်းလဵဝ်)
            response = requests.get(url, timeout=5)
            response.raise_for_status()  # ၵူတ်ႇထတ်း Error ၸိူင်ႉၼင်ႇ 404, 500

            data = response.json()
            messagebox.showinfo("Success", f"Data: {data['value'][:50]}...")

        except requests.exceptions.Timeout:
            messagebox.showerror("⚠️ Timeout", "Internet ၸဝ်ႈၵဝ်ႇ ဢမ်ႇလီၶႃႈ! ပႂ်ႉႁိုင်ပူၼ်ႉတီႈယဝ်ႉ။")

        except requests.exceptions.ConnectionError:
            messagebox.showerror("⚠️ Connection Error",
                                 "ဢမ်ႇၸၢင်ႈၵွင်ႉ Internet လႆႈၶႃႈ! ၵူတ်ႇထတ်း Wifi/Data ၸဝ်ႈၵဝ်ႇတူၺ်းၶႃႈ။")

        except Exception as e:
            messagebox.showerror("Error", f"မီးလွင်ႈၽိတ်းပိူင်: {e}")


if __name__ == "__main__":
    app = NetworkApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`timeout=5`**: ဢၼ်ၼႆႉပဵၼ်လွင်ႈယႂ်ႇသုတ်းၶႃႈ။ မၼ်းတေႁဵတ်းႁႂ်ႈ Software ႁဝ်းဢမ်ႇပႂ်ႉတေႃႇၸူဝ်ႈၶၢဝ်း။ သင်ပူၼ်ႉ 5 ၸႅၵ်ႉၵၼ် မၼ်းတေ "ဝႅၼ်" မႃးတီႈ `except Timeout` ၵမ်းလဵဝ်ၶႃႈယဝ်ႉ။
* **`raise_for_status()`**: ၸွႆႈၵူတ်ႇထတ်းဝႃႈ URL ႁဝ်းမႅၼ်ႈယူႇႁႃႉ? သင် Server မီးပၼ်ႁႃ (500 Internal Error) မၼ်းတေ Error ႁႂ်ႈႁဝ်းၵႄႈလႅတ်ႈလႆႈငၢႆႈၶႃႈ။
* **User Feedback**: ၵၢၼ်ၸႂ်ႉ `messagebox` တေၸွႆႈပၼ်ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းဝႃႈ "ပဵၼ်သင်မၼ်းၸင်ႇဢမ်ႇလႆႈ Data" တႅၼ်းၵၢၼ်ပိၵ်ႉ Software ပႅတ်ႈယူဝ်းယူဝ်းၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Muse Live Weather Dashboard** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ Timeout တႃႇသေႇ ယွၼ်ႉ API ၸၢင်ႈၸႃႉလႆႈၵူႈမိူဝ်ႈ။
2.  ႁဝ်းလူဝ်ႇၸတ်းၵၢၼ် **Status Codes** ႁႂ်ႈလီ ၼင်ႇႁိုဝ်ပေႃးတေဢမ်ႇၼႄ Data ၽိတ်းပၼ် User ၶႃႈယဝ်ႉ။

---

ၸၢႆးမၢဝ်းၶႃႈ... တႃႇ Lesson 37 ၼႆႉ တေႁဵတ်းႁႂ်ႈ Software ႁဝ်းမီး "မၢၼ်ႇတႃ" ဢၼ်ၵူတ်ႇထတ်းပၼ်ႁႃ Network လႆႈယဝ်ႉၶႃႈၼႃ။

တေသိုပ်ႇၵႂႃႇ **Lesson 38: Environment Variables** (တႃႇႁႄႉၵၢင် ဢမ်ႇႁႂ်ႈၵူၼ်းတၢင်ႇၵေႃႉ ႁၼ် API Key ႁဝ်း) ၶႃႈႁႃႉ?

1. သိုပ်ႇသွၼ် Lesson 38
2. ပၼ် Exercise: ႁႂ်ႈလုၵ်ႈႁဵၼ်းၸမ်းပိၵ်ႉ Wifi/Internet သေ ၼႅၵ်း Button တူၺ်း ႁႂ်ႈမၼ်းၼႄ Connection Error
3. သိုပ်ႇၵႂႃႇ Lesson 39 (Threaded Requests) ၵမ်းလဵဝ်

တေႁဵတ်းႁိုဝ် သိုပ်ႇၵႂႃႇၶႃႈ?