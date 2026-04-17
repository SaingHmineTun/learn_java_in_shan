## **Lesson 8: Designing the Myanmar Unicode Layout (Normal & Shifted)**


### **1. The Custom XML Strategy**
ႁဝ်းတေလႆႈသၢင်ႈၾၢႆႇ XML 2 ၾၢႆႇ တွၼ်ႈတႃႇလႅၵ်ႈၵၼ် (Toggle) မိူဝ်ႈၼိပ်ႉ Shift ၶႃႈ:
* **`layout_my_normal.xml`**: တႃႇတူဝ်လိၵ်ႈပိုၼ်ႉထၢၼ် (က, ခ, ဂ...)
* **`layout_my_shifted.xml`**: တႃႇတူဝ်လိၵ်ႈ "သိူၼ်ႈ" လႄႈ တူဝ်လိၵ်ႈဢၼ်ၸႂ်ႉဢေႇ (ဃ, ဈ, ဏ...)

---

### **2. The Code: layout_my_normal.xml (Snippet)**
ႁဝ်းတေဢဝ် Codes မႃးသႂ်ႇၼႂ်းပိူင် Modern ConstraintLayout ၼင်ႇၼႆၶႃႈ:

```xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:padding="1dp"
    android:background="#1A1A1A">

    <Button android:id="@+id/key_my_1" style="@style/TmkKeyStyle" android:text="၁"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_my_2"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_my_2" style="@style/TmkKeyStyle" android:text="၂"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_1"
        app:layout_constraintRight_toLeftOf="@+id/key_my_3"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_my_3" style="@style/TmkKeyStyle" android:text="၃"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_2"
        app:layout_constraintRight_toLeftOf="@+id/key_my_4"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_my_4" style="@style/TmkKeyStyle" android:text="၄"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_3"
        app:layout_constraintRight_toLeftOf="@+id/key_my_5"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_my_5" style="@style/TmkKeyStyle" android:text="၅"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_4"
        app:layout_constraintRight_toLeftOf="@+id/key_my_6"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_my_6" style="@style/TmkKeyStyle" android:text="၆"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_5"
        app:layout_constraintRight_toLeftOf="@+id/key_my_7"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_my_7" style="@style/TmkKeyStyle" android:text="၇"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_6"
        app:layout_constraintRight_toLeftOf="@+id/key_my_8"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_my_8" style="@style/TmkKeyStyle" android:text="၈"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_7"
        app:layout_constraintRight_toLeftOf="@+id/key_my_9"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_my_9" style="@style/TmkKeyStyle" android:text="၉"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_8"
        app:layout_constraintRight_toLeftOf="@+id/key_my_0"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_my_0" style="@style/TmkKeyStyle" android:text="၀"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_9"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_my_hsa" style="@style/TmkKeyStyle" android:text="ဆ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_my_ta"
        app:layout_constraintTop_toBottomOf="@+id/key_my_1" />

    <Button android:id="@+id/key_my_ta" style="@style/TmkKeyStyle" android:text="တ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_hsa"
        app:layout_constraintRight_toLeftOf="@+id/key_my_na"
        app:layout_constraintTop_toTopOf="@+id/key_my_hsa" />

    <Button android:id="@+id/key_my_na" style="@style/TmkKeyStyle" android:text="န"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_ta"
        app:layout_constraintRight_toLeftOf="@+id/key_my_ma"
        app:layout_constraintTop_toTopOf="@+id/key_my_hsa" />

    <Button android:id="@+id/key_my_ma" style="@style/TmkKeyStyle" android:text="မ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_na"
        app:layout_constraintRight_toLeftOf="@+id/key_my_a"
        app:layout_constraintTop_toTopOf="@+id/key_my_hsa" />

    <Button android:id="@+id/key_my_a" style="@style/TmkKeyStyle" android:text="အ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_ma"
        app:layout_constraintRight_toLeftOf="@+id/key_my_pa"
        app:layout_constraintTop_toTopOf="@+id/key_my_hsa" />

    <Button android:id="@+id/key_my_pa" style="@style/TmkKeyStyle" android:text="ပ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_a"
        app:layout_constraintRight_toLeftOf="@+id/key_my_ka"
        app:layout_constraintTop_toTopOf="@+id/key_my_hsa" />

    <Button android:id="@+id/key_my_ka" style="@style/TmkKeyStyle" android:text="က"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_pa"
        app:layout_constraintRight_toLeftOf="@+id/key_my_nga"
        app:layout_constraintTop_toTopOf="@+id/key_my_hsa" />

    <Button android:id="@+id/key_my_nga" style="@style/TmkKeyStyle" android:text="င"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_ka"
        app:layout_constraintRight_toLeftOf="@+id/key_my_tha"
        app:layout_constraintTop_toTopOf="@+id/key_my_hsa" />

    <Button android:id="@+id/key_my_tha" style="@style/TmkKeyStyle" android:text="သ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_nga"
        app:layout_constraintRight_toLeftOf="@+id/key_my_sa"
        app:layout_constraintTop_toTopOf="@+id/key_my_hsa" />

    <Button android:id="@+id/key_my_sa" style="@style/TmkKeyStyle" android:text="စ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_tha"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_my_hsa" />

    <Button android:id="@+id/key_my_e" style="@style/TmkKeyStyle" android:text="ေ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_my_yapin"
        app:layout_constraintTop_toBottomOf="@+id/key_my_hsa" />

    <Button android:id="@+id/key_my_yapin" style="@style/TmkKeyStyle" android:text="ျ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_e"
        app:layout_constraintRight_toLeftOf="@+id/key_my_i"
        app:layout_constraintTop_toTopOf="@+id/key_my_e" />

    <Button android:id="@+id/key_my_i" style="@style/TmkKeyStyle" android:text="ိ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_yapin"
        app:layout_constraintRight_toLeftOf="@+id/key_my_asat"
        app:layout_constraintTop_toTopOf="@+id/key_my_e" />

    <Button android:id="@+id/key_my_asat" style="@style/TmkKeyStyle" android:text="်"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_i"
        app:layout_constraintRight_toLeftOf="@+id/key_my_wa"
        app:layout_constraintTop_toTopOf="@+id/key_my_e" />

    <Button android:id="@+id/key_my_wa" style="@style/TmkKeyStyle" android:text="ါ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_asat"
        app:layout_constraintRight_toLeftOf="@+id/key_my_aukmyit"
        app:layout_constraintTop_toTopOf="@+id/key_my_e" />

    <Button android:id="@+id/key_my_aukmyit" style="@style/TmkKeyStyle" android:text="့"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_wa"
        app:layout_constraintRight_toLeftOf="@+id/key_my_yayi"
        app:layout_constraintTop_toTopOf="@+id/key_my_e" />

    <Button android:id="@+id/key_my_yayi" style="@style/TmkKeyStyle" android:text="ြ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_aukmyit"
        app:layout_constraintRight_toLeftOf="@+id/key_my_u"
        app:layout_constraintTop_toTopOf="@+id/key_my_e" />

    <Button android:id="@+id/key_my_u" style="@style/TmkKeyStyle" android:text="ု"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_yayi"
        app:layout_constraintRight_toLeftOf="@+id/key_my_uu"
        app:layout_constraintTop_toTopOf="@+id/key_my_e" />

    <Button android:id="@+id/key_my_uu" style="@style/TmkKeyStyle" android:text="ူ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_u"
        app:layout_constraintRight_toLeftOf="@+id/key_my_visarga"
        app:layout_constraintTop_toTopOf="@+id/key_my_e" />

    <Button android:id="@+id/key_my_visarga" style="@style/TmkKeyStyle" android:text="း"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_uu"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_my_e" />

    <Button android:id="@+id/key_my_shift" style="@style/TmkKeyStyle" android:text="⇧"
        app:layout_constraintHorizontal_weight="1.2"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_my_pha"
        app:layout_constraintTop_toBottomOf="@+id/key_my_e" />

    <Button android:id="@+id/key_my_pha" style="@style/TmkKeyStyle" android:text="ဖ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_shift"
        app:layout_constraintRight_toLeftOf="@+id/key_my_hta"
        app:layout_constraintTop_toTopOf="@+id/key_my_shift" />

    <Button android:id="@+id/key_my_hta" style="@style/TmkKeyStyle" android:text="ထ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_pha"
        app:layout_constraintRight_toLeftOf="@+id/key_my_kha"
        app:layout_constraintTop_toTopOf="@+id/key_my_shift" />

    <Button android:id="@+id/key_my_kha" style="@style/TmkKeyStyle" android:text="ခ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_hta"
        app:layout_constraintRight_toLeftOf="@+id/key_my_la"
        app:layout_constraintTop_toTopOf="@+id/key_my_shift" />

    <Button android:id="@+id/key_my_la" style="@style/TmkKeyStyle" android:text="လ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_kha"
        app:layout_constraintRight_toLeftOf="@+id/key_my_ba"
        app:layout_constraintTop_toTopOf="@+id/key_my_shift" />

    <Button android:id="@+id/key_my_ba" style="@style/TmkKeyStyle" android:text="ဘ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_la"
        app:layout_constraintRight_toLeftOf="@+id/key_my_nya"
        app:layout_constraintTop_toTopOf="@+id/key_my_shift" />

    <Button android:id="@+id/key_my_nya" style="@style/TmkKeyStyle" android:text="ည"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_ba"
        app:layout_constraintRight_toLeftOf="@+id/key_my_aa"
        app:layout_constraintTop_toTopOf="@+id/key_my_shift" />

    <Button android:id="@+id/key_my_aa" style="@style/TmkKeyStyle" android:text="ာ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_nya"
        app:layout_constraintRight_toLeftOf="@+id/key_my_ya"
        app:layout_constraintTop_toTopOf="@+id/key_my_shift" />

    <Button android:id="@+id/key_my_ya" style="@style/TmkKeyStyle" android:text="ယ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_my_aa"
        app:layout_constraintRight_toLeftOf="@+id/key_my_del"
        app:layout_constraintTop_toTopOf="@+id/key_my_shift" />

    <Button android:id="@+id/key_my_del" style="@style/TmkKeyStyle" android:text="⌫"
        app:layout_constraintHorizontal_weight="1.2"
        app:layout_constraintLeft_toRightOf="@+id/key_my_ya"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_my_shift" />

    <Button android:id="@+id/key_my_lang" style="@style/TmkKeyStyle" android:text="🌐"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_my_emoji"
        app:layout_constraintTop_toBottomOf="@+id/key_my_shift" />

    <Button android:id="@+id/key_my_emoji" style="@style/TmkKeyStyle" android:text="😊"
        app:layout_constraintHorizontal_weight="1.25"
        app:layout_constraintLeft_toRightOf="@+id/key_my_lang"
        app:layout_constraintRight_toLeftOf="@+id/key_my_123"
        app:layout_constraintTop_toTopOf="@+id/key_my_lang" />

    <Button android:id="@+id/key_my_123" style="@style/TmkKeyStyle" android:text="123"
        app:layout_constraintHorizontal_weight="1.25"
        app:layout_constraintLeft_toRightOf="@+id/key_my_emoji"
        app:layout_constraintRight_toLeftOf="@+id/key_my_space"
        app:layout_constraintTop_toTopOf="@+id/key_my_lang" />

    <Button android:id="@+id/key_my_space" style="@style/TmkKeyStyle" android:text="ဗမာ"
        app:layout_constraintHorizontal_weight="3"
        app:layout_constraintLeft_toRightOf="@+id/key_my_123"
        app:layout_constraintRight_toLeftOf="@+id/key_my_punct"
        app:layout_constraintTop_toTopOf="@+id/key_my_lang" />

    <Button android:id="@+id/key_my_punct" style="@style/TmkKeyStyle" android:text="။ ၊"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toRightOf="@+id/key_my_space"
        app:layout_constraintRight_toLeftOf="@+id/key_my_enter"
        app:layout_constraintTop_toTopOf="@+id/key_my_lang" />

    <Button android:id="@+id/key_my_enter" style="@style/TmkKeyStyle" android:text="⏎"
        app:layout_constraintHorizontal_weight="2"
        app:layout_constraintLeft_toRightOf="@+id/key_my_punct"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_my_lang" />

</androidx.constraintlayout.widget.ConstraintLayout>
```

---


### **2. The Code: layout_my_shifted.xml**

```xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:padding="1dp"
    android:background="#1A1A1A">

    <Button android:id="@+id/key_s_aw" style="@style/TmkKeyStyle" android:text="ဪ"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ae"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_ae" style="@style/TmkKeyStyle" android:text="ဧ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_aw"
        app:layout_constraintRight_toLeftOf="@+id/key_s_da"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_da" style="@style/TmkKeyStyle" android:text="ဍ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ae"
        app:layout_constraintRight_toLeftOf="@+id/key_s_4"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_4" style="@style/TmkKeyStyle" android:text="၎"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_da"
        app:layout_constraintRight_toLeftOf="@+id/key_s_tta"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_tta" style="@style/TmkKeyStyle" android:text="ၔ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_4"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ppa"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_ppa" style="@style/TmkKeyStyle" android:text="ၐ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_tta"
        app:layout_constraintRight_toLeftOf="@+id/key_s_dda"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_dda" style="@style/TmkKeyStyle" android:text="ဎ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ppa"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ta"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_ta" style="@style/TmkKeyStyle" android:text="ဋ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_dda"
        app:layout_constraintRight_toLeftOf="@+id/key_s_o"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_o" style="@style/TmkKeyStyle" android:text="ဩ"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ta"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_s_za" style="@style/TmkKeyStyle" android:text="ဈ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ss"
        app:layout_constraintTop_toBottomOf="@+id/key_s_aw" />

    <Button android:id="@+id/key_s_ss" style="@style/TmkKeyStyle" android:text="ဿ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_za"
        app:layout_constraintRight_toLeftOf="@+id/key_s_i"
        app:layout_constraintTop_toTopOf="@+id/key_s_za" />

    <Button android:id="@+id/key_s_i" style="@style/TmkKeyStyle" android:text="ဣ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ss"
        app:layout_constraintRight_toLeftOf="@+id/key_s_yway"
        app:layout_constraintTop_toTopOf="@+id/key_s_za" />

    <Button android:id="@+id/key_s_yway" style="@style/TmkKeyStyle" android:text="၍"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_i"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ee"
        app:layout_constraintTop_toTopOf="@+id/key_s_za" />

    <Button android:id="@+id/key_s_ee" style="@style/TmkKeyStyle" android:text="ဤ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_yway"
        app:layout_constraintRight_toLeftOf="@+id/key_s_nite"
        app:layout_constraintTop_toTopOf="@+id/key_s_za" />

    <Button android:id="@+id/key_s_nite" style="@style/TmkKeyStyle" android:text="၌"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ee"
        app:layout_constraintRight_toLeftOf="@+id/key_s_u"
        app:layout_constraintTop_toTopOf="@+id/key_s_za" />

    <Button android:id="@+id/key_s_u" style="@style/TmkKeyStyle" android:text="ဥ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_nite"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ra"
        app:layout_constraintTop_toTopOf="@+id/key_s_za" />

    <Button android:id="@+id/key_s_ra" style="@style/TmkKeyStyle" android:text="ရ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_u"
        app:layout_constraintRight_toLeftOf="@+id/key_s_wa"
        app:layout_constraintTop_toTopOf="@+id/key_s_za" />

    <Button android:id="@+id/key_s_wa" style="@style/TmkKeyStyle" android:text="ဝ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ra"
        app:layout_constraintRight_toLeftOf="@+id/key_s_na"
        app:layout_constraintTop_toTopOf="@+id/key_s_za" />

    <Button android:id="@+id/key_s_na" style="@style/TmkKeyStyle" android:text="ဏ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_wa"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_s_za" />

    <Button android:id="@+id/key_s_ba" style="@style/TmkKeyStyle" android:text="ဗ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s_hah"
        app:layout_constraintTop_toBottomOf="@+id/key_s_za" />

    <Button android:id="@+id/key_s_hah" style="@style/TmkKeyStyle" android:text="ှ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ba"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ii"
        app:layout_constraintTop_toTopOf="@+id/key_s_ba" />

    <Button android:id="@+id/key_s_ii" style="@style/TmkKeyStyle" android:text="ီ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_hah"
        app:layout_constraintRight_toLeftOf="@+id/key_s_stack"
        app:layout_constraintTop_toTopOf="@+id/key_s_ba" />

    <Button android:id="@+id/key_s_stack" style="@style/TmkKeyStyle" android:text="္"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ii"
        app:layout_constraintRight_toLeftOf="@+id/key_s_wah"
        app:layout_constraintTop_toTopOf="@+id/key_s_ba" />

    <Button android:id="@+id/key_s_wah" style="@style/TmkKeyStyle" android:text="ွ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_stack"
        app:layout_constraintRight_toLeftOf="@+id/key_s_am"
        app:layout_constraintTop_toTopOf="@+id/key_s_ba" />

    <Button android:id="@+id/key_s_am" style="@style/TmkKeyStyle" android:text="ံ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_wah"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ae_vowel"
        app:layout_constraintTop_toTopOf="@+id/key_s_ba" />

    <Button android:id="@+id/key_s_ae_vowel" style="@style/TmkKeyStyle" android:text="ဲ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_am"
        app:layout_constraintRight_toLeftOf="@+id/key_s_da_large"
        app:layout_constraintTop_toTopOf="@+id/key_s_ba" />

    <Button android:id="@+id/key_s_da_large" style="@style/TmkKeyStyle" android:text="ဒ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ae_vowel"
        app:layout_constraintRight_toLeftOf="@+id/key_s_dha"
        app:layout_constraintTop_toTopOf="@+id/key_s_ba" />

    <Button android:id="@+id/key_s_dha" style="@style/TmkKeyStyle" android:text="ဓ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_da_large"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ga"
        app:layout_constraintTop_toTopOf="@+id/key_s_ba" />

    <Button android:id="@+id/key_s_ga" style="@style/TmkKeyStyle" android:text="ဂ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_dha"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_s_ba" />

    <Button android:id="@+id/key_s_shift" style="@style/TmkKeyStyle" android:text="⇪"
        app:layout_constraintHorizontal_weight="1.2"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ja"
        app:layout_constraintTop_toBottomOf="@+id/key_s_ba" />

    <Button android:id="@+id/key_s_ja" style="@style/TmkKeyStyle" android:text="ဇ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_shift"
        app:layout_constraintRight_toLeftOf="@+id/key_s_hhta"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift" />

    <Button android:id="@+id/key_s_hhta" style="@style/TmkKeyStyle" android:text="ဌ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ja"
        app:layout_constraintRight_toLeftOf="@+id/key_s_gh"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift" />

    <Button android:id="@+id/key_s_gh" style="@style/TmkKeyStyle" android:text="ဃ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_hhta"
        app:layout_constraintRight_toLeftOf="@+id/key_s_lla"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift" />

    <Button android:id="@+id/key_s_lla" style="@style/TmkKeyStyle" android:text="ဠ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_gh"
        app:layout_constraintRight_toLeftOf="@+id/key_s_nyya"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift" />

    <Button android:id="@+id/key_s_nyya" style="@style/TmkKeyStyle" android:text="ဉ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_lla"
        app:layout_constraintRight_toLeftOf="@+id/key_s_uuu"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift" />

    <Button android:id="@+id/key_s_uuu" style="@style/TmkKeyStyle" android:text="ဦ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_nyya"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ha"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift" />

    <Button android:id="@+id/key_s_ha" style="@style/TmkKeyStyle" android:text="ဟ"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_uuu"
        app:layout_constraintRight_toLeftOf="@+id/key_s_ei"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift" />

    <Button android:id="@+id/key_s_ei" style="@style/TmkKeyStyle" android:text="၏"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ha"
        app:layout_constraintRight_toLeftOf="@+id/key_s_del"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift" />

    <Button android:id="@+id/key_s_del" style="@style/TmkKeyStyle" android:text="⌫"
        app:layout_constraintHorizontal_weight="1.2"
        app:layout_constraintLeft_toRightOf="@+id/key_s_ei"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_s_shift" />

    <Button android:id="@+id/key_s_lang" style="@style/TmkKeyStyle" android:text="🌐"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s_emoji"
        app:layout_constraintTop_toBottomOf="@+id/key_s_shift" />

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

    <Button android:id="@+id/key_s_space" style="@style/TmkKeyStyle" android:text="ဗမာ"
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



### **4. Why Custom XML is better for Burma Layout?**

* **Complex Rendering**: လိၵ်ႈမၢၼ်ႈမီးတူဝ်သိူၼ်ႈ (Stacking characters မိူၼ်ၼင်ႇ `္`)။ ၵၢၼ်ၸႂ်ႉ Custom Buttons တေႁဵတ်းႁႂ်ႈႁဝ်းတႅမ်ႈ Logic တႃႇ "ၵွင်ႉ" တူဝ်လိၵ်ႈၸိူဝ်းၼႆႉလႆႈငၢႆႈလိူဝ် (Module 4) ၶႃႈ။
* **Visual Consistency**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈသႂ်ႇ Icons `ic_shift_white` လႄႈ `ic_delete_white` သႂ်ႇၼႂ်း `android:drawableStart` ၶွင် Button လႆႈၵမ်းသိုဝ်ႈ ၼင်ႇႁိုဝ်မၼ်းတေႁၢင်ႈလီမိူၼ်ၵၼ်တင်း App တၢင်ႇဢၼ်ၶႃႈ။

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Normal Layout**: ၸႂ်ႉတႃႇတူဝ်လိၵ်ႈဢၼ်ၸႂ်ႉၼမ် (၁-၀, က-စ, ေ-း)။
* **Shifted Layout**: ၸႂ်ႉတႃႇတူဝ်လိၵ်ႈဢၼ်မီး "ဢသိၵ်ႈ" (ဪ, ဧ, ဿ, ဣ)။
* **Logic**: မိူဝ်ႈၼိပ်ႉတုမ်ႇ Shift (`-112`), ႁဝ်းတေႁွင်ႉ `loadLayout(R.layout.layout_my_shifted)` ၼႂ်း Service ၶႃႈ။

---