## **Module 5: Troubleshooting & Data Integrity**
### **Lesson 44: Checking Database Integrity (ၵၢၼ်ၵူတ်ႇထတ်း ပၢႆးယူႇလီလူၺ်ႈ git fsck)**

Command **`git fsck`** (Fsck ပွင်ႇဝႃႈ **File System CheK**) ၼႆႉ ပဵၼ် Tool ဢၼ်ၸႂ်ႉတႃႇၵူတ်ႇထတ်း တူၺ်း "လွင်ႈတႅတ်ႈတေႃး (Integrity)" ၶွင် Object ၵူႈယၢင်ႇ ၼႂ်း Git ၶႃႈ။

#### **1. မိူဝ်ႈလႂ်တေၸႂ်ႉ `git fsck`?**
* မိူဝ်ႈ Computer ႁဝ်း "လူႉၵွႆ (Crash)" ၼႂ်းၶၢဝ်းယၢမ်းဢၼ်ႁဝ်းတိုၵ်ႉ Commit ယူႇ။
* မိူဝ်ႈ Git တႅမ်ႈလိၵ်ႈ Error ဝႃႈ `error: object file is empty` ဢမ်ႇၼၼ် `corrupt loose object`။
* မိူဝ်ႈႁဝ်းၶႂ်ႈႁႃတူၺ်း Code ဢၼ်ႁဝ်းဢမ်ႇႁၼ်ၼႂ်း `git log`။

#### **2. လၢႆးၸႂ်ႉ (Usage)**
တႅမ်ႈ Command ငၢႆႈငၢႆႈၼႂ်း Terminal:
`git fsck`

* **သင်ဝႃႈမၼ်း "လီ" (Healthy):** မၼ်းတေဢမ်ႇၼႄသင် ဢမ်ႇၼၼ် ၼႄလိၵ်ႈဝႃႈ `Checking object directories...` သေယဝ်ႉၵႂႃႇၶႃႈ။
* **သင်ဝႃႈမၼ်း "မီးပၼ်ႁႃ" (Issues):** မၼ်းတေၼႄလိၵ်ႈဝႃႈ `dangling commit` ဢမ်ႇၼၼ် `dangling blob` ၶႃႈယဝ်ႉ။



#### **3. Dangling Objects ပွင်ႇဝႃႈသင်?**
"Dangling" ပွင်ႇဝႃႈ **"ၵိုတ်းၶၢင်း"**။ မၼ်းပဵၼ် Code ဢၼ်ႁဝ်း ယၢမ်ႈ Commit ဝႆႉ၊ ၵူၺ်းၵႃႈ သမ်ႉ "Reset" ပႅတ်ႈ ဢမ်ႇၼၼ် "Delete Branch" ပႅတ်ႈ သေ မၼ်းဢမ်ႇမီးသၢႆၵွင်ႉၸူး Branch လႂ်ယဝ်ႉ။
* မၼ်းတိုၵ်ႉမီးယူႇၼႂ်း Database ၵူၺ်းၵႃႈ ႁဝ်းႁႃဢမ်ႇႁၼ်။
* `git fsck` တေၼႄ ID (SHA) ၶွင်တွၼ်ႈ Code ၸိူဝ်းၼၼ်ႉပၼ်ၶႃႈ။

#### **4. လၢႆးမႄး (The Fix)**
သင်ဝႃႈ `git fsck` ၼႄဝႃႈမီး File လူႉလႅဝ် (Corrupted object):
1. **Restore from Backup:** ၼႆႉပဵၼ်လၢႆးလီသုတ်း။
2. **Clone Again:** သင် Code ၼိူဝ် GitHub (Origin) တိုၵ်ႉလီယူႇ၊ တေႃႉတႄႉ Delete Folder ၼႂ်းၶိူင်ႈပႅတ်ႈ သေ `git clone` မႂ်ႇၵေႃႈယဝ်ႉယဝ်ႉၶႃႈ။

#### **ႁူဝ်ႁုပ်ႈ (Summary)**
**`git fsck`** ပဵၼ်ၵၢၼ် "မၼ်ႈၸႂ်" ဝႃႈ ပိုၼ်း Project ႁဝ်းမၼ်းတိုၵ်ႉတႅတ်ႈတေႃး (Solid) ယူႇ။ တွၼ်ႈသွၼ်ၼႆႉ တေၸွႆႈႁႂ်ႈႁဝ်း ၵႄႈပၼ်ႁႃယုင်ႈယၢင်ႈ ဢၼ်ပဵၼ်လူၺ်ႈ Hardware ဢမ်ႇၼၼ် System လူႉလႅဝ် ၼၼ်ႉၶႃႈဢေႃႈ။

---