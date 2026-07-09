

## **Module 1: Introduction & Environment Setup**

### **Lesson 1: What is Flask? (Flask ပဵၼ်သင်?)**

**Flask ၼႆႉ ပဵၼ်သင်?**
**Flask** ၼႆႉ ပဵၼ် Web Framework တွၼ်ႈတႃႇ ၽႃႇသႃႇ **Python** ၶႃႈဢေႃႈ။ မၼ်းပဵၼ် framework ဢၼ်လဵၵ်ႉလႄႈ မဝ် (lightweight) ဢၼ်ပၼ်သုၼ်ႇလႆႈ ႁႂ်ႈၽူႈတႅမ်ႈ code ၶဝ် သၢင်ႈ web applications လႆႈငၢႆႈလႄႈ ဝႆးၶႃႈ။

**Microframework ဢၼ်ဝႃႈၼႆႉ ပဵၼ်သင်?**
Flask ၼႆႉ ထုၵ်ႇႁွင်ႉဝႃႈ **"Microframework"** ၶႃႈ။ ယွၼ်ႉပိူဝ်ႈသင်လႃႇ?

* မၼ်းဢမ်ႇမီးဝႆႉထႃႈ tools ဢမ်ႇၼၼ် libraries ဢၼ်ယႂ်ႇၼမ် မိူၼ်ၼင်ႇ Database ဢမ်ႇၼၼ် Form Validation ပႃးမႃးၸွမ်းမိူဝ်ႈတႄႇမၼ်း။
* ၶေႃႈၵႂၢမ်းဝႃႈ "Micro" ၼႆႉ ဢမ်ႇလႆႈပွင်ႇဝႃႈ မၼ်းႁဵတ်းလႆႈ web လဵၵ်ႉလဵၵ်ႉၵူၺ်း။ မၼ်းပွင်ႇဝႃႈ ၵႅၼ်ၵၢင် (core) မၼ်းၼႆႉ လဵၵ်ႉလႄႈ ငၢႆႈ၊ သင်ႁဝ်းလူဝ်ႇၸႂ်ႉသင်ထႅင်ႈၼႆ ၸင်ႇၵွႆးဢဝ် libraries တၢင်ႇဢၼ်မႃးသႂ်ႇ (install) ထႅင်ႈၶႃႈ။

---

**လွင်ႈပႅၵ်ႇပိူင်ႈၵၼ် Flask လႄႈ Django**
တီႈၼႂ်း Python ၼႆႉ Framework ဢၼ်ၸိုဝ်ႈသဵင်ယႂ်ႇ တႃႇႁဵတ်း Web မီး 2 ဢၼ် - **Flask** လႄႈ **Django** ၶႃႈ။

* **Django:** ပဵၼ် framework ဢၼ်မီးဝႆႉထႃႈတင်းမူတ်း (Batteries-included) ၶႃႈ။ မၼ်းမီးပႃး Database, Admin Panel, လႄႈ Authentication တင်းမူတ်း။ မၼ်းလီတွၼ်ႈတႃႇ ပရေႃးၵျႅတ်ႉ (Projects) ဢၼ်ယႂ်ႇတႄႉတႄႉ။
* **Flask:** ပဵၼ် framework ဢၼ်မဝ်လႄႈ လွတ်ႈလႅဝ်း (Flexible) ၶႃႈ။ ႁဝ်းၶႂ်ႈၸႂ်ႉ Database မဵဝ်းလႂ်၊ ၶႂ်ႈၸႂ်ႉပိူင်သၢင်ႈ (Structure) ၸိူင်ႉႁိုဝ်ၵေႃႈ ႁဝ်းလိူၵ်ႈလႆႈႁင်းၵူၺ်း။ မၼ်းလီတွၼ်ႈတႃႇ ပရေႃးၵျႅတ်ႉဢၼ်လဵၵ်ႉ၊ လွင်ႈႁဵၼ်းႁူႉမႂ်ႇ၊ ဢမ်ႇၼၼ် လွင်ႈသၢင်ႈ **REST APIs** ၶႃႈဢေႃႈ။

---

**Core Dependencies (ပိုၼ်ႉထၢၼ်ဢၼ် Flask ၸႂ်ႉဝႆႉ)**
မိူဝ်ႈႁဝ်း install Flask ၼၼ်ႉ မၼ်းတေ install ပႃး libraries ဢၼ်လွင်ႈယႂ်ႇ 2 ဢၼ် ဢၼ်ပဵၼ်ပိုၼ်ႉထၢၼ်မၼ်းၶႃႈ -

1. **WSGI လႄႈ Werkzeug:**
* **WSGI** (Web Server Gateway Interface) ၼႆႉ ပဵၼ်လွၵ်းလၢႆး ဢၼ်ႁဵတ်းႁႂ်ႈ Python App လႄႈ Web Server ၵပ်းသိုပ်ႇၵၼ်လႆႈ။
* **Werkzeug** ၼႆႉ ပဵၼ် WSGI toolkit ဢၼ်ၸွႆႈၵႄႈလိတ်ႈလွင်ႈ Request (လွင်ႈယွၼ်း) လႄႈ Response (လွင်ႈတွပ်ႇ) တီႈၼႂ်း Flask ၶႃႈ။


2. **Jinja2:**
* မၼ်းပဵၼ် Template Engine ၶႃႈ။ မၼ်းၸွႆႈႁႂ်ႈႁဝ်း ဢဝ် code Python သႂ်ႇၶဝ်ႈၵႂႃႇၼႂ်း ၼႃႈလိၵ်ႈ **HTML** လႆႈငၢႆႈငၢႆႈ (တူဝ်ယၢင်ႇ - လွင်ႈသႂ်ႇၸိုဝ်ႈ user ၼႂ်းၼႃႈ web)။