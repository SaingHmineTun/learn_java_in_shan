
## **Lesson 27: Designing the "Item Row" XML**

### **1. Individual Identity (ၵၢၼ်သၢင်ႈၾၢႆႇႁင်းၵွႆး)**

ႁဝ်းတေဢမ်ႇတႅမ်ႈႁၢင်ႈ Item ၼႂ်း `activity_main.xml`။ ႁဝ်းတေသၢင်ႈၾၢႆႇ XML မႂ်ႇ (မိူၼ်ၼင်ႇ `item_movie.xml`) ဝႆႉၼႂ်း Folder `layout` ယဝ်ႉ။

* **လွင်ႈလီ:** မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်းဢမ်ႇယုင်ႈ လႄႈ ႁဝ်းၸၢင်ႈမႄးႁၢင်ႈ Item ၼၼ်ႉလႆႈငၢႆႈငၢႆႈ လူၺ်ႈဢမ်ႇၵွင်ႉၵၢႆႇၸွမ်း Layout တၢင်ႇဢၼ်ယဝ်ႉ။

---

### **2. Layout Optimization (ၵၢၼ်ဢွၵ်ႇပိူင်ႁႂ်ႈႁၢင်ႈလီ)**

တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ Item ႁဝ်းတူၺ်း "Pop" (လွၵ်းၶိုၼ်ႈမႃး) လႄႈ ၶႅမ်ႉလီၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **MaterialCardView** ႁူမ်ႈတင်း **ConstraintLayout** ယဝ်ႉ။

* **CardView:** ၸွႆးသႂ်ႇႁၢင်ႈငဝ်း (Elevation) လႄႈ ၶွပ်ႇမူၼ်း (Corner Radius)။
* **ConstraintLayout:** ၸွႆးၸတ်ႉဝၢင်း ImageView (ၶႅပ်းႁၢင်ႈ) လႄႈ TextView (သဵၼ်ႈၸိုဝ်ႈ) ႁႂ်ႈတူၺ်းၶႅမ်ႉလီ။

#### **တူဝ်ယၢင်ႇ Code XML (`item_movie.xml`):**

```xml
<com.google.android.material.card.MaterialCardView 
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    app:cardUseCompatPadding="true"
    app:cardCornerRadius="12dp"
    app:cardElevation="4dp">

    <androidx.constraintlayout.widget.ConstraintLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:padding="8dp">

        <ImageView
            android:id="@+id/imgMoviePoster"
            android:layout_width="80dp"
            android:layout_height="120dp"
            android:scaleType="centerCrop"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintTop_toTopOf="parent"
            tools:src="@drawable/sample_poster" />

        <TextView
            android:id="@+id/txtMovieTitle"
            android:layout_width="0dp"
            android:layout_height="wrap_content"
            android:layout_marginStart="12dp"
            android:textSize="18sp"
            android:textStyle="bold"
            app:layout_constraintEnd_toEndOf="parent"
            app:layout_constraintStart_toEndOf="@+id/imgMoviePoster"
            app:layout_constraintTop_toTopOf="parent"
            tools:text="Movie Title Goes Here" />

    </androidx.constraintlayout.widget.ConstraintLayout>
</com.google.android.material.card.MaterialCardView>

```

---

### **3. Designing for Dynamic Content**

ပၼ်ႁႃဢၼ်လုၵ်ႈႁဵၼ်း ၵႆႉထူပ်းၵေႃႈပဵၼ် မိူဝ်ႈၸိုဝ်ႈၼင် (Movie Title) ယၢဝ်းပူၼ်ႉတီႈ ယဝ်ႉမၼ်းၵႂႃႇ "တူပ်ႉ" ၺႃး Views တၢင်ႇဢၼ်ယဝ်ႉ။

* **Ellipsize:** ၸႂ်ႉ `android:ellipsize="end"` လႄႈ `android:maxLines="1"` တႃႇႁႂ်ႈမၼ်းတတ်းလိၵ်ႈပဵၼ် "..." သင်မၼ်းယၢဝ်းပူၼ်ႉတီႈ။
* **Constraints:** ႁႂ်ႈမတ်ႉသၢႆႉ-ၶႂႃ (Start and End) ႁႂ်ႈတႅတ်ႈၼတ်း တႃႇသေႇ တႃႇၵႄႈပၼ်ႁႃ လိၵ်ႈလႅၼ်ႈဢွၵ်ႇၼႃႈၸေႃး။
* **Default Images:** ႁႅၼ်းၶႅပ်းႁၢင်ႈ Placeholder ဝႆႉ မိူဝ်ႈၶေႃႈမုၼ်း ဢမ်ႇမီးႁၢင်ႈမႃးၸွမ်း။

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**

'တၢင်းၵႂၢင်ႈ (`layout_width`) ၶွင် CardView ၼႂ်း Item Row ၼၼ်ႉ လူဝ်ႇပဵၼ် **`match_parent`** တႃႇသေႇ။
ၵူၺ်းၵႃႈ တၢင်းသုင် (`layout_height`) သမ်ႉလူဝ်ႇပဵၼ် **`wrap_content`** ယဝ်ႉ။' 
သင်ၸဝ်ႈၵဝ်ႇတင်ႈ တၢင်းသုင်ပဵၼ် `match_parent` ၼႆ Item ဢၼ်လဵဝ် တေၵိၼ်ပႅတ်ႈ တင်းၼႃႈၸေႃးသေ ၸဝ်ႈၵဝ်ႇတေဢမ်ႇႁၼ် Item တၢင်ႇဢၼ်ၶႃႈယဝ်ႉ!"