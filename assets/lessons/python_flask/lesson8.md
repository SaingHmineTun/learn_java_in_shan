

## **Module 2: Routing and Request Handling**

### **Lesson 8: Dynamic URL Rules (လွင်ႈၸတ်းၵၢၼ် URL ဢၼ်လႅၵ်ႈလၢႆႈလႆႈၸွမ်းၶေႃႈမုၼ်း)**

#### **1. Dynamic URL ဢၼ်ဝႃႈၼႆႉ ပဵၼ်သင်?**

တီႈၼႂ်း Lesson 7 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်းမႃး Route ဢၼ်တၢႆတူဝ် (Static) မိူၼ်ၼင်ႇ `/about` ဢမ်ႇၼၼ် `/contact` ၶႃႈ။
ၵူၺ်းၵႃႈ တီႈၼႂ်း Website တႄႉတႄႉၼၼ်ႉ ႁဝ်းဢမ်ႇၸၢင်ႈတႅမ်ႈ Route လၢႆလၢႆဢၼ် တွၼ်ႈတႃႇ User ၵူႈၵေႃႉလႆႈ (တူဝ်ယၢင်ႇ - တႅမ်ႈ `/user/sai`, `/user/kham`, `/user/leng` ႁင်းၽႂ်ႁင်းမၼ်း)။

လွင်ႈၼႆႉ Flask မီးလွၵ်းလၢႆး ႁဵတ်းႁႂ်ႈ URL ႁပ်ႉဢဝ် **ၵႃႈၶၼ် (Variables)** လႆႈၶႃႈ။ ၼႆႉႁွင်ႉဝႃႈ **Dynamic URL** ၶႃႈဢေႃႈ။

---

#### **2. လွၵ်းလၢႆးသၢင်ႈ Dynamic Route**

တွၼ်ႈတႃႇတေႁဵတ်းႁႂ်ႈ URL ႁပ်ႉဢဝ် Variable လႆႈၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ မၢႆၶွပ်ႇ **`< >`** (Angle brackets) တွၼ်ႈတႃႇၵွပ်ႇဝႆႉ ၸိုဝ်ႈ Variable မၼ်းၶႃႈ။ 
ဝၢႆးၼၼ်ႉ ႁဝ်းလူဝ်ႇဢဝ်ၸိုဝ်ႈၼၼ်ႉ မႃးသႂ်ႇၼႂ်း Function ႁဝ်း ၼင်ႇၼႆၶႃႈ -

```python
from flask import Flask

app = Flask(__name__)

@app.route('/user/<username>')
def show_user_profile(username):
    # ဢဝ်ၸိုဝ်ႈ (username) ဢၼ်လႆႈမႃးၼႂ်း URL ၼၼ်ႉ မႃးၸႂ်ႉၼႂ်း Function
    return f"မႂ်ႇသုင်ၶႃႈ User: {username}"

if __name__ == '__main__':
    app.run(debug=True)

```

**လွင်ႈႁဵတ်းၵၢၼ်မၼ်း:** * ပေႃးၵူၼ်းၶဝ်ႈမႃး `http://127.0.0.1:5000/user/SaiLeng` ၼႆ၊ မၼ်းတေဢွၵ်ႇမႃးဝႃႈ **"မႂ်ႇသုင်ၶႃႈ User: SaiLeng"**။

* URL ၼႆႉ မၼ်းတေလႅၵ်ႈလၢႆႈပၼ်ႁင်းၵူၺ်းမၼ်း ၸွမ်းၼင်ႇၶေႃႈၵႂၢမ်း ဢၼ်ၵူၼ်းတႅမ်ႈသႂ်ႇ ၽၢႆႇလင် `/user/` ၼၼ်ႉၶႃႈ။

---

#### **3. Converters (လွင်ႈမၵ်းမၼ်ႈ မဵဝ်းၶေႃႈမုၼ်း / Data Types)**

ပေႃးႁဝ်းဢမ်ႇမၵ်းမၼ်ႈသင်ၼႆ Flask တေမၵ်းမၼ်ႈဝႃႈ Variable ဢၼ်လႆႈမႃးၼၼ်ႉ ပဵၼ် **String** (လိၵ်ႈ) တႃႇသေႇၶႃႈ။
ၵူၺ်းၵႃႈ ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈလႆႈဝႃႈ ႁဝ်းၶႂ်ႈလႆႈ မၢႆၼပ်ႉ (Number) ဢမ်ႇၼၼ် တၢင်ႇမဵဝ်းၶႃႈ။ Flask မီး Converters ၼင်ႇၼႆ -

* `string`: (Default) ႁပ်ႉဢဝ်လိၵ်ႈ (ဢမ်ႇပႃး မၢႆ `/`)
* `int`: ႁပ်ႉဢဝ်မၢႆၼပ်ႉ (Integers) ၵူၺ်း
* `float`: ႁပ်ႉဢဝ်မၢႆၼပ်ႉၸုတ်ႇ (Decimals)
* `path`: မိူၼ် `string` ၵူၺ်းၵႃႈ ႁပ်ႉဢဝ်ပႃး မၢႆ `/` လႆႈ (လီတွၼ်ႈတႃႇသဵၼ်ႈတၢင်း Folder/File)

**တူဝ်ယၢင်ႇ လွင်ႈၸႂ်ႉ Converters:**

```python
# 1. ႁပ်ႉဢဝ် မၢႆၼပ်ႉ (Integer) ၵူၺ်း
@app.route('/post/<int:post_id>')
def show_post(post_id):
    # post_id ၼႆႉ တေပဵၼ်မဵဝ်း Integer (ဢမ်ႇၸႂ်ႈ String)
    return f"တိုၵ်ႉလူဢၢၼ်ႇ Post မၢႆ: {post_id}"

# 2. ႁပ်ႉဢဝ် မၢႆၼပ်ႉၸုတ်ႇ (Float)
@app.route('/price/<float:item_price>')
def show_price(item_price):
    return f"ၵႃႈၶၼ်မၼ်းပဵၼ်: ${item_price}"

# 3. ႁပ်ႉဢဝ် Path (ဢၼ်ပႃးမၢႆ / )
@app.route('/download/<path:file_path>')
def download_file(file_path):
    return f"တိုၵ်ႉ Download ၾၢႆႇဢၼ်မီးတီႈ: {file_path}"

```

**လွင်ႈလၢၵ်ႇလၢႆး ဢၼ်လီတွင်း:**
ပေႃးႁဝ်းမၵ်းမၼ်ႈဝႃႈ `<int:post_id>` သေလႄႈ ၵူၼ်းၸႂ်ႉ သမ်ႉၵႂႃႇတႅမ်ႈ URL ပဵၼ်လိၵ်ႈ မိူၼ်ၼင်ႇ `/post/hello` ၼႆ၊ Flask တေဢမ်ႇ Run Function ၼၼ်ႉသေ မၼ်းတေဢွၵ်ႇ **Error 404 (Not Found)** ၵမ်းသိုဝ်ႈၶႃႈ။ 
ၼႆႉမၼ်းၸွႆႈႁႄႉၵင်ႈပၼ် ဢမ်ႇႁႂ်ႈ Code ႁဝ်း Error ယွၼ်ႉမဵဝ်းၶေႃႈမုၼ်း (Data Type) ၽိတ်းပိူင်ႈၶႃႈဢေႃႈ။