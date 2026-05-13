

## **Lesson 53: The Room Database Class**

### **1. The Singleton Pattern (သၢင်ႈတူဝ်လဵဝ် တႃႇၸႂ်ႉၼႂ်း App တင်းမူတ်း)**

ၵၢၼ်ပိုတ်ႇ Database ၼိုင်ႈပွၵ်ႈၼႆႉ မၼ်းၵိၼ် RAM လႄႈ CPU ၼမ်ၼႃႇ။ သင်ႁဝ်းပိုတ်ႇမၼ်းလၢႆလၢႆပွၵ်ႈၼႆ App ႁဝ်းတေၸၢင်ႈ "ၶမ်" ဢမ်ႇၼၼ် RAM ၸၢင်ႊတဵမ်ယဝ်ႉ။

* **Singleton:** ပဵၼ်လၢႆးတႅမ်ႈ Code ႁႂ်ႈ App ႁဝ်းသၢင်ႈ Database တူဝ်ၼႆႉ "တူဝ်လဵဝ်ၵူၺ်း" တေႃႇၸူဝ်ႈ App တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇၼႆယဝ်ႉ။

#### **တူဝ်ယၢင်ႇ Code:**

```kotlin
@Database(entities = [Expense::class], version = 1)
abstract class AppDatabase : RoomDatabase() {
    abstract fun expenseDao(): ExpenseDao

    companion object {
        @Volatile
        private var INSTANCE: AppDatabase? = null

        fun getDatabase(context: Context): AppDatabase {
            return INSTANCE ?: synchronized(this) {
                val instance = Room.databaseBuilder(
                    context.applicationContext,
                    AppDatabase::class.java,
                    "expense_db"
                ).build()
                INSTANCE = instance
                instance
            }
        }
    }
}

```

---

### **2. Type Converters (ၵူၼ်းပိၼ်ႇၶေႃႈမူၼ်း)**

Room ၼႆႉ မၼ်းႁူႉၸၵ်း ပိုၼ်ႉထၢၼ်ၶေႃႈမုၼ်း မိူၼ်ၼင်ႇ `Int`, `String`, `Long`, `Double` ၵူၺ်း။ 
သင်ႁဝ်းၶႂ်ႈသိမ်းၶေႃႈမုၼ်း ဢၼ်ယုင်ႈယၢင်ႈလိူဝ်ၼၼ်ႉ မိူၼ်ၼင်ႇ `Date` ဢမ်ႇၼၼ် `List<String>` ၸိုင် Room တေဢမ်ႇႁူႉၸၵ်းမၼ်းယဝ်ႉ။

* **လၢႆးၵႄႈ:** ႁဝ်းတေတႅမ်ႈ **Type Converter** တႃႇပိၼ်ႇ `Date` ႁႂ်ႈပဵၼ် `Long` (Timestamp) မိူဝ်ႈတေသိမ်းလႄႈ ပိၼ်ႇၶိုၼ်း `Long` ႁႂ်ႈပဵၼ် `Date` မိူဝ်ႈတေလူဢၢၼ်ႇၶိုၼ်းယဝ်ႉ။

```kotlin
class Converters {
    // လုၵ်ႉတီႈ Long (ၼႂ်း DB) ၶိုၼ်းပိၼ်ႇပဵၼ် Date (ၼႂ်း Kotlin)
    @TypeConverter
    fun fromTimestamp(value: Long?): Date? {
        return value?.let { Date(it) }
    }

    // ပိၼ်ႇလုၵ်ႉတီႈ Date (ၼႂ်း Kotlin) ႁႂ်ႈပဵၼ် Long (တႃႇသိမ်းၼႂ်း DB)
    @TypeConverter
    fun dateToTimestamp(date: Date?): Long? {
        return date?.time
    }
}

```

သင်ႁဝ်းမီးဝႆႉ `TypeConverter` class ယဝ်ႉၼႆ ႁဝ်းတေလႆႈလၢတ်ႈၼႄပၼ် Database class ၶိုၼ်းၼင်ႇၼႆယဝ်ႉ။

```kotlin
@Database(entities = [Expense::class], version = 1, exportSchema = false)
@TypeConverters(Converters::class) // မတ်ႉ Converter ၶဝ်ႈမႃးတီႈၼႆႈ
abstract class AppDatabase : RoomDatabase() {
}
```

---

### **3. Database Migrations (ၵၢၼ်ၶၢႆႉၸၼ်ႉ Database)**

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇပိုတ်ႇ App ပၼ်ၵူၼ်းၸႂ်ႉယဝ်ႉ (Version 1)။ 
ဝၢႆးမႃး ၸဝ်ႈၵဝ်ႇသမ်ႉ ၶႂ်ႈထႅမ် "သဝ်" (Column) မႂ်ႇၶဝ်ႈၵႂႃႇၼႂ်း Table (Version 2) ၼႆလႄႈ။

* **ပၼ်ႁႃ:** သင်ၸဝ်ႈၵဝ်ႇလႅၵ်ႈလၢႆႈ Entity ၵူၺ်းသေ ဢမ်ႇလၢတ်ႈၼႄ Room ၼႆၸိုင် App တေလူႉ (Crash) ၵမ်းလဵဝ် ယွၼ်ႉ "ပႅၼ်ႈ" တႄႉတႄႉ ဢမ်ႇမိူၼ်တင်း "Code" ဢၼ်ႁဝ်းမီးဝႆႉယဝ်ႉ။
* **Migration:** ပဵၼ်ၵၢၼ်တႅမ်ႈ Code တႃႇလၢတ်ႈၼႄ Room ဝႃႈ "ႁႂ်ႈမႄးပႅၼ်ႈၵဝ်ႇ ႁႂ်ႈမီး Column မႂ်ႇၼႆႉပႃးၼႃ" ၼႆယဝ်ႉ။ သင်ႁဝ်းဢမ်ႇၶႂ်ႈမႆႈၸႂ်လွင်ႈၼႆႉ မိူဝ်ႈတိုၵ်ႉႁဵၼ်းယူႇၸိုင် ႁဝ်းၸၢင်ႈၸႂ်ႉ `.fallbackToDestructiveMigration()` ဢၼ်တေယႃႉၶေႃႈမုၼ်းၵဝ်ႇပႅတ်ႉ တႃႇသၢင်ႈပႅၼ်ႈမႂ်ႇယဝ်ႉ (ၵူၺ်းၵႃႈ ဢမ်ႇထုၵ်ႇလီၸႂ်ႉၼႂ်း App တႄႉတႄႉၶႃႈ)။

---

### **Advice for Students**

'ဝူၼ်ႉတူၺ်းဝႃႈ Database Class မိူၼ်ၼင်ႇ "သိုဝ်ႇသၢၼ်" ဢၼ်ၵွင်ႉၵၢႆႇပၼ်ၵူႈယိူင်ႈၶႃႈ။' 
ၵၢၼ်ၸႂ်ႉ **Singleton** လမ်ႇလွင်ႈၼႃႇ တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းလႅၼ်ႈလႆႈဝႆး။ 
ယဝ်ႉၵေႃႈ သင်ၸဝ်ႈၵဝ်ႇမႄး Entity မိူဝ်ႈလႂ်ၵေႃႈလီ ယႃႇလိုမ်း "လၢႆႊ Version" (Version Number) ၼႂ်း Database Class ႁႂ်ႈမၼ်းၶိုၼ်ႈသုင်လိူဝ်ၵဝ်ႇတႃႇသေႇၼႃၶႃႈ!