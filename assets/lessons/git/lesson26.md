## **Module 3: Remote Connectivity**
### **Lesson 26: Managing Remote Branches (ၵၢၼ်ၵုမ်းထိင်း Branch ၼိူဝ် Server)**

ႁဝ်းတေလႆႈ ၵႆႉၵႆႉသၢင်ႈ Branch မႂ်ႇ တႃႇတႅမ်ႈ Feature ဢၼ်ယၢဝ်းယၢဝ်းသေ 
သူင်ႇၶိုၼ်ႈၵႂႃႇဝႆႉၼိူဝ် GitHub တႃႇႁႂ်ႈ ၵူၼ်းတၢင်ႇၵေႃႉ ႁၼ်လႆႈ ဢမ်ႇၼၼ် ၸွႆႈမူၼ်ႉမႄးယဝ်ႉ။

#### **1. Push Local Branch to Remote (သူင်ႇ Branch မႂ်ႇၶိုၼ်ႈၵႂႃႇ)**
သင်ႁဝ်းမီး Branch ၸိုဝ်ႈဝႃႈ `feature-shan-font` ၼႂ်းၶိူင်ႈသေ ၶႂ်ႈသူင်ႇၶိုၼ်ႈ GitHub:
`git push origin feature-shan-font`

* မိူဝ်ႈသူင်ႇယဝ်ႉယဝ်ႉ ၼိူဝ် GitHub ၵေႃႈတေမီး Branch ၸိုဝ်ႈဝႃႈ `feature-shan-font` ဢွၵ်ႇမႃးၵမ်းလဵဝ်ၶႃႈယဝ်ႉ။



#### **2. Tracking Remote Branches (တူၺ်း Branch ၼိူဝ် Cloud)**
တႃႇတေတူၺ်းဝႃႈ ၼိူဝ် GitHub မီး Branch သင်ဝႆႉၽႅဝ်လႂ်ယဝ်ႉၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ:
* `git branch -r` (တူၺ်း Remote branches ၵူၺ်း)
* `git branch -a` (တူၺ်းတင်းမူတ်း တင်း Local လႄႈ Remote)

#### **3. Deleting a Remote Branch (ယႃႉပႅတ်ႈ Branch ၼိူဝ် Server)**
သင်ႁဝ်း Merge Code ယဝ်ႉယဝ်ႉသေ ၶႂ်ႈယႃႉပႅတ်ႈ Branch ဢၼ်မီးဝႆႉၼိူဝ် GitHub ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ Command ၼႆႉၶႃႈ:
`git push origin --delete feature-shan-font`

* **မၢႆတွင်း:** ၵၢၼ်ယႃႉပႅတ်ႈ Branch ၼႂ်းၶိူင်ႈ (`git branch -d`) မၼ်းတေဢမ်ႇယႃႉပႅတ်ႈပၼ်ၼိူဝ် GitHub။ ႁဝ်းတေလႆႈၸႂ်ႉ Command `--delete` ၼႆႉ ၸင်ႇတေႁၢႆၵႂႃႇ တင်းသွင်တီႈၶႃႈဢေႃႈ။



#### **4. Pruning (ၵၢၼ်သႅၼ်ႈသႂ် Branch ဢၼ်ႁၢႆၵႂႃႇယဝ်ႉ)**
သင်မီးၵူၼ်းတၢင်ႇၵေႃႉ ယႃႉပႅတ်ႈ Branch ၼိူဝ် GitHub ယဝ်ႉ ၵူၺ်းၵႃႈ ၼႂ်းၶိူင်ႈႁဝ်းတိုၵ်ႉႁၼ်ၸိုဝ်ႈမၼ်း (Remote-tracking branch) ဝႆႉယူႇၼၼ်ႉ ႁဝ်းၸၢင်ႈ "သႅၼ်ႈသႂ်" မၼ်းလႆႈလူၺ်ႈ:
`git fetch --prune` (ဢမ်ႇၼၼ် `git fetch -p`)

* မၼ်းတေၵႂႃႇၵူတ်ႇထတ်း GitHub သေ သင် Branch လႂ်ႁၢႆၵႂႃႇယဝ်ႉ မၼ်းတေဢဝ်သဵၼ်ႈမၢႆမၼ်းဢွၵ်ႇၼႂ်းၶိူင်ႈႁဝ်းပႅတ်ႈၶႃႈ။

#### **ႁူဝ်ႁုပ်ႈ (Summary)**
ၵၢၼ်ၵုမ်းထိင်း **Remote Branches** ၼႆႉ ၸွႆႈႁႂ်ႈႁဝ်း ၸၢင်ႈ Share ၵၢၼ်ႁဵတ်းသၢင်ႈႁဝ်း ပၼ်ၵူၼ်းတၢင်ႇၵေႃႉ လႄႈ ၸၢင်ႈ Cleanup Project ႁဝ်း ႁႂ်ႈမၼ်းသႅၼ်ႈသႂ်ယူႇတႃႇသေႇ တင်းၼႂ်းၶိူင်ႈ လႄႈ ၼိူဝ် Cloud ၼၼ်ႉၶႃႈဢေႃႈ။

---