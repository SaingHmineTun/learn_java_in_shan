
## **Module 1: Introduction & Environment Setup**

### **Lesson 3: Your First Flask App (လွင်ႈတႅမ်ႈ Code လႄႈ Run Python ၼႂ်း Terminal)**

ယၢမ်းလဵဝ် ႁဝ်းမီး `venv` လႄႈ Install `Flask` ယဝ်ႉတူဝ်ႈလီငၢမ်းယဝ်ႉလႄႈ 
ႁဝ်းမႃးတႄႇတႅမ်ႈ Code ဢၼ်ပဵၼ် App ဢွၼ်တၢင်းသုတ်းၶွင်ႁဝ်းၵၼ်ၶႃႈ။

#### **1. လွင်ႈတႅမ်ႈ Code "Hello, World!"**

တီႈၼႂ်း Folder `my_flask_app` ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉ သၢင်ႈၾၢႆႇ (File) မႂ်ႇဢၼ်ၼိုင်ႈ သေ ၸိုဝ်ႈမၼ်းဝႃႈ `app.py` ၶႃႈ။ ဝၢႆးၼၼ်ႉ ဢဝ် Code ၽၢႆႇတႂ်ႈၼႆႉ Copy သေ Paste သႂ်ႇၼႂ်း `app.py` ၶႃႈ။

```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "Hello, World! ၼႆႉပဵၼ် Flask App ဢွၼ်တၢင်းသုတ်းၶွင်ၶႃႈ!"

if __name__ == '__main__':
    app.run(debug=True)

```

**လွင်ႈသပ်းလႅင်း Code ဢၼ်ႁဝ်းတႅမ်ႈၵႂႃႇ:**

* **`from flask import Flask`** - ႁွင်ႉဢဝ် Library ဢၼ်ၸိုဝ်ႈဝႃႈ Flask မႃးၸႂ်ႉၶႃႈ။
* **`app = Flask(__name__)`** - သၢင်ႈ Application Object တႃႇ Flask ၶႃႈ။ `__name__` ၼႆႉ မၼ်းတေၸွႆႈႁႂ်ႈ Flask ႁူႉဝႃႈ ၾၢႆႇဢၼ်ႁဝ်းတိုၵ်ႉ Run ယူႇၼႆႉ မီးတီႈလႂ်။
* **`@app.route('/')`** - မၼ်းပဵၼ် လွင်ႈမၵ်းမၼ်ႈ သဵၼ်ႈတၢင်း (Route) ၶႃႈ။ `/` ၼႆႉ ပွင်ႇဝႃႈ ပဵၼ်ၼႃႈႁႅၵ်ႈ (Home page) ၶွင် Website ႁဝ်းၶႃႈဢေႃႈ။
* **`def hello_world():`** - ပဵၼ် Function ဢၼ်တေႁဵတ်းၵၢၼ် မိူဝ်ႈမီးၵူၼ်းၶဝ်ႈမႃးတီႈၼႃႈႁႅၵ်ႈ (`/`) ၼၼ်ႉၶႃႈ။
* **`app.run(debug=True)`** - ပိုတ်ႇ Server ႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ၶႃႈ။ `debug=True` ၼႆႉ မၼ်းလီတႄႉတႄႉ ယွၼ်ႉဝႃႈ ပေႃးႁဝ်းမႄး Code ၼႆ မၼ်းတေ Refresh ပၼ်ႁင်းၵူၺ်းမၼ်း လႄႈ ပေႃးမီး Error ၵေႃႈ မၼ်းတေၼႄပၼ် ႁႂ်ႈႁဝ်းႁူႉလႆႈငၢႆႈငၢႆႈၶႃႈ။

---

#### **2. လွင်ႈ Run Python ၼႂ်း Terminal**

ယၢမ်းလဵဝ် ႁဝ်းမႃးၸၢမ်း Run ၾၢႆႇ `app.py` ၼႆႉ တီႈၼႂ်း Terminal ၵၼ်ၶႃႈ။

* ယႃႇပေလိုမ်း ၵူတ်ႇတူၺ်း (Check) လီလီဝႃႈ ႁဝ်းတိုၵ်ႉမီးၼႂ်း `(venv)` ယူႇႁိုဝ်ဢၼ်ဝႃႈၼၼ်ႉၶႃႈၼႃႈ။ ပေႃးမီးယဝ်ႉၼႆ တႅမ်ႈ Command ၽၢႆႇတႂ်ႈၼႆႉ ၼႂ်း Terminal ၶႃႈ -

```bash
python app.py

```

ပေႃးမၼ်း Run လႆႈလီငၢမ်းၼႆ မၼ်းတေဢွၵ်ႇမႃး ၶေႃႈၵႂၢမ်းၼႂ်း Terminal မိူၼ်ၼင်ႇၽၢႆႇတႂ်ႈၼႆႉၶႃႈ -

```text
 * Serving Flask app 'app'
 * Debug mode: on
 * Running on http://127.0.0.1:5000
 * Restarting with stat
 * Debugger is active!

```

---

#### **3. လွင်ႈပိုတ်ႇတူၺ်း ၼႂ်း Browser**

* ၶေႃႈၵႂၢမ်းဝႃႈ `http://127.0.0.1:5000` ၼၼ်ႉ ပွင်ႇဝႃႈ App ႁဝ်း တိုၵ်ႉ Run ယူႇတီႈ Localhost (ၶွမ်းႁဝ်း) ဢၼ်မီး Port မၢႆ `5000` ၶႃႈ။
* ၵႂႃႇပိုတ်ႇ Browser မိူၼ်ၼင်ႇ Google Chrome ဢမ်ႇၼၼ် Edge သေ တႅမ်ႈသႂ်ႇဝႃႈ `http://127.0.0.1:5000` (ဢမ်ႇၼၼ် `http://localhost:5000`) ၼႂ်း Address bar မၼ်းၶႃႈ။

ႁဝ်းတေလႆႈႁၼ် ၶေႃႈၵႂၢမ်းဝႃႈ **"Hello, World! ၼႆႉပဵၼ် Flask App ဢွၼ်တၢင်းသုတ်းၶွင်ၶႃႈ!"** ဢွၵ်ႇမႃးၼႂ်း Browser ႁဝ်းယဝ်ႉၶႃႈ!

**လွင်ႈၵိုတ်း Server (Stop Server):** ပေႃးႁဝ်းၶႂ်ႈၵိုတ်း Server ၼႂ်း Terminal ၼႆ ၵႂႃႇတီႈ Terminal သေ ၼဵၵ်းပၼ် **`Ctrl + C`** ၶႃႈဢေႃႈ။ ၼႆႉပွင်ႇဝႃႈ ႁဝ်းသင်ႇပိၵ်ႉ Server ၼၼ်ႉယဝ်ႉၶႃႈ။