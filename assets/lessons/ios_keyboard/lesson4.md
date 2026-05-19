## တွၼ်ႈသွၼ် 4: **Navigating the 50MB Memory Limit**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးလၢတ်ႈလွင်ႈ "ပၵ်းပိူင်" ၶွင် Apple ဢၼ်ၵပ်းၵၢႆႇလူၺ်ႈ **RAM (Memory)** ယဝ်ႉ။ 
ပေႃးႁဝ်းတေႁဵတ်း Keyboard ဢၼ်မီးတင်း English, Myanmar, လႄႈ Shan Layouts ၼႆ လွင်ႈၼႆႉ တေလႆးၵႄႈဝႆႉ ဢွၼ်ၼႃႈယဝ်ႉ။

### 1. ပဵၼ်သင် iOS ၸင်ႇပၼ် Memory ဢိတ်းၼိုင်ႈၵူၺ်း?

ယွၼ်ႉဝႃႈ Keyboard ၼႆႉ မၼ်းဢမ်ႇၸႂ်ႈ App တူဝ်တဵမ်၊ မၼ်းပဵၼ် **Extension** ဢၼ်ၵႂႃႇ "ၶီႇ" (Host) ယူႇၼႂ်း App တၢင်ႇတူဝ်ၵူၺ်း။
သင် Keyboard ၸဝ်ႈၵဝ်ႇ ၸႂ်ႉ RAM ၼမ်ပူၼ်ႉတီႈၼႆ မၼ်းတေႁဵတ်းႁႂ်ႈ App တူဝ်တေႉ (မိူၼ်ၼင်ႇ Facebook ဢမ်ႇၼၼ် Game) ၼၼ်ႉ 
ႁဵတ်းၵၢၼ်ထိူင်း (Lag) ဢမ်ႇၼၼ် Crash ၵႂႃႇလႆႈယဝ်ႉ။ ၵွပ်ႈၼၼ် iOS ၸင်ႇပၼ် Memory ႁဝ်းဝႆႉ **50MB** ၵူၺ်း။

### 2. သင် RAM ပူၼ်ႉ 50MB တေပဵၼ်သင်?

ပေႃး RAM ပူၼ်ႉ 50MB ၵႂႃႇၸိုင်:

* Keyboard ၸဝ်ႈၵဝ်ႇတေ **"Disappear"** (ႁၢႆၵႂႃႇ)။
* Screen တေၼႄပဵၼ် ပိုၼ်ႉတီႈသီလမ် (Black screen)။
* ယဝ်ႉၵေႃႈ System တေပၼ်ႇ (Switch) ၵႂႃႇၸႂ်ႉ Keyboard တၢင်ႇဢၼ် ဢၼ်ပဵၼ် Default ၼၼ်ႉၵမ်းလဵဝ်ယဝ်ႉ။

### 3. လွင်ႈဢၼ်ႁဵတ်းႁႂ်ႈ RAM တဵမ်ငၢႆႈ (ပုၼ်ႈတႃႇ TMK Keyboard)

* **Custom Fonts:** ပေႃးၸဝ်ႈၵဝ်ႇသႂ်ႇ Font လိၵ်ႈတႆး ဢမ်ႇၼၼ် လိၵ်ႈမၢၼ်ႈ ဢၼ်ယႂ်ႇပူၼ်ႉတီႈ (Large font file) ၼၼ်ႉ မၼ်းတေၵိၼ် RAM ၼမ်။
* **Images & Assets:** သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉၶႅပ်းႁၢင်ႈ (Images) မႃးႁဵတ်းပဵၼ် Layout သေ ဢမ်ႇလႆႈ Optimize ဝႆႉၼႆ RAM တေတဵမ်ဝႆး။
* **Memory Leaks:** တႅမ်ႈ Code SwiftUI သေ ၵဵပ်း Data ဝႆႉၼမ်ပူၼ်ႉတီႈ ဢမ်ႇၼၼ် ၸႂ်ႉ Reference ဢၼ်ဢမ်ႇလွတ်ႈ (Strong reference cycle)။

### 4. လၢႆးၵူတ်ႇထတ်း (Profiling)

ၸဝ်ႈၵဝ်ႇတေလႆႈၸႂ်ႉ Tool ဢၼ်ၸိုဝ်ႈဝႃႈ **Instruments** ဢၼ်မီးမႃးၸွမ်း Xcode ၼၼ်ႉၶႃႈ:

1. ၼႂ်း Xcode, ၵႂႃႇတီႈ **Product > Profile** (ဢမ်ႇၼၼ် ၼဵၵ်ႉ `Command + I`)။
2. လိူၵ်ႈဢဝ် **Allocations** ဢမ်ႇၼၼ် **Leaks**။
3. ၼဵၵ်ႉ Run သေ တူၺ်းတီႈ **Dirty Memory**။ ႁႂ်ႈမၼ်းယူႇဝႆႉတီႈဝူင်ႈၵၢင် 20MB - 35MB ၼႆႉ ပဵၼ်ဢၼ်လီသုတ်း (Safe zone) ၶႃႈယဝ်ႉ။

---