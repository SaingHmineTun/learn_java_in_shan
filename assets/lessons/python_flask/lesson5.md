

## **Module 1: Introduction & Environment Setup**

### **Lesson 5: Running the Server (လွင်ႈ Run Server လႄႈ Debug Mode)**

မိူဝ်ႈႁဝ်း Run Server ၼၼ်ႉ မၼ်းမီးလွင်ႈတေလႆႈပွင်ႇၸႂ် လႄႈ လွၵ်းလၢႆးၵၢၼ်ၸတ်းၵၢၼ်မၼ်း ၼင်ႇၼႆၶႃႈ။

#### **1. Development Server လႄႈ Production Server**

* **Development Server (Server တႃႇတႅမ်ႈ Code):** ပဵၼ် Server ဢၼ်ပႃးမႃးၸွမ်း Flask တွၼ်ႈတႃႇႁဝ်းၸႂ်ႉမိူဝ်ႈတိုၵ်ႉတႅမ်ႈ Code ယူႇၼၼ်ႉၶႃႈ။ မၼ်းသၢင်ႈမႃး ႁႂ်ႈငၢႆႈတွၼ်ႈတႃႇ လွင်ႈၵူတ်ႇထတ်း Code (Testing) ၵူၺ်း။ မၼ်းဢမ်ႇၶႅင်ႁႅင်း တႃႇတေၶၢမ်ႇလႆႈၵူၼ်းၶဝ်ႈတူၺ်း ၼပ်ႉႁူဝ်သႅၼ်။
* **Production Server (Server တူဝ်မၢၼ်ႇမႅၼ်ႈ):** ပဵၼ် Server ဢၼ်မီးလွင်ႈႁႄႉၵင်ႈ (Security) သုင် လႄႈ ၶႅင်ႁႅင်း (မိူၼ်ၼင်ႇ Gunicorn, Nginx)။ ႁဝ်းတေၸႂ်ႉမၼ်း မိူဝ်ႈဢဝ် App ႁဝ်း ၶိုၼ်ႈၼိူဝ် Internet ႁႂ်ႈၵူၼ်းတင်းမိူင်းၶဝ်ႈၸႂ်ႉၶႃႈ။

---

#### **2. Debug Mode ၼႆႉ ပဵၼ်သင် လႄႈ လွင်ႈလီမၼ်း**

မိူဝ်ႈႁဝ်းတိုၵ်ႉ Develop App ယူႇၼၼ်ႉ ႁဝ်းထုၵ်ႇလီပိုတ်ႇ **Debug Mode** ဝႆႉတႃႇသေႇၶႃႈ။ မၼ်းမီးၼႃႈၵၢၼ်လွင်ႈယႂ်ႇ 2 ဢၼ် ၼင်ႇၼႆ -

* **Live Reloading (Auto-restart):** ပေႃးႁဝ်းမႄး Code သေ ၼဵၵ်း Save ပႅတ်ႈၼၼ်ႉ Server တေၵူတ်ႇႁၼ် လွင်ႈလႅၵ်ႈလၢႆႊသေ တေ Restart ပၼ်ႁင်းၵူၺ်းမၼ်းၵမ်းသိုဝ်ႈ။ ႁဝ်းဢမ်ႇတၢပ်ႈလူဝ်ႇၵႂႃႇၼဵၵ်း `Ctrl + C` သေ ၶိုၼ်းတႅမ်ႈ `python app.py` မႂ်ႇလၢႆလၢႆၵမ်းၶႃႈ။
* **Interactive Debugger:** ပေႃး Code ႁဝ်းမီး Error ၼႂ်းၶၢဝ်းယၢမ်း Run ယူႇၼၼ်ႉ၊ မၼ်းတေဢမ်ႇပိုတ်ႇၼႃႈလိၵ်ႈပဝ်ႇ (Blank Page)။ မၼ်းတေၼႄပၼ် သၢႆလၢႆး Error (Traceback) တီႈၼႃႈ Web Browser ႁဝ်းၵမ်းသိုဝ်ႈ သေ ပၼ်သုၼ်ႇႁႂ်ႈႁဝ်းၵူတ်ႇထတ်းတူၺ်း Code လႆႈလွတ်ႈလွတ်ႈလႅဝ်းလႅဝ်းၶႃႈ။

---

#### **3. လွင်ႈပိုတ်ႇၸႂ်ႉ Debug Mode**

ႁဝ်းပိုတ်ႇၸႂ်ႉလႆႈ 2 လွၵ်းလၢႆး ၸိူင်ႉၼင်ႇႁဝ်းႁဵၼ်းမႃးၶႃႈ -

* **လွၵ်းလၢႆး Python:** တႅမ်ႈ `app.run(debug=True)` ၼႂ်း Code သေ Run ၸႂ်ႉ `python app.py`။
* **လွၵ်းလၢႆး Flask CLI:** ၸႂ်ႉ Command `flask --app app run --debug` တီႈ Terminal။

---