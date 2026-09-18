## 3: Project Settings & Screen Resolution

ၼႂ်း Lesson 2 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈ Node လႄႈ Scene Tree ဢၼ်ပဵၼ် ပိုၼ်ႉထၢၼ် ၶွင် Godot Engine ၵႂႃႇယဝ်ႉၶႃႈ!

ယၢမ်းလဵဝ် ႁဝ်းတေသိုပ်ႇလဵပ်ႈႁဵၼ်းၵႂႃႇ တွၼ်ႈထူၼ်ႈသၢမ် ၶွင် Module ၼႆႉ — ၼၼ်ႉပဵၼ် **Project Settings & Screen Resolution** ၶႃႈ။

မိူဝ်ႈႁဝ်းတေ တေႇႁဵတ်း Game ၼၼ်ႉ၊ လွင်ႈမၵ်းမၼ်ႈ Screen Resolution လႄႈ လွၵ်းလၢႆး Scaling ၼႆႉ မီးလွင်ႈယႂ်ႇတေႉတေႉၶႃႈ။ ပေႃးႁဝ်း ဢမ်ႇ Config ဝႆႉႁႂ်ႈလီ၊ မိူဝ်ႈ ပိုတ်ႇ Run ၼႂ်း Monitor ဢမ်ႇမိူၼ်ၵၼ် ၼၼ်ႉ Game Window ႁဝ်းၸၢင်း ယၢႆႈ ဢမ်ႇၼၼ် ႁၢင်ႇ တေဢမ်ႇၸိုၼ်ႈလီ (Blur ဝႆႉ) ၶႃႈ။

---

### 1. လွင်ႈမၵ်းမၼ်ႈ Display Window Size

တွၼ်ႈတႃႇ Mini Game 2D ႁဝ်းၼႆႉ ႁဝ်းတေၸႂ်ႉ Standard HD Resolution ဢၼ်ပဵၼ် **1280 x 720** (Aspect Ratio 16:9) ၶႃႈ။

1. **Viewport Width / Height:** ပဵၼ် Resolution တီႈတႄႇ ဢၼ်ႁဝ်း ၸႂ်ႉ Design Visual Elements ၼႂ်း Viewport 2D Space။
2. **Window Mode:** မီးမဵဝ်း **Windowed** (ပိုတ်ႇပဵၼ် Window တူဝ်လဵၵ်ႉ) လႄႈ **Full Window / Exclusive Fullscreen** (ပိုတ်ႇ ပဵၼ် ၼႃႈဢူၵ်းယႂ်ႇ တင်းသဵင်ႈ)။

---

### 2. Stretch Mode လႄႈ Aspect Ratio Options

မိူဝ်ႈ Player ၶဝ် Resize Window ဢမ်ႇၼၼ် ပိုတ်ႇလဵၼ်ႈ ၼႂ်း Screen Resolution ဢၼ်ယႂ်ႇၼၼ်ႉ၊ ႁဝ်းတေလႆႈမၵ်းမၼ်ႈ လွၵ်းလၢႆး Stretch Pattern ၶႃႈ:

1. **Stretch Mode:**
* **`disabled`:** ဢမ်ႇ Resize Graphic၊ တေႁႂ်ႈ Viewport ယူႇ မိူၼ်ၵဝ်ႇတႃႇသေႇ။
* **`canvas_items`:** တေ Expand/Scale Vector & Pixel Sprites ႁႂ်ႈယႂ်ႇၸွမ်း Window size (သၢင်ႇထုၵ်ႇ တႃႇ Game 2D တေႉတေႉ)။
* **`viewport`:** တေ Render Viewport ၼႂ်း Resolution ၵဝ်ႇ သေ ဢဝ်မႃး Stretch Scale သႂ်ႇ Window size (သၢင်ႇထုၵ်ႇ တႃႇ Dynamic 3D ဢမ်ႇၼၼ် Retro Pixel Art)။


2. **Aspect Ratio:**
* **`ignore`:** တေ Stretch Graphic ႁႂ်ႈပေႃး တႅမ်ႈသႂ်ႇ Window မူတ်း၊ ၵူၺ်းၵႃႈ Image ၸၢင်ႈ ယၢႆႈ/ဢမ်ႇၸိုၼ်ႈ။
* **`keep`:** တေထိင်း Aspect Ratio 16:9 ဝႆႉတႃႇသေႇ သေ ဢဝ် Black Bars (Letterbox) သႂ်ႇပၼ် ၽၢႆႇၶႂႃ/သၢႆႉ ပေႃး Window ယႂ်ႇပူၼ်ႉၵႂႃႇ။



---

### Step-by-Step: ၵၢၼ် Config Window Settings

ႁဝ်းမႃးၸၢမ်း Config Display Resolution တွၼ်ႈတႃႇ Project **Slime Bounce Arena** ႁဝ်း ၶႃႈ।

1. **1. Open Project Settings:**
   ၵႂႃႇတီႈ Top Menu Bar -> တဵၵ်း **Project** -> လိူၵ်ႈ **Project Settings...**
2. **2. Navigate to Window Settings:**
   ၼႂ်း Left Categories Menu -> ၶိုၼ်ႈၵႂႃႇတီႈ หัวข้อ **Display** -> တဵၵ်း ဢဝ် **Window**။
3. **3. Set Resolution Dimensions:**
* တီႈ `Viewport Width` -> သႂ်ႇ `1280`
* တီႈ `Viewport Height` -> သႂ်ႇ `720`
* တီႈ `Mode` -> လိူၵ်ႈ `Windowed` (တႃႇ ငၢႆႈၼႂ်း ၵၢၼ် Test)


4. **4. Set Stretch Configuration:**
* ၶိုၼ်ႈၵႂႃႇ တီႈ Sub-section **Stretch** ၽၢႆႇတႂ်ႈ
* တီႈ `Mode` -> လိူၵ်ႈ `canvas_items`
* တီႈ `Aspect` -> လိူၵ်ႈ `keep`


5. **5. Close & Test:**
   တဵၵ်း Button **Close** သေ တဵၵ်း `F5` ဢမ်ႇၼၼ် တဵၵ်း Icon Play (Top Right) တွၼ်ႈတႃႇ Test ပိုတ်ႇ Game Window!

---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ Texture Filter

ပေႃးႁဝ်း ႁဵတ်း Game 2D ဢၼ်ၸႂ်ႉ Pixel Art Sprites၊ ႁဝ်းထုၵ်ႇလီ ၵႂႃႇတီႈ **Project Settings** -> **Rendering** -> **Textures** -> **Default Texture Filter** သေ လႅၵ်ႈပဵၼ် **`Nearest`** ၶႃႈ။
လွၵ်းလၢႆးၼႆႉ တေႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈ Pixel Art Sprites ႁဝ်း ပဵၼ် Blur သေ ႁႂ်ႈမၼ်း ၸိုၼ်ႈလႅင်း (Sharp) ဝႆႉ တႃႇသေႇ ၶႃႈ!