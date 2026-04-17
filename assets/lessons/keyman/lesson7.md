## Lesson 7: Unicode Hex & Character Literals

### 1. Unicode Hex ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ်သင်?
တူဝ်လိၵ်ႈၵူႈတူဝ်ၼႂ်း Computer မီးမၢႆလၢပ်ႈ (Code) တူဝ်မၼ်းတူဝ်ၼိုင်ႈ။ 
ႁဝ်းႁွင်ႉဝႃႈ **Unicode Codepoint** ယဝ်ႉ။ 
ၼႂ်း Keyman ႁဝ်းၸၢင်ႈၸႂ်ႉ `U+` သေၸွမ်းလူၺ်ႈမၢႆလၢပ်ႈ Hexadecimal ၼၼ်ႉယဝ်ႉ။

* **Character Literal:** `'ၵ'` (တႅမ်ႈတူဝ်လိၵ်ႈတႄႇတႄႇ)
* **Unicode Hex:** `U+1075` (တႅမ်ႈမၢႆလၢပ်ႈ Unicode)

### ### 2. လွင်ႈလီၶွင်ၵၢၼ်ၸႂ်ႉ Unicode Hex
* **Portability:** Code ႁဝ်းတေဢမ်ႇလူႉ ဢမ်ႇဝႃႈတေပိုတ်ႇၼႂ်း Windows, Mac, ဢမ်ႇၼၼ် Linux။
* **Invisible Characters:** တူဝ်လိၵ်ႈဢၼ်ဢမ်ႇၼႄႁၢင်ႈ (မိူၼ်ၼင်ႇ ZWSP) ၼၼ်ႉ ၸႂ်ႉ Hex တေႁူႉငၢႆႈယဝ်ႉ။
* **Standardization:** မၼ်းမႅၼ်ႈၸွမ်းပိူင် Unicode Standard ဢၼ်လူဝ်ႇၸႂ်ႉၼႂ်းၵၢၼ်တႅမ်ႈ Software ယဝ်ႉ။



### ### 3. ၵၢၼ်တႅမ်ႈ Code လူၺ်ႈၸႂ်ႉ Unicode Hex
ႁဝ်းတေမႃးတူၺ်း ၵၢၼ်လႅၵ်ႈလၢႆႈ Code ၸဝ်ႈၵဝ်ႇ ႁႂ်ႈပဵၼ် Hex ၶႃႈ:

```keyman
c --- Basic Consonants in Hex ---
+ [K_U] > U+1075  c ၵ
+ [K_I] > U+1078  c င
+ [K_Q] > U+107A  c ၸ
+ [K_S] > U+107C  c သ

c --- Vowels and Tones in Hex ---
+ [K_J] > U+1087  c ႇ (Tone 1)
+ [K_H] > U+1089  c ႉ (Tone 3)
```

### 4. ၵၢၼ်ၸႂ်ႉ Character Literals (တူဝ်လိၵ်ႈတႄႇ)
သင်ဝႃႈတႅမ်ႈ Hex တင်းမူတ်း မၼ်းတေလူယၢပ်ႇ (Not Readable) ၶႃႈယဝ်ႉ။ 
ၵွပ်ႈၼၼ် ႁဝ်းၸၢင်ႈၸႂ်ႉ **Comments** (ၸႂ်ႉ `c`) တႃႇမၢႆဝႆႉဝႃႈ မၼ်းပဵၼ်တူဝ်လိၵ်ႈသင် ၼင်ႇၼႆၶႃႈ:
`+ [K_K] > U+1083  c ု`

---

### Summary (တွၼ်ႈၵႅပ်ႈ Lesson 7)

| IT Terms | ၶေႃႈၵႂၢမ်းတႆး / Definition |
| :--- | :--- |
| **Unicode Hex** | မၢႆလၢပ်ႈ Unicode ဢၼ်တႄႇလူၺ်ႈ `U+` (မိူၼ်ၼင်ႇ U+1075) |
| **Character Literal** | တူဝ်လိၵ်ႈဢၼ်တႅမ်ႈၼႄႁၢင်ႈမၼ်းတႄႇတႄႇ (မိူၼ်ၼင်ႇ 'ၵ') |
| **Codepoint** | တႅၼ်ႈတီႈမၢႆလၢပ်ႈၶွင်တူဝ်လိၵ်ႈၼိုင်ႈတူဝ် ၼႂ်း Unicode Standard |
| **Corruption** | ၵၢၼ်လူႉလႅဝ်ၶွင်ၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ လိၵ်ႈတႆးပဵၼ်တူဝ်လၢႆး) |

**Summary:** ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းလႆႈႁဵၼ်းႁူႉလွင်ႈၵၢၼ်တႅမ်ႈ Code လူၺ်ႈၸႂ်ႉ **Unicode Hex** တႅၼ်းတူဝ်လိၵ်ႈတႄႇတႄႇ။ ၵၢၼ်ႁဵတ်းၼင်ႇၼႆ တေႁဵတ်းႁႂ်ႈ Keyboard **Thung Mao Kham** ႁဝ်း မီးပိူင် (Standard) လႄႈ ၸႂ်ႉလႆႈၵူႈတီႈ ဢမ်ႇမီးပၼ်ႁႃလွင်ႈလိၵ်ႈလူႉယဝ်ႉ။

---