## Lesson 39: Room Database: The Foundation

မိူဝ်ႈႁဝ်းတႅမ်ႈ App ဢၼ်လူဝ်ႇၵဵပ်းၶေႃႈမုၼ်းဝႆႉတႃႇသေႇ (Persistent Data) ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Database ၶႃႈ။ 
**Room** ပဵၼ် Library ၶွင် Google ဢၼ်ႁဵတ်းႁႂ်ႈၵၢၼ်ၸႂ်ႉ **SQLite** (Database ၼႂ်း Android) ငၢႆႈလိူဝ်ၵဝ်ႇၶႃႈ။

### 1. Prerequisites: Adding Dependencies
ဢွၼ်တၢင်းသုတ်း၊ ႁဝ်းလူဝ်ႇလၢတ်ႈၼႄ Android Studio ႁႂ်ႈႁူႉၸၵ်း Room ၵွၼ်ႇၶႃႈ။ 
ႁဝ်းပိုတ်ႇၾၢႆႇ `build.gradle.kts` (Project: Shan_Note_Pro) သေထႅမ်သႂ်ႇ ဢၼ်ၼႆႉၶႃႈ:

```kotlin
plugins {
    alias(libs.plugins.android.application) apply false
    alias(libs.plugins.kotlin.compose) apply false

    // 👈 ထႅမ်သႂ်ႇ Version ႁႂ်ႈမၼ်းတႅတ်ႈတေႃးၸိူင်ႉၼႆၶႃႈ
    id("com.google.devtools.ksp") version "2.0.0-1.0.21" apply false
}
```

သင်ယဝ်ႉၼႆ ပိုတ်ႇပၼ် `build.gradle.kts` (Module: app) သေ ထႅမ်သႂ်ႇပၼ် ၸိူဝ်းၼႆႉၶႃႈ


```kotlin
plugins {

    // 👈 ၵမ်းၼႆႉတႅမ်ႈ id ပဝ်ႇပဝ်ႇလႆႈယဝ်ႉ ၵွပ်ႈႁဝ်းပၼ် Version ဝႆႉၽၢႆႇၼိူဝ်ယဝ်ႉ
    id("com.google.devtools.ksp")

}

dependencies {
    val room_version = "2.6.1"

    // Room Runtime လႄႈ Kotlin Extensions (KTX)
    implementation("androidx.room:room-runtime:$room_version")
    implementation("androidx.room:room-ktx:$room_version")

    // Annotation Processor (တွၼ်ႈတႃႇ Generate Code ႁင်းမၼ်း)
    ksp("androidx.room:room-compiler:$room_version")
}
```
> **Note:** ၼဵၵ်းပၼ် **"Sync Now"** ၵူႈပွၵ်ႈ ဝၢႆးသေမႄး Gradle ၶႃႈ။

---

### 2. The Entity (The Table)
**Entity** ပဵၼ်ၵၢၼ်မၢႆဝႆႉဝႃႈ "တေၵဵပ်းသင်လၢႆလၢႆ?" ၼႂ်း Table ႁဝ်းၶႃႈ။ မၼ်းမိူၼ်တင်းႁဝ်းသၢင်ႈ Template ပပ်ႉမၢႆတွၼ်ႈၶႃႈ။

```kotlin
@Entity(tableName = "notes")
data class Note(
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val title: String,
    val content: String
)
```

### 3. The DAO (The Actions)
**DAO (Data Access Object)** ပဵၼ် "ၵူၼ်းႁဵတ်းၵၢၼ်" ၶႃႈ။ မၼ်းပဵၼ် Interface ဢၼ်မၢႆဝႆႉဝႃႈ ႁဝ်းတေ ဢဝ်ၶဝ်ႈ (Insert), တူၺ်း (Read), မႄး (Update), ဢမ်ႇၼၼ် ယႃႉ (Delete) ၸိူင်ႉႁိုဝ်ၶႃႈ။

```kotlin
@Dao
interface NoteDao {
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertNote(note: Note)

    @Query("SELECT * FROM notes")
    fun getAllNotes(): Flow<List<Note>> // ၸႂ်ႉ Flow ႁႂ်ႈမၼ်း Update UI Automatic
}
```



### 4. The Database (The Manager)
**RoomDatabase** ပဵၼ် "ႁူဝ်ၼႃႈလူင်" ယဝ်ႉၶႃႈ။ မၼ်းတေၵွင်ႉ Entity လႄႈ DAO ၶဝ်ႈၵၼ် သေသၢင်ႈၾၢႆႇ Database တႄႉတႄႉၼႂ်းၾူၼ်းၶႃႈ။

```kotlin
@Database(entities = [Note::class], version = 1)
abstract class NoteDatabase : RoomDatabase() {
    abstract fun noteDao(): NoteDao
}
```

---

### Summary of Lesson 39
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1. **Gradle Setup**: ၵၢၼ်ထႅမ်သႂ်ႇ Room Libraries။
2. **Entity**: ၵၢၼ်သၢင်ႈ Table ၶေႃႈမုၼ်း။
3. **DAO**: ၵၢၼ်တႅမ်ႈ Query SQL ငၢႆႈငၢႆႈ ၼႂ်း Interface။
4. **RoomDatabase**: ၵၢၼ်ပိုတ်ႇၸႂ်ႉ Database ၼႂ်း Android။

---

### ### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 39)
1. **Coding**: တႅမ်ႈ `Note` Entity ႁႂ်ႈမီး `timestamp` ထႅမ်သႂ်ႇၸွမ်း 1 Column။
2. **DAO Challenge**: ထႅမ်သႂ်ႇ Function `deleteNote(note: Note)` ၼႂ်း `NoteDao`။
3. **Diagramming**: တႅမ်ႈႁၢင်ႈၵွင်ႉသၢၼ် (Relationship) ဝၢင်ႈ Entity, DAO, လႄႈ Database ၶႃႈ။