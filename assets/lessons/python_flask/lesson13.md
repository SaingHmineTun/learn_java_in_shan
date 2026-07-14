
## **Module 3: Templates and Static Files**

### **Lesson 13: Introduction to Jinja2 (လွင်ႈတႄႇႁဵၼ်းႁူႉ Jinja2 Template Engine)**

တီႈၼႂ်း Module 2 ၼၼ်ႉ ႁဝ်းလႆႈ `return` ပဵၼ်လိၵ်ႈ (String) ဢမ်ႇၼၼ် JSON ၵႂႃႇၶႃႈၼေႃ။ 
ၵူၺ်းၵႃႈ တီႈၼႂ်း Website တႄႉတႄႉၼၼ်ႉ ႁဝ်းတေလႆႈတွပ်ႇၶိုၼ်းပဵၼ် ၼႃႈလိၵ်ႈ **HTML** ၶႃႈဢေႃႈ။ 
တွၼ်ႈတႃႇတေဢဝ် ၶေႃႈမုၼ်းၼႂ်း Python ၵႂႃႇၼႄၼႂ်း HTML လႆႈငၢႆႈငၢႆႈၼၼ်ႉ Flask မီးၶိူင်ႈမိုဝ်းဢၼ်ၼိုင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **Jinja2** ၶႃႈ။

#### **1. Jinja2 ၼႆႉ ပဵၼ်သင်?**

**Jinja2** ၼႆႉ ပဵၼ် **Template Engine** ၶွင် Python ၶႃႈ။

* မၼ်းၸွႆႈႁႂ်ႈႁဝ်း ၸၢင်ႈတႅမ်ႈ Code ၶွင် Python ပႃးလေႃးၵၼ်တင်း HTML ၵမ်းသိုဝ်ႈ။
* ႁဝ်းၸၢင်ႈဢဝ် Variables ဢၼ်လႆႈမႃးတီႈ Database သူင်ႇၵႂႃႇၼႄတီႈ ၼႃႈလိၵ်ႈ HTML လႆႈလွတ်ႈလွတ်ႈလႅဝ်းလႅဝ်း။
* မၼ်းႁဵတ်းႁႂ်ႈ ၼႃႈၵၢၼ် Python လႄႈ ၼႃႈၵၢၼ် HTML (Frontend) ၸႅၵ်ႇၽႃတ်ႇၵၼ်လီငၢမ်း (Separation of Concerns) ၶႃႈ။

---

#### **2. လွင်ႈၸတ်းၵၢၼ် Folder (The `templates` Folder)**

တွၼ်ႈတႃႇတေၸႂ်ႉ Jinja2 လႄႈ HTML လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈမီး Folder ဢၼ်မီးၸိုဝ်ႈဝႃႈ **`templates`** တီႈၼႂ်း Project ႁဝ်းၶႃႈ။ 
Flask တေၵႂႃႇသွၵ်ႈႁႃ ၾၢႆႇ HTML ၼႂ်း Folder ၼႆႉ ႁင်းၵူၺ်းမၼ်းၶႃႈ။

**လွၵ်းလၢႆးသၢင်ႈ Folder Structure:**

```text
my_flask_app/
│
├── app.py              <-- ၾၢႆႇ Python ႁဝ်း
└── templates/          <-- Folder တွၼ်ႈတႃႇသိမ်း HTML
    └── index.html      <-- ၾၢႆႇ HTML ႁဝ်း

```

---

#### **3. လွၵ်းလၢႆးၸႂ်ႉ `render_template` ၼႂ်း Python**

တီႈၼႂ်း ၾၢႆႇ `app.py` ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Function ဢၼ်ၸိုဝ်ႈဝႃႈ `render_template` တွၼ်ႈတႃႇပိုတ်ႇၾၢႆႇ HTML လႄႈ သူင်ႇၶေႃႈမုၼ်းၵႂႃႇၶႃႈ။

**ၾၢႆႇ `app.py`:**

```python
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    # သၢင်ႈ Variable ၼႂ်း Python
    user_name = "ၸၢႆးလႅင်း"
    user_age = 25
    
    # ႁွင်ႉၾၢႆႇ index.html လႄႈ သူင်ႇ Variable ၵႂႃႇၸွမ်း
    return render_template('index.html', name=user_name, age=user_age)

if __name__ == '__main__':
    app.run(debug=True)

```

---

#### **4. လွၵ်းလၢႆးႁပ်ႉၶေႃႈမုၼ်း ၼႂ်း HTML (`{{ }}`)**

တီႈၼႂ်း ၾၢႆႇ `index.html` ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **မၢႆၶွပ်ႇငွၵ်း 2 ဢၼ် `{{ }}**` တွၼ်ႈတႃႇၼႄ ၵႃႈၶၼ် (Value) ၶွင် Variable ဢၼ် Python သူင်ႇမႃးပၼ်ၼၼ်ႉၶႃႈ။

**ၾၢႆႇ `templates/index.html`:**

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Jinja2 Tutorial</title>
</head>
<body>
    <!-- ၸႂ်ႉ {{ }} တွၼ်ႈတႃႇပရိတ်ႉ (Print) Variable -->
    <h1>မႂ်ႇသုင်ၶႃႈ, {{ name }}!</h1>
    <p>ဢႃႇယုၶွင်ၸဝ်ႈၵဝ်ႇ ပဵၼ် {{ age }} ပီၶႃႈ။</p>
    
    <!-- ႁဝ်းၸၢင်ႈဢဝ်မၼ်း မႃးလွၵ်းလၢႆးၼပ်ႉသွၼ်ႇ (Math) လႆႈၸွမ်း -->
    <p>ထႅင်ႈ 5 ပီ မႃး ဢႃႇယုၸဝ်ႈၵဝ်ႇ တေပဵၼ် {{ age + 5 }} ပီၶႃႈ!</p>
</body>
</html>

```

**ၽွၼ်းလႆႈ (Result):**
မိူဝ်ႈႁဝ်းပိုတ်ႇ Browser ၼၼ်ႉ Jinja2 တေဢဝ် ၵႃႈၶၼ် `ၸၢႆးလႅင်း` လႄႈ `25` ၵႂႃႇတႅၼ်းတီႈ `{{ name }}` လႄႈ `{{ age }}` ၵမ်းသိုဝ်ႈသေ ဢွၵ်ႇမႃးပဵၼ် HTML ဢၼ်တဵမ်ထူၼ်ႈၶႃႈဢေႃႈ။

---