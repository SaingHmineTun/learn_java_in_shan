### **Lesson 43: Try...Catch...Finally (The basic safety net)**

ၼႂ်းလွင်ႈတႅမ်ႈပရူဝ်ႇၵရႅမ်ႇၼၼ်ႉ မၢင်ပွၵ်ႈမၼ်းတေမီး "လွင်ႈၽိတ်းပိူင်" (Errors) ဢၼ်ႁဝ်းဢမ်ႇၸၢင်ႈၵုမ်းထိင်းလႆႈ ၼင်ႇ: Internet ၶတ်းလၢတ်း၊ Server ပိတ်းဝႆႉ၊ ဢမ်ႇၼၼ် ၵၢၼ်ဢၢၼ်ႇ File ဢၼ်ဢမ်ႇမီးယူႇတေႉ။ သင်ႁဝ်းဢမ်ႇၸတ်းၵၢၼ်ဝႆႉၸိုင် App ႁဝ်းတေ **Crash** သေ ပိတ်းၵႂႃႇၵမ်းလဵဝ်ၶႃႈ။

**Try...Catch...Finally** ပဵၼ် "ၶေႇ" (Safety Net) တႃႇႁပ်ႉဢဝ် Error ၸိူဝ်းၼၼ်ႉၶႃႈဢေႃႈ။

---

#### **1. Structure (ပိူင်တႅမ်ႈ)**

ႁဝ်းၸႅၵ်ႇဢွၵ်ႇပဵၼ် 3 တွၼ်ႈယႂ်ႇယႂ်ႇၶႃႈ:

* **`try { ... }`**: ဝႆႉၶူတ်ႉဢၼ်ႁဝ်း "သူင်ႇသႆႉ" (Suspect) ဝႃႈမၼ်းတေမီး Error ၼၼ်ႉၶႃႈ။
* **`catch (error) { ... }`**: သင်ဝႃႈၼႂ်း `try` ၼၼ်ႉမီး Error မႃးတေႉၸိုင် မၼ်းတေမႃးႁဵတ်းၵၢၼ်ၼႂ်းတွၼ်ႈၼႆႉ။ ႁဝ်းၸၢင်ႈၼႄ Warning ဢမ်ႇၼၼ် သိမ်း Log ဝႆႉလႆႈၶႃႈ။
* **`finally { ... }`**: တွၼ်ႈၼႆႉတႄႉ မၼ်းတေႁဵတ်းၵၢၼ် **"တႃႇသေႇ"** ၶႃႈ။ ဢမ်ႇဝႃႈပရူဝ်ႇၵရႅမ်ႇႁဝ်းတေလႅၼ်ႈလီ ဢမ်ႇၼၼ် မီး Error ၵေႃႈယဝ်ႉ၊ မၼ်းတေႁဵတ်းၵၢၼ်တွၼ်ႈၼႆႉသေၸင်ႇယဝ်ႉၶႃႈ။



---

#### **2. တူဝ်ယၢင်ႇၵၢၼ်ၸႂ်ႉတေႉ**

```typescript
function openFile() {
  console.log("Attempting to open file...");

  try {
    // သမုၵ်ႉဝႃႈ ႁဝ်းႁွင်ႉၸႂ်ႉ Function ဢၼ်ဢမ်ႇမီးယူႇတေႉ
    // @ts-ignore
    readDatabaseFile(); 
    
    console.log("File opened successfully!"); // တွၼ်ႈၼႆႉတေဢမ်ႇႁဵတ်းၵၢၼ် သင်မီး Error
  } 
  catch (error) {
    console.log("❌ Error caught: Could not find the file.");
  } 
  finally {
    console.log("🧹 Cleanup: Closing all connections."); // တေႁဵတ်းၵၢၼ်တႃႇသေႇ
  }
}

openFile();
```

---

#### **3. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**

1.  **Prevent Crashing:** ႁဵတ်းႁႂ်ႈ App ႁဝ်းလႅၼ်ႈၵႂႃႇလႆႈတေႃႇ ဢမ်ႇႁႂ်ႈမၼ်းပိတ်းၵႂႃႇၵမ်းလဵဝ်။
2.  **User Experience:** တႅၼ်းတွၼ်ႈတႃႇတေၼႄ Error Code ယုင်ႈယၢင်ႈပၼ် User၊ ႁဝ်းၼႄပၼ်ၶေႃႈၵႂၢမ်းငၢႆႈငၢႆႈၼင်ႇ "Something went wrong, please try again."
3.  **Cleanup Logic:** ၸႂ်ႉ `finally` တႃႇပိတ်း Database Connection ဢမ်ႇၼၼ် ပိတ်း Loading Spinner ႁႂ်ႈၼႄႇၸႂ်ဝႃႈမၼ်းပိတ်းတေႉ ဢမ်ႇဝႃႈတေမီး Error ႁႃႉဢမ်ႇမီးႁႃႉၶႃႈ။

---

#### **4. Summary Checklist**

- [ ] ႁူႉလၢႆးၸႂ်ႉ `try` တႃႇၵႅတ်ႇၶႄၶူတ်ႉဢၼ်မီးတၢင်းတေၽိတ်း။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `catch` တေႁဵတ်းၵၢၼ်မိူဝ်ႈမီး Error ၵူၺ်း။
- [ ] ၸႂ်ႉ `finally` တႃႇ Cleanup ၶေႃႈမုၼ်း ဢၼ်လူဝ်ႇႁဵတ်းတႃႇသေႇ။
- [ ] ႁူႉဝႃႈ သင်မီး Error ၼႂ်း `try` ယဝ်ႉ၊ ၶူတ်ႉတၢင်းလင်မၼ်းၼႂ်း block ၼၼ်ႉတေဢမ်ႇႁဵတ်းၵၢၼ်တေႃႇ။

---