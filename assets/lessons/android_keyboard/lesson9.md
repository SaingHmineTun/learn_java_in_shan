## **Lesson 9: Designing the Shan XML Layout for TMK Keyboard Pro**


တွၼ်ႈတႃႇ **Lesson 9** ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ "ႁူဝ်ၸႂ်" ၶွင် **TMK Keyboard Pro** ဢၼ်ပဵၼ်လိၵ်ႈတႆး (Shan Script) ၶႃႈယဝ်ႉ။
ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတေတႅမ်ႈလႆႈငၢႆႈ လႄႈ ၽၢႆၼၼ်ႉ ႁဝ်းတေၸႅၵ်ႇပဵၼ် **`shn_normal`** လႄႈ **`shn_shifted`** ၶႃႈ။

---

### **1. Designing `shn_normal.xml`**

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေဝၢင်းတူဝ်လိၵ်ႈဢၼ်ၸႂ်ႉၼမ် (ၵ, ၶ, င...) ဝႆႉတီႈၼႃႈဢွၼ်တၢင်းၶႃႈ။

#### **res/layout/layout_shn_normal.xml**
```xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:padding="1dp"
    android:background="#1A1A1A">

    <Button android:id="@+id/key_shn_1" style="@style/TmkKeyStyle" android:text="႑"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_2"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_shn_2" style="@style/TmkKeyStyle" android:text="႒"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_1"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_3"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_shn_3" style="@style/TmkKeyStyle" android:text="႓"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_2"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_4"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_shn_4" style="@style/TmkKeyStyle" android:text="႔"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_3"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_5"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_shn_5" style="@style/TmkKeyStyle" android:text="႕"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_4"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_6"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_shn_6" style="@style/TmkKeyStyle" android:text="႖"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_5"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_7"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_shn_7" style="@style/TmkKeyStyle" android:text="႗"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_6"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_8"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_shn_8" style="@style/TmkKeyStyle" android:text="႘"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_7"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_9"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_shn_9" style="@style/TmkKeyStyle" android:text="႙"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_8"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_0"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_shn_0" style="@style/TmkKeyStyle" android:text="႐"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_9"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_shn_ca" style="@style/TmkKeyStyle" android:text="ၸ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_ta"
        app:layout_constraintTop_toBottomOf="@+id/key_shn_1" />

    <Button android:id="@+id/key_shn_ta" style="@style/TmkKeyStyle" android:text="တ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_ca"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_na"
        app:layout_constraintTop_toTopOf="@+id/key_shn_ca" />

    <Button android:id="@+id/key_shn_na" style="@style/TmkKeyStyle" android:text="ၼ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_ta"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_ma"
        app:layout_constraintTop_toTopOf="@+id/key_shn_ca" />

    <Button android:id="@+id/key_shn_ma" style="@style/TmkKeyStyle" android:text="မ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_na"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_aa"
        app:layout_constraintTop_toTopOf="@+id/key_shn_ca" />

    <Button android:id="@+id/key_shn_aa" style="@style/TmkKeyStyle" android:text="ဢ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_ma"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_pa"
        app:layout_constraintTop_toTopOf="@+id/key_shn_ca" />

    <Button android:id="@+id/key_shn_pa" style="@style/TmkKeyStyle" android:text="ပ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_aa"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_ka"
        app:layout_constraintTop_toTopOf="@+id/key_shn_ca" />

    <Button android:id="@+id/key_shn_ka" style="@style/TmkKeyStyle" android:text="ၵ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_pa"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_nga"
        app:layout_constraintTop_toTopOf="@+id/key_shn_ca" />

    <Button android:id="@+id/key_shn_nga" style="@style/TmkKeyStyle" android:text="င"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_ka"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_wa"
        app:layout_constraintTop_toTopOf="@+id/key_shn_ca" />

    <Button android:id="@+id/key_shn_wa" style="@style/TmkKeyStyle" android:text="ဝ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_nga"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_ha"
        app:layout_constraintTop_toTopOf="@+id/key_shn_ca" />

    <Button android:id="@+id/key_shn_ha" style="@style/TmkKeyStyle" android:text="ႁ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_wa"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_shn_ca" />

    <Button android:id="@+id/key_shn_e" style="@style/TmkKeyStyle" android:text="ေ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_ae"
        app:layout_constraintTop_toBottomOf="@+id/key_shn_ca" />

    <Button android:id="@+id/key_shn_ae" style="@style/TmkKeyStyle" android:text="ႄ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_e"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_i"
        app:layout_constraintTop_toTopOf="@+id/key_shn_e" />

    <Button android:id="@+id/key_shn_i" style="@style/TmkKeyStyle" android:text="ိ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_ae"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_asat"
        app:layout_constraintTop_toTopOf="@+id/key_shn_e" />

    <Button android:id="@+id/key_shn_asat" style="@style/TmkKeyStyle" android:text="်"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_i"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_medial_wa"
        app:layout_constraintTop_toTopOf="@+id/key_shn_e" />

    <Button android:id="@+id/key_shn_medial_wa" style="@style/TmkKeyStyle" android:text="ွ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_asat"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_tone3"
        app:layout_constraintTop_toTopOf="@+id/key_shn_e" />

    <Button android:id="@+id/key_shn_tone3" style="@style/TmkKeyStyle" android:text="ႉ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_medial_wa"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_tone1"
        app:layout_constraintTop_toTopOf="@+id/key_shn_e" />

    <Button android:id="@+id/key_shn_tone1" style="@style/TmkKeyStyle" android:text="ႇ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_tone3"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_u"
        app:layout_constraintTop_toTopOf="@+id/key_shn_e" />

    <Button android:id="@+id/key_shn_u" style="@style/TmkKeyStyle" android:text="ု"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_tone1"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_uu"
        app:layout_constraintTop_toTopOf="@+id/key_shn_e" />

    <Button android:id="@+id/key_shn_uu" style="@style/TmkKeyStyle" android:text="ူ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_u"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_tone2"
        app:layout_constraintTop_toTopOf="@+id/key_shn_e" />

    <Button android:id="@+id/key_shn_tone2" style="@style/TmkKeyStyle" android:text="ႈ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_uu"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_shn_e" />

    <Button android:id="@+id/key_shn_shift" style="@style/TmkKeyStyle" android:text="⇧"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_pha"
        app:layout_constraintTop_toBottomOf="@+id/key_shn_e" />

    <Button android:id="@+id/key_shn_pha" style="@style/TmkKeyStyle" android:text="ၽ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_shift"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_tha"
        app:layout_constraintTop_toTopOf="@+id/key_shn_shift" />

    <Button android:id="@+id/key_shn_tha" style="@style/TmkKeyStyle" android:text="ထ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_pha"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_kha"
        app:layout_constraintTop_toTopOf="@+id/key_shn_shift" />

    <Button android:id="@+id/key_shn_kha" style="@style/TmkKeyStyle" android:text="ၶ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_tha"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_la"
        app:layout_constraintTop_toTopOf="@+id/key_shn_shift" />

    <Button android:id="@+id/key_shn_la" style="@style/TmkKeyStyle" android:text="လ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_kha"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_ya"
        app:layout_constraintTop_toTopOf="@+id/key_shn_shift" />

    <Button android:id="@+id/key_shn_ya" style="@style/TmkKeyStyle" android:text="ယ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_la"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_nya"
        app:layout_constraintTop_toTopOf="@+id/key_shn_shift" />

    <Button android:id="@+id/key_shn_nya" style="@style/TmkKeyStyle" android:text="ၺ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_ya"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_aa_large"
        app:layout_constraintTop_toTopOf="@+id/key_shn_shift" />

    <Button android:id="@+id/key_shn_aa_large" style="@style/TmkKeyStyle" android:text="ၢ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_nya"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_del"
        app:layout_constraintTop_toTopOf="@+id/key_shn_shift" />

    <Button android:id="@+id/key_shn_del" style="@style/TmkKeyStyle" android:text="⌫"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_aa_large"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_shn_shift" />

    <Button android:id="@+id/key_shn_lang" style="@style/TmkKeyStyle" android:text="🌐"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_emoji"
        app:layout_constraintTop_toBottomOf="@+id/key_shn_shift" />

    <Button android:id="@+id/key_shn_emoji" style="@style/TmkKeyStyle" android:text="😊"
        app:layout_constraintHorizontal_weight="1.25"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_lang"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_123"
        app:layout_constraintTop_toTopOf="@+id/key_shn_lang" />

    <Button android:id="@+id/key_shn_123" style="@style/TmkKeyStyle" android:text="123"
        app:layout_constraintHorizontal_weight="1.25"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_emoji"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_space"
        app:layout_constraintTop_toTopOf="@+id/key_shn_lang" />

    <Button android:id="@+id/key_shn_space" style="@style/TmkKeyStyle" android:text="တႆး"
        app:layout_constraintHorizontal_weight="3"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_123"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_punct"
        app:layout_constraintTop_toTopOf="@+id/key_shn_lang" />

    <Button android:id="@+id/key_shn_punct" style="@style/TmkKeyStyle" android:text="။ ၊"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_space"
        app:layout_constraintRight_toLeftOf="@+id/key_shn_enter"
        app:layout_constraintTop_toTopOf="@+id/key_shn_lang" />

    <Button android:id="@+id/key_shn_enter" style="@style/TmkKeyStyle" android:text="⏎"
        app:layout_constraintHorizontal_weight="2"
        app:layout_constraintLeft_toRightOf="@+id/key_shn_punct"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_shn_lang" />

</androidx.constraintlayout.widget.ConstraintLayout>
```

---

### **2. Designing `shn_shifted.xml`**

မိူဝ်ႈၼိပ်ႉ Shift၊ ႁဝ်းတေၼႄတူဝ်လိၵ်ႈဢၼ် "သိူၼ်ႈ" ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈဢၼ်ၸႂ်ႉဢေႇ (ၷ, ၻ, ၿ...) ၶႃႈ။

#### **res/layout/layout_shn_shifted.xml**
```xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto" android:layout_width="match_parent"
    android:layout_height="wrap_content" android:background="#1A1A1A" android:padding="1dp">

    <Button android:id="@+id/key_s_cha" style="@style/TmkKeyStyle" android:text="ꧡ"
        app:layout_constraintHorizontal_weight="1" app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s_chha"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_chha" style="@style/TmkKeyStyle" android:text="ꧢ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_cha"
        app:layout_constraintRight_toLeftOf="@+id/key_s_bha"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_bha" style="@style/TmkKeyStyle" android:text="ꧤ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_chha"
        app:layout_constraintRight_toLeftOf="@+id/key_s_za"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_za" style="@style/TmkKeyStyle" android:text="ၹ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_bha"
        app:layout_constraintRight_toLeftOf="@+id/key_s_tha"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_tha" style="@style/TmkKeyStyle" android:text="ႀ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_za"
        app:layout_constraintRight_toLeftOf="@+id/key_s_tta"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_tta" style="@style/TmkKeyStyle" android:text="ꩦ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_tha"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ttha"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_ttha" style="@style/TmkKeyStyle" android:text="ꩧ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_tta"
        app:layout_constraintRight_toLeftOf="@+id/key_s_dda"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_dda" style="@style/TmkKeyStyle" android:text="ꩨ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ttha"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ddha"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_ddha" style="@style/TmkKeyStyle" android:text="ꩩ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_dda"
        app:layout_constraintRight_toLeftOf="@+id/key_s_am"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_am" style="@style/TmkKeyStyle" android:text="ံ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ddha"
        app:layout_constraintRight_toRightOf="parent" app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_ja" style="@style/TmkKeyStyle" android:text="ꩡ"
        app:layout_constraintHorizontal_weight="1" app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s_da"
        app:layout_constraintTop_toBottomOf="@+id/key_s_cha" />

    <Button android:id="@+id/key_s_da" style="@style/TmkKeyStyle" android:text="ၻ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ja"
        app:layout_constraintRight_toLeftOf="@+id/key_s_na"
        app:layout_constraintTop_toTopOf="@+id/key_s_ja" />

    <Button android:id="@+id/key_s_na" style="@style/TmkKeyStyle" android:text="ꧣ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_da"
        app:layout_constraintRight_toLeftOf="@+id/key_s_nn"
        app:layout_constraintTop_toTopOf="@+id/key_s_ja" />

    <Button android:id="@+id/key_s_nn" style="@style/TmkKeyStyle" android:text="႞"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_na"
        app:layout_constraintRight_toLeftOf="@+id/key_s_yayi"
        app:layout_constraintTop_toTopOf="@+id/key_s_ja" />

    <Button android:id="@+id/key_s_yayi" style="@style/TmkKeyStyle" android:text="ြ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_nn"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ba"
        app:layout_constraintTop_toTopOf="@+id/key_s_ja" />

    <Button android:id="@+id/key_s_ba" style="@style/TmkKeyStyle" android:text="ၿ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_yayi"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ga"
        app:layout_constraintTop_toTopOf="@+id/key_s_ja" />

    <Button android:id="@+id/key_s_ga" style="@style/TmkKeyStyle" android:text="ၷ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ba"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ra"
        app:layout_constraintTop_toTopOf="@+id/key_s_ja" />

    <Button android:id="@+id/key_s_ra" style="@style/TmkKeyStyle" android:text="ရ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ga"
        app:layout_constraintRight_toLeftOf="@+id/key_s_sa"
        app:layout_constraintTop_toTopOf="@+id/key_s_ja" />

    <Button android:id="@+id/key_s_sa" style="@style/TmkKeyStyle" android:text="သ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ra"
        app:layout_constraintRight_toLeftOf="@+id/key_s_rr"
        app:layout_constraintTop_toTopOf="@+id/key_s_ja" />

    <Button android:id="@+id/key_s_rr" style="@style/TmkKeyStyle" android:text="႟"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_sa"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_s_ja" />

    <Button android:id="@+id/key_s_ay" style="@style/TmkKeyStyle" android:text="ဵ"
        app:layout_constraintHorizontal_weight="1" app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s_aee"
        app:layout_constraintTop_toBottomOf="@+id/key_s_ja" />

    <Button android:id="@+id/key_s_aee" style="@style/TmkKeyStyle" android:text="ႅ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ay"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ii"
        app:layout_constraintTop_toTopOf="@+id/key_s_ay" />

    <Button android:id="@+id/key_s_ii" style="@style/TmkKeyStyle" android:text="ီ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_aee"
        app:layout_constraintRight_toLeftOf="@+id/key_s_a_ue"
        app:layout_constraintTop_toTopOf="@+id/key_s_ay" />

    <Button android:id="@+id/key_s_a_ue" style="@style/TmkKeyStyle" android:text="ႂ်"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ii"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ue"
        app:layout_constraintTop_toTopOf="@+id/key_s_ay" />

    <Button android:id="@+id/key_s_ue" style="@style/TmkKeyStyle" android:text="ႂ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_a_ue"
        app:layout_constraintRight_toLeftOf="@+id/key_s_auk"
        app:layout_constraintTop_toTopOf="@+id/key_s_ay" />

    <Button android:id="@+id/key_s_auk" style="@style/TmkKeyStyle" android:text="့"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ue"
        app:layout_constraintRight_toLeftOf="@+id/key_s_yai"
        app:layout_constraintTop_toTopOf="@+id/key_s_ay" />

    <Button android:id="@+id/key_s_yai" style="@style/TmkKeyStyle" android:text="ႆ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_auk"
        app:layout_constraintRight_toLeftOf="@+id/key_s_u_pali"
        app:layout_constraintTop_toTopOf="@+id/key_s_ay" />

    <Button android:id="@+id/key_s_u_pali" style="@style/TmkKeyStyle" android:text="ꧥ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_yai"
        app:layout_constraintRight_toLeftOf="@+id/key_s_uu_pali"
        app:layout_constraintTop_toTopOf="@+id/key_s_ay" />

    <Button android:id="@+id/key_s_uu_pali" style="@style/TmkKeyStyle" android:text="ꧦ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_u_pali"
        app:layout_constraintRight_toLeftOf="@+id/key_s_visarga"
        app:layout_constraintTop_toTopOf="@+id/key_s_ay" />

    <Button android:id="@+id/key_s_visarga" style="@style/TmkKeyStyle" android:text="း"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_uu_pali"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_s_ay" />

    <Button android:id="@+id/key_s_shift_all" style="@style/TmkKeyStyle" android:text="⇪"
        app:layout_constraintHorizontal_weight="1.5" app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s_fa"
        app:layout_constraintTop_toBottomOf="@+id/key_s_ay" />

    <Button android:id="@+id/key_s_fa" style="@style/TmkKeyStyle" android:text="ၾ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_shift_all"
        app:layout_constraintRight_toLeftOf="@+id/key_s_dha_pali"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift_all" />

    <Button android:id="@+id/key_s_dha_pali" style="@style/TmkKeyStyle" android:text="ꩪ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_fa"
        app:layout_constraintRight_toLeftOf="@+id/key_s_gha_pali"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift_all" />

    <Button android:id="@+id/key_s_gha_pali" style="@style/TmkKeyStyle" android:text="ꧠ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_dha_pali"
        app:layout_constraintRight_toLeftOf="@+id/key_s_la_pali"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift_all" />

    <Button android:id="@+id/key_s_la_pali" style="@style/TmkKeyStyle" android:text="ꩮ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_gha_pali"
        app:layout_constraintRight_toLeftOf="@+id/key_s_yapin"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift_all" />

    <Button android:id="@+id/key_s_yapin" style="@style/TmkKeyStyle" android:text="ျ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_la_pali"
        app:layout_constraintRight_toLeftOf="@+id/key_s_tone6"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift_all" />

    <Button android:id="@+id/key_s_tone6" style="@style/TmkKeyStyle" android:text="ႊ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_yapin"
        app:layout_constraintRight_toLeftOf="@+id/key_s_aa_long"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift_all" />

    <Button android:id="@+id/key_s_aa_long" style="@style/TmkKeyStyle" android:text="ႃ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_tone6"
        app:layout_constraintRight_toLeftOf="@+id/key_s_del"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift_all" />

    <Button android:id="@+id/key_s_del" style="@style/TmkKeyStyle" android:text="⌫"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toRightOf="@+id/key_s_aa_long"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift_all" />

    <Button android:id="@+id/key_s_lang" style="@style/TmkKeyStyle" android:text="🌐"
        app:layout_constraintHorizontal_weight="1.5" app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s_emoji"
        app:layout_constraintTop_toBottomOf="@+id/key_s_shift_all" />

    <Button android:id="@+id/key_s_emoji" style="@style/TmkKeyStyle" android:text="😊"
        app:layout_constraintHorizontal_weight="1.25"
        app:layout_constraintLeft_toRightOf="@+id/key_s_lang"
        app:layout_constraintRight_toLeftOf="@+id/key_s_123"
        app:layout_constraintTop_toTopOf="@+id/key_s_lang" />

    <Button android:id="@+id/key_s_123" style="@style/TmkKeyStyle" android:text="123"
        app:layout_constraintHorizontal_weight="1.25"
        app:layout_constraintLeft_toRightOf="@+id/key_s_emoji"
        app:layout_constraintRight_toLeftOf="@+id/key_s_space"
        app:layout_constraintTop_toTopOf="@+id/key_s_lang" />

    <Button android:id="@+id/key_s_space" style="@style/TmkKeyStyle" android:text="တႆး"
        app:layout_constraintHorizontal_weight="2.5"
        app:layout_constraintLeft_toRightOf="@+id/key_s_123"
        app:layout_constraintRight_toLeftOf="@+id/key_s_comma"
        app:layout_constraintTop_toTopOf="@+id/key_s_lang" />

    <Button android:id="@+id/key_s_comma" style="@style/TmkKeyStyle" android:text="၊"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toRightOf="@+id/key_s_space"
        app:layout_constraintRight_toLeftOf="@+id/key_s_enter"
        app:layout_constraintTop_toTopOf="@+id/key_s_lang" />

    <Button android:id="@+id/key_s_enter" style="@style/TmkKeyStyle" android:text="⏎"
        app:layout_constraintHorizontal_weight="2"
        app:layout_constraintLeft_toRightOf="@+id/key_s_comma"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_s_lang" />

</androidx.constraintlayout.widget.ConstraintLayout>
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Unicode Compliance:** တုမ်ႇၼဵၵ်ႉၵူႈဢၼ် တေလႆႈသူင်ႇ Unicode Standard Codes တႅတ်ႈတႅတ်ႈတေႃးတေႃး (Module 3)။
* **Theme Ready:** ယွၼ်ႉၸႂ်ႉ `TmkKeyStyle`၊ ႁဝ်းၸၢင်ႈလႅၵ်ႈသီတုမ်ႇပဵၼ် **Blue/Gold** လႆႈငၢႆႈငၢႆႈၶႃႈ။

---