# Lesson 292: "The MAUI Manifesto: One Codebase"

**.NET MAUI** (Multi-platform App UI) ပဵၼ် Framework ဢၼ် Microsoft သၢင်ႈဝႆႉ တွၼ်ႈတႃႇႁႂ်ႈ Developer တႅမ်ႈ Code ၼိုင်ႈဢၼ် (Single Codebase) သေ ဢွၵ်ႇပဵၼ် App ၸႂ်ႉလႆႈၵူႈ Platform ၶႃႈ။

### 1. MAUI ပွင်ႇဝႃႈသင်?
* **Multi-platform:** ၸႂ်ႉလႆႈတင်း Android, iOS, macOS, လႄႈ Windows။
* **App UI:** မီးၶိူင်ႈမိုဝ်းတႃႇသၢင်ႈၼႃႈတႃ UI ဢၼ်ၶိုတ်းၵၢပ်ႈ။



### 2. ႁဵတ်းသင်ႁဝ်းၸင်ႇလိူၵ်ႈၸႂ်ႉ MAUI?
သင်ႁဝ်း ၶႂ်ႈတႅမ်ႈ App ၸွႆးထႅမ် Shan Community ၼၼ်ႉ MAUI မီးၶေႃႈလီၸိူင်ႉၼႆၶႃႈ:
* **One Project, Many Platforms:** ႁဝ်းဢမ်ႇလူဝ်ႇၸႅၵ်ႇ Project Android ဢၼ်ၼိုင်ႈ၊ Windows ဢၼ်ၼိုင်ႈ။ ၶေႃႈမုၼ်း လႄႈ Logic တင်းမူတ်း ယူႇဝႆႉတီႈလဵဝ်ၶႃႈ။
* **Native Performance:** မၼ်းဢမ်ႇပဵၼ် Website ဢၼ်ဢဝ်မႃးသိမ်းဝႆႉၼႂ်း App (Hybrid)၊ ၵူၺ်းၵႃႈမၼ်းပဵၼ် **Native App** တႄႉတႄႉ ဢၼ်လႅၼ်ႈဝႆး လႄႈ ၸႂ်ႉ Feature ၼႂ်းၾူၼ်း (မိူၼ် Camera, GPS) လႆႈတဵမ်ထူၼ်ႈၶႃႈ။
* **Shared Resources:** ၶႅပ်းႁၢင်ႈ (Images) လႄႈ Fonts (မိူၼ် Font PangLong) ႁဝ်းဝၢင်းဝႆႉတီႈလဵဝ်သေ မၼ်းတေၸႅၵ်ႇၵႂႃႇၸႂ်ႉၼႂ်း Platform ၵူႈဢၼ် ႁင်းၵူၺ်းမၼ်းၶႃႈ။

### 3. ပိူင်သၢင်ႈၵၢၼ်ႁဵတ်းၵၢၼ်
ၼႂ်း MAUI Project ၼိုင်ႈဢၼ် ႁဝ်းတေႁၼ် Folder **Platforms/**:
* ၼႂ်းၼၼ်ႉတေမီး Code ဢၼ်မၵ်းမၼ်ႈဝႃႈ "သင်ပဵၼ် Android ႁႂ်ႈႁဵတ်းၸိူင်ႉၼႆ"။
* ၵူၺ်းၵႃႈ 90% ၶွင် Code ႁဝ်း (UI လႄႈ Logic) တေယူႇဝႆႉၽၢႆႇၼွၵ်ႈၶႃႈ။

---

### 4. ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Codebase:** သုၼ်ႇၵုမ်းၵၢၼ် Code တင်းမူတ်းၶွင် Project။
* **Native UI:** ၼႃႈတႃ App ဢၼ်ၸႂ်ႉ Control တႄႉတႄႉၶွင် OS ၼၼ်ႉ (မိူၼ်ၼင်ႇ Button ၼႂ်း Android တေမီးႁၢင်ႈမိူၼ် Android တႄႉတႄႉ)။
* **Single Project:** ပိူင်သၢင်ႈဢၼ်ႁဵတ်းႁႂ်ႈၵၢၼ်ၸတ်းၵၢၼ် Resources (Images/Fonts) ငၢႆႈလိူဝ်ၵဝ်ႇ။
* **Abstraction:** ၵၢၼ်တႅမ်ႈ Code ပိုၼ်ႉထၢၼ် ဢၼ်ၸၢင်ႈလႅၼ်ႈလႆႈၵူႈတီႈ လူၺ်ႈဢမ်ႇလူဝ်ႇႁူႉဝႃႈ ၽၢႆႇတႂ်ႈမၼ်းပဵၼ် OS သင်။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၸႂ်ႉ .NET MAUI တႅမ်ႈ App ၼႆ ႁဝ်းတိုၵ်ႉလူဝ်ႇတႅမ်ႈ Code Java (Android) လႄႈ Swift (iOS) ၸႅၵ်ႇၵၼ်ယူႇႁႃႉ?
2. လွင်ႈလီပိူင်လူင် ၶွင်ၵၢၼ်မီး **Single Codebase** ပဵၼ်သင် တွၼ်ႈတႃႇ Developer?