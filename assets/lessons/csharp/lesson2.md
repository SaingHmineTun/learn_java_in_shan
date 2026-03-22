# Lesson 2: "Understanding the .NET Ecosystem" (ပွင်ႇၸႂ်ပိူင်သၢင်ႈ .NET)

မိူဝ်ႈႁဝ်းတႅမ်ႈ Code သႂ်ႇၼႂ်း File `.cs` ယဝ်ႉၼၼ်ႉ ၶွမ်းပိဝ်ႇတႃႇဢမ်ႇပွင်ႇၸႂ်ၵမ်းလဵဝ်ၶႃႈ။ မၼ်းလူဝ်ႇမီး "ၽူႈပႅတ်ႇၵႂၢမ်း" (Translator) လႄႈ "ႁွင်ႈၵၢၼ်" (Runtime) တႃႇႁဵတ်းႁႂ်ႈမၼ်းပဵၼ် App ဢၼ်တူင်ႉၼိုင်လႆႈ။

### 1. SDK (Software Development Kit)
**SDK** ၼႆႉမိူၼ်ၼင်ႇ "ထူင်ၶိူင်ႈၵေႃႇသၢင်ႈ" (Toolbox) ယဝ်ႉ။ ၼႂ်းမၼ်းတေမီး:
* **Compiler:** တႃႇပိၼ်ႇ Code ႁဝ်းႁႂ်ႈပဵၼ်ၽႃႇသႃႇၵၢင် (Intermediate Language).
* **Libraries:** ၶူတ်ႉ (Code) ဢၼ် Microsoft တႅမ်ႈဝႆႉပၼ်ယဝ်ႉ တႃႇႁဝ်းၸႂ်ႉငၢႆႈ။

### 2. CLR (Common Language Runtime)
**CLR** ၼႆႉပဵၼ် "ႁူဝ်ၸႂ်" .NET ဢေႃႈ။ မၼ်းမီးၼႃႈတီႈ:
* ၸတ်းၵၢၼ် Memory (Memory Management).
* ၵူတ်ႇထတ်းလွင်ႈလွတ်ႈၽေး (Security).
* ႁဵတ်းႁႂ်ႈ Code ႁဝ်းႁဵတ်းၵၢၼ်လႆႈ (Execution).

### 3. JIT (Just-In-Time Compiler)
ၼႆႉပဵၼ်တွၼ်ႈဢၼ် လၢၵ်ႇလၢႆးသေပိူၼ်ႈ။ မိူဝ်ႈႁဝ်းပိုတ်ႇ App ၼၼ်ႉ **JIT** တေမႃးပိၼ်ႇ Code ဢၼ်ပဵၼ် IL (Intermediate Language) ၼၼ်ႉ ႁႂ်ႈပဵၼ် **Machine Code** (0, 1) ဢၼ်ၶိူင်ႈၸၢၵ်ႈ (Processor) ပွင်ႇၸႂ်လႆႈၼၼ်ႉၵမ်းလဵဝ်ယဝ်ႉ။



---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **SDK:** ၶိူင်ႈၵုမ်ႇ (Tools) ဢၼ်လူဝ်ႇၸႂ်ႉ တႃႇတႅမ်ႈလႄႈ သၢင်ႈ (Build) Application။
* **Runtime:** ႁွင်ႈၵၢၼ်ဢၼ်ၵုမ်းထိင်း လႄႈ ႁဵတ်းႁႂ်ႈ Application တူင်ႉၼိုင်လႆႈ မိူဝ်ႈၵူၼ်းၸႂ်ႉပိုတ်ႇမၼ်း။
* **Compiler:** ပိူင်သၢင်ႈဢၼ်ပိၼ်ႇ Code ၽႃႇသႃႇၵူၼ်း ႁႂ်ႈပဵၼ် Code ၽႃႇသႃႇၶွမ်းပိဝ်ႇတႃႇ။
* **Intermediate Language (IL):** Code ၽႃႇသႃႇၵၢင် ဢၼ် .NET ၸႂ်ႉ တႃႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်လႆႈ ၼိူဝ်ၶိူင်ႈၸၢၵ်ႈလၢႆလၢႆပိူင် (Cross-platform)။

---