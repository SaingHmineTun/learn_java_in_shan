## 1) What is Dart? (JIT vs AOT)

**Dart** ၼႆႉပဵၼ် زمانی برمprogramming (Programming Language) ဢၼ် Google ၶူင်သၢင်ႈမႃးယဝ်ႉ။ မၼ်းပဵၼ် "Client-optimized language" ဢၼ်ႁဵတ်းမႃးတႃႇတႅမ်ႈ Code ႁႂ်ႈလႅၼ်ႈဝႆးတီႈၼိူဝ် Platform လၢႆပိူင် (Mobile, Web, Desktop)။

တီႈလမ်ႇလွင်ႈသုတ်း ဢၼ်ႁဵတ်းႁႂ်ႈ Dart ပႅၵ်ႇပိူင်ႈတင်း Programming language တၢင်ႇဢၼ်ၼၼ်ႉ ပဵၼ်လၢႆး **Compilation** (လၢႆးပိၼ်ႇ Code ႁႂ်ႈၶွမ်းပွင်ႇၸႂ်) 2 ပိူင် ဢၼ်မၼ်းၸႂ်ႉတိုင်ႈယူႇၼၼ်ႉယဝ်ႉ။

### 1. Just-In-Time (JIT) Compilation

JIT ၼႆႉပဵၼ်လၢႆး Compilation ဢၼ် "ပိၼ်ႇ Code မိူဝ်ႈၽွင်းတိုၵ်ႉလႅၼ်ႈယူႇ" (Compilation during execution)။

* **Development Speed:** ၸႂ်ႉတိုင်ႈမိူဝ်ႈႁဝ်းတိုၵ်ႉတႅမ်ႈ Code ယူႇ (Development Phase)။
* **Hot Reload:** ယွၼ်ႉမၼ်းပဵၼ် JIT လႄႈ မိူဝ်ႈႁဝ်းမႄး Code ယဝ်ႉ ႁဝ်းဢမ်ႇလူဝ်ႇပႂ်ႉ Compile တင်းသဵင်ႈၶိုၼ်း။ မၼ်းတေသူင်ႇ Code ဢၼ်မႄးမႂ်ႇၼၼ်ႉ ၵႂႃႇတီႈ Dart VM ဝႆးဝႆးသေ ၼႄၽူၼ်လႅၵ်ႈလၢႆႈၵမ်းလဵဝ်။
* **Flexibility:** ႁဵတ်းႁႂ်ႈၵူၼ်းတႅမ်ႈ Code ၸၢင်ႈၸၢမ်းတူၺ်း (Experiment) လွင်ႈလႅၵ်ႈလၢႆႈၵမ်းလဵဝ်။

### 2. Ahead-Of-Time (AOT) Compilation

AOT ၼႆႉသမ်ႉ ပဵၼ်လၢႆး "ပိၼ်ႇ Code တင်းသဵင်ႈ ႁႂ်ႈပဵၼ် Machine Code (Native code) ဝႆႉၼႃႈ မိူဝ်ႈပႆႇပိုတ်ႇ App"။

* **Production & Release:** ၸႂ်ႉတိုင်ႈမိူဝ်ႈႁဝ်းတေထုတ်ႇဢွၵ်ႇ App တႃႇပၼ်ၵူၼ်းၸႂ်ႉတိုင်ႈတေႉ။
* **Startup Speed:** ယွၼ်ႉမၼ်းပဵၼ် Machine Code ဝႆႉယဝ်ႉလႄႈ မိူဝ်ႈႁဝ်းၼိပ်ႇပိုတ်ႇ App ၼၼ်ႉ မၼ်းတေဢမ်ႇလူဝ်ႇပႂ်ႉ Compile သင်ထႅင်ႈ။ App တေပိုတ်ႇဝႆးဝႆး (Fast startup)။
* **Performance:** တေမီး Performance ဢၼ်ၼိမ် လႄႈ လႅၼ်ႈလႆႈ Smooth (60fps ဢမ်ႇၼၼ် 120fps) တီႈၼိူဝ် Device ၵူႈပိူင်။

---

**Summary Table:**

| Feature | JIT (Development) | AOT (Production) |
| --- | --- | --- |
| **When it compiles** | During runtime | Before runtime |
| **Main Advantage** | Hot Reload (Speedy dev) | Performance (Speedy App) |
| **Used in** | Dart VM / Flutter Debug Mode | Native Machine Code / Release Mode |

---