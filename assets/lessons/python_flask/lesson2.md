

## **Module 1: Introduction & Environment Setup**

### **Lesson 2: Python Environment Mastery (လွင်ႈသႂ်ႇ Python လႄႈ ၵႅမ် Environment)**

#### **1. လွင်ႈသႂ်ႇ (Install) Python**

Flask ၼႆႉ ပဵၼ် Framework တွၼ်ႈတႃႇ Python ၶႃႈလႄႈ ႁဝ်းလူဝ်ႇလႆႈမီး Python ၼႂ်းၶွမ်း (Computer) ႁဝ်းဢွၼ်တၢင်းၶႃႈ။

* ၵႂႃႇတီႈ Website ၶွင် [python.org/downloads](https://www.python.org/downloads/) သေ ဢဝ် (Download) Python version မႂ်ႇသုတ်းၶႃႈ။
* **လွင်ႈယႂ်ႇသေပိူၼ်ႈ (တွၼ်ႈတႃႇ Windows):** မိူဝ်ႈတိုၵ်ႉ Install ၼၼ်ႉ ၽၢႆႇတႂ်ႈသုတ်း မၼ်းတေမီးပႃးလွၵ်းလဵၵ်ႉလဵၵ်ႉဢၼ်ၼိုင်ႈ ဢၼ်ဝႃႈ **"Add Python to PATH"** ဢမ်ႇၼၼ် **"Add python.exe to PATH"** ၼႆၶႃႈ။ **ယႃႇပေလိုမ်း တိၵ်ႉ (Tick) ✔️ တီႈလွၵ်းၼၼ်ႉၶႃႈၼႃႈ။** ပေႃးလိုမ်းၼႆ မၼ်းတေၸႂ်ႉ command ၼႂ်း Terminal ဢမ်ႇလႆႈၶႃႈ။

**လွင်ႈၵူတ်ႇတူၺ်း (Check):**
ပိုတ်ႇ Terminal (တွၼ်ႈတႃႇ Mac) ဢမ်ႇၼၼ် Command Prompt (တွၼ်ႈတႃႇ Windows) သေ ၸၢမ်းပၼ်ႉတူၺ်း -

```bash
python --version

```

ပေႃးမၼ်းဢွၵ်ႇမႃး မၢႆ (version) မိူၼ်ၼင်ႇ `Python 3.12.2` ၼႆ ပွင်ႇဝႃႈ Install လႆႈလီငၢမ်းယဝ်ႉၶႃႈ။

---

#### **2. Virtual Environment (venv) ပဵၼ်သင် လႄႈ ပဵၼ်သင်လႄႈ လႆႈၸႂ်ႉ?**

မိူဝ်ႈႁဝ်းတႅမ်ႈ Code ၼၼ်ႉ ႁဝ်းဢမ်ႇထုၵ်ႇလီ Install Libraries (မိူၼ်ၼင်ႇ Flask) သႂ်ႇတီႈၼႂ်း Python တူဝ်ယႂ်ႇၶွင်ၶွမ်းႁဝ်းၵမ်းသိုဝ်ႈၶႃႈ။

* **venv** ၼႆႉ မၼ်းပဵၼ် "ႁွင်ႈလွတ်ႈလႅဝ်း" ဢၼ်သၢင်ႈမႃး တွၼ်ႈတႃႇ ပရေႃးၵျႅတ်ႉ (Project) ႁဝ်းဢၼ်လဵဝ်ၵူၺ်းၶႃႈ။
* **လွင်ႈလႆႈၸႂ်ႉ:** ပေႃးႁဝ်းမီး Project 2 ဢၼ် သေလႄႈ ဢၼ်ၼိုင်ႈၸႂ်ႉ Flask version ၵဝ်ႇ၊ ဢၼ်ၼိုင်ႈၸႂ်ႉ version မႂ်ႇၼႆ ပေႃးႁဝ်းဢမ်ႇၸႂ်ႉ venv ၼႆ မၼ်းတေလေႃးၵၼ်သေ ႁဵတ်းႁႂ်ႈ Code ႁဝ်း Error ၶႃႈဢေႃႈ။

---

#### **3. လွင်ႈသၢင်ႈ လႄႈ လွင်ႈပိုတ်ႇၸႂ်ႉ Virtual Environment**

**Step A: သၢင်ႈ Folder တႃႇ Project**
တီႈၼႂ်း Terminal ၼၼ်ႉ သၢင်ႈ Folder မႂ်ႇဢၼ်ၼိုင်ႈ သေ ၶဝ်ႈၵႂႃႇၼႂ်းမၼ်းၶႃႈ။

```bash
mkdir my_flask_app
cd my_flask_app

```

**Step B: သၢင်ႈ venv**
တႅမ်ႈ command ၼႆႉ တႃႇသၢင်ႈ venv ၶႃႈ (မၼ်းတေသၢင်ႈ Folder မႂ်ႇဢၼ်ၼိုင်ႈ ဢၼ်ၸိုဝ်ႈဝႃႈ `venv` မႃးပၼ်ႁဝ်းၶႃႈ)။

```bash
python -m venv venv

```

**Step C: ပိုတ်ႇၸႂ်ႉ (Activate) venv**
တွၼ်ႈတႃႇတေၸႂ်ႉႁွင်ႈလွတ်ႈလႅဝ်းၼႆႉ ႁဝ်းလူဝ်ႇ Activate မၼ်းဢွၼ်တၢင်းၶႃႈ -

* **တွၼ်ႈတႃႇ Windows:**
```cmd
venv\Scripts\activate

```


* **တွၼ်ႈတႃႇ Mac လႄႈ Linux:**
```bash
source venv/bin/activate

```



> *မၢႆတွင်း: ပေႃး Activate လႆႈယဝ်ႉ ၼႃႈ command ႁဝ်းၼၼ်ႉ တေမီးၶေႃႈဝႃႈ `(venv)` ပႃးမႃးတီႈၽၢႆႇၼႃႈမၼ်းၶႃႈ။ ၼႆႉပွင်ႇဝႃႈ ႁဝ်းတိုၵ်ႉမီးၼႂ်း ႁွင်ႈလွတ်ႈလႅဝ်းယဝ်ႉ။*

---

#### **4. လွင်ႈၸႂ်ႉ `pip` သေ Install Flask**

**pip** ၼႆႉ ပဵၼ်တူဝ်ၸတ်းၵၢၼ် Package တႃႇ Python ၶႃႈ (မၼ်းမိူၼ်ၼင်ႇ App Store တႃႇဢဝ် Libraries မႂ်ႇမႂ်ႇ)။
ယၢမ်းလဵဝ် ႁဝ်းမီးၼႂ်း `(venv)` ယဝ်ႉလႄႈ ႁဝ်းၸၢင်ႈ Install Flask လႆႈလွတ်ႈလွတ်ႈလႅဝ်းလႅဝ်းယဝ်ႉၶႃႈ။

```bash
pip install Flask

```

---