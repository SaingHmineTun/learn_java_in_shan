
## **Lesson 31: Handling Clicks in the List**

### **1. The Interface Pattern**

ပၼ်ႁႃလူင်ၵေႃႈပဵၼ် **Adapter** ၼႆႉ မၼ်းယူႇ "ၵေႃႉလဵဝ်" မၼ်းၵူၺ်း။ မၼ်းဢမ်ႇၸၢင်ႈ "ပိုတ်ႇၼႃႈၸေႃးမႂ်ႇ" ႁင်းၵွႆးမၼ်းလႆႈငၢႆႈငၢႆႈယဝ်ႉ။
ၵွပ်ႈၼႆလႄႈ ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ **Interface** ဢမ်ႇၼၼ် **Lambda Function** တႃႇသူင်ႇ "မွၵ်ႇ" (Message) ပွၵ်ႈၵႂႃႇၸူး Activity ဢမ်ႇၼၼ် Fragment ယဝ်ႉ။

* **ပၢႆးဝူၼ်ႉ:** "မိူဝ်ႈ Item ထုၵ်ႇတဵၵ်းၼႆႉ ႁႂ်ႈမွၵ်ႈလၢတ်ႈၶိုၼ်း Fragment ဝႃႈ Item ID ၼႆႉ ထုၵ်ႇတဵၵ်းယဝ်ႉယဝ်ႉၼႃ" ၼႆဢိူဝ်ႈ။

---

### **2. Item-Level Interaction**

ႁဝ်းလူဝ်ႇလိူၵ်ႈဝႃႈ တေႁႂ်ႈၵူၼ်းၸႂ်ႉ တဵၵ်းလႆႈတီႈလႂ်ၼႆယဝ်ႉ:

* **Whole Row Click:** ၵႆႉၸႂ်ႉ `itemView.setOnClickListener` ၼႂ်း ViewHolder ယဝ်ႉ။ လၢႆးၼႆႉ တေႁဵတ်းႁႂ်ႈတဵၵ်းလႆႈ ၵူႈတီႈၼႂ်း Item ၼၼ်ႉယဝ်ႉ။
* **Specific View Click:** သင်ႁဝ်းမီးပုမ်ႇ "Favorite" ဢမ်ႇၼၼ် "Share" ၼႂ်း Item ၼႆ ႁဝ်းၸၢင်ႈတင်ႈ ClickListener ပၼ်ပုမ်ႇၸိူဝ်းၼၼ်ႉ ၵူၺ်းၵေႃႈလႆႈယဝ်ႉ။

---

### **3. Navigation Integration**

ၼႆႉပဵၼ်တွၼ်ႈဢၼ်လုၵ်ႈႁဵၼ်းတေလႆႈၸႂ်ႉ **SafeArgs** ထႅင်ႈယဝ်ႉ။ မိူဝ်ႈတဵၵ်း Item ၼိုင်ႈဢၼ်ၼၼ်ႉ:

1. ႁဝ်းႁႃတူၺ်းဝႃႈ Item ၼၼ်ႉပဵၼ် Movie တူဝ်လႂ်။
2. ႁဝ်းဢဝ် Movie Object ၼၼ်ႉ (ဢမ်ႇၼၼ် ID မၼ်း) သူင်ႇၵႂႃႇၸူး `MovieDetailFragment` လူၺ်ႈၵၢၼ်ၸႂ်ႉ SafeArgs ယဝ်ႉ။

#### **တူဝ်ယၢင်ႇ Code (Passing Click via Lambda):**

```kotlin
// 1. တီႈ Adapter ႁပ်ႉဢဝ် Function တႃႇတဵၵ်း (onItemClick)
class MovieAdapter(
    private val movieList: List<Movie>,
    private val onItemClick: (Movie) -> Unit // Lambda Function
) : RecyclerView.Adapter<MovieAdapter.MovieViewHolder>() {

    override fun onBindViewHolder(holder: MovieViewHolder, position: Int) {
        val movie = movieList[position]
        holder.bind(movie)

        // တဵၵ်းတီႈ Item တင်းမူတ်း
        holder.itemView.setOnClickListener {
            onItemClick(movie) // သူင်ႇ Movie တူဝ်ဢၼ်ထုၵ်ႇတဵၵ်း ပွၵ်ႈၵႂႃႇ
        }
    }
}

```

#### **တူဝ်ယၢင်ႇ Code (ၼႂ်း Fragment):**

```kotlin
val adapter = MovieAdapter(movies) { selectedMovie ->
    // ၸႂ်ႉ SafeArgs သူင်ႇၶေႃႈမူၼ်းၵႂႃႇ Detail Screen
    val action = HomeFragmentDirections.actionHomeToDetail(selectedMovie)
    findNavController().navigate(action)
}
binding.recyclerView.adapter = adapter

```

---

### **Advice for Students:**

'ယႃႇလိုမ်းသႂ်ႇ Ripple Effect (Lesson 15) ပၼ် Item ၶွင်ၸဝ်ႈၵဝ်ႇၼႃၶႃႈ!' 
သင် Item တဵၵ်းလႆႈ ၵူၺ်းၵႃႈ ဢမ်ႇမီးသီလႅၵ်ႈလၢႆႈသင် (Visual Feedback) ၼႆ ၵူၼ်းၸႂ်ႉတေဝူၼ်ႉဝႃႈ App ႁဝ်းၵိုတ်း (Frozen) ဝႆႉၼႆဢေႃႈ။
ၸႂ်ႉ `android:background="?attr/selectableItemBackground"` ၼႂ်း XML Item ႁႂ်ႈမၼ်းတူၺ်း ၶႅမ်ႉလိူဝ်မႃးၶႃႈ!"