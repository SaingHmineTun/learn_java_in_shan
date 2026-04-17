## Lesson 4: Basic Consonant Mapping (The Base Layer)

**Base Layer** ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ်ၸၼ်ႉလိၵ်ႈဢွၵ်ႇမႃး မိူဝ်ႈႁဝ်းၼဵၵ်ႉ Key (ဢမ်ႇၼဵၵ်ႉၸွမ်း Shift) ၼၼ်ႉယဝ်ႉ။ 

### 1. Virtual Keys (K_) ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ်သင်?
ၼႂ်း Keyman ၼၼ်ႉ ႁဝ်းတေဢမ်ႇတႅမ်ႈဝႃႈ `+ 'u' > 'ၵ'`။ ႁဝ်းတေၸႂ်ႉ **Virtual Key Code** ၼင်ႇၼႆယဝ်ႉ:
* **[K_U]**: မၼ်းပွင်ႇဝႃႈ "ၼဵၵ်ႉ Key ဢၼ်မီးတူဝ် U ၼိူဝ် Keyboard"။
* **လွင်ႈလီမၼ်း:** မၼ်းတေႁဵတ်းႁႂ်ႈ Keyboard ႁဝ်းၸႂ်ႉလႆႈတင်း Windows, Mac, လႄႈ Linux ၵူႈပိူင် ဢမ်ႇဝႃႈ Physical Keyboard ၼၼ်ႉ ပဵၼ် Layout မိူင်းလႂ်ၵေႃႈယဝ်ႉ။

### 2. ၵၢၼ်တႅမ်ႈ Logic Mapping
ႁဝ်းတေတႅမ်ႈ Code ၼႂ်း `group(main) using keys` ဢၼ်ႁဝ်းပိုတ်ႇဝႆႉၼႂ်း Lesson 2 ၼၼ်ႉယဝ်ႉ။ ပိူင်တႅမ်ႈမၼ်းပဵၼ် `+ [VirtualKey] > 'Output'`။

**တူဝ်ယၢင်ႇ Code:**
```keyman
group(main) using keys

c --- Row 1: Shan Numbers ---
+ [K_1] > '႑'
+ [K_2] > '႒'
+ [K_3] > '႓'
+ [K_4] > '႔'
+ [K_5] > '႕'
+ [K_6] > '႖'
+ [K_7] > '႗'
+ [K_8] > '႘'
+ [K_9] > '႙'
+ [K_0] > '႐'

c --- Row 2: Top Row Consonants ---
+ [K_Q] > 'ၸ'
+ [K_W] > 'တ'
+ [K_E] > 'ၼ'
+ [K_R] > 'မ'
+ [K_T] > 'ဢ'
+ [K_Y] > 'ပ'
+ [K_U] > 'ၵ'
+ [K_I] > 'င'
+ [K_O] > 'ဝ'
+ [K_P] > 'ႁ'

c --- Row 3: Home Row Vowels & Tones ---
+ [K_A] > 'ေ'
+ [K_S] > 'ႄ'
+ [K_D] > 'ိ'
+ [K_F] > '်'
+ [K_G] > 'ွ'
+ [K_H] > 'ႉ'
+ [K_J] > 'ႇ'
+ [K_K] > 'ု'
+ [K_L] > 'ူ'
+ [K_COLON] > 'ႈ'

c --- Row 4
+ [K_Z] > 'ၽ'
+ [K_X] > 'ထ'
+ [K_C] > 'ၶ'
+ [K_V] > 'လ'
+ [K_B] > 'ယ'
+ [K_N] > 'ၺ'
+ [K_M] > 'ၢ'

c --- Punctuation & Function Keys ---
+ [K_PERIOD] > '။'
+ [K_COMMA] > '၊'
+ [K_SPACE] > ' '
```



### 3. ၵၢၼ်ၸႂ်ႉ Space လႄႈ Enter
တႃႇႁႂ်ႈ Keyboard ႁဝ်းပဵၼ်ဢၼ်တဵမ်ထူၼ်ႈၼၼ်ႉ ႁဝ်းလူဝ်ႇမႅပ်ႉ (Map) Key ပိုၼ်ႉထၢၼ်ၸိူဝ်းၼႆႉပႃးယဝ်ႉ။

```keyman
+ [K_SPACE] > ' '
+ [K_ENTER] > [K_ENTER]
+ [K_BKSP]  > [K_BKSP]
```
* **[K_BKSP]**: တႃႇႁႂ်ႈ Key လုမ်း (Backspace) ႁဵတ်းၵၢၼ်လႆႈ။

---

### Summary (တွၼ်ႈၵႅပ်ႈ Lesson 4)

| IT Terms | ၶေႃႈၵႂၢမ်းတႆး / Definition                            |
| :--- |:------------------------------------------------------|
| **Base Layer** | ၸၼ်ႉလိၵ်ႈပိုၼ်ႉထၢၼ် ဢၼ်ဢွၵ်ႇမႃးမိူဝ်ႈဢမ်ႇၼဵၵ်ႉ Shift  |
| **Virtual Key (K_)** | Code တႅၼ်းတူဝ်ၼဵၵ်ႉၼိူဝ် Keyboard                     |
| **Mapping** | ၵၢၼ်ၵေႃႇသၢင်ႈပိူင်ၵၢႆႇၸူးၵၼ် (Input -> Output)        |
| **Unicode Literal** | တူဝ်လိၵ်ႈ Unicode ဢၼ်ႁဝ်းတႅမ်ႈသႂ်ႇၼႂ်း ' '            |

**Summary:** ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းလႆႈတႄႇတႅမ်ႈ Code တႃႇ **Base Layer** လူၺ်ႈၵၢၼ်ၸႂ်ႉ **Virtual Keys**။ 
ႁဝ်းလႆႈမႅပ်ႉ (Map) မႄႈလိၵ်ႈတႆးပိုၼ်ႉထၼ် ၸိူဝ်းဢၼ်ၸႂ်ႉၼမ် (ၵ, ၶ, င...) သႂ်ႇဝႆႉၼိူဝ် Keyboard ႁႂ်ႈၸႂ်ႉၵၢၼ်လႆႈငၢႆႈငၢႆႈယဝ်ႉ။

---