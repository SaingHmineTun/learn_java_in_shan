## Lesson 51: Designing the Now Playing Screen

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ **Jetpack Compose** တွၼ်ႈတႃႇသၢင်ႈ UI ဢၼ်တူင်ႉၼိုင်ၸွမ်း State လုၵ်ႉတီႈ ViewModel မႃးၶႃႈ။

### 1. Structure of Now Playing Screen
ၼႃႈၸေႃးၼႆႉ ၵႆႉမီးပၵ်းပိူင် (Layout) ၸိူင်ႉၼႆၶႃႈ:
* **Top Bar**: Button တွၼ်ႈတႃႇၵိုတ်း (Dismiss) လႄႈ ၸိုဝ်ႈ Playlist။
* **Album Art**: ႁၢင်ႈဢႄႇပမ်ႇ (Album Cover) ဢၼ်မီးဝႆႉယူႇၵၢင်ၼႃႈၸေႃး။
* **Song Info**: ၸိုဝ်ႈၵႂၢမ်း လႄႈ ၸိုဝ်ႈၵူၼ်းႁွင်ႉၵႂၢမ်း။
* **Playback Progress**: Seekbar တွၼ်ႈတႃႇၼႄၶၢဝ်းယၢမ်းၵႂၢမ်း။
* **Playback Controls**: Button Play/Pause, Skip, Shuffle, လႄႈ Repeat။



### 2. Implementation: The Main Layout
ႁဝ်းတေၸႂ်ႉ `Column` တွၼ်ႈတႃႇၸတ်းဝၢင်း Component ၸိူဝ်းၼႆႉၶႃႈ:

```kotlin
@Composable
fun NowPlayingScreen(viewModel: MusicViewModel) {
    val isPlaying by viewModel.isPlaying.collectAsState()
    
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.SpaceBetween
    ) {
        // 1. Album Art (သၢင်ႈပဵၼ် Card မီး Shadow ႁၢင်ႈလီ)
        AlbumArtSection()

        // 2. Song Metadata
        SongInfoSection(title = "ၵႂၢမ်းတႆး", artist = "ၸႆၢးသႅင်မၢဝ်း")

        // 3. Player Controls
        PlayerControlSection(
            isPlaying = isPlaying,
            onTogglePlay = { viewModel.togglePlayPause() },
            onNext = { viewModel.skipToNext() },
            onPrevious = { viewModel.skipToPrevious() }
        )
    }
}
```

### 3. Creating Interactive Controls
တွၼ်ႈတႃႇ Player Controls ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **IconButton** သေ လႅၵ်ႈလၢႆႈ Icon ၸွမ်း State ၶွင် Player ၶႃႈ:

```kotlin
@Composable
fun PlayerControlSection(
    isPlaying: Boolean,
    onTogglePlay: () -> Unit,
    onNext: () -> Unit,
    onPrevious: () -> Unit
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.Center
    ) {
        IconButton(onClick = onPrevious) {
            Icon(Icons.Default.SkipPrevious, contentDescription = null, modifier = Modifier.size(48.dp))
        }
        
        // Button Play/Pause ဢၼ်ယႂ်ႇလိူဝ်ပိူၼ်ႈ
        IconButton(
            onClick = onTogglePlay,
            modifier = Modifier.size(80.dp)
        ) {
            Icon(
                imageVector = if (isPlaying) Icons.Default.PauseCircleFilled else Icons.Default.PlayCircleFilled,
                contentDescription = null,
                modifier = Modifier.fillMaxSize(),
                tint = MaterialTheme.colorScheme.primary
            )
        }

        IconButton(onClick = onNext) {
            Icon(Icons.Default.SkipNext, contentDescription = null, modifier = Modifier.size(48.dp))
        }
    }
}
```



---

### Summary of Lesson 51
ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းလႆႈႁဵၼ်းႁူႉ:
1.  **Layout Design**: ၵၢၼ်ၸတ်းပၵ်းပိူင် Music Player ႁႂ်ႈထုၵ်ႇတႅတ်ႈၸွမ်း Standard။
2.  **Component Composition**: ၵၢၼ်ၸႅၵ်ႇ UI ပဵၼ်တွၼ်ႈလဵၵ်ႉလဵၵ်ႉ (Sections) ႁႂ်ႈ Code သႅၼ်ႈသႂ်။
3.  **State-Driven UI**: ၵၢၼ်ႁဵတ်းႁႂ်ႈ Icon လႅၵ်ႈလၢႆႈၸွမ်းၵႃႈ State `isPlaying`။

---

### ၵၢၼ်ႁိူၼ်း (Homework)
1.  **UI Challenge**: တႅမ်ႈ `AlbumArtSection` ႁႂ်ႈမီး `RoundedCornerShape` လႄႈ သႂ်ႇႁၢင်ႈလုၵ်ႉတီႈ Internet လူၺ်ႈၸႂ်ႉ Library **Coil**။
2.  **Styling Task**: မႄးသီ Icon Play/Pause ႁႂ်ႈပဵၼ်သီ "Gold" ဢမ်ႇၼၼ် "Sapphire Blue" ႁႂ်ႈၶဝ်ႈတင်းပၢႆးဝူၼ်ႉ Shan Music Player။
3.  **Analysis**: ၸၢမ်းႁႃတူၺ်းဝႃႈ သင်ႁဝ်းၶႂ်ႈႁဵတ်းႁႂ်ႈ Album Art "ပၼ်ႇ" (Rotate) မိူဝ်ႈၵႂၢမ်းလဵၼ်ႈယူႇ၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ Animation တွၼ်ႈလႂ်ၼႂ်း Compose?

---