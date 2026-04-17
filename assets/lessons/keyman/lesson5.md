## Lesson 5: The Shift Layer & States

ၼႂ်း Keyman ၼၼ်ႉ **States** ပဵၼ်တူဝ်ဢၼ်လၢတ်ႈၼႄဝႃႈ ယၢမ်းလဵဝ် Key ဢၼ်ႁဝ်းၼဵၵ်ႉယူႇၼၼ်ႉ မၼ်းမီး Shift, Ctrl, ဢမ်ႇၼၼ် Alt ၼဵၵ်ႉပႃးဝႆႉယူႇႁႃႉ ၼႆယဝ်ႉ။ 
တွၼ်ႈတႃႇ Keyboard တႆးႁဝ်းတႄႉ **Shift Layer** လွင်ႈယႂ်ႇသုတ်းယဝ်ႉ။

### 1. Shift Layer ၼႂ်း Desktop vs Mobile
* **Desktop (PC/Mac/Linux):** ၵူၼ်းၸႂ်ႉတေလႆႈၼဵၵ်ႉ Shift Key ၼိူဝ် Keyboard ၶႅင် (Physical Keyboard) သေ ၼဵၵ်ႉ Key တၢင်ႇဢၼ်ယဝ်ႉ。
* **Mobile (Android/iOS):** ၵူၼ်းၸႂ်ႉတေလႆႈၼဵၵ်ႉ Button ⇧ (Shift) ၼိူဝ် Screen ႁႂ်ႈမၼ်းလႅၵ်ႈလၢႆႈပဵၼ်ထႅင်ႈ Layer ၼိုင်ႈဢၼ်ယဝ်ႉ。



### 2. ၵၢၼ်တႅမ်ႈ Code တႃႇ Shift Layer
ႁဝ်းတေၸႂ်ႉ Prefix ဝႃႈ `SHIFT` ဝႆႉၼႂ်းၵႄႈ `[ ]` ၼႃႈ Virtual Key ယဝ်ႉ။
ၸွမ်းၼင်ႇ XML Layout ဢၼ်ၸဝ်ႈၵဝ်ႇဝၢင်းဝႆႉတႃႇတူဝ် 'ၽ ထ ၶ လ ယ ၺ ၢ' ၼၼ်ႉ ႁဝ်းတေတႅမ်ႈၼင်ႇၼႆယဝ်ႉ:

```keyman
group(main) using keys

c --- Row 1: Shift + Numbers (Pali Consonants & Marks) ---
+ [SHIFT K_1] > 'ꧡ'  c key_s_cha
+ [SHIFT K_2] > 'ꧢ'  c key_s_chha
+ [SHIFT K_3] > 'ꧤ'  c key_s_bha
+ [SHIFT K_4] > 'ၹ'  c key_s_za
+ [SHIFT K_5] > 'ႀ'  c key_s_tha
+ [SHIFT K_6] > 'ꩦ'  c key_s_tta
+ [SHIFT K_7] > 'ꩧ'  c key_s_ttha
+ [SHIFT K_8] > 'ꩨ'  c key_s_dda
+ [SHIFT K_9] > 'ꩩ'  c key_s_ddha
+ [SHIFT K_0] > 'ံ'  c key_s_am

c --- Row 2: Top Row Shifted ---
+ [SHIFT K_Q] > 'ꩡ'  c key_s_ja
+ [SHIFT K_W] > 'ၻ'  c key_s_da
+ [SHIFT K_E] > 'ꧣ'  c key_s_na
+ [SHIFT K_R] > '႞'  c key_s_nn
+ [SHIFT K_T] > 'ြ'  c key_s_yayi
+ [SHIFT K_Y] > 'ၿ'  c key_s_ba
+ [SHIFT K_U] > 'ၷ'  c key_s_ga
+ [SHIFT K_I] > 'ရ'  c key_s_ra
+ [SHIFT K_O] > 'သ'  c key_s_sa
+ [SHIFT K_P] > '႟'  c key_s_rr

c --- Row 3: Home Row Shifted ---
+ [SHIFT K_A] > 'ဵ'  c key_s_ay
+ [SHIFT K_S] > 'ႅ'  c key_s_aee
+ [SHIFT K_D] > 'ီ'  c key_s_ii
+ [SHIFT K_F] > 'ႂ်' c key_s_a_ue
+ [SHIFT K_G] > 'ႂ'  c key_s_ue
+ [SHIFT K_H] > '့'  c key_s_auk
+ [SHIFT K_J] > 'ႆ'  c key_s_yai
+ [SHIFT K_K] > 'ꧥ'  c key_s_u_pali
+ [SHIFT K_L] > 'ꧦ'  c key_s_uu_pali
+ [SHIFT K_COLON] > 'း'  c key_s_visarga

c --- Row 4: Bottom Row Shifted ---
+ [SHIFT K_Z] > 'ၾ'  c key_s_fa
+ [SHIFT K_X] > 'ꩪ'  c key_s_dha_pali
+ [SHIFT K_C] > 'ꧠ'  c key_s_gha_pali
+ [SHIFT K_V] > 'ꩮ'  c key_s_la_pali
+ [SHIFT K_B] > 'ျ'  c key_s_yapin
+ [SHIFT K_N] > 'ႊ'  c key_s_tone6
+ [SHIFT K_M] > 'ႃ'  c key_s_aa_long

c --- Special Characters ---
+ [SHIFT K_PERIOD] > '။'
+ [SHIFT K_COMMA] > '၊'
```

### 3. Caps Lock လႄႈ NCAPS
မိူဝ်ႈႁဝ်းတႅမ်ႈ Keyboard တႆးၼၼ်ႉ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ Caps Lock ႁဵတ်းၵၢၼ်မိူၼ်ၼင်ႇလိၵ်ႈဢင်းၵိတ်ႉ (ဢၼ်ပဵၼ်တူဝ်လူင်)。 
ၼႂ်း Keyman ႁဝ်းၸၢင်ႈၸႂ်ႉ `NCAPS` (No Caps Lock) တႃႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်မႅၼ်ႈၸွမ်းပိူင် Shift တႄႇတႄႇယဝ်ႉ။

* **Example:** `+ [NCAPS SHIFT K_C] > 'ၶ'` (မၼ်းတေဢွၵ်ႇ 'ၶ' မိူဝ်ႈၼဵၵ်ႉ Shift ၵူၺ်း၊ သင်ၼဵၵ်ႉ Caps Lock ဝႆႉၵေႃႈ မၼ်းတေဢမ်ႇဢွၵ်ႇ)။

---

### ### Summary (တွၼ်ႈၵႅပ်ႈ Lesson 5)

| IT Terms | ၶေႃႈၵႂၢမ်းတႆး / Definition                                |
| :--- |:----------------------------------------------------------|
| **Shift State** | ၶီး (State) ဢၼ်ၵုမ်းထိင်းၵၢၼ်ၼဵၵ်ႉ Shift Key ပႃးဝႆႉ       |
| **Modifier Key** | Key ဢၼ်ၸႂ်ႉၼဵၵ်ႉၵိုၵ်းၵၼ် (မိူၼ်ၼင်ႇ Shift, Ctrl, Alt)    |
| **NCAPS** | ၶေႃႈသင်ႇဢၼ်လၢတ်ႈဝႃႈ ဢမ်ႇလူဝ်ႇႁႂ်ႈ Caps Lock မီးဢူၼ်းၸွမ်း |
| **Layer Switch** | ၵၢၼ်လႅၵ်ႈလၢႆႈၼႃႈ Keyboard တီႈ Mobile ႁႂ်ႈမီးလၢႆၸၼ်ႉ       |

**Summary:** ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းလႆႈႁဵၼ်းႁူႉၵၢၼ်ၸႂ်ႉ `SHIFT` Modifier တႃႇမႅပ်ႉ (Map) တူဝ်လိၵ်ႈၸၼ်ႉသွင်。 ႁဝ်းလႆႈဢဝ်တူဝ်လိၵ်ႈတႆး ဢၼ်ဝၢင်းဝႆႉၼႂ်း Row 4 ၶွင် XML ၼၼ်ႉ မႃးတႅမ်ႈပဵၼ် Code ၼႂ်း Keyman ႁႂ်ႈၸႂ်ႉလႆႈတင်း Desktop လႄႈ Mobile ယဝ်ႉ。

---