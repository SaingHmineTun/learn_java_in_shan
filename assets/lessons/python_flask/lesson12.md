

## **Module 2: Routing and Request Handling**

### **Lesson 12: Crafting Responses (လွင်ႈသၢင်ႈ လႄႈ တွပ်ႇၶိုၼ်း Response)**

မိူဝ်ႈႁဝ်းႁပ်ႉ Request မႃးယဝ်ႉ ၼႃႈၵၢၼ်လိုၼ်းသုတ်းၶွင် Flask ၼၼ်ႉ ပဵၼ်လွင်ႈတွပ်ႇ Response ၶိုၼ်းၶႃႈ။ 
Flask မီးလွၵ်းလၢႆး တွပ်ႇၶိုၼ်းလႆႈ လၢႆလၢႆမဵဝ်း ၸိူင်ႉၼင်ႇၽၢႆႇတႂ်ႈၼႆႉ -

#### **1. တွပ်ႇၶိုၼ်းပဵၼ် String လႄႈ ၵႃႈၶၼ် Status Code**

လွၵ်းလၢႆးဢၼ်ငၢႆႈသေပိူၼ်ႈ ဢၼ်ႁဝ်းၸႂ်ႉမႃးတႃႇသေႇၼၼ်ႉ ပဵၼ်လွင်ႈ `return` လိၵ်ႈ String ၵမ်းသိုဝ်ႈၶႃႈ။ 
ၵူၺ်းၵႃႈ ႁဝ်းၸၢင်ႈသႂ်ႇပႃး **HTTP Status Code** (မၢႆငဝ်းလၢႆး လွင်ႈတွပ်ႇၶိုၼ်း) လႆႈၸွမ်းၶႃႈ။

* **200** = OK (လီငၢမ်း)
* **400** = Bad Request (ၶေႃႈမုၼ်းသူင်ႇမႃးၽိတ်း)
* **404** = Not Found (ဢမ်ႇႁၼ် ၼႃႈလိၵ်ႈ)

**တူဝ်ယၢင်ႇ Code:**

```python
@app.route('/hello')
def hello():
    # တွပ်ႇပဵၼ် လိၵ်ႈ ထမ်ႇမတႃႇ (Default status code ၼႆႉတေပဵၼ် 200)
    return "မႂ်ႇသုင်ၶႃႈ!"

@app.route('/error')
def show_error():
    # တွပ်ႇပဵၼ် လိၵ်ႈ လႄႈ မၵ်းမၼ်ႈ Status Code ႁႂ်ႈပဵၼ် 404
    return "ၶႅၼ်းတေႃႈ မၼ်းဢမ်ႇမီးၼႃႈလိၵ်ႈၼႆႉၶႃႈ", 404

```

---

#### **2. တွပ်ႇၶိုၼ်းပဵၼ် JSON တွၼ်ႈတႃႇ APIs**

သင်ဝႃႈ ႁဝ်းတိုၵ်ႉသၢင်ႈ API တွၼ်ႈတႃႇ Mobile App ဢမ်ႇၼၼ် React ယူႇၼႆ၊ ႁဝ်းတေဢမ်ႇတွပ်ႇပဵၼ် String ၶႃႈ။ ႁဝ်းတေလႆႈတွပ်ႇပဵၼ် JSON။
တီႈၼႂ်း Flask မႂ်ႇမႂ်ႇၼႆႉ မၼ်းငၢႆႈတႄႉတႄႉၶႃႈ - သင်ဝႃႈႁဝ်း `return` ၶေႃႈမုၼ်းမဵဝ်း **Dictionary** ၼႂ်း Python ၼႆ၊ Flask တေလႅၵ်ႈပၼ်ပဵၼ် JSON ႁင်းၵူၺ်းမၼ်းၵမ်းသိုဝ်ႈၶႃႈ!

**တူဝ်ယၢင်ႇ Code:**

```python
@app.route('/api/user')
def get_user():
    # သၢင်ႈ Python Dictionary
    user_data = {
        "id": 1,
        "name": "Sai Leng",
        "role": "Admin"
    }
    # တွပ်ႇၶိုၼ်း Dictionary ၵမ်းသိုဝ်ႈ (Flask တေလႅၵ်ႈပဵၼ် JSON ပၼ်)
    return user_data, 200

```

> *မၢႆတွင်း: ႁဝ်းၸၢင်ႈၸႂ်ႉ Function `jsonify(user_data)` ၶွင် Flask ၵေႃႈလႆႈ မိူၼ်ၵၼ်ၶႃႈ။*

---

#### **3. လွင်ႈၸႂ်ႉ `make_response()` တွၼ်ႈတႃႇၸတ်းၵၢၼ် Headers**

မၢင်ပွၵ်ႈမၢင်လႂ် ႁဝ်းလူဝ်ႇလႆႈၸတ်းၵၢၼ် Response ႁႂ်ႈမၼ်းလိုၵ်ႉလမ်ႇလိူဝ်သေၵဝ်ႇ မိူၼ်ၼင်ႇ လွင်ႈသႂ်ႇ **Cookies** ဢမ်ႇၼၼ် သႂ်ႇ **Custom Headers** ၶႃႈ။ 
တွၼ်ႈတႃႇလွင်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ `make_response()` ၶႃႈ။

**တူဝ်ယၢင်ႇ Code:**

```python
from flask import make_response

@app.route('/custom')
def custom_response():
    # 1. သၢင်ႈ Response Object ဢွၼ်တၢင်း
    resp = make_response("ၼႆႉပဵၼ် Response ဢၼ်မီး Headers မႂ်ႇၶႃႈ")
    
    # 2. သႂ်ႇ Custom Header (ตူဝ်ယၢင်ႇ - မွၵ်ႇဝႃႈ App ၼႆႉၸႂ်ႉသင်သၢင်ႈ)
    resp.headers['X-Built-With'] = 'Flask'
    
    # 3. တွပ်ႇၶိုၼ်း Object ၼၼ်ႉ
    return resp

```

---