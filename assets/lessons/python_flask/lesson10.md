

## **Module 2: Routing and Request Handling**

### **Lesson 10: The Request Object (Query Parameters)**

#### **1. Query Parameters ၼႆႉ ပဵၼ်သင်?**

မိူဝ်ႈႁဝ်းၸႂ်ႉ Web ၼၼ်ႉ ႁဝ်းၵႆႉလႆႈႁၼ် URL ဢၼ်ယၢဝ်းယၢဝ်း သေလႄႈ မီးမၢႆထၢမ် `?` ပႃးဝႆႉ ၽၢႆႇလင်ၼၼ်ႉၶႃႈ။
တူဝ်ယၢင်ႇမၼ်း: `http://example.com/search?keyword=flask&page=2`

* လိၵ်ႈဢၼ်မီးၽၢႆႇလင် `?` ၼၼ်ႉ ႁွင်ႉဝႃႈ **Query String** ၶႃႈ။
* မၼ်းပဵၼ် လွၵ်းလၢႆးသူင်ႇၶေႃႈမုၼ်း (Data) ၵႂႃႇၸူး Server ၸွမ်း URL ၵမ်းသိုဝ်ႈ။
* မၼ်းတေမီးၵူပ်ႉၵၼ်ပဵၼ် **Key=Value** (ၸိုဝ်ႈ=ၵႃႈၶၼ်) သေ ပေႃးမီးလၢႆဢၼ် ႁဝ်းတေၸႂ်ႉ မၢႆ `&` သေ ၶႅၼ်ႈၵၢင်မၼ်းၶႃႈ။ (တူဝ်ယၢင်ႇ: `keyword=flask` လႄႈ `page=2`)။

#### **2. လွင်ႈလႆႈၸႂ်ႉမၼ်း**

Query Parameters ၼႆႉ ၵမ်ႉပႃႈၼမ် ၸႂ်ႉတွၼ်ႈတႃႇ:

* **လွင်ႈသွၵ်ႈႁႃ (Searching):** မိူၼ်ၼင်ႇ သွၵ်ႈႁႃပပ်ႉၼႂ်းလၢၼ်ႉ။
* **လွင်ႈထွင် (Filtering):** လိူၵ်ႈတူၺ်း ၶူဝ်းၶွင် ဢၼ်မီးသီလႅင်ၵူၺ်း (`?color=red`)။
* **လွင်ႈၸႅၵ်ႇၼႃႈလိၵ်ႈ (Pagination):** ၵႂႃႇၸူးၼႃႈလိၵ်ႈ မၢႆ 2 ဢမ်ႇၼၼ် 3 (`?page=2`)။

---

#### **3. လွၵ်းလၢႆးႁပ်ႉဢဝ် Query Parameters ၼႂ်း Flask**

ၼႂ်း Flask ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Object ဢၼ်ၸိုဝ်ႈဝႃႈ `request.args` တွၼ်ႈတႃႇဢဝ်ၶေႃႈမုၼ်း ၸိူဝ်းၼႆႉၶႃႈ။ 
`args` ၼႆႉ မၼ်းႁဵတ်းၵၢၼ်မိူၼ် Dictionary ၼႂ်း Python ၵမ်းသိုဝ်ႈ။

**တူဝ်ယၢင်ႇ Code:**

```python
from flask import Flask, request

app = Flask(__name__)

@app.route('/search')
def search():
    # ႁပ်ႉဢဝ်ၵႃႈၶၼ် 'keyword' တီႈ URL
    search_word = request.args.get('keyword')
    
    # ႁပ်ႉဢဝ်ၵႃႈၶၼ် 'page' တီႈ URL
    page_number = request.args.get('page')
    
    if search_word:
        return f"တိုၵ်ႉသွၵ်ႈႁႃ: {search_word} (ၼႃႈလိၵ်ႈမၢႆ: {page_number})"
    else:
        return "ၶႅၼ်းတေႃႈ သႂ်ႇၶေႃႈမုၼ်း တႃႇသွၵ်ႈႁႃၶႃႈ (?keyword=...)"

if __name__ == '__main__':
    app.run(debug=True)

```

---

#### **4. လွင်ႈၸႂ်ႉ Default Values လႄႈ Type Casting (လွင်ႈမၵ်းမၼ်ႈ ၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်)**

သင်ဝႃႈ ၵူၼ်းၸႂ်ႉ ဢမ်ႇလႆႈသႂ်ႇ Query Parameter ၼၼ်ႉမႃးၼႆ `request.args.get()` တေဢွၵ်ႇမႃးပဵၼ် `None` ၶႃႈ။ 
တွၼ်ႈတႃႇႁႄႉၵင်ႈ Error ႁဝ်းၸၢင်ႈသႂ်ႇ ၵႃႈၶၼ်ပိုၼ်ႉထၢၼ် (Default) လႄႈ လႅၵ်ႈလၢႆႈမဵဝ်းၶေႃႈမုၼ်း (Type) လႆႈၵမ်းသိုဝ်ႈ။

```python
@app.route('/products')
def products():
    # သင်ဝႃႈ ဢမ်ႇမီး 'page' သူင်ႇမႃး, ႁႂ်ႈမၼ်းပဵၼ် 1 (Default) ลႄႈ မၵ်းမၼ်ႈပဵၼ်မဵဝ်း Integer
    page = request.args.get('page', 1, type=int)
    
    # သင်ဝႃႈ ဢမ်ႇမီး 'sort' သူင်ႇမႃး, ႁႂ်ႈမၼ်းပဵၼ် 'newest'
    sort_by = request.args.get('sort', 'newest')
    
    return f"ၼႄပၼ်ၶူဝ်းၶွင် ၼႃႈလိၵ်ႈ {page}, ၸႅၵ်ႇၸွမ်း {sort_by}"

```

* **လွင်ႈလီမၼ်း:** လွၵ်းလၢႆးၼႆႉ မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်း ပွတ်းလူင်း လႄႈ မီးလွင်ႈႁႄႉၵင်ႈ Error လႆႈလီတႄႉတႄႉၶႃႈ။

---