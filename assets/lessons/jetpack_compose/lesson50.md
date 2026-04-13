## Lesson 50: Audio State Management with ViewModel

မိူဝ်ႈႁဝ်းမီး Media Service တႃႇပိုတ်ႇၵႂၢမ်းယဝ်ႉၼၼ်ႉ တွၼ်ႈဢၼ်လွင်ႈယႂ်ႇသုတ်းထႅင်ႈဢၼ်ၼိုင်ႈၵေႃႈ ပဵၼ်ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း (State) လုၵ်ႉတီႈ Service မႃးၼႄဝႆႉၼိူဝ် UI ၶႃႈ။ 
ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ **ViewModel** တွၼ်ႈတႃႇပဵၼ်ၵူၼ်းၵၢင် ၸတ်းၵၢၼ်လွင်ႈတူင်ႉၼိုင်ၶွင်သဵင်ၶႃႈ။

### 1. The Controller Connection
တွၼ်ႈတႃႇတေၵုမ်းၵၢၼ် (Control) ExoPlayer ဢၼ်ယူႇၼႂ်း Service လႆႈၼၼ်ႉ၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`MediaController`** ၶႃႈ။ 
မၼ်းမိူၼ်တင်း "Remote Control" ဢၼ်ႁဝ်းၸႂ်ႉၼဵၵ်း Play/Pause လုၵ်ႉတီႈၼႃႈၸေႃး UI ယဝ်ႉၶႃႈ။



### 2. ViewModel Implementation
ViewModel တေမီးၼႃႈတီႈ ပႂ်ႉထွမ်ႇ (Observe) ဝႃႈ ၵႂၢမ်းတိုၵ်ႉလဵၼ်ႈယူႇႁိုဝ်? ဢမ်ႇၼၼ် ၵိုတ်းဝႆႉယူႇ? သေသူင်ႇၶေႃႈမုၼ်းၼၼ်ႉၸူး UI ၶႃႈ။

```kotlin
class MusicViewModel(context: Context) : ViewModel() {

    // 1. တင်ႈ StateFlow တွၼ်ႈတႃႇၵဵပ်းသိမ်း State ၶွင် Player
    private val _isPlaying = MutableStateFlow(false)
    val isPlaying = _isPlaying.asStateFlow()

    private var mediaController: MediaController? = null

    init {
        // 2. တႄႇၵွင်ႉ MediaController ၶဝ်ႈၸူး MusicService
        val sessionToken = SessionToken(context, ComponentName(context, MusicService::class.java))
        val controllerFuture = MediaController.Builder(context, sessionToken).buildAsync()
        
        controllerFuture.addListener({
            mediaController = controllerFuture.get()
            // 3. ထႅမ် Listener တွၼ်ႈတႃႇ Update State Automatic
            mediaController?.addListener(object : Player.Listener {
                override fun onIsPlayingChanged(isPlaying: Boolean) {
                    _isPlaying.value = isPlaying
                }
            })
        }, MoreExecutors.directExecutor())
    }

    fun togglePlayPause() {
        if (mediaController?.isPlaying == true) {
            mediaController?.pause()
        } else {
            mediaController?.play()
        }
    }
}
```

### 3. Handling Audio States
ၼႂ်း Music App ၼိုင်ႈဢၼ်ၼၼ်ႉ State ဢၼ်ႁဝ်းလူဝ်ႇၸတ်းၵၢၼ်မီးယူႇ 4 မဵဝ်းပိူင်ယႂ်ႇၶႃႈ:
* **Playback State**: တိုၵ်ႉလူတ်ႇၵႂၢမ်း (Buffering)၊ ၽွမ်ႉတႄႇလဵၼ်ႈ (Ready)၊ ဢမ်ႇၼၼ် လဵၼ်ႈယဝ်ႉ (Ended)။
* **Is Playing**: ၵႂၢမ်းတိုၵ်ႉလဵၼ်ႈယူႇ (True) ဢမ်ႇၼၼ် ၵိုတ်းဝႆႉ (False)။
* **Current Media**: ၵႂၢမ်းႁူဝ်လႂ်တိုၵ်ႉလဵၼ်ႈယူႇ (Title, Artist, Album Art)။
* **Progress**: ၶၢဝ်းယၢမ်းၵႂၢမ်းဢၼ်လဵၼ်ႈဝႆႉ (Current Position)။



---

### Summary of Lesson 50
ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းလႆႈႁဵၼ်းႁူႉ:
1.  **MediaController**: ၵၢၼ်ၸႂ်ႉ Controller တွၼ်ႈတႃႇၵွင်ႉၸူး Service လုၵ်ႉတီႈ ViewModel။
2.  **Player Listener**: ၵၢၼ်ပႂ်ႉထွမ်ႇလွင်ႈလႅၵ်ႈလၢႆႈၶွင် Player ႁႂ်ႈ UI လႅၵ်ႈလၢႆႈၸွမ်း။
3.  **Encapsulation**: ၵၢၼ်ၵဵပ်း Logic ၵၢၼ်လဵၼ်ႈၵႂၢမ်းဝႆႉၼႂ်း ViewModel ႁႂ်ႈ Code သႅၼ်ႈသႂ်သေ ဢမ်ႇယႃႉ UI။

---

### ၵၢၼ်ႁိူၼ်း (Homework)
1.  **Code Practice**: တႅမ်ႈ Class `MusicViewModel` သေၸၢမ်းၵွင်ႉၸူး `MusicService` ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်းတွၼ်ႈ 49 ၶႃႈ။
2.  **Logic Task**: ထႅမ်သႂ်ႇ Function `skipToNext()` လႄႈ `skipToPrevious()` ၼႂ်း ViewModel ၶႃႈ။
3.  **UI Sync**: ၸၢမ်းၸႂ်ႉ `collectAsState()` ၼႂ်း Compose တွၼ်ႈတႃႇလႅၵ်ႈ Icon Play ပဵၼ် Pause မိူဝ်ႈၵႂၢမ်းလဵၼ်ႈယူႇ။

---