## **Module 4: Distributed Collaboration**
### **Lesson 34: Managing 'Upstream' Remotes (ၵၢၼ်ၵွင်ႉၸူး Project လူင်)**

ၼႂ်း Git ၼၼ်ႉ ႁဝ်းၸၢင်ႈမီး **Remote** လၢႆလၢႆဢၼ်ၶႃႈ။ မိူဝ်ႈႁဝ်းႁဵတ်းၵၢၼ် Fork ၼၼ်ႉ ႁဝ်းတေမီး 2 ဢၼ်ၼႆႉၶႃႈ:

#### **1. origin vs upstream (ပႅၵ်ႇၵၼ်ႁိုဝ်?)**
* **`origin`**: ပဵၼ် Repository ၶွင် **"တူဝ်ႁဝ်း"** (Your Fork) တီႈ GitHub။ ႁဝ်းမီးသုၼ်ႇ `push` လႄႈ `pull` လႆႈၵူႈၶၢဝ်း။
* **`upstream`**: ပဵၼ် Repository **"လူင် (Original)"** ဢၼ်ႁဝ်း Fork မႃး။ ႁဝ်းမီးသုၼ်ႇ `pull` (လူတ်ႇဢဝ်) Code မႂ်ႇမႂ်ႇၶဝ်မႃး၊ ၵူၺ်းၵႃႈ ဢမ်ႇၸၢင်ႈ `push` ၶဝ်ႈၵႂႃႇလႆႈၵမ်းလဵဝ်ၶႃႈ။



#### **2. လၢႆးၵွင်ႉၸူး Upstream (Usage)**
မိူဝ်ႈႁဝ်း Clone Project မႃးယဝ်ႉၼၼ်ႉ Git တေမီးပၼ် `origin` ၵူၺ်းၶႃႈ။ ႁဝ်းတေလႆႈထႅမ်သႂ်ႇ `upstream` ႁင်းၵူၺ်းၼင်ႇၼႆ:

`git remote add upstream https://github.com/OriginalOwner/project-name.git`

#### **3. ၵူတ်ႇထတ်းတူၺ်းၶိုၼ်း (Verify)**
တႅမ်ႈ Command ၼႆႉ တႃႇတူၺ်းဝႃႈ ႁဝ်းၵွင်ႉၸူး 2 တီႈယဝ်ႉႁႃႉ?
`git remote -v`

* **မၼ်းတေၼႄၼင်ႇၼႆ:**
    * `origin` -> `https://github.com/SaiMao/project.git` (Account ႁဝ်း)
    * `upstream` -> `https://github.com/OriginalOwner/project.git` (Original)

#### **4. တၢင်းလီၶွင်ၵၢၼ်မီး Upstream**
1. **Syncing:** ၸွႆႈႁႂ်ႈႁဝ်း "Update" Code ႁဝ်း ႁႂ်ႈမႂ်ႇမိူၼ်ၼင်ႇ Project လူင်ၼၼ်ႉလႆႈ (Lesson 35)။
2. **Review:** ၸၢင်ႈ `fetch` Code ဢၼ်တၢင်ႇၵေႃႉ တႅမ်ႈဝႆႉၼႂ်း Project လူင်ၼၼ်ႉ မႃးတူၺ်းၼႂ်းၶိူင်ႈႁဝ်းလႆႈငၢႆႈငၢႆႈ။

#### **ႁူဝ်ႁုပ်ႈ (Summary)**
ၵၢၼ်မီး **Upstream Remote** ၼႆႉ မၼ်းႁဵတ်းႁႂ်ႈ Fork ႁဝ်း ဢမ်ႇတူၵ်းလိုၼ်း (Outdated) လႄႈ ၸွႆႈႁႂ်ႈႁဝ်း ၸၢင်ႈႁဵတ်းၵၢၼ်ၸွမ်း Open Source လႆႈႁိုင်ႁိုင် ၼၼ်ႉၶႃႈဢေႃႈ။

---