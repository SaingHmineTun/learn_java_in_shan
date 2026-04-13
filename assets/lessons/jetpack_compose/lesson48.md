## Lesson 48: Introduction to Media3 ExoPlayer

သင်ႁဝ်းၶႂ်ႈႁဵတ်း App လဵၼ်ႈၵႂၢမ်း (Music Player) ၼႆ ႁဝ်းလူဝ်ႇ "Engine" ဢၼ်ၵတ်ႉၶႅၼ်ႇတွၼ်ႈတႃႇပိုတ်ႇသဵင်ၵႂၢမ်းမၼ်းၶႃႈ။ 
**Media3** ပဵၼ် Library မႂ်ႇသုတ်းၶွင် Google ဢၼ်ႁူမ်ႈဢဝ် **ExoPlayer** ၶဝ်ႈဝႆႉ တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈၵၢၼ်ပိုတ်ႇ Audio/Video ၼႂ်း Android ငၢႆႈလိူဝ်ၵဝ်ႇၶႃႈ။

### 1. Why Media3 ExoPlayer?
* **Powerful**: မၼ်းပိုတ်ႇလႆႈၾၢႆႇသဵင် ၵူႈပၵ်းပိူင် (MP3, WAV, FLAC, AAC)။
* **Standard**: ပဵၼ် Engine ဢၼ် App ယႂ်ႇယႂ်ႇ (မိူၼ်ၼင်ႇ YouTube, Spotify) ၸႂ်ႉၵၼ်ၶႃႈ။
* **Media3 Integration**: မၼ်းၸွႆႈႁႂ်ႈႁဝ်းၸတ်းၵၢၼ် Media Session (ၵၢၼ်ၵုမ်းၵႂၢမ်းၼိူဝ် Notification ဢမ်ႇၼၼ် Lock Screen) လႆႈငၢႆႈၶႃႈ။



### 2. Adding Dependencies
ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇထႅမ်သႂ်ႇ Media3 Libraries ၼႂ်း `build.gradle.kts` ၶႃႈ:

```kotlin
dependencies {
    val media3_version = "1.3.1"

    // Engine တႃႇပိုတ်ႇသဵင်
    implementation("androidx.media3:media3-exoplayer:$media3_version")
    
    // UI Components တွၼ်ႈတႃႇ Media3
    implementation("androidx.media3:media3-ui:$media3_version")
    
    // MediaSession တွၼ်ႈတႃႇၵွင်ႉတင်း System
    implementation("androidx.media3:media3-session:$media3_version")
}
```

### 3. Basic Setup in ExoPlayer
ၵၢၼ်သၢင်ႈ ExoPlayer ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ `ExoPlayer.Builder` ၶႃႈ။

```kotlin
// သၢင်ႈ Player Engine
val player = ExoPlayer.Builder(context).build()

// ၵွင်ႉၵႂၢမ်း (Media Item)
val mediaItem = MediaItem.fromUri("https://your-server.com/shan-song.mp3")
player.setMediaItem(mediaItem)

// ႁၢင်ႈႁႅၼ်းတႃႇလဵၼ်ႈ
player.prepare()

// လဵၼ်ႈ
player.play()
```



### 4. Player Lifecycle (Important!)
Media Player ၼႆႉမၼ်းၸႂ်ႉ Memory လႄႈ Battery ၼမ်ၶႃႈ။ ၵွပ်ႈၼႆ ႁဝ်းထုၵ်ႇလီႈ:
* **Prepare**: မိူဝ်ႈတႄႇပိုတ်ႇ App ႁႂ်ႈမၼ်းလူတ်ႇ Data ဝႆႉ။
* **Release**: မိူဝ်ႈပိၵ်ႉ App ဢမ်ႇၼၼ် ဢမ်ႇၸႂ်ႉယဝ်ႉ ႁဝ်းလူဝ်ႇလႆႈထွႆ `player.release()` တွၼ်ႈတႃႇၶိုၼ်းပၼ် Memory ၸူး System ၶႃႈ။

---

### Summary of Lesson 48
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Media3 Overview**: ပွင်ႇၸႂ်ဝႃႈ Media3 လႄႈ ExoPlayer ပဵၼ်သင်။
2.  **Gradle Setup**: ၵၢၼ်ထႅမ်သႂ်ႇ Dependencies တွၼ်ႈတႃႇ Music App။
3.  **Core API**: ၵၢၼ်သၢင်ႈ Player လႄႈ ၵၢၼ်ပိုတ်ႇ Media Item ငၢႆႈငၢႆႈ။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 48)
1.  **Setup Task**: ထႅမ်သႂ်ႇ Media3 Dependencies ၶဝ်ႈၼႂ်း Project မႂ်ႇ "Shan Music Player"။
2.  **Experiment**: ၸၢမ်းတႅမ်ႈ Code သၢင်ႈ `ExoPlayer` Instance ၼႂ်း Activity သေ ၸၢမ်းပိုတ်ႇသဵင်လုၵ်ႉတီႈ URL တူၺ်း။
3.  **Research**: ၸၢမ်းႁႃတူၺ်းဝႃႈ `Player.Listener` ၸွႆႈႁဝ်းႁူႉလွင်ႈသင်လၢႆလၢႆ? (မိူၼ်ၼင်ႇ: မိူဝ်ႈၵႂၢမ်းယဝ်ႉ, မိူဝ်ႈ Error)။

---