## 1: Introduction & Setting Up Workspace

ၼႂ်း Module 1 ၼႆႉ ႁဝ်းတေ တေႇလဵပ်ႈႁဵၼ်း လွင်ႈၶူင်သၢင်ႈ Mini Game **Slime Bounce Arena** ၶႃႈ!
ယၢမ်းလဵဝ် ႁဝ်းတေသိုပ်ႇလဵပ်ႈႁဵၼ်းၵႂႃႇ တွၼ်ႈထူၼ်ႈၼိုင်ႈ ၶွင် Module ၼႆႉ — ၼၼ်ႉပဵၼ် **Introduction & Setting Up Workspace** ၶႃႈ။

မိူဝ်ႈႁဝ်းတေတေႇႁဵတ်း Game ၼၼ်ႉ၊ ႁဝ်းလူဝ်ႇမီး Game Engine ဢၼ်မီးၼမ်ႉၵတ်ႉ၊ Lightweight, လႄႈ ၸႂ်ႉငၢႆႈၶႃႈ။ 
**Godot Engine 4.x** ၼႆႉ ပဵၼ် Open-source Game Engine ဢၼ်ၶႅမ်ႉလႅပ်ႈ တႃႇ Beginner ၶဝ် ၸႂ်ႉၶူင်သၢင်ႈ Game 2D/3D တေႉတေႉၶႃႈ။

---

### 1. လွင်ႈပိုတ်ႇ Tool လႄႈ ၵၢၼ် Create Project

မိူဝ်ႈႁဝ်းတေ တေႇႁဵတ်း Game မႂ်ႇၼၼ်ႉ၊ ႁဝ်းတေလႆႈသၢင်ႈ Project Setup ၼႂ်း Godot Project Manager ယဝ်ႉၶႃႈ:

1. **Download & Run:** Godot Engine ၼႆႉ ဢမ်ႇလူဝ်ႇ Install သၢင်ႈဝႆႉ ၼႂ်း C: Drive ႁႅင်း၊ ၵူၺ်း Download ၽၢႆႇ `.exe` သေ ပိုတ်ႇ Run လႆႈၵမ်းလဵဝ်ၶႃႈ။
2. **Create New Project:** ပိုတ်ႇ Godot သေ တဵၵ်း `New Project` -> သႂ်ႇ Project Name ဝႃႈ `Slime_Bounce_Arena`.
3. **Renderer Selection:**
* **Forward+:** သၢင်ႇထုၵ်ႇ တႃႇ PC High-end ဢၼ်မီး Graphic Card ႁႅင်း။
* **Compatibility:** သၢင်ႇထုၵ်ႇ တႃႇ Laptops, Mobile, လႄႈ Low-end Devices (တွၼ်ႈတႃႇ Game 2D ႁဝ်း တေၸႂ်ႉ ဢၼ်ၼႆႉ ၶႃႈ)။



---

### 2. ႁူႉၸၵ်ႈ Godot Main Workspace (Interface 4 ၽၢၵ်ႈ)

မိူဝ်ႈႁဝ်း ပိုတ်ႇ Project မႃးယဝ်ႉ၊ ၼႃႈဢူၵ်း (Workspace) ၶွင် Godot တေၸႅၵ်ႇဝႆႉ 4 ၽၢၵ်ႈ ဢၼ်လႅၵ်ႈလၢႆႈ ႁဵတ်းၵၢၼ် ၵိုၵ်းၵၼ်ၶႃႈ:

1. **FileSystem Dock (ၽၢႆႇသၢႆႉ-တႂ်ႈ):** တီႈသိမ်း Resource တင်းသဵင်ႈ မိူၼ်ၼင်ႇ Images, Audio, Scripts, လႄႈ Scenes.
2. **Scene Dock (ၽၢႆႇသၢႆႉ-ၼိူဝ်):** တီႈၸတ်းၵၢၼ် Nodes တင်းသဵင်ႈ ဢၼ်မီးၼႂ်း Game Level ယၢမ်းလဵဝ်။
3. **Inspector Dock (ၽၢႆႇၶႂႃ):** တီႈမႄး Settings လႄႈ Properties ၶွင် Node ဢၼ်ႁဝ်း Select ဝႆႉ (မိူၼ်ၼင်ႇ Position, Scale, Color).
4. **Main Viewport (တီႈၵၢင်):** ၼႃႈလိၼ် 2D/3D Workspace တွၼ်ႈတႃႇ ဝၢင်း Structure Graphic ၶွင် Game.

---

### 3. The Golden Rule of Project Setup: ၵၢၼ်ၸတ်း Folder Structure

လွင်ႈႁဵတ်း Game ၼၼ်ႉ မီး Asset ၼမ် လၢႆလၢႆယိူင်ႈ — ပိူင်ယၢင်ႇ: Images (`.png`), Sound (`.wav`), Scripts (`.gd`).
ၵွပ်ႈၼႆလႄႈ မိူဝ်ႈ ပႆႇတႄႇတႅမ်ႈ Code, ႁဝ်းထုၵ်ႇလီ ၸႅၵ်ႇ Folder ၼႂ်း **FileSystem Dock** ႁႂ်ႈမီး System တႃႇသေႇ ၶႃႈ။

```text
res://
 ├── assets/
 │    ├── sprites/      (တႃႇသိမ်း ႁၢင်ႈ Slime, Platform, Background)
 │    └── audio/        (တႃႇသိမ်း Sound FX, BGM)
 ├── scenes/            (တႃႇသိမ်း ၽၢႆႇ .tscn မိူၼ်ၼင်ႇ Player.tscn, Main.tscn)
 └── scripts/           (တႃႇသိမ်း ၽၢႆႇ GDScript .gd)

```

---

### Step-by-Step: ၵၢၼ်ပိုတ်ႇ Standard 2D Workspace

ႁဝ်းမႃးၸၢမ်း ၵေႃႇသၢင်ႈ Scene တွၼ်ႈတႃႇ Test ၼႃႈတၢင်း Viewport 2D ၶႃႈ।

1. **1. Switch to 2D Mode:**
   ၼႂ်း Top Center Bar ၼၼ်ႉ တဵၵ်း Switch ဢဝ် `2D` Viewport (ၼႃႈလိၼ်တေမီး Axis X/Y)။


2. **2. Create Root Node:**
   ၼႂ်း **Scene Dock** (ၽၢႆႇသၢႆႉ)၊ တဵၵ်း **2D Scene** (မၼ်းတေ သၢင်ႈ Node2D ပၼ် ပဵၼ် Root Node)။


3. **3. Rename & Save Scene:**
   Right-click တီႈ `Node2D` -> Rename ပဵၼ် `Main`। သေ တႅၵ်း `Ctrl + S` တႃႇ Save Scene သႂ်ႇၼႂ်း Folder `res://scenes/Main.tscn`။


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `res://` Path

ၼႂ်း Godot Engine ၼၼ်ႉ ႁဝ်းတေႁၼ် `res://` ၶႃႈ। ၼႆႉမၼ်းႁွင်ႉဝႃႈ **Resource Path** ၶႃႈ။
မၼ်းပဵၼ် Root Directory ၶွင် Project ႁဝ်း ဢၼ်သိမ်း ၽၢႆႇတင်းသဵင်ႈ ၼႂ်း Folder Slime Bounce Arena ၼၼ်ႉၶႃႈ။
(ပိူင်ယၢင်ႇ: `res://assets/sprites/slime.png` ပဵၼ် Path Direct ဢၼ်ၵႂႃႇႁႃ ၽၢႆႇ ႁၢင်ႈ Slime)။