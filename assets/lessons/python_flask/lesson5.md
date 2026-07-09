

## **Module 1: Introduction & Environment Setup**

### **Lesson 5: Installing PyCharm Community Edition (လွင်ႈသႂ်ႇ PyCharm တွၼ်ႈတႃႇတႅမ်ႈ Code)**

#### **1. PyCharm ၼႆႉ ပဵၼ်သင် လႄႈ ပဵၼ်သင်လႆႈၸႂ်ႉမၼ်း?**

* **PyCharm** ၼႆႉ ပဵၼ် IDE (Integrated Development Environment) ဢၼ် ၶွမ်ႇပၼီႇ JetBrains ၶဝ် သၢင်ႈဝႆႉ တွၼ်ႈတႃႇတႅမ်ႈ ၽႃႇသႃႇ Python ၵမ်းသိုဝ်ႈၶႃႈ။
* မၼ်းလီသေ လွင်ႈတႅမ်ႈ Code ၼႂ်း Text Editor ထမ်ႇမတႃႇ (မိူၼ်ၼင်ႇ Notepad) ယွၼ်ႉပိူဝ်ႈဝႃႈ မၼ်းမီးလွင်ႈၸွႆႈထႅမ်တင်းၼမ် -
* **Code Completion:** မၼ်းႁူႉလွင်ႈဝႃႈ ႁဝ်းတိုၵ်ႉတႅမ်ႈသင်ယူႇ သေလႄႈ မၼ်းတေၸွႆႈတႅမ်ႈ Code သိုပ်ႇပၼ်ႁဝ်း ႁႂ်ႈဝႆးၶိုၼ်ႈၶႃႈ။
* **Error Highlighting:** ပေႃးႁဝ်းတႅမ်ႈ Code ၽိတ်း မၼ်းတေၶိတ်ႇထႅဝ် သီလႅင် ၼႄပၼ်ၵမ်းသိုဝ်ႈ ႁႂ်ႈႁဝ်းႁူႉလႆႈငၢႆႈငၢႆႈ။
* **Built-in Terminal:** မၼ်းမီး Terminal ၼႂ်းတူဝ်မၼ်းလႄႈ ႁဝ်းဢမ်ႇတၢပ်ႈလူဝ်ႇပိုတ်ႇ Terminal ၽၢႆႇၼွၵ်ႈ လၢႆလၢႆဢၼ်ၶႃႈ။



---

#### **2. လွၵ်းလၢႆး Download လႄႈ Install**

PyCharm ၼႆႉ မၼ်းမီး 2 မဵဝ်းၶႃႈ - Professional (လႆႈပၼ်ငိုၼ်း) လႄႈ Community (လၢႆ/Free)။ တွၼ်ႈတႃႇႁဵတ်း Flask ၼႆႉ ၸႂ်ႉ Community Edition ၵေႃႈ ၵုမ်ႇထူၼ်ႈလီငၢမ်းယဝ်ႉၶႃႈ။

1. ၵႂႃႇတီႈ Website ၶွင် JetBrains: [https://www.jetbrains.com/pycharm/download/](https://www.jetbrains.com/pycharm/download/)
2. လိူၵ်ႈဢဝ် **PyCharm Community Edition** သေ ၼဵၵ်း Download ၶႃႈ။ (တွၼ်ႈတႃႇ Windows ဢမ်ႇၼၼ် Mac တေဢွၵ်ႇမႃးႁင်းၵူၺ်းမၼ်း)။
3. ပေႃး Download ယဝ်ႉ ပိုတ်ႇၾၢႆႇၼၼ်ႉသေ Install သႂ်ႇၼႂ်းၶွမ်းၶႃႈ။
* *မၢႆတွင်း တွၼ်ႈတႃႇ Windows:* မိူဝ်ႈတိုၵ်ႉ Install ၼၼ်ႉ ပေႃးမၼ်းမီးပၼ် လွၵ်းတႃႇတိၵ်ႉ (Tick Options) ဢၼ်ဝႃႈ **"Add 'bin' folder to the PATH"** လႄႈ **"Create Desktop Shortcut"** ၼႆ တိၵ်ႉ (✔️) ပၼ်မၼ်းပႃးၶႃႈၼႃႈ။



---

#### **3. လွင်ႈပိုတ်ႇ Project Flask ႁဝ်း ၼႂ်း PyCharm**

ယၢမ်းလဵဝ် ႁဝ်းတေဢဝ် Project ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼႂ်း Lesson 1.2 ၼၼ်ႉ မႃးပိုတ်ႇၼႂ်း PyCharm ၶႃႈ။

1. ပိုတ်ႇ PyCharm ၶိုၼ်ႈမႃးၶႃႈ။
2. ၼဵၵ်းပၼ်ပုမ်ႇ **"Open"** (ဢမ်ႇၼၼ် File > Open)။
3. ၵႂႃႇသွၵ်ႈႁႃ Folder `my_flask_app` ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉ သေ ၼဵၵ်း OK ၶႃႈ။
4. PyCharm တေပိုတ်ႇ Folder ၼၼ်ႉမႃး ပဵၼ် Project ဢၼ်ၼိုင်ႈၶႃႈ။ တီႈၽၢႆႇသၢႆႉ (Project Explorer) ၼၼ်ႉ ႁဝ်းတေလႆႈႁၼ် ၾၢႆႇ `app.py` လႄႈ Folder `venv` ၶႃႈ။

---

#### **4. လွင်ႈၵၢႆႇၸၢပ်ႈ Virtual Environment (Configuring the Interpreter)**

လွင်ႈၼႆႉ လွင်ႈယႂ်ႇတႄႉတႄႉၶႃႈ! ႁဝ်းလူဝ်ႇလႆႈမွၵ်ႇ PyCharm ႁႂ်ႈမၼ်းႁူႉဝႃႈ ႁဝ်းၶႂ်ႈၸႂ်ႉ `venv` ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉၶႃႈ (ဢမ်ႇၸႂ်ႉ Python တူဝ်ယႂ်ႇၶွင်ၶွမ်း)။

1. ၵႂႃႇတီႈ ၸဵင်ႇတႂ်ႈ ၽၢႆႇၶႂႃႇ (Bottom Right Corner) ၶွင် PyCharm ၼၼ်ႉၶႃႈ။ မၼ်းတေမီး ၶေႃႈၵႂၢမ်းဝႃႈ `<No Interpreter>` ဢမ်ႇၼၼ် ၸိုဝ်ႈ Python Version (တူဝ်ယၢင်ႇ: `Python 3.12`) မီးဝႆႉၶႃႈ။
2. ၼဵၵ်းတီႈၼၼ်ႉ သေ လိူၵ်ႈ **"Add New Interpreter" -> "Add Local Interpreter..."**
3. လိူၵ်ႈဢဝ် **"Existing Environment"** (ယွၼ်ႉႁဝ်းသၢင်ႈဝႆႉယဝ်ႉလႄႈ ဢမ်ႇလူဝ်ႇသၢင်ႈမႂ်ႇ)။
4. တီႈလွၵ်း "Interpreter:" ၼၼ်ႉ ၼဵၵ်းပၼ် မၢႆ 3 ၸမ်ႈ (`...`) သေ ၵႂႃႇသွၵ်ႈႁႃၾၢႆႇ `python.exe` ၶႃႈ။
* **တွၼ်ႈတႃႇ Windows:** ၵႂႃႇတီႈ `my_flask_app\venv\Scripts\python.exe`
* **တွၼ်ႈတႃႇ Mac:** ၵႂႃႇတီႈ `my_flask_app/venv/bin/python`


5. ၼဵၵ်း OK ယဝ်ႉၵေႃႈ OK ထႅင်ႈၵမ်းၼိုင်ႈၶႃႈ။

---

#### **5. လွင်ႈ Run App ၼႂ်း PyCharm**

ယၢမ်းလဵဝ် PyCharm ႁဝ်း ႁူႉၸၵ်း Flask ဢၼ်မီးၼႂ်း `venv` ယဝ်ႉ။

* ပိုတ်ႇၾၢႆႇ `app.py` ၶႃႈ။
* ႁဝ်းတေလႆႈႁၼ် သၢမ်ၸဵင်ႇ သီၶဵဝ် (Play Button) 🟢 မီးဝႆႉတီႈ ၽၢႆႇၶၢင်ႈ Code `if __name__ == '__main__':` ဢမ်ႇၼၼ် တီႈၽၢႆႇၼိူဝ် သုတ်းၶႃႈ။
* ၼဵၵ်းပၼ်ပုမ်ႇ သီၶဵဝ်ၼၼ်ႉ တႃႇ Run (ဢမ်ႇၼၼ် ၼဵၵ်း Right-click ၼႂ်းၾၢႆႇ သေ လိူၵ်ႈ `Run 'app'`)။
* ၽၢႆႇတႂ်ႈ (Run Tool Window) မၼ်းတေဢွၵ်ႇမႃး ၶေႃႈၵႂၢမ်းဝႃႈ `Running on http://127.0.0.1:5000` ။ ႁဝ်းၸၢင်ႈၼဵၵ်း လိင်ႉၶ် (Link) ၼၼ်ႉသေ ပိုတ်ႇတူၺ်းၼႂ်း Browser လႆႈၵမ်းသိုဝ်ႈၶႃႈ!