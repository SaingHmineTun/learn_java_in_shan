## **Module 5: Troubleshooting & Data Integrity**
### **Lesson 37: Anatomy of a Merge Conflict (ၵၢၼ်တူၺ်းပၼ်ႁႃ Merge Conflict)**

**Merge Conflict** ၼႆႉ ပဵၼ်လွင်ႈၵၢၼ်ဢၼ် Git "ဝူၼ်ႉၵႂၢင် (Confused)" သေ ဢမ်ႇႁူႉဝႃႈ တေလႆႈလိူၵ်ႈဢဝ် Code ဢၼ်လႂ်။

#### **1. မၼ်းပဵၼ်မႃးၵွပ်ႈသင်? (The Cause)**
မၼ်းတေပဵၼ်မိူဝ်ႈ:
* ၵူၼ်း 2 ၵေႃႉ (ဢမ်ႇၼၼ် Branch 2 ဢၼ်) မႄး Code **"ထႅဝ်လိၵ်ႈလဵဝ်ၵၼ်"** ၼႂ်း File လဵဝ်ၵၼ်။
* ၵေႃႉၼိုင်ႈ "Delete" File ၼၼ်ႉပႅတ်ႈ၊ ၵူၺ်းၵႃႈ ထႅင်ႈၵေႃႉၼိုင်ႈသမ်ႉ "Edit" ဝႆႉယူႇ။

မိူဝ်ႈႁဝ်းတႅမ်ႈ `git merge` ၼၼ်ႉ Git တေဝႃႈ:
> `CONFLICT (content): Merge conflict in main.dart`
> `Automatic merge failed; fix conflicts and then commit the result.`

#### **2. Conflict Markers (မၢႆၸမ်ႈၶွင် Git)**
မိူဝ်ႈပဵၼ် Conflict ယဝ်ႉ ႁဝ်းပိုတ်ႇ File ၼၼ်ႉတူၺ်း ႁဝ်းတေႁၼ် Git တႅမ်ႈမၢႆဝႆႉၼင်ႇၼႆၶႃႈ:

```text
<<<<<<< HEAD
print("Hello from Current Branch"); // Code ဢၼ်မီးၼႂ်းမိုဝ်းႁဝ်းမိူဝ်ႈလဵဝ်
=======
print("Hello from Incoming Branch"); // Code ဢၼ်ႁဝ်းတိုၵ်ႉလူတ်ႇဢဝ်မႃး
>>>>>>> feature-branch
```

* **`<<<<<<< HEAD`**: ၼႆႉပဵၼ် တႄႇတွၼ်ႈ Code ၼႂ်း Branch ဢၼ်ႁဝ်းတိုၵ်ႉယူႇဝႆႉ (Current)။
* **`=======`**: ၼႆႉပဵၼ် "သဵၼ်ႈၸႅၵ်ႇ" ၵႄႈၵၢင် သွင်ဢၼ်။
* **`>>>>>>> branch-name`**: ၼႆႉပဵၼ် Code ဢၼ်ႁဝ်းလူတ်ႇမႃး (Incoming)။

#### **3. ႁဝ်းတေလႆႈႁဵတ်းႁိုဝ်?**
ၼႃႈၵၢၼ်ႁဝ်းပဵၼ် **"ၵူၼ်းတတ်းသိၼ်"** ၶႃႈယဝ်ႉ။
1. ဢၢၼ်ႇတူၺ်း တင်းသွင်တွၼ်ႈ။
2. လိူၵ်ႈဢဝ်ဢၼ်လီသုတ်း (ဢမ်ႇၼၼ် ဢဝ်မႃးႁူမ်ႈၵၼ်)။
3. **ယႃႉပႅတ်ႈ (Delete)** မၢႆၸမ်ႈ `<<<<`, `====`, `>>>>` ၸိူဝ်းၼၼ်ႉပႅတ်းမူတ်း။

#### **ႁူဝ်ႁုပ်ႈ (Summary)**
**Merge Conflict** ဢမ်ႇၸႂ်ႈ Error ဢၼ်လူႉလႅဝ်၊ မၼ်းပဵၼ် Git "ထၢမ်တၢင်းႁၼ်ထိုင်" တီႈႁဝ်းၵူၺ်း။ 
သင်ႁဝ်းပွင်ႇၸႂ် **Anatomy** (ႁၢင်ႈၽၢင်) မၼ်းယဝ်ႉ ႁဝ်းၵေႃႈတေဢမ်ႇၵူဝ်မၼ်းထႅင်ႈၶႃႈ။

---