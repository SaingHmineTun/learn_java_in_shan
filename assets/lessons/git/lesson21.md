## **Module 3: Remote Connectivity**
### **Lesson 21: Linking Local to Remote (ၵွင်ႉ Local ၸူး Remote)**

မိူဝ်ႈႁဝ်းသၢင်ႈ Repo ဝႆႉၼိူဝ် GitHub ယဝ်ႉၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉၶိူင်ႈႁဝ်း ႁႂ်ႈၵႂႃႇသူင်ႇ Code ၸူး Address ၼၼ်ႉယဝ်ႉၶႃႈ။

#### **1. origin ဢၼ်ဝႃႈၼၼ်ႉပဵၼ်သင်?**
* **origin** ၼႆႉ ပဵၼ် "ပၢႆၵမ် (Nickname)" ဢၼ်ႁဝ်းၸႂ်ႉတႃႇတႅၼ်းတၢင် URL ယၢဝ်းယၢဝ်းၶွင် GitHub။
* ႁဝ်းၸၢင်ႈတင်ႈၸိုဝ်ႈသင်ၵေႃႈလႆႈ ၵူၺ်းၵႃႈ Developer တင်ႈလူၵ်ႈ ၵႆႉၸႂ်ႉၸိုဝ်ႈဝႃႈ `origin` ၼင်ႇႁႂ်ႈပွင်ႇၸႂ်ငၢႆႈၵၼ်ၶႃႈ။

#### **2. လၢႆးၸႂ်ႉ (Usage)**
ပိုတ်ႇ Terminal ၼႂ်း Folder Project ႁဝ်း ယဝ်ႉတႅမ်ႈ Command ၼႆႉၶႃႈ (ဢဝ် URL ဢၼ်လုၵ်ႉတီႈ GitHub မႃးသႂ်ႇ):

`git remote add origin https://github.com/SaiMao/my-project.git`



#### **3. ၵူတ်ႇထတ်းတူၺ်းၶိုၼ်း (Verify)**
တႃႇတေႁူႉဝႃႈ ႁဝ်းၵွင်ႉထုၵ်ႇႁႃႉ ဢမ်ႇထုၵ်ႇၼၼ်ႉ ႁဝ်းၸၢင်ႈၵူတ်ႇထတ်းလႆႈလူၺ်ႈ:
`git remote -v`

* `-v` ၼႆႉ လုၵ်ႉတီႈၶေႃႈၵႂၢမ်း **Verbose** (ၼႄပၼ်ၸႅင်ႈလႅင်း)။
* မၼ်းတေၼႄ URL တႃႇ (fetch) လႄႈ (push) ဢၼ်ၵွင်ႉဝႆႉၸွမ်း `origin` ၼၼ်ႉၶႃႈဢေႃႈ။

#### **4. လၢႆးမႄး ဢမ်ႇၼၼ် လၢႆးယႃႉ (Update/Remove)**
* **သင် URL ၽိတ်း:** `git remote set-url origin <new-url>`
* **သင်ၶႂ်ႈယႃႉပႅတ်ႈ:** `git remote remove origin`

#### **ႁူဝ်ႁုပ်ႈ (Summary)**
Command **`git remote add origin`** ၼႆႉ ပဵၼ်ၵၢၼ် **"မၵ်းမၼ်ႈသဵၼ်ႈတၢင်း"** ယဝ်ႉ။ မိူဝ်ႈႁဝ်းမၵ်းမၼ်ႈဝႆႉယဝ်ႉယဝ်ႉၼၼ်ႉ Git ၼႂ်းၶိူင်ႈႁဝ်း တေႁူႉယဝ်ႉဝႃႈ GitHub ယူႇတီႈလႂ် လႄႈ ႁႅၼ်းဝႆႉတႃႇတေသူင်ႇ Code ၵႂႃႇၸူး ၶႃႈယဝ်ႉ။

---