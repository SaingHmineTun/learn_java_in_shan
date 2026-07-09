

## **Module 2: Routing and Request Handling**

### **Lesson 11: The Request Object (Body & JSON)**

#### **1. Request Body ၼႆႉ ပဵၼ်သင်?**

တီႈၼႂ်း Lesson 10 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်းမႃး Query Parameters ဢၼ်သူင်ႇၶေႃႈမုၼ်းၸွမ်း URL (တူဝ်ယၢင်ႇ: `?name=Sai`) ၶႃႈၼေႃ။

* **Request Body** ၼႆႉတႄႉ မၼ်းတေဢမ်ႇၼႄ ၶေႃႈမုၼ်းၼၼ်ႉ ၼႂ်း URL ၶႃႈ။ ၶေႃႈမုၼ်းၼၼ်ႉ မၼ်းတေလပ်ႉဝႆႉ သေ သူင်ႇမႃးၼႂ်း "တူဝ် (Body)" ၶွင် HTTP Request ၵမ်းသိုဝ်ႈ။
* **လွင်ႈလႆႈၸႂ်ႉ:** ၸႂ်ႉတွၼ်ႈတႃႇ သူင်ႇၶေႃႈမုၼ်း ဢၼ်ယႂ်ႇၼမ် ဢမ်ႇၼၼ် ၶေႃႈမုၼ်းလပ်ႉလပ်ႉ မိူၼ်ၼင်ႇ Password ၶႃႈ။
* ၵမ်ႉပႃႈၼမ် ႁဝ်းတေလႆႈၸႂ်ႉ မၼ်းၸွမ်း **POST** ဢမ်ႇၼၼ် **PUT** Methods ၶႃႈဢေႃႈ။

---

#### **2. လွင်ႈႁပ်ႉဢဝ် ၶေႃႈမုၼ်း Form Data (`request.form`)**

မိူဝ်ႈၵူၼ်းၸႂ်ႉ ၼဵၵ်းပုမ်ႇ Submit တီႈၼႂ်း HTML Form (မိူၼ်ၼင်ႇ ၼႃႈလိၵ်ႈ Login) ၼၼ်ႉ၊ Browser တေသူင်ႇၶေႃႈမုၼ်း မဵဝ်း `application/x-www-form-urlencoded` မႃးၸူး Server ႁဝ်း။
တီႈၼႂ်း Flask ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **`request.form`** တွၼ်ႈတႃႇ ႁပ်ႉဢဝ်ၶေႃႈမုၼ်းၸိူဝ်းၼႆႉၶႃႈ။

**တူဝ်ယၢင်ႇ Code:**

```python
from flask import Flask, request

app = Flask(__name__)

@app.route('/login', methods=['POST'])
def login():
    # ႁပ်ႉဢဝ် 'username' လႄႈ 'password' ဢၼ်သူင်ႇမႃးတီႈ Form
    # request.form ၼႆႉ ႁဵတ်းၵၢၼ်မိူၼ် Dictionary
    user = request.form.get('username')
    pw = request.form.get('password')
    
    if user == 'admin' and pw == '1234':
        return "Login ၶဝ်ႈလႆႈလီငၢမ်းယဝ်ႉၶႃႈ!"
    else:
        return "Username ဢမ်ႇၼၼ် Password ၽိတ်းပိူင်ႈၶႃႈ!"

if __name__ == '__main__':
    app.run(debug=True)

```

---

#### **3. လွင်ႈႁပ်ႉဢဝ် ၶေႃႈမုၼ်း JSON (`request.get_json()`)**

ယၢမ်းလဵဝ် Website မႂ်ႇမႂ်ႇၶဝ် (ဢၼ်ၸႂ်ႉ React, Vue) ဢမ်ႇၼၼ် Mobile App ၶဝ်ၼၼ်ႉ ၶဝ်ဢမ်ႇၵႆႉသူင်ႇၶေႃႈမုၼ်းပဵၼ် Form ယဝ်ႉ။ ၶဝ်သူင်ႇၶေႃႈမုၼ်းပဵၼ် **JSON** (`application/json`) ၶႃႈ။
တွၼ်ႈတႃႇတေႁပ်ႉ JSON ၼႂ်း Flask ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ Function **`request.get_json()`** ၶႃႈ။

**တူဝ်ယၢင်ႇ Code:**

```python
@app.route('/api/create_user', methods=['POST'])
def create_user():
    # request.get_json() တေဢဝ် JSON ၼၼ်ႉ လႅၵ်ႈပဵၼ် Python Dictionary ႁင်းၵူၺ်းမၼ်း
    data = request.get_json()
    
    # သင်ဝႃႈ ဢမ်ႇမီးၶေႃႈမုၼ်း JSON သူင်ႇမႃး
    if not data:
        return "ဢမ်ႇမီးၶေႃႈမုၼ်း JSON ၶႃႈ", 400
        
    # ဢဝ်ၶေႃႈမုၼ်း တီႈၼႂ်း Dictionary မႃးၸႂ်ႉ
    new_user = data.get('username')
    email = data.get('email')
    
    return f"သၢင်ႈ User မႂ်ႇ: {new_user} ({email}) လီငၢမ်းယဝ်ႉၶႃႈ!"

```

> **လွင်ႈပႅၵ်ႇပိူင်ႈဢၼ်လီတွင်း:** > * ပေႃးသူင်ႇမႃးပဵၼ် **Form (HTML)** 👉 ၸႂ်ႉ `request.form`
> * ပေႃးသူင်ႇမႃးပဵၼ် **JSON (API/Mobile)** 👉 ၸႂ်ႉ `request.get_json()`

---
