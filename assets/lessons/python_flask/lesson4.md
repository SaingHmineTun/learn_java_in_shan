
## **Module 1: Introduction & Environment Setup**

### **Lesson 4: The Application Context (လွင်ႈပွင်ႇၸႂ် Application Context)**

လွင်ႈၼႆႉ ပဵၼ်လွင်ႈဢၼ် ၵူၼ်းတႄႇႁဵၼ်း Flask ၶဝ် ၵႆႉၵႂၢင် (Confuse) သေပိူၼ်ႈၶႃႈ။ 
ၵူၺ်းၵႃႈ ပေႃးႁဝ်းပွင်ႇၸႂ်ယဝ်ႉ မၼ်းတေႁဵတ်းႁႂ်ႈႁဝ်း တႅမ်ႈ Code လႆႈလီမႃးတႄႉတႄႉၶႃႈ။

#### **1. Application Context ၼႆႉ ပဵၼ်သင်?**

တွၼ်ႈတႃႇတေပွင်ႇၸႂ်ငၢႆႈငၢႆႈ၊ **Application Context** ၼႆႉ မၼ်းမိူၼ်ၼင်ႇ **"ႁွင်ႈႁဵတ်းၵၢၼ်ၸူဝ်ႈၵႅပ်ႉ"** (Temporary Workspace) ဢၼ် Flask သၢင်ႈၶိုၼ်ႈမႃး မိူဝ်ႈမၼ်းတိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇၼၼ်ႉၶႃႈ။

* မိူဝ်ႈ Website ႁဝ်း မီးၵူၼ်းၶဝ်ႈမႃး (Request) ၼၼ်ႉ၊ Flask တေပိုတ်ႇ "ႁွင်ႈႁဵတ်းၵၢၼ်" ၼႆႉၶိုၼ်ႈမႃး။
* တီႈၼႂ်းႁွင်ႈၼၼ်ႉ မၼ်းတေမီး ၶေႃႈမုၼ်းၶွင် App ႁဝ်း တင်းမူတ်း (တူဝ်ယၢင်ႇ - ၸိုဝ်ႈ App, ၶေႃႈမုၼ်း Database, Settings လႄႈ Configuration ၸိူဝ်းၼႆႉ)။
* ပေႃးၵူၼ်းၼၼ်ႉ ဢွၵ်ႇၵႂႃႇ (Response ယဝ်ႉ) ၼႆ၊ Flask တေၶိုၼ်းပိၵ်ႉ "ႁွင်ႈႁဵတ်းၵၢၼ်" ၼၼ်ႉပႅတ်ႈၶႃႈ။

#### **2. ပဵၼ်သင်လႄႈ လႆႈၸႂ်ႉမၼ်း?**

ယွၼ်ႉပိူဝ်ႈဝႃႈ ၼႂ်း Python ဢၼ်လဵဝ်ၼၼ်ႉ ႁဝ်းၸၢင်ႈ Run Flask App လၢႆလၢႆဢၼ် လႆႈၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်ၶႃႈ (တူဝ်ယၢင်ႇ - App တွၼ်ႈတႃႇ Admin လႄႈ App တွၼ်ႈတႃႇ User)။
Context ၼႆႉ မၼ်းတေၸွႆႈတွင်းဝႆႉပၼ်ဝႃႈ **ယၢမ်းလဵဝ် ႁဝ်းတိုၵ်ႉႁဵတ်းၵၢၼ် ၼႂ်း App ဢၼ်လႂ်ယူႇ** သေလႄႈ မၼ်းတေဢမ်ႇႁဵတ်းႁႂ်ႈ Code လေႃးလႄးၵၼ်ၶႃႈ။

---

#### **3. `current_app` ပဵၼ်သင်?**

Flask မီးၶိူင်ႈမိုဝ်းဢၼ်ၼိုင်ႈ ဢၼ်ၸိုဝ်ႈဝႃႈ `current_app` ၶႃႈ။ မၼ်းပဵၼ် Variable ဢၼ်ၸွႆႈႁႂ်ႈႁဝ်း ၸီႉၸူးၵႂႃႇၸူး App ဢၼ်တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ ၼႂ်းၶၢဝ်းယၢမ်းၼၼ်ႉၶႃႈ။

**တူဝ်ယၢင်ႇ Code ဢၼ်မီး Error (Out of Context Error):**
ပေႃးႁဝ်းၸၢမ်း ဢဝ် `current_app` မႃးၸႂ်ႉ ၽၢႆႇၼွၵ်ႈ Context ၼႆ မၼ်းတေဢွၵ်ႇ Error ၶႃႈ။ ၸၢမ်းတူၺ်း Code ၽၢႆႇတႂ်ႈၼႆႉၶႃႈ -

```python
from flask import Flask, current_app

app = Flask(__name__)
app.config['MY_NAME'] = 'Flask Learner'

# ႁဝ်းၸၢမ်း ပရိတ်ႉ (Print) ၶေႃႈမုၼ်း ၽၢႆႇၼွၵ်ႈ Route
print(current_app.config['MY_NAME']) 
# ❌ တီႈၼႆႈ တေဢွၵ်ႇ Error ဝႃႈ: "RuntimeError: Working outside of application context."

```

**ပွင်ႇဝႃႈသင်?** မၼ်းပွင်ႇဝႃႈ ယၢမ်းလဵဝ် "ႁွင်ႈႁဵတ်းၵၢၼ်" ဢမ်ႇပႆႇပိုတ်ႇလႄႈ `current_app` ဢမ်ႇႁူႉဝႃႈ တေလႆႈၵႂႃႇဢဝ်ၶေႃႈမုၼ်း တီႈ App ဢၼ်လႂ်ၶႃႈ။

---

#### **4. လွၵ်းလၢႆးသၢင်ႈ Context ႁင်းၵူၺ်း (`app.app_context()`)**

တွၼ်ႈတႃႇတေၵႄႈလိတ်ႈ Error ၽၢႆႇၼိူဝ်ၼႆႉ လႄႈ တွၼ်ႈတႃႇတေၸႂ်ႉ `current_app` လႆႈၼၼ်ႉ၊ 
ႁဝ်းလူဝ်ႇလႆႈပိုတ်ႇ Context မၼ်းဢွၼ်တၢင်း ၸႂ်ႉၶေႃႈၵႂၢမ်း **`with app.app_context():`** ၶႃႈ။

**တူဝ်ယၢင်ႇ Code ဢၼ်မၢၼ်ႇမႅၼ်ႈ:**

```python
from flask import Flask, current_app

app = Flask(__name__)
app.config['MY_NAME'] = 'Flask Learner'

# ပိုတ်ႇ "ႁွင်ႈႁဵတ်းၵၢၼ်" ဢွၼ်တၢင်း
with app.app_context():
    # ယၢမ်းလဵဝ် ႁဝ်းမီးၼႂ်း Context ယဝ်ႉလႄႈ current_app ႁဵတ်းၵၢၼ်လႆႈယဝ်ႉ
    print(current_app.config['MY_NAME']) 
    # ✔️ တေဢွၵ်ႇမႃးဝႃႈ: Flask Learner

```

> *မၢႆတွင်း: ၵမ်ႉပႃႈၼမ် မိူဝ်ႈႁဝ်းတႅမ်ႈ Code ၼႂ်း `@app.route()` ၼၼ်ႉ ႁဝ်းဢမ်ႇတၢပ်ႈလူဝ်ႇတႅမ်ႈ `with app.app_context():` ၶႃႈ။ ယွၼ်ႉဝႃႈ မိူဝ်ႈမီးၵူၼ်းၶဝ်ႈမႃးတီႈ Route ၼၼ်ႉ Flask တေပိုတ်ႇ Context ပၼ်ႁင်းၵူၺ်းမၼ်း (Automatically) ယဝ်ႉၶႃႈဢေႃႈ။ ႁဝ်းတေလႆႈၸႂ်ႉမၼ်းလၢႆလၢႆ မိူဝ်ႈႁဝ်းၶႂ်ႈ Test Code ဢမ်ႇၼၼ် သၢင်ႈ Database Setup မိူဝ်ႈတႄႇပိုတ်ႇ App ၼၼ်ႉၵူၺ်းၶႃႈ။*