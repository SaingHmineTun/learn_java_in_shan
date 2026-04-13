## Lesson 49: Media Service & Foreground Service

ၼႂ်း Android ၼႆႉ **Service** ပဵၼ် Component ဢၼ်ႁဵတ်းႁႂ်ႈ App ႁဝ်းႁဵတ်းၵၢၼ်လႆႈယူႇၽၢႆႇလင် (Background) ယဝ်ႉ။ 
တႅၼ်းတွၼ်ႈတႃႇတေၸႂ်ႉ Service ထမ်ႇမတႃႇ၊ Media3 ပၼ်ႁဝ်းၸႂ်ႉ **`MediaSessionService`** ဢၼ်ထုၵ်ႇၵေႃႇသၢင်ႈမႃး တွၼ်ႈတႃႇၵုမ်းၵၢၼ်သဵင်ယဝ်ႉ။

### 1. Why Foreground Service?
Android မီးပၵ်းပိူင်ႁၵ်ႉသႃ Battery ဢၼ်ၵႅင်ႇၶႅင်ၼႃႇၶႃႈ။ သင် App ၼိုင်ႈဢၼ် ႁဵတ်းၵၢၼ်ယူႇၽၢႆႇလင်သေ ဢမ်ႇၼႄႁၢင်ႈသင် (Notification) ၼႆ System တေယႃႉ (Kill) App ၼၼ်ႉပႅတ်ႈၶႃႈ။
* **Foreground Service**: ပဵၼ်ၵၢၼ်မၢႆဝႆႉဝႃႈ "App ၼႆႉတိုၵ်ႉႁဵတ်းၵၢၼ်ဢၼ်လွင်ႈယႂ်ႇပၼ်ၵူၼ်းၸႂ်ႉယူႇၼႃ" ၼႆၶႃႈ။
* **Notification**: မၼ်းတေၼႄ Player Control (Play/Pause/Skip) ဝႆႉၼိူဝ် Notification Bar တႃႇသေႇၶႃႈ။



### 2. Implementation: The MediaSessionService
ႁဝ်းလူဝ်ႇသၢင်ႈ Class မႂ်ႇ ဢၼ် `extends MediaSessionService` ၶႃႈ:

```kotlin
class MusicService : MediaSessionService() {
    private var mediaSession: MediaSession? = null

    // 1. တႄႇသၢင်ႈ MediaSession မိူဝ်ႈ Service တႄႇႁဵတ်းၵၢၼ်
    override fun onCreate() {
        super.onCreate()
        val player = ExoPlayer.Builder(this).build()
        mediaSession = MediaSession.Builder(this, player).build()
    }

    // 2. ပၼ်ၶႂၢင်ႉႁႂ်ႈ App တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ Bluetooth/Watch) ၵွင်ႉၸူးလႆႈ
    override fun onGetSession(controllerInfo: MediaSession.ControllerInfo): MediaSession? {
        return mediaSession
    }

    // 3. ယႃႉပႅတ်ႈမိူဝ်ႈပိၵ်ႉ Service
    override fun onDestroy() {
        mediaSession?.run {
            player.release()
            release()
            mediaSession = null
        }
        super.onDestroy()
    }
}
```

### 3. Registering in AndroidManifest.xml
တွၼ်ႈၼႆႉလွင်ႈယႂ်ႇၼႃႇၶႃႈ! သင်ႁဝ်းဢမ်ႇမၢႆဝႆႉၼႂ်း Manifest ၼႆ Service ႁဝ်းတေဢမ်ႇႁဵတ်းၵၢၼ်ၶႃႈ။

```xml
<service
    android:name=".service.MusicService"
    android:foregroundServiceType="mediaPlayback"
    android:exported="true">
    <intent-filter>
        <action android:name="androidx.media3.session.MediaSessionService" />
    </intent-filter>
</service>
```



### 4. Foreground Service Permissions (Android 14+)
သင်ႁဝ်းၸႂ်ႉ Android 14 ၶိုၼ်းၼိူဝ်ၼႆ ႁဝ်းလူဝ်ႇထႅမ်သႂ်ႇ Permission တီႈတႂ်ႈၼႆႉ ၼႂ်း Manifest ၸွမ်းၶႃႈ:
* `FOREGROUND_SERVICE`
* `FOREGROUND_SERVICE_MEDIA_PLAYBACK`

---

### Summary of Lesson 49
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Service Concept**: ပွင်ႇၸႂ်လွင်ႈတၢင်းဢၼ်လူဝ်ႇၸႂ်ႉ Service တွၼ်ႈတႃႇပိုတ်ႇၵႂၢမ်း။
2.  **MediaSession**: ၵၢၼ်ၵွင်ႉ ExoPlayer ၶဝ်ႈၸူး Media Session တွၼ်ႈတႃႇၵုမ်းၵၢၼ် လုၵ်ႉတီႈၼွၵ်ႈ App။
3.  **Manifest Setup**: ၵၢၼ်မၢႆဝႆႉ Foreground Service Type ႁႂ်ႈထုၵ်ႇတႅတ်ႈၸွမ်းပၵ်းပိူင် Android။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 49)
1.  **Coding Task**: သၢင်ႈ `MusicService` Class သေထႅမ်သႂ်ႇၼႂ်း Manifest ႁႂ်ႈ Build PASS ၶႃႈ။
2.  **Permission Task**: ထႅမ်သႂ်ႇ Permission တွၼ်ႈတႃႇ Foreground Service ၼႂ်း Manifest ၶႃႈ။
3.  **Research**: ၸၢမ်းႁႃတူၺ်းဝႃႈ "Wake Lock" ပဵၼ်သင်? ယဝ်ႉၵေႃႈ မၼ်းၸွႆႈ Music App ႁဝ်းလႆႈၸိူင်ႉႁိုဝ်?

---