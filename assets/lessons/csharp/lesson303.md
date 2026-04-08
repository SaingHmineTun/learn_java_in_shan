# Lesson 303: "Camera and Photo Gallery Integration"

.NET MAUI မီး Media Picker ဢၼ်ၸွႆးႁႂ်ႈႁဝ်းလၢတ်ႈတေႃႇတင်း Hardware ၵွင်ႈထႆႇႁၢင်ႈလႆႈငၢႆႈငၢႆႈၶႃႈ။

### 1. Permissions (ၵၢၼ်ယွၼ်းသုၼ်ႇၸႂ်ႉ)
မိူဝ်ႈပႆႇတေႇၸႂ်ႉမၼ်းၼၼ်ႉ ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈၼႂ်း **Platforms** (မိူၼ်ၼင်ႇ `AndroidManifest.xml` တွၼ်ႈတႃႇ Android) ဝႃႈ App ႁဝ်းလူဝ်ႇၸႂ်ႉ `CAMERA` လႄႈ `READ_EXTERNAL_STORAGE` ၶႃႈ။ 
သင်ႁဝ်းဢမ်ႇမၵ်းမၼ်ႈဝႆႉၼႆ App တေလူႉ (Crash) ၵမ်းလဵဝ် မိူဝ်ႈႁွင်ႉၸႂ်ႉမၼ်းၶႃႈ။

### 2. Taking a Photo (ၵၢၼ်ထႆႇႁၢင်ႈမႂ်ႇ)
ႁဝ်းၸႂ်ႉ `MediaPicker.Default.CapturePhotoAsync()` တွၼ်ႈတႃႇပိုတ်ႇ App ၵွင်ႈထႆႇ ၶွင်ၾူၼ်းၶႃႈ။

**တူဝ်ယင်ႇ Code:**
```csharp
if (MediaPicker.Default.IsCaptureSupported)
{
    FileResult photo = await MediaPicker.Default.CapturePhotoAsync();

    if (photo != null)
    {
        // ဢဝ်ႁၢင်ႈဢၼ်ထႆႇယဝ်ႉ ၵႂႃႇသိမ်းဝႆႉၼႂ်း Folder App ႁဝ်း
        string localFilePath = Path.Combine(FileSystem.CacheDirectory, photo.FileName);
        using Stream sourceStream = await photo.OpenReadAsync();
        using FileStream localFileStream = File.OpenWrite(localFilePath);

        await sourceStream.CopyToAsync(localFileStream);
    }
}
```

### 3. Picking a Photo (ၵၢၼ်လိူၵ်ႈႁၢင်ႈၼႂ်း Gallery)
သင် User ၶႂ်ႈလိူၵ်ႈႁၢင်ႈ ဢၼ်မီးဝႆႉယဝ်ႉၼႆ ႁဝ်းၸႂ်ႉ `MediaPicker.Default.PickPhotoAsync()` ၶႃႈ။



---

### 4. ႁဵတ်းသင်လွင်ႈၼႆႉၸင်ႇလမ်ႇလွင်ႈ?
1. **User Interaction:** ၸွႆးႁႂ်ႈ App ႁဝ်းမီးၸႂ် (Interactive) လႄႈ ၸႂ်ႉငၢႆႈလိူဝ်ၵဝ်ႇ။
2. **Data Collection:** တွၼ်ႈတႃႇ App "Shan Community" ႁဝ်းၼႆ User ၸၢင်ႈထႆႇႁၢင်ႈ ပၢႆႉပွႆး သေသူင်ႇၶဝ်ႈမႃးၼႂ်း System ႁဝ်းလႆႈၶႃႈ။
3. **Cross-Platform:** Code ဢၼ်ႁဝ်းတႅမ်ႈၽၢႆႇၼိူဝ်ၼၼ်ႉ မၼ်းတေပိုတ်ႇၵွင်ႈထႆႇ Android ၼိူဝ် Android သေ ပိုတ်ႇၶွင် iPhone ၼိူဝ် iOS ႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **MediaPicker:** ၶိူင်ႈမိုဝ်းပိုၼ်ႉထၢၼ်ၼႂ်း MAUI တွၼ်ႈတႃႇၸတ်းၵၢၼ် ႁၢင်ႈ လႄႈ Video။
* **Async/Await:** ၵၢၼ်ႁဵတ်းၵၢၼ်ဢၼ်ပႂ်ႉပၼ် (ယွၼ်ႉၵၢၼ်ထႆႇႁၢင်ႈ တေၸႂ်ႉၶၢဝ်းယၢမ်း၊ ႁဝ်းလူဝ်ႇပႂ်ႉႁႂ်ႈ User ထႆႇယဝ်ႉၵွၼ်ႇ)။
* **FileResult:** Object ဢၼ်သိမ်းၶေႃႈမုၼ်းၾၢႆႇႁၢင်ႈ ဢၼ်ႁဝ်းလႆႈမႃးတီႈၵွင်ႈထႆႇ။
* **Stream:** ၵၢၼ်သူင်ႇၶေႃႈမုၼ်းၾၢႆႇ (Byte data) လုၵ်ႉတီႈၼိုင်ႈၵႂႃႇတီႈၼိုင်ႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈဢဝ်ႁၢင်ႈတီႈ Gallery ၶွင်ၾူၼ်း (ဢၼ်မီးဝႆႉယဝ်ႉ) ၼၼ်ႉ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Method ၸိုဝ်ႈဝႃႈသင်?
2. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၵူတ်ႇထတ်း `IsCaptureSupported` ၵွၼ်ႇတေပိုတ်ႇၵွင်ႇ?