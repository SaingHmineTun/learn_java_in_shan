## Lesson 2: The Global Header (The Config File)

Header ဢၼ်ဝႃႈၼၼ်ႉ မၼ်းမိူၼ်တင်း "ၶႅပ်းဝႂ်တူဝ်" ၶွင် Keyboard ႁဝ်းယဝ်ႉ။ မၼ်းတေလၢတ်ႈၼႄဝႃႈ Keyboard ၼႆႉ ၸိုဝ်ႈသင်၊ ၽႂ်ပဵၼ်ၸဝ်ႈၶွင်၊ လႄႈ မၼ်းတေၸႂ်ႉလႆႈတီႈလႂ် (Platform) လၢႆလၢႆၼႆၼၼ်ႉယဝ်ႉ။

### 1. Metadata ဢၼ်ပဵၼ်ပိုၼ်ႉထၢၼ်
တီႈၼိူဝ်သုတ်းၶွင်ၾၢႆႇ `.kmn` ႁဝ်းၼၼ်ႉ ႁဝ်းတေလႆႈသႂ်ႇ Metadata ၸိူဝ်းၼႆႉယဝ်ႉ။

```keyman
store(&NAME) 'TMK Shan'
store(&COPYRIGHT) 'Copyright © Sai Mao (Thung Mao Kham)'
store(&KEYBOARDVERSION) '1.0'
store(&BITMAP) 'tmk_shan.ico'
```
* **&NAME:** ၸိုဝ်ႈ Keyboard ဢၼ်တေဢွၵ်ႇၼႄတီႈ Menu။
* **&COPYRIGHT:** ၶေႃႈၵႂၢမ်းပိုၼ်ၽၢဝ်ႇၸဝ်ႈၶွင် (Owner Information)။
* **&KEYBOARDVERSION:** ပဵၼ် Version ၶွင် Keyboard ႁဝ်း (တႄႇလူၺ်ႈ 1.0)။
* **&BITMAP:** ၾၢႆႇႁၢင်ႈ (Icon) ဢၼ်တေဢွၵ်ႇၼႄတီႈ Windows Taskbar။

### 2. ၵၢၼ်မၵ်းမၼ်ႈ (Configuration) တႃႇ Cross-Platform
တွၼ်ႈတႃႇႁႂ်ႈ Keyboard ႁဝ်းၸႂ်ႉလႆႈတင်း Mac, Linux, Android လႄႈ iOS ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Directive ဢၼ်ၼႆႉယဝ်ႉ။

```keyman
store(&TARGETS) 'any'
store(&VISUALKEYBOARD) 'tmk_shan.kvks'
store(&LAYOUTFILE) 'tmk_shan.keyman-touch-layout'
```
* **&TARGETS 'any':** ၶေႃႈၼႆႉလွင်ႈယႂ်ႇသုတ်းယဝ်ႉ။ မၼ်းပွင်ႇဝႃႈ ႁႂ်ႈ Compiler ႁဵတ်းပၼ်ၾၢႆႇတႃႇ "ၵူႈပိူင်" (Desktop, Web, Mobile)။
* **&LAYOUTFILE:** ပဵၼ်ၾၢႆႇ JSON/JS ဢၼ်တေၵုမ်းထိင်း လွင်ႈႁၢင်ႈၽၢင် (Layout) ၼိူဝ်ၾူၼ်း (Phone) ယဝ်ႉ။



### 3. ၵၢၼ်တႄႇ Unicode Engine
ဝၢႆးသေ Metadata ယဝ်ႉ ႁဝ်းတေလႆႈလၢတ်ႈၼႄ Keyman ဝႃႈ ႁဝ်းတေတႅမ်ႈ Code ပဵၼ် Unicode သေ တႄႇႁဵတ်းၵၢၼ် (Process) တီႈလႂ်။

```keyman
begin Unicode > use(main)

group(main) using keys
```
* **begin Unicode:** လၢတ်ႈဝႃႈ Keyboard ၼႆႉ ပဵၼ်ၸိူဝ်ႉၾၼ်း Unicode (မႅၼ်ႈၸွမ်း Standard)။
* **group(main) using keys:** ပဵၼ်တီႈဢၼ်ႁဝ်းတေတႄႇတႅမ်ႈ Logic ၵၢၼ်ၼဵၵ်ႉ b > ၿ ၼႆၼၼ်ႉယဝ်ႉ။

---

### Summary (တွၼ်ႈၵႅပ်ႈ Lesson 2)

| IT Terms | ၶေႃႈၵႂၢမ်းတႆး / Definition |
| :--- | :--- |
| **Header** | တွၼ်ႈၼိူဝ်သုတ်းၶွင် Code ဢၼ်သႂ်ႇဝႆႉ Metadata လႄႈ Config |
| **Metadata** | ၶေႃႈမုၼ်းဢၼ်လၢတ်ႈၼႄလွင်ႈတူဝ်မၼ်း (ၸိုဝ်ႈ၊ Version, ၸဝ်ႈၶွင်) |
| **Directive** | ၶေႃႈသင်ႇဢၼ်လၢတ်ႈပၼ် Compiler ႁႂ်ႈႁဵတ်းၵၢၼ်ၸွမ်းပိူင် |
| **Cross-Platform** | ဢၼ်ၸႂ်ႉလႆႈလၢႆလၢႆ System (Windows, Mac, iOS, Android) |
| **Unicode Engine** | တူဝ်ၸတ်းၵၢၼ်လိၵ်ႈ ဢၼ်ၸႂ်ႉ Standard ၵူႈမိူင်းမိူင်း |

**Summary:** ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းလႆႈႁဵၼ်းႁူႉလွင်ႈၵၢၼ်တႅမ်ႈ **Header** တႃႇလၢတ်ႈၼႄၸိုဝ်ႈလႄႈ Version Keyboard။ ႁဝ်းလႆႈႁူႉလွင်ႈၵၢၼ်ၸႂ်ႉ `&TARGETS 'any'` တႃႇႁႂ်ႈမၼ်းပဵၼ် **Cross-Platform** လႄႈ ၵၢၼ်ပိုတ်ႇ **Unicode Engine** တႃႇတေတႄႇတႅမ်ႈ Logic ၼႂ်းတွၼ်ႈသွၼ်တႃမႃးယဝ်ႉ။

---