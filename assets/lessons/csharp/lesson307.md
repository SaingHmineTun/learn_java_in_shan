# Lesson 307: "Touch Gestures in .NET MAUI"

### 1. TapGestureRecognizer (ၵၢၼ်ၼဵၵ်း)
မီး `Button` ၵူၺ်း ဢၼ်ႁဝ်းတေၼဵၵ်းလႆႈၶႃႈ။ ၵူၺ်းၵႃႈသင်ႁဝ်းၶႂ်ႈႁႂ်ႈ **ၶႅပ်းႁၢင်ႈ (Image)** ဢမ်ႇၼၼ် **တူဝ်လိၵ်ႈ (Label)** ၼဵၵ်းလႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ `TapGestureRecognizer` ၶႃႈ။

* **NumberOfTapsRequired:** ႁဝ်းမၵ်းမၼ်ႈလႆႈဝႃႈ တေႁႂ်ႈၼဵၵ်းလႆႈ ပွၵ်ႈလဵဝ်ႁ ဢမ်ႇၼၼ် ၼဵၵ်း 2 ပွၵ်ႈ (Double Tap) ၸင်ႇႁဵတ်းၵၢၼ်ၶႃႈ။

**တူဝ်ယင်ႇ Code ၼႂ်း XAML:**
```xml
<Image Source="shan_map.png">
    <Image.GestureRecognizers>
        <TapGestureRecognizer Command="{Binding MapTapCommand}" 
                              NumberOfTapsRequired="1" />
    </Image.GestureRecognizers>
</Image>
```

### 2. SwipeGestureRecognizer (ၵၢၼ်ပတ်ႉ)
ၸႂ်ႉတွၼ်ႈတႃႇႁူႉလွင်ႈ "ပၢၵ်ႈ" ၼႃႈၸေႃးၵႂႃႇ ၽၢႆႇသၢႆႉ၊ ၽၢႆႇၶႂႃ၊ ၶိုၼ်ႈၼိူဝ် ဢမ်ႇၼၼ် လူင်းတႂ်ႈၶႃႈ။
* **Direction:** မၵ်းမၼ်ႈဝႃႈ တေႁပ်ႉႁူႉၵၢၼ်ပၢၵ်ႈၽၢႆႇလႂ် (Left, Right, Up, Down)။
* **တူဝ်ယင်ႇ:** ၸႂ်ႉတွၼ်ႈတႃႇ "ယႃႉ" (Delete) ၶေႃႈမုၼ်းၼႂ်း List လူၺ်ႈၵၢၼ်ပၢၵ်ႈၵႂႃႇၽၢႆႇသၢႆႉၶႃႈ။



### 3. Pinch & Pan (ၵၢၼ်ယืดလႄႈၵၢၼ်လၢၵ်ႈ)
* **PinchGesture:** ၸႂ်ႉ 2 ၼိဝ်ႉသေ ယိုတ်ႈ (Zoom In) ဢမ်ႇၼၼ် ႁူတ်း (Zoom Out) ၶႅပ်းႁၢင်ႈၶႃႈ။
* **PanGesture:** ၸႂ်ႉၼိဝ်ႉလၢၵ်ႈ (Drag) Component ၵႂႃႇမႃးၼိူဝ်ၼႃႈၸေႃးၶႃႈ။

---

### 4. ႁဵတ်းသင်လွင်ႈၼႆႉၸင်ႇလမ်ႇလွင်ႈ?
1.  **Natural Interaction:** ၸွႆးႁႂ်ႈ User ႁူႉဝႃႈ App ႁဝ်းၸႂ်ႉငၢႆႈ ၼႆၶႃႈ။
2.  **Hidden Shortcuts:** ႁဝ်းၸၢင်ႈသႂ်ႇ "တၢင်းလပ်ႉ" ၸိူင်ႉၼင်ႇ ပၢၵ်ႈၼႃႈၸေႃးသေ ႁႂ်ႈ Menu ပိုတ်ႇဢွၵ်ႇမႃးၶႃႈ။
3.  **Modern UI:** App ၶိုတ်းၵၢပ်ႈၵူႈဢၼ် လူဝ်ႇမီး Gestures တွၼ်ႈတႃႇ လူတ်းၵၢၼ်ၸႂ်ႉ Buttons ဢၼ်ၼမ်လိူဝ်ပူၼ်ႉတီႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **GestureRecognizer:** ၶိူင်ႈမိုဝ်းဢၼ်ပႂ်ႉထွမ်ႇ "လွင်ႈတူင်ႉၼိုင်" ၶွင်ၼိဝ်ႉမိုဝ်းၼိူဝ် UI။
* **Command:** ၵၢၼ်သူင်ႇ "ၶေႃႈသင်ႇ" ၵႂႃႇၸူး ViewModel မိူဝ်ႈမီးၵၢၼ်တူင်ႉၼိုင်ၶႃႈ။
* **Scale:** တၢင်းယႂ်ႇ/လဵၵ်ႉ ၶွင် UI ဢၼ်လႅၵ်ႈပိၼ်ႇၸွမ်း ၵၢၼ် Pinch ၶႃႈ။
* **Direction:** သဵၼ်ႈတၢင်းဢၼ် User ပၢၵ်ႈၼိဝ်ႉၵႂႃႇၶႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈႁႂ်ႈ Label ၼိုင်ႈဢၼ် ႁဵတ်းၵၢၼ်သေဢၼ်ဢၼ် မိူဝ်ႈ User ၼဵၵ်းမၼ်း **2 ပွၵ်ႈ** ၼႆ ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈ Property လႂ်ၼႂ်း `TapGestureRecognizer`?
2. ၵၢၼ်ၸႂ်ႉ **SwipeGesture** ၽၢႆႇၶႂႃ (Right) ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇသင် ၼႂ်းၵၢၼ်ၵႂႃႇၼႃႈလိၵ်ႈ (Navigation)?