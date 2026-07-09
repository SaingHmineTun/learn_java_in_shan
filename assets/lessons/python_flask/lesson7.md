

## **Module 2: Routing and Request Handling**

### **Lesson 7: Basic Routing (လွင်ႈၸတ်းၵၢၼ် သဵၼ်ႈတၢင်း Route ပိုၼ်ႉထၢၼ်)**

#### **1. Routing ၼႆႉ ပဵၼ်သင်?**

**Routing** ၼႆႉ ပဵၼ်လွၵ်းလၢႆး ဢၼ်ၵၢႆႇၸၢပ်ႈ **URL** (သဵၼ်ႈတၢင်းၼိူဝ် Web) လႄႈ **Python Function** ၶဝ်ႈၸူးၵၼ်ၶႃႈ။

* ပေႃးမီးၵူၼ်းတႅမ်ႈ URL (တူဝ်ယၢင်ႇ - `yoursite.com/about`) တီႈၼႂ်း Browser သေ ၶဝ်ႈမႃးၼႆ၊ Flask တေၵႂႃႇသွၵ်ႈႁႃဝႃႈ သဵၼ်ႈတၢင်း `/about` ၼႆႉ ၵၢႆႇၸၢပ်ႈဝႆႉတင်း Function ဢၼ်လႂ် ၼႆသေ မၼ်းတေ Run Code ၼႂ်း Function ၼၼ်ႉပၼ်ၵမ်းသိုဝ်ႈၶႃႈ။

---

#### **2. လွင်ႈၸႂ်ႉ `@app.route()` Decorator**

ၼႂ်း Flask ၼၼ်ႉ ႁဝ်းၸႂ်ႉ **Decorator** ဢၼ်ၸိုဝ်ႈဝႃႈ `@app.route()` တွၼ်ႈတႃႇမၵ်းမၼ်ႈ သဵၼ်ႈတၢင်းၶႃႈ။

**တူဝ်ယၢင်ႇ Code တႃႇသၢင်ႈ Route လၢႆလၢႆဢၼ်:**

```python
from flask import Flask

app = Flask(__name__)

# ၼႃႈႁႅၵ်ႈ (Home Page)
@app.route('/')
def home():
    return "ၼႆႉပဵၼ် ၼႃႈႁႅၵ်ႈ (Home Page) ၶႃႈ!"

# ၼႃႈလွင်ႈတၢင်း (About Page)
@app.route('/about')
def about():
    return "ၼႆႉပဵၼ် ၼႃႈလွင်ႈတၢင်း ၶွင် Website ႁဝ်းၶႃႈ!"

# ၼႃႈၵပ်းသိုပ်ႇ (Contact Page)
@app.route('/contact')
def contact():
    return "ၵပ်းသိုပ်ႇႁဝ်းၶႃႈလႆႈ တီႈ hello@example.com"

if __name__ == '__main__':
    app.run(debug=True)

```

* **လွင်ႈႁဵတ်းၵၢၼ်မၼ်း:** မိူဝ်ႈ Server Run ယူႇၼၼ်ႉ ပေႃးႁဝ်းၵႂႃႇတီႈ `http://127.0.0.1:5000/contact` ၼႆ၊ Flask တေႁွင်ႉၸႂ်ႉ Function `contact()` သေ ဢဝ်ၶေႃႈၵႂၢမ်းၼၼ်ႉ ဢွၵ်ႇၼႄပၼ်ၼႂ်း Browser ၶႃႈဢေႃႈ။

---

#### **3. လွင်ႈပႅၵ်ႇပိူင်ႈ Trailing Slashes (`/`) ၽၢႆႇလင် URL**

လွင်ႈၼႆႉ ပဵၼ်လွင်ႈဢၼ်ၵူၼ်းတႅမ်ႈ Code ၶဝ် ၵႆႉၵႂၢင် (Confuse) ၵၼ်ၶႃႈ။ ၼႂ်း Flask ၼႆႉ လွင်ႈသႂ်ႇ `/` ၽၢႆႇလင်သုတ်း လႄႈ ဢမ်ႇသႂ်ႇၼၼ်ႉ မၼ်းပႅၵ်ႇပိူင်ႈၵၼ်တႄႉတႄႉၶႃႈ။

**တူဝ်ယၢင်ႇ 1: မီး `/` ၽၢႆႇလင် (မိူၼ် Folder)**

```python
@app.route('/projects/')
def projects():
    return "ၼႃႈၼႆႉ ပဵၼ်ၼႃႈ Projects"

```

* ပေႃးၵူၼ်းၶဝ်ႈမႃး `.../projects/` ၼႆ မၼ်းတေပိုတ်ႇပၼ်လီငၢမ်းၶႃႈ။
* **လွင်ႈလၢၵ်ႇလၢႆး:** သင်ဝႃႈၵူၼ်းၶဝ်ႈမႃး `.../projects` (ဢမ်ႇသႂ်ႇ `/`) ၼႆ၊ Flask တေ **Redirect** (ဝၢႆႇၼႃႈ) ၵႂႃႇၸူး `.../projects/` ႁင်းၵူၺ်းမၼ်းၶႃႈ (ဢမ်ႇဢွၵ်ႇ Error)။

**တူဝ်ယၢင်ႇ 2: ဢမ်ႇမီး `/` ၽၢႆႇလင် (မိူၼ် File)**

```python
@app.route('/about')
def about():
    return "ၼႃႈၼႆႉ ပဵၼ်ၼႃႈ About"

```

* ပေႃးၵူၼ်းၶဝ်ႈမႃး `.../about` ၼႆ မၼ်းတေပိုတ်ႇပၼ်လီငၢမ်းၶႃႈ။
* **လွင်ႈလၢၵ်ႇလၢႆး:** သင်ဝႃႈၵူၼ်းၶဝ်ႈမႃး `.../about/` (သႂ်ႇ `/` လိူဝ်မႃး) ၼႆ၊ Flask တေဢွၵ်ႇ **Error 404 (Not Found)** ၵမ်းသိုဝ်ႈၶႃႈ။ မၼ်းတေဢမ်ႇ Redirect ပၼ်ၶႃႈ။

> *မၢႆတွင်း: လွၵ်းလၢႆးၼႆႉ မၼ်းၸွႆႈႁႂ်ႈ URL ၶွင် Website ႁဝ်း မီးလွင်ႈမၢၼ်ႇမႅၼ်ႈ ဢမ်ႇသမ်ႉၵၼ် (Unique URLs) ဢၼ်ပဵၼ်လွင်ႈလီ တွၼ်ႈတႃႇ Search Engine (SEO) မိူၼ်ၼင်ႇ Google ၶႃႈဢေႃႈ။*