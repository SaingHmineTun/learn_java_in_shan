## **Module 3: Remote Connectivity**
### **Lesson 22: Authentication (လၢႆးၵူတ်ႇထတ်းတူဝ်ၵဝ်ႇ)**

မိူဝ်ႈၼၼ်ႉ ႁဝ်းတေႃႉတႄႉတႅမ်ႈ Password ၶွင် GitHub ႁဝ်းၵေႃႈလႆႈယဝ်ႉ။ 
ၵူၺ်းၵႃႈ ပၢၼ်မိူဝ်ႈလဵဝ် GitHub ဢမ်ႇပၼ်ၸႂ်ႉ Password တႅမ်ႈၼႂ်း Terminal ယဝ်ႉ။ ႁဝ်းတေလႆႈၸႂ်ႉ 2 လၢႆးၼႆႉၶႃႈ:

#### **1. Personal Access Tokens (PAT)**
ၼႆႉပဵၼ်လၢႆးဢၼ်ငၢႆႈသုတ်း တႃႇလုၵ်ႈႁဵၼ်းမႂ်ႇၶႃႈ။ မၼ်းမိူၼ်ၼင်ႇ **"Password ၸူဝ်ႈၶၢဝ်း"** ဢၼ်ႁဝ်းသၢင်ႈဢွၵ်ႇမႃး တႃႇၸႂ်ႉၼႂ်း Computer ႁဝ်းၵူၺ်း။
* **လၢႆးသၢင်ႈ:** ၵႂႃႇတီႈ GitHub > Settings > Developer Settings > **Personal access tokens** > Tokens (classic)။
* **Permissions:** လိူၵ်ႈဢဝ် `repo` (တႃႇသူင်ႇ Code)။
* **Usage:** မိူဝ်ႈ Git ထၢမ် Password ၼႂ်း Terminal ၼၼ်ႉ ႁဝ်းဢဝ် Token ဢၼ်ယၢဝ်းယၢဝ်းၼၼ်ႉ "Paste" သႂ်ႇတႅၼ်းတၢင် Password ႁဝ်းၶႃႈယဝ်ႉ။



#### **2. SSH Keys (Secure Shell)**
ၼႆႉပဵၼ်လၢႆးဢၼ် **Professional** ၶဝ်ၸႂ်ႉၼမ်သုတ်း။ မၼ်းမိူၼ်ၼင်ႇႁဝ်းမီး **"သေႃး (Private Key)"** ဝႆႉၼႂ်းၶိူင်ႈႁဝ်း လႄႈ ဢဝ် **"မၢၵ်ႇသေႃး (Public Key)"** ၵႂႃႇၾၢၵ်ႇဝႆႉတီႈ GitHub။
* **တၢင်းလီ:** ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Password ဢမ်ႇၼၼ် Token ၵူႈပွၵ်ႈ ဢၼ်ႁဝ်းသူင်ႇ Code။
* **လၢႆးႁဵတ်း:**
    1. သၢင်ႈ Key ၼႂ်း Terminal: `ssh-keygen -t ed25519 -C "your_email@example.com"`
    2. ဢဝ် Public Key (ၼႂ်း file `.pub`) ၵႂႃႇ Copy သေ "Add" သႂ်ႇၼႂ်း GitHub Settings > **SSH and GPG keys**။



#### **3. ႁဝ်းထုၵ်ႇလီလိူၵ်ႈဢၼ်လႂ်?**
* **တႃႇတႄႇႁဵၼ်း (Beginner):** ၸႂ်ႉ **Token (PAT)** ၵွပ်ႈမၼ်းငၢႆႈ လႄႈ ဢမ်ႇလူဝ်ႇ Setup ယုင်ႈယၢင်ႈ။
* **တႃႇတႅမ်ႈ Code ၵူႈဝၼ်း (Professional):** ၸႂ်ႉ **SSH** ၵွပ်ႈမၼ်းဝႆး လႄႈ ၵတ်းယဵၼ်သေ ဢမ်ႇလူဝ်ႇ Copy Token ၵူႈပွၵ်ႈၶႃႈ။

#### **ႁူဝ်ႁုပ်ႈ (Summary)**
**Authentication** ၼႆႉ ပဵၼ်ၵၢၼ် "ၼႄဝႂ်ၶႅပ်း" ပၼ် GitHub။ သင်ႁဝ်းဢမ်ႇ Setup လၢႆးၼႆႉဝႆႉ ႁဝ်းတေဢမ်ႇၸၢင်ႈသူင်ႇ (Push) Code ႁဝ်းၶိုၼ်းၵႂႃႇၼိူဝ် GitHub လႆႈၶႃႈဢေႃႈ။

---