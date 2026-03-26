## **Module 4: Distributed Collaboration**
### **Lesson 35: Syncing Your Fork (ၵၢၼ်ႁဵတ်းႁႂ်ႈ Fork ႁဝ်းမႂ်ႇမိူၼ် Project လူင်)**

တွၼ်ႈတႃႇတေဢဝ် Code တီႈ **Upstream** (Original) မႃးသႂ်ႇၼႂ်း **Local** လႄႈ **Origin** (Your Fork) ၼၼ်ႉ ႁဝ်းတေလႆႈႁဵတ်းၸွမ်း 3 တွၼ်ႈၼႆႉၶႃႈ:

#### **1. Fetch & Merge (လၢႆးၸႂ်ႉ Terminal)**
ၼႆႉပဵၼ်လၢႆးဢၼ် Professional ၶဝ်ၸႂ်ႉ ၵွပ်ႈမၼ်းၵတ်းယဵၼ် လႄႈ ႁဝ်းၵုမ်းထိင်းလႆႈၵူႈယၢင်ႇၶႃႈ:
1.  **Fetch:** ၵႂႃႇဢဝ်ပိုၼ်းမႂ်ႇမႂ်ႇလုၵ်ႉတီႈ Upstream မႃးဝႆႉၼႂ်းၶိူင်ႈ:
    `git fetch upstream`
2.  **Checkout main:** လႅၵ်ႈၵႂႃႇယူႇတီႈ Branch `main` ၼႂ်းၶိူင်ႈႁဝ်း:
    `git checkout main`
3.  **Merge:** ဢဝ် Code ဢၼ်လုၵ်ႉတီႈ `upstream/main` မႃးႁူမ်ႈသႂ်ႇၼႂ်း `main` ႁဝ်း:
    `git merge upstream/main`
4.  **Push:** သူင်ႇ Code ဢၼ်မႂ်ႇယဝ်ႉၼၼ်ႉ ၶိုၼ်ႈၵႂႃႇဝႆႉၼိူဝ် GitHub (Origin) ႁဝ်းၶိုၼ်း:
    `git push origin main`



#### **2. လၢႆးငၢႆႈ (GitHub "Sync fork" Button)**
သင်ႁဝ်း ဢမ်ႇၶႂ်ႈတႅမ်ႈ Command ၼမ်၊ GitHub မီးပၼ် ပႅၼ်ႇၼႃႇ (Banner) ငၢႆႈငၢႆႈ:
1.  ၵႂႃႇတီႈၼႃႈ Repo ၶွင် **တူဝ်ၵဝ်ႇ** တီႈ GitHub။
2.  ၼဵၵ်းတီႈ **"Sync fork"**။
3.  ၼဵၵ်း **"Update branch"**။
* **မၢႆတွင်း:** လၢႆးၼႆႉ မၼ်းတေမႄးပၼ်ၼိူဝ် GitHub (Origin) ၵူၺ်း။ ႁဝ်းတေလႆႈ `git pull origin main` မႃးသႂ်ႇၼႂ်း Computer ႁဝ်းထႅင်ႈပွၵ်ႈၼိုင်ႈၶႃႈၼႃ။

#### **3. တၢင်းလီၶွင်ၵၢၼ် Sync တႃႇသေႇ**
* **Avoid Conflicts:** ၸွႆႈႁႂ်ႈႁဝ်း ဢမ်ႇထူပ်း Merge Conflict ၼမ် မိူဝ်ႈႁဝ်းသူင်ႇ PR။
* **Latest Features:** ႁဝ်းတေလႆႈၸႂ်ႉ Feature မႂ်ႇမႂ်ႇ ဢၼ်တၢင်ႇၵေႃႉ ထႅမ်သႂ်ႇဝႆႉၼၼ်ႉၸွမ်း။
* **Security:** လႆႈလွင်ႈၵႅတ်ႇၶႄ (Security Fixes) ဢၼ်မႂ်ႇသုတ်းတႃႇသေႇ။

#### **ႁူဝ်ႁုပ်ႈ (Summary)**
ၵၢၼ် **Syncing Your Fork** ၼႆႉ မိူၼ်ၼင်ႇႁဝ်း "ထူပတ်း" ႁိူၼ်းႁဝ်း ႁႂ်ႈမၼ်းမူတ်းသႅၼ်ႈ လႄႈ မႂ်ႇယူႇတႃႇသေႇ။ 
မၼ်းႁဵတ်းႁႂ်ႈၵၢၼ်သူင်ႇ Code ပၼ်တၢင်ႇၵေႃႉၼၼ်ႉ ပဵၼ်ၵႂႃႇလႆႈငၢႆႈငၢႆႈ လႄႈ ဢမ်ႇမီးပၼ်ႁႃယုင်ႈယၢင်ႈၼၼ်ႉၶႃႈဢေႃႈ။

---