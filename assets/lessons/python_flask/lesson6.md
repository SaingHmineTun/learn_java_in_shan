

## **Module 1: Introduction & Environment Setup**

### **Lesson 6: Configuration Management (လွင်ႈၸတ်းၵၢၼ် Configuration လႄႈ လွင်ႈသိမ်း Settings)**

မိူဝ်ႈႁဝ်းသၢင်ႈ App ဢၼ်ယႂ်ႇမႃးၼၼ်ႉ ႁဝ်းတေမီးၶေႃႈမုၼ်း ဢၼ်လူဝ်ႇလႆႈသိမ်းဝႆႉတင်းၼမ် မိူၼ်ၼင်ႇ: Thots (သေႃးလပ်ႉ) တႃႇ Token, သဵၼ်ႈတၢင်းၵၢႆႇၸၢပ်ႈ Database ဢမ်ႇၼၼ် ၵႃႈၶၼ် Settings တၢင်ႇမဵဝ်းၶႃႈ။ 
ၼႂ်း Flask ႁဝ်းမီးလွၵ်းလၢႆးၸတ်းၵၢၼ်မၼ်း ၼင်ႇၼႆၶႃႈ။

#### **1. ၸႂ်ႉ `app.config` တီႈၼႂ်း Code**

Flask မီး Object ဢၼ်ၼိုင်ႈ ဢၼ်ၸိုဝ်ႈဝႃႈ `app.config` ၶႃႈ။ မၼ်းႁဵတ်းၵၢၼ်မိူၼ် Dictionary ၼႂ်း Python ၵမ်းသိုဝ်ႈ။ ႁဝ်းၸၢင်ႈသိမ်း ၶေႃႈမုၼ်းလႆႈ ၸိူင်ႉၼင်ႇၽၢႆႇတႂ်ႈၼႆႉ -

```python
app = Flask(__name__)

# သိမ်းၵႃႈ Settings ဝႆႉၼႂ်း app.config
app.config['DEBUG'] = True
app.config['SECRET_KEY'] = 'my-super-secret-key-123'

```

#### **2. ပဵၼ်သင်လႄႈ လွၵ်းလၢႆး Hardcode ၽၢႆႇၼိူဝ်ၼႆႉ ဢမ်ႇလီတႃႇ လွင်ႈႁူမ်ႇလူမ်ႈ (Security)?**

လွၵ်းလၢႆးတႅမ်ႈ သေႃးလပ်ႉ (`SECRET_KEY`) သႂ်ႇဝႆႉၼႂ်း ၾၢႆႇ Code `app.py` ၵမ်းသိုဝ်ႈၼၼ်ႉ ႁွင်ႉဝႃႈ **Hardcoding** ၶႃႈ။

* **လွင်ႈႁၢႆႉၸႃႉမၼ်း:** မိူဝ်ႈႁဝ်းဢဝ် Code ႁဝ်း Push ၶိုၼ်ႈၵႂႃႇၼႂ်း **GitHub** ၼၼ်ႉ ၵူၼ်းတင်းမိူင်း (ဢမ်ႇၼၼ် Hackers) တေလႆႈႁၼ် သေႃးလပ်ႉႁဝ်း ၵမ်းသိုဝ်ႈၶႃႈ။ ၶဝ်ၸၢင်ႈဢဝ် သေႃးလပ်ႉၼၼ်ႉ ၵႂႃႇပႅတ်ႉလႅၼ် ဢမ်ႇၼၼ် ႁၵ်း (Hack) ဢဝ်ၶေႃႈမုၼ်း User ႁဝ်းလႆႈငၢႆႈငၢႆႈၶႃႈဢေႃႈ။

---

#### **3. လွၵ်းလၢႆးဢၼ်ထုၵ်ႇမၼ်း: ၸႂ်ႉ Environment Variables လႄႈ ၾၢႆႇ `.env**`

Best Practice ဢၼ်မၢၼ်ႇမႅၼ်ႈၼၼ်ႉ ႁဝ်းတေလႆႈသိမ်း Settings လႄႈ Secrets တင်းမူတ်း ဝႆႉၼႂ်းၾၢႆႇလပ်ႉ ဢၼ်ၸိုဝ်ႈဝႃႈ **`.env`** (Environment File) ၶႃႈ။ ၾၢႆႇၼႆႉ တေမီးယူႇၼႂ်းၶွမ်းႁဝ်းၵူၺ်း ဢမ်ႇဢဝ်ၶိုၼ်ႈ GitHub ၶႃႈ။

**Step A: Install Package**
ႁဝ်းလူဝ်ႇၸႂ်ႉ Library ဢၼ်ၸွႆႈလူတ်ႇ (Load) ၶေႃႈမုၼ်းၼႂ်းၾၢႆႇ `.env` ၶႃႈ -

```bash
pip install python-dotenv

```

**Step B: သၢင်ႈၾၢႆႇ `.env**`
သၢင်ႈၾၢႆႇမႂ်ႇဢၼ်ၼိုင်ႈ ၸိုဝ်ႈဝႃႈ `.env` (မီးၸုမ်ႈပႃးၽၢႆႇၼႃႈ) ဝႆႉတီႈ Folder ယႂ်ႇသုတ်းၶွင် Project ႁဝ်း သေ တႅမ်ႈဝႆႉၼင်ႇၼႆ -

```text
SECRET_KEY=highly-secure-random-string-xyz
DATABASE_URL=sqlite:///mydatabase.db

```

**Step C: ႁွင်ႉၸႂ်ႉၼႂ်း `app.py**`
ၸႂ်ႉ library `os` လႄႈ `dotenv` သေ ႁွင်ႉဢဝ်ၵႃႈၶၼ်မႃးၸႂ်ႉၶႃႈ -

```python
import os
from flask import Flask
from dotenv import load_model_env  # ဢမ်ႇၼၼ် load_dotenv

# လူတ်ႇၶေႃႈမုၼ်းတီႈ .env ၶဝ်ႈမႃး
load_dotenv()

app = Flask(__name__)

# ဢဝ်ၵႃႈၶၼ်တီႈ Environment Variable မႃးသႂ်ႇ
app.config['SECRET_KEY'] = os.environ.get('SECRET_KEY')

```

> *မၢႆတွင်း: ယႃႇပေလိုမ်း သႂ်ႇၸိုဝ်ႈၾၢႆႇ `.env` တီႈၼႂ်းၾၢႆႇ `.gitignore` ၶႃႈၼႃႈ။ ၼႆႉမၼ်းတေၸွႆႈႁႄႉၵင်ႈပၼ် ဢမ်ႇႁႂ်ႈ Git ဢဝ်ၾၢႆႇလပ်ႉၼႆႉ Push ၶိုၼ်ႈ GitHub ၶႃႈ။*

---