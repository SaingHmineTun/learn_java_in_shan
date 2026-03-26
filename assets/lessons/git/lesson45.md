## **Module 5: Troubleshooting & Data Integrity**
### **Lesson 45: Best Practices for a Clean Project History (ၾိင်ႈယၢမ်ႈလီ တႃႇပိုၼ်း Project ဢၼ်သႅၼ်ႈသႂ်)**

ၵၢၼ်မီးပိုၼ်း Git ဢၼ်လီ ဢမ်ႇၸႂ်ႈၵူၺ်းဝႃႈတႃႇတူဝ်ႁဝ်း၊ မၼ်းၸွႆႈႁႂ်ႈတၢင်ႇၵေႃႉ (ဢမ်ႇၼၼ် တူဝ်ႁဝ်းၼႂ်းမိူဝ်းၼႃႈ) ပွင်ႇၸႂ်ဝႃႈ "ၵွပ်ႈသင် ႁဝ်းတႅမ်ႈ Code ၼင်ႇၼႆ?" ၼႆၶႃႈဢေႃႈ။

#### **1. Commit Small, Commit Often (Commit ဢိတ်းဢိတ်း သေ ၵႆႉၵႆႉႁဵတ်း)**
* **ႁၢမ်ႈ:** တႅမ်ႈ Code တင်ႈဝၼ်း သေ ၸင်ႇ Commit ပွၵ်ႈလဵဝ် (မၼ်းတေႁဵတ်းႁႂ်ႈမႄး Conflict ယၢပ်ႇ)။
* **ထုၵ်ႇလီ:** မိူဝ်ႈႁဝ်းမႄး Bug ဢၼ်ၼိုင်ႈယဝ်ႉ ဢမ်ႇၼၼ် ထႅမ် Feature ဢၼ်ၼိုင်ႈယဝ်ႉ ႁဵတ်းပၼ် Commit ၵမ်းလဵဝ်။ မၼ်းမိူၼ်ၼင်ႇႁဝ်း "Save" ၵၢၼ်ႁိူၼ်းႁဝ်းဝႆႉ ပဵၼ်တွၼ်ႈပဵၼ်တွၼ်ႈၶႃႈ။

#### **2. Write Meaningful Commit Messages (တႅမ်ႈလိၵ်ႈဢၼ်ပွင်ႇၸႂ်ငၢႆႈ)**
* **ႁၢမ်ႈ:** တႅမ်ႈဝႃႈ `abc`, `fix`, `update`, `asdfasdf`။
* **ထုၵ်ႇလီ:** ၸႂ်ႉပိူင် **Imperative Mood** (မိူၼ်ၼင်ႇသင်ႇၵၢၼ်):
    * `Add Shan language support to login screen` (ထုၵ်ႇ)
    * `I added some shan text` (ဢမ်ႇထုၵ်ႇ)



#### **3. Don't Commit "Broken" Code (ႁၢမ်ႈ Commit Code ဢၼ်လူႉ)**
* ဢွၼ်တၢင်း ႁဝ်းပႆႇ `git commit` ႁဝ်းတေလႆႈ **Run** တူၺ်းဢွၼ်တၢင်းဝႃႈ App ႁဝ်းတိုၵ်ႉ "လႅၼ်ႈ (Run)" လႆႈယူႇႁႃႉ?
* သင်ပိုၼ်း (History) ႁဝ်းမီး Commit ဢၼ်လူႉလႅဝ်ၼမ် ၼၼ်ႉတေႁဵတ်းႁႂ်ႈၵၢၼ်ၸႂ်ႉ `bisect` ဢမ်ႇၼၼ် `checkout` ထွႆလင်ၵႂႃႇမႄး Bug ယၢပ်ႇသုတ်းၶႃႈ။

#### **4. Use Branches for Everything (ၸႂ်ႉ Branch တႃႇၵူႈလွင်ႈ)**
* **ႁၢမ်ႈ:** တႅမ်ႈၵူႈယၢင်ႇၼႂ်း `main`။
* **ထုၵ်ႇလီ:** သၢင်ႈ Branch မႂ်ႇတႃႇ Feature ၵူႈဢၼ်:
    * `feature/dark-mode`
    * `bugfix/login-error`
* မၼ်းတေႁဵတ်းႁႂ်ႈ `main` ၶွင်ႁဝ်း "မူတ်းသႅၼ်ႈသႂ်" တႃႇသေႇ လႄႈ ႁႅၼ်းဝႆႉတႃႇ Release လႆႈၵူႈၶၢဝ်းၶႃႈ။

#### **5. Cleanup Before You Push (သႅၼ်ႈသႂ်ဢွၼ်တၢင်း မိူဝ်ႈပႆႇႁဵတ်း Push)**
* ၸႂ်ႉ `git commit --amend` (Lesson 42) တႃႇမႄးလွင်ႈၽိတ်းဢိတ်းဢွၼ်ႇ ဢွၼ်တၢင်း မိူင်ႈပႆႇသူင်ႇၶိုၼ်ႈ GitHub။
* ႁႂ်ႈမၼ်းႁူႉဝႃႈ Commit ဢၼ်သူင်ႇၵႂႃႇၼၼ်ႉ မၼ်းပဵၼ်ဢၼ် "လီသုတ်း" ယဝ်ႉ။



#### **ႁူဝ်ႁုပ်ႈ (Summary)**
**Clean Project History** ပဵၼ်ၵၢၼ်ၼႄ "ထၢၼ်ႈသုင်" (Quality) ၶွင် Developer။ 
**"Code ဢၼ်လီ မၼ်းလူဝ်ႇ ပိုၼ်း Git ဢၼ်လီ"** ၶႃႈယဝ်ႉ။

---