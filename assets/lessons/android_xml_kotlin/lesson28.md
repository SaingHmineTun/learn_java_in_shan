

## **Lesson 28: The ViewHolder Pattern**

### **1. The "Box" Concept (ပၢႆးဝူၼ်ႉ ၵွၵ်းသိမ်း View)**

ၼႂ်း Lesson 27 ႁဝ်းသၢင်ႈ XML တႃႇ Item ၼိုင်ႈဢၼ်ယဝ်ႉယဝ်ႉ။ တီႈၼႆႈ ႁဝ်းလူဝ်ႇသၢင်ႈ Class ၼႂ်း Kotlin တႃႇမႃးပဵၼ် "ၵူၼ်းၵုမ်း" Views ၼႂ်း XML ၼၼ်ႉယဝ်ႉ။

* **ViewHolder** တေႁဵတ်းၼႃႈတီႈႁႃ `ImageView`, `TextView` ၼႂ်း XML မႃးသိမ်းဝႆႉၼႂ်းတူဝ်မၼ်းယဝ်ႉ။
* မိူဝ်ႈ Adapter လူဝ်ႇၼႄၶေႃႈမုၼ်းမႂ်ႇၼၼ်ႉ မၼ်းတေဢမ်ႇၵႂႃႇႁႃ Views ၼၼ်ႉမႂ်ႇထႅင်ႈ။ ၵူၺ်းၵႃႈ မၼ်းတေ "ၸႂ်ႉ Views ဢၼ် ViewHolder သိမ်းဝႆႉပၼ်ယဝ်ႉ" ၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။

---

### **2. Efficiency: Why it matters? (ပဵၼ်သင်လူဝ်ႇႁဵတ်းႁႂ်ႈမၼ်းဝႆး?)**

ပၼ်ႁႃလူင်ၶွင်ၵၢၼ်လၢၵ်ႈ (Scrolling) ၼႂ်း Android ၵေႃႈပဵၼ်ၵၢၼ်ႁွင်ႉၸႂ်ႉ **`findViewById()`** ယဝ်ႉ။

* **ListView (လၢႆးၵဝ်ႇ):** ၵူႈပွၵ်ႈဢၼ်ႁဝ်းလၢၵ်ႈ Item မႂ်ႇၶိုၼ်ႈမႃးၼၼ်ႉ Android လူဝ်ႇလႆႈၵႂႃႇ "ၶူၼ်ႉႁႃ" ID ၼႂ်း XML တႃႇသေႇယဝ်ႉ။ သင်ႁဝ်းလၢၵ်ႈဝႆးဝႆးၼႆ ၾူၼ်းတေႁဵတ်းၵၢၼ်ၼၵ်းသေ ႁဵတ်းႁႂ်ႈ App ၵိုတ်း (Lag) ယဝ်ႉ။
* **ViewHolder (လၢႆးမႂ်ႇ):** ႁဝ်းႁႃ Views ၼၼ်ႉ **"ၵမ်းလဵဝ်ၵူၺ်း"** မိူဝ်ႈ ViewHolder ထုၵ်ႇသၢင်ႈၶိုၼ်ႈမႃးယဝ်ႉ။ ဝၢႆးၼၼ်ႉ ႁဝ်းၵူၺ်းလူဝ်ႇ "လႅၵ်ႈလၢႆႈလိၵ်ႈ" ဢမ်ႇၼၼ် "လႅၵ်ႈႁၢင်ႈ" ၼႂ်း Views ဢၼ်ႁဝ်းမီးဝႆႉၼၼ်ႉယဝ်ႉ။

---

### **3. တူဝ်ယၢင်ႇ Code (ViewHolder ၼႂ်း Kotlin)**

ႁဝ်းတေတႅမ်ႈ ViewHolder ဝႆႉၼႂ်း Adapter Class ၶွင်ႁဝ်းၼင်ႇၼႆၶႃႈ:

```kotlin
// ViewHolder ၼႆႉ တေႁပ်ႉဢဝ် View ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ (Item Layout)
class MovieViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
    
    // ႁႃ Views ၼႂ်း XML သေသိမ်းဝႆႉၼႂ်း Variables
    val imgPoster: ImageView = itemView.findViewById(R.id.imgMoviePoster)
    val txtTitle: TextView = itemView.findViewById(R.id.txtMovieTitle)
    
    // Function တႃႇဢဝ်ၶေႃႈမူၼ်းမႃးသႂ်ႇ (Binding)
    fun bind(movie: Movie) {
        txtTitle.text = movie.title
        // တွၼ်ႈတႃႇႁၢင်ႈ ႁဝ်းတေၸႂ်ႉ Library မိူၼ်ၼင်ႇ Glide ၼႂ်း Lesson တေႃႇၵႂႃႇၶႃႈ
    }
}

```

---

### **4. Visualization of Recycling (ႁၢင်ႈၾၢင်ၵၢၼ် Recycling)**

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇမီး **ViewHolder** 10 ဢၼ် ဢၼ်ၼႄယူႇၼိူဝ်ၼႃႈၸေႃး ၼႆလႄႈ။

1. မိူဝ်ႈ Item 1 လႅၼ်ႈပူၼ်ႉၼိူဝ်ၵႂႃႇၼၼ်ႉ ViewHolder ၶွင်မၼ်း တေလႅၼ်ႈလူင်းမႃးယူႇၽၢႆႇတႂ်ႈယဝ်ႉ။
2. မၼ်းတေ "လၢင်ႉ" ၶေႃႈမုၼ်း Item 1 ပႅတ်ႈသေ "သႂ်ႇ" ၶေႃႈမုၼ်း Item 11 ၶဝ်ႈၵႂႃႇတႅၼ်းယဝ်ႉ။
3. **ပဵၼ် View တူဝ်ၵဝ်ႇၵူၺ်း၊ ၵူၺ်းၵႃႈ ၶေႃႈမုၼ်းမႂ်ႇမႂ်ႇ ၼၼ်ႉယဝ်ႉ!**

---

### **Advice for Students:**

'ViewHolder ၼႆႉ မိူၼ်ၼင်ႇ ၵူၼ်းယုမ်ႉပႂ်ႉႁပ်ႉၶႅၵ်ႇယူႇတီႈၼႃႈႁိူၼ်းယဝ်ႉ။' 
ဢမ်ႇဝႃႈၶႅၵ်ႇတေမႃးလၢႆၵေႃႉၵေႃႈယဝ်ႉ၊ ၵူၼ်းယုမ်ႉၵေႃႉၼၼ်ႉ တေယူႇတီႈၵဝ်ႇသေ လႅၵ်ႈလၢႆႈၵၢၼ်ႁပ်ႉတွၼ်ႈၸွမ်းၼင်ႇၶႅၵ်ႇၵူၺ်း။ 
လၢႆးၼႆႉ ႁဵတ်းႁႂ်ႈ App ႁဝ်း လႅၼ်ႈလႆႈ '60 Frames Per Second (FPS)'—ဝႆးယဝ်ႉ!"