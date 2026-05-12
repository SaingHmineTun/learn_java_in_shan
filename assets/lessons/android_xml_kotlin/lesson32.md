
## **Lesson 32: Data Classes & Dummy Data**

### **1. Modeling Data (ၵၢၼ်သၢင်ႈပိူင်ၶေႃႈမူၼ်း)**

ၼႂ်း Kotlin ၼႆႉ ႁဝ်းၸႂ်ႉ **`data class`** တႃႇသိမ်းၶေႃႈမူၼ်းယဝ်ႉ။ 
မၼ်းပဵၼ် Class ဢၼ်ပဝ်ႇလၢႆ လႄႈ ဝႆးလိူဝ် Class တင်းၼမ် ယွၼ်ႉ Android တေၸွႆးသၢင်ႈ Function မိူၼ်ၼင်ႇ `toString()` လႄႈ `equals()` ပၼ်ႁင်းၵွႆးယဝ်ႉ။

* **ပၢႆးဝူၼ်ႉ:** "Movie ၼိုင်ႈႁူဝ် လူဝ်ႇမီးသင်ပႃးၸွမ်း?" (ၸိုဝ်ႈ, ပီဢွၵ်ႇ, ႁၢင်ႈ, ၶေႃႈသပ်းလႅင်း)။

#### **တူဝ်ယၢင်ႇ Code (`Movie.kt`):**

```kotlin
data class Movie(
    val id: Int,
    val title: String,
    val year: String,
    val description: String,
    val imageResId: Int // သိမ်း ID ၶွင်ႁၢင်ႈ ဢၼ်ယူႇၼႂ်း drawable
)

```

---

### **2. The "Mock" List (ၵၢၼ်သၢင်ႈၶေႃႈမူၼ်းတူဝ်ယၢင်ႇ)**

တွၼ်ႈတႃႇၸၢမ်းတူၺ်းဝႃႈ RecyclerView ႁဝ်းလၢၵ်ႈ (Scroll) လႆႈလီယူႇႁိုဝ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇမီးၶေႃႈမုၼ်းၼမ်ၼမ် (မိူၼ်ၼင်ႇ 20-50 ဢၼ်) ယဝ်ႉ။ 

#### **တူဝ်ယၢင်ႇ Code (Dummy Data Function):**

```kotlin
object MovieDataGenerator {
    fun getDummyMovies(): List<Movie> {
        return listOf(
            Movie(1, "Battle Through the Heavens", "2023", "ၵၢၼ်ၽိုၵ်းၵျၢင်ႉၵၢၼ်တေႃႇသူႈ...", R.drawable.btth_poster),
            Movie(2, "Perfect World", "2022", "လွင်ႈတူင်ႉၼိုင်ၼႂ်းလေႃးၵပၢၼ်မႂ်ႇ...", R.drawable.pw_poster),
            Movie(3, "Renegade Immortal", "2024", "ၵၢၼ်ပႆတၢင်းၶိုၼ်ႈၸၼ်ႉၽီ...", R.drawable.ri_poster),
            Movie(4, "Shrouding the Heavens", "2023", "လွင်ႈလပ်ႉလႅၼ်းၶွင်လေႃးၵပၢၼ်ၵဝ်ႇ...", R.drawable.sth_poster),
            Movie(5, "Soul Land", "2018", "ၵၢၼ်ၽိုၵ်းဝိၺ်ၺၢၼ်ႇတူဝ်သတ်း...", R.drawable.sl_poster),
            Movie(6, "Swallowed Star", "2020", "ၵၢၼ်တေႃႇသူႈၼႂ်းလေႃးၵဢၼႃႇၵတ်ႉ...", R.drawable.ss_poster),
            Movie(7, "The Mortals Journey to Immortality", "2020", "ၵၢၼ်ပႆတၢင်းၵူၼ်းထမ်ႇမတႃႇ...", R.drawable.tmjoi),
            Movie(8, "Throne of Seal", "2022", "ၵၢၼ်တေႃႇသူႈၼႂ်းၵႄႈၵူၼ်း လႄႈ ၽီလူး...", R.drawable.tos_poster),
            Movie(9, "Stellar Transformations", "2018", "ၵၢၼ်လႅၵ်ႈလၢႆႈၶွင်လၢဝ်ၼိူဝ်ၾႃႉ...", R.drawable.st_poster),
            Movie(10, "Jade Dynasty", "2022", "လွင်ႈႁၵ်ႉ လႄႈ ၵၢၼ်တေႃႇသူႈပၢၼ်ၵဝ်ႇ...", R.drawable.jd_poster),
            Movie(11, "Martial Universe", "2019", "ၵၢၼ်ၵုမ်းထိင်းလေႃးၵလူၺ်ႈဢဵၼ်ႁႅင်း...", R.drawable.mu_poster),
            Movie(12, "Full-Time Magician", "2016", "ၵၢၼ်ႁဵၼ်းပၢႆးမၼ်းၼႂ်းႁူင်းႁဵၼ်း...", R.drawable.ftm_poster),
            Movie(13, "The Island of Siliang", "2021", "ၵၢၼ်ႁႃတၢင်းဢွၵ်ႇတီႈၵုၼ်လပ်ႉလႅၼ်း...", R.drawable.tios_poster),
            Movie(14, "The King's Avatar", "2017", "ၵူၼ်းၵတ်ႉၶႅၼ်ႇၵိမ်း Glory ဢၼ်ၶိုၼ်းမႃး...", R.drawable.tka_poster),
            Movie(15, "A Will Eternal", "2020", "ၵၢၼ်ႁႃလၢႆးယူႇသဝ်းႁႂ်ႈမၼ်ႈၵိုမ်း...", R.drawable.awe_poster),
            Movie(16, "Mirror: Twin Cities", "2020", "လွင်ႈလႅၵ်ႈလၢႆႈၼႂ်းမိူင်းယုၼ်းႁူၺ်ႇ...", R.drawable.mtc_poster),
            Movie(17, "The Land of Miracles", "2022", "ၵၢၼ်ႁူမ်ႈမိုဝ်းၵၼ်ၶွင် 2 မိူင်း...", R.drawable.tlom_poster),
            Movie(18, "Shen Yin", "2023", "လွင်ႈလပ်ႉလႅၼ်းၶွင်တူဝ်တႅၼ်းၽီ...", R.drawable.sy_poster),
            Movie(19, "Great Journey of Teenagers", "2018", "ၵၢၼ်ပႆတၢင်းၶွင်ၵူၼ်းၼုမ်ႇ...", R.drawable.gjot_poster),
            Movie(20, "Big Brother", "2023", "ၵၢၼ်ယူႇသဝ်းလူၺ်ႈလွင်ႈသတိ...", R.drawable.bb_poster)
        )
    }
}

```

---

### **3. Testing Scrolling Performance**

ပဵၼ်သင်လူဝ်ႇသၢင်ႈၶေႃႈမုၼ်းၼမ်ၼမ်?

* **View Recycling Test:** တႃႇတူၺ်းဝႃႈ မိူဝ်ႈႁဝ်းလၢၵ်ႈဝႆးဝႆးၼၼ်ႉ ViewHolder ႁဝ်း "Recycle" ၶေႃႈမုၼ်း လႆႈလီယူႇႁိုဝ်။
* **Memory Check:** တႃႇတူၺ်းဝႃႈ App ႁဝ်းၵိၼ် RAM ၼမ်ပူၼ်ႉတီႈႁိုဝ်။

---

### **Advice for Students:**

'တႃႇသေႇ ႁႂ်ႈသႂ်ႇ **ID** (Unique ID) ပၼ်ၶေႃႈမုၼ်းၵူႈဢၼ်ၼႃၶႃႈ။' 
ဢမ်ႇဝႃႈပဵၼ် `Int` ဢမ်ႇၼၼ် `String` ၵေႃႈယဝ်ႉ၊ ID ၼႆႉတေၸွႆးႁႂ်ႈႁဝ်း ႁႃၶေႃႈမုၼ်းလႆႈငၢႆႈ မိူဝ်ႈၵူၼ်းၸႂ်ႉတဵၵ်း (Click) ဢမ်ႇၼၼ် မိူဝ်ႈႁဝ်းလူဝ်ႇထွၼ် (Delete) ၶေႃႈမုၼ်းဢၼ်ၼၼ်ႉ ၼႂ်းဝၼ်းၼႃႈၶႃႈ!

---