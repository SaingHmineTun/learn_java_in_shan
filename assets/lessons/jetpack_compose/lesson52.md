## Lesson 52: Custom Seekbar & Time Progress

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ **`Slider`** ၶွင် Material 3 သေ မႄးႁၢင်ႈၾၢင် (Customize) မၼ်း 
ႁႂ်ႈၶဝ်ႈတင်း App ႁဝ်း တႃႇၼႄၶၢဝ်းယၢမ်း (00:00) ၶႃႈ။

### 1. Calculating Progress
Media3 ExoPlayer တေသူင်ႇၶၢဝ်းယၢမ်းမႃးပဵၼ် **Milliseconds (ms)**။ ႁဝ်းလူဝ်ႇလႅၵ်ႈမၼ်းပဵၼ် **Float** (0.0 ထိုင် 1.0) တွၼ်ႈတႃႇၸႂ်ႉၼႂ်း Slider ၶႃႈ။

**ViewModel Logic:**
ႁဝ်းလူဝ်ႇမီး `Flow` ဢၼ်တေ Update ၶၢဝ်းယၢမ်း တႃႇၵူႈၸႅတ်ႉၵႅၼ်ႉ (Every second) ၶႃႈ:
```kotlin
val currentPosition = flow {
    while (true) {
        if (mediaController?.isPlaying == true) {
            emit(mediaController?.currentPosition ?: 0L)
        }
        delay(1000L) // Update ၵူႈ 1 ဝိၼႃတီႇ
    }
}.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), 0L)
```

### 2. Formatting Time
တွၼ်ႈတႃႇတေၼႄလိၵ်ႈၶၢဝ်းယၢမ်း (မိူၼ်ၼင်ႇ 03:45) ၼၼ်ႉ ႁဝ်းလူဝ်ႇၶူင် Function တွၼ်ႈတႃႇလႅၵ်ႈ Milliseconds ၶႃႈ:
```kotlin
fun formatTime(ms: Long): String {
    val totalSeconds = ms / 1000
    val minutes = totalSeconds / 60
    val seconds = totalSeconds % 60
    return String.format("%02d:%02d", minutes, seconds)
}
```



### 3. Designing the Seekbar in Compose
ႁဝ်းတေၸႂ်ႉ `Slider` ၶွင် Material 3 သေ ၸတ်းဝၢင်းဝႆႉ တီႈၵၢင် လိၵ်ႈၶၢဝ်းယၢမ်း တင်း 2 ၽၢႆႇၶႃႈ:

```kotlin
@Composable
fun SeekbarSection(
    currentMs: Long,
    durationMs: Long,
    onSeek: (Long) -> Unit
) {
    Column(modifier = Modifier.fillMaxWidth().padding(16.dp)) {
        Slider(
            value = currentMs.toFloat(),
            onValueChange = { onSeek(it.toLong()) },
            valueRange = 0f..durationMs.toFloat(),
            colors = SliderDefaults.colors(
                thumbColor = MaterialTheme.colorScheme.primary,
                activeTrackColor = MaterialTheme.colorScheme.primary
            )
        )
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(text = formatTime(currentMs)) // ယၢမ်းတိုၵ်ႉလဵၼ်ႈ
            Text(text = formatTime(durationMs)) // ယၢမ်းတႃႇၵႂၢမ်းတင်းသဵင်ႈ
        }
    }
}
```



---

### 4. Handling User Seeking
မိူဝ်ႈၵူၼ်းၸႂ်ႉ "လၢၵ်ႈ" Slider၊ ႁဝ်းလူဝ်ႇသင်ႇၵႂႃႇၸူး `mediaController` ႁႂ်ႈမၼ်းၶၢႆႉ (Seek) ၵႂႃႇတီႈၼၼ်ႉတႄႉတႄႉၶႃႈ:

```kotlin
fun seekTo(positionMs: Long) {
    mediaController?.seekTo(positionMs)
}
```

---

### Summary of Lesson 52
ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းလႆႈႁဵၼ်းႁူႉ:
1.  **Time Formatting**: ၵၢၼ်လႅၵ်ႈ Milliseconds ႁႂ်ႈပဵၼ်လိၵ်ႈၶၢဝ်းယၢမ်း (MM:SS) ဢၼ်ၵူၼ်းလူပွင်ႇၸႂ်။
2.  **Slider Interaction**: ၵၢၼ်ၸႂ်ႉ Slider တွၼ်ႈတႃႇၼႄ လႄႈ ၵုမ်းၵၢၼ်ၶၢဝ်းယၢမ်းၵႂၢမ်း။
3.  **Real-time Updates**: ၵၢၼ်ၸႂ်ႉ Coroutine Flow တွၼ်ႈတႃႇ Update UI ၸွမ်းၶၢဝ်းယၢမ်းၵႂၢမ်း။

---

### ၵၢၼ်ႁိူၼ်း (Homework)
1.  **UI Task**: မႄးႁၢင်ႈၾၢင် `Slider` ႁႂ်ႈမီး `thumb` ဢၼ်လဵၵ်ႉလိူဝ်ၵဝ်ႇ ဢမ်ႇၼၼ် ပိၵ်ႉ (Hide) မၼ်းဝႆႉ မိူဝ်ႈၵူၼ်းဢမ်ႇၼဵၵ်းမၼ်း။
2.  **Logic Task**: ထႅမ်သႂ်ႇ Function တွၼ်ႈတႃႇၼႄၶၢဝ်းယၢမ်း "ဢၼ်ၵိုတ်းယူႇ" (Remaining Time) တႅၼ်းတွၼ်ႈတႃႇ "ၶၢဝ်းယၢမ်းတင်းသဵင်ႈ"။
3.  **Analysis**: ၸၢမ်းႁႃတူၺ်းဝႃႈ `Slider` ၶွင် Material 3 ၼႆႉ ႁဝ်းၸၢင်ႈမႄး `trackHeight` (တၢင်းသုင်) မၼ်းလႆႈၸိူင်ႉႁိုဝ်?

---