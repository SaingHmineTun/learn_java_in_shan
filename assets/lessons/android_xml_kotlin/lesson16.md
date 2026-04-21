## **Lesson 16: Main Project Lab – Smart Home Controller**

### **1. The Requirement**
ႁဝ်းတေဢွၵ်ႇပိူင် (Design) ၼႃႈၸေႃးၵုမ်းထိင်းႁိူၼ်း (Smart Home) ၶႃႈ။ မၼ်းတေ
* မီး **CardView** တႃႇၼႄၶိူင်ႈၸႂ်ႉၾႆးၾႃႉ (AC, Lights, TV)။
* မီး **Vector Icons** ဢၼ်တႅၵ်ႇလႅင်း။
* ၸႂ်ႉသီ **Sapphire Blue (#003366)** လႄႈ **Gold (#FFD700)** ၸွမ်းၼင်ႇ TMK Branding။
* UI လူဝ်ႇလႆႈႁၢင်ႈလီ တင်းၼိူဝ်ၾူၼ်း လႄႈ Tablet (Responsive)။

---

### **2. The Implementation (လွၵ်းလၢႆးႁဵတ်း)**

#### **Step 1: Setup Colors & Styles (res/values)**
ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇၵႂႃႇတင်ႈသီဝႆႉၼႂ်း `colors.xml` ၶႃႈ:
```xml
<color name="tmk_primary">#003366</color> <color name="tmk_accent">#FFD700</color>  <color name="card_bg">#F5F5F5</color>
```

#### **Step 2: Custom Status Shapes (res/drawable)**
သၢင်ႈႁၢင်ႈမူၼ်းတႃႇၼႄဝႃႈ ၾႆးပိုတ်ႇဝႆႉ (On) ႁိုဝ် ပိတ်းဝႆႉ (Off) ၶႃႈ:
```xml
<shape xmlns:android="http://schemas.android.com/apk/res/android" android:shape="oval">
    <solid android:color="#4CAF50" /> <size android:width="12dp" android:height="12dp" />
</shape>
```

#### **Step 3: Main Layout Design (activity_main.xml)**
ၸႂ်ႉ **ConstraintLayout** ႁူမ်ႈတင်း **Guidelines** လႄႈ **Chains** တႃႇၸတ်ႉ Card ၶႃႈ:

```xml
<ScrollView 
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="@color/tmk_primary">

    <androidx.constraintlayout.widget.ConstraintLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:padding="16dp">

        <TextView
            android:id="@+id/txtHeader"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="TMK Smart Home"
            android:textColor="@color/tmk_gold"
            android:textSize="28sp"
            android:textStyle="bold"
            app:layout_constraintTop_toTopOf="parent"
            app:layout_constraintStart_toStartOf="parent" />

        <com.google.android.material.card.MaterialCardView
            android:id="@+id/cardAC"
            android:layout_width="0dp"
            android:layout_height="150dp"
            android:layout_marginTop="24dp"
            app:cardCornerRadius="16dp"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintEnd_toStartOf="@+id/cardLights"
            app:layout_constraintTop_toBottomOf="@+id/txtHeader"
            app:layout_constraintHorizontal_chainStyle="spread">

            <RelativeLayout android:padding="16dp" android:layout_width="match_parent" android:layout_height="match_parent">
                <ImageView android:id="@+id/icAC" android:layout_width="40dp" android:layout_height="40dp" android:src="@drawable/ic_ac" app:tint="@color/tmk_primary" />
                <TextView android:layout_below="@+id/icAC" android:layout_marginTop="8dp" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="Air Con" android:textStyle="bold" />
                <View android:layout_alignParentBottom="true" android:layout_width="12dp" android:layout_height="12dp" android:background="@drawable/status_on" />
            </RelativeLayout>
        </com.google.android.material.card.MaterialCardView>

        <com.google.android.material.card.MaterialCardView
            android:id="@+id/cardLights"
            android:layout_width="0dp"
            android:layout_height="150dp"
            android:layout_marginStart="16dp"
            app:cardCornerRadius="16dp"
            app:layout_constraintTop_toTopOf="@+id/cardAC"
            app:layout_constraintStart_toEndOf="@+id/cardAC"
            app:layout_constraintEnd_toEndOf="parent">
            </com.google.android.material.card.MaterialCardView>

    </androidx.constraintlayout.widget.ConstraintLayout>
</ScrollView>
```

---

### **3. Try it Yourself! (ၸၢမ်းႁဵတ်းႁင်းၵွႆး)**

#### **1. Login UI Clone**
* **Requirement:** တႅမ်ႈၼႃႈၸေႃး Login ႁႂ်ႈမိူၼ် Instagram ဢမ်ႇၼၼ် Spotify။
* **Key Learning:** ၸႂ်ႉ `TextInputLayout` တႃႇႁဵတ်းလွၵ်းသႂ်ႇ Password လႄႈ ၸႂ်ႉ `ConstraintLayout` တႃႇၸတ်ႉ Logo ႁႂ်ႈယူႇၵၢင်ၶႃႈ။

#### **2. Music Player UI**
* **Requirement:** ဢွၵ်ႇပိူင်ၼႃႈၸေႃးလဵၼ်ႈၵႂၢမ်း ဢၼ်မီးႁၢင်ႈ Album (1:1 Ratio)။
* **Key Learning:** ၸႂ်ႉ `SeekBar` (UI Only) လႄႈ ၸႂ်ႉ `Horizontal Chain` တႃႇၸတ်ႉတုမ်ႇ Play/Pause/Next ၶႃႈ။

#### **3. Restaurant Menu Card**
* **Requirement:** ႁဵတ်း Card ၼႄလၢႆးၵိၼ်ဢၼ်ၼိုင်ႈ ဢၼ်မီးႁၢင်ႈ၊ ၸိုဝ်ႈ၊ လႄႈ တုမ်ႇ "Order Now"။
* **Key Learning:** ၸႂ်ႉ `MaterialCardView` ဢၼ်မီး `cardElevation` တႃႇႁႂ်ႈမၼ်းမီးႁၢင်ႈငဝ်း (Shadow) ႁၢင်ႈလီၶႃႈ။

---