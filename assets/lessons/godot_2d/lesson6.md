
## 6: StaticBody2D & Collision Boundaries

ၼႂ်း Lesson 5 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈသႂ်ႇ Bounciness Physics Material ႁႂ်ႈ Slime Player ႁဝ်း မီး ႁႅင်း Bouncing ၵႂႃႇယဝ်ႉၶႃႈ!

ယၢမ်းလဵဝ် ႁဝ်းတေသိုပ်ႇလဵပ်ႈႁဵၼ်းၵႂႃႇ တွၼ်ႈထူၼ်ႈႁူၵ်း ၶွင် Module ၼႆႉ — ၼၼ်ႉပဵၼ် **StaticBody2D & Collision Boundaries** ၶႃႈ။

မိူဝ်ႈ Slime Player ႁဝ်း မီး Physics Gravity ယဝ်ႉၼၼ်ႉ၊ ပေႃးႁဝ်း ပႆႇသၢင်ႈ ၽႃ (Walls) လႄႈ ၼႃႈလိၼ် (Floor/Platforms)၊ Slime ႁဝ်း တေ တူၵ်း လႅၼ်ႈ ပူၼ်ႉ ၼႃႈဢူၵ်း (Screen Viewport) ပႅတ်ႈၶႃႈ။ ၵွပ်ႈၼႆ ႁဝ်းလူဝ်ႇသၢင်ႈ **StaticBody2D** တွၼ်ႈတႃႇ ႁဵတ်း ဢွင်ႈတီႈ ၶႅၼ်ႈ Boundary ၶႃႈ။

---

### 1. StaticBody2D ပဵၼ်သင်?

**StaticBody2D** ၼႆႉ ပဵၼ် Physics Node ဢၼ် **ဢမ်ႇၶၢႆႉတီး (Immovable)** လႄႈ ဢမ်ႇထူပ်း ႁႅင်း Gravity သင်ၶႃႈ။
မၼ်းမီး တႃႇ ပဵၼ် ၽႃၶႅၼ်ႈ boundary, ၼႃႈလိၼ် platform, ဢမ်ႇၼၼ် ႁိၼ် တႃႇ ႁႂ်ႈ `RigidBody2D` (Slime) မႃး Bounces တူၵ်း သႂ်ႇ ၶႃႈ။

1. **RigidBody2D:** ၶၢႆႉတီႈ လႆႈ၊ မီး Gravity, Bounce ၸွမ်း Dynamic Physics.
2. **StaticBody2D:** ဢမ်ႇၶၢႆႉတီႈ၊ တဵင်ႈဝႆႉ တႃႇသေႇ, မီး တႃႇ ႁႄႉၵင်ႈ Object ဢမ်ႇႁႂ်ႈ လႅၼ်ႈပူၼ်ႉ.

---

### 2. Scene Architecture ၶွင် Arena Bounds

ႁဝ်းတေ သၢင်ႈ Dedicated Scene ဢၼ်မႂ်ႇ တွၼ်ႈတႃႇ ႁဵတ်း ၽႃ ဢိၵ်ႇ တင်း ၼႃႈလိၼ် ၶႃႈ:

```text
ArenaBounds (StaticBody2D - Root)
 ├── FloorCollision (CollisionShape2D - Child)
 ├── LeftWallCollision (CollisionShape2D - Child)
 ├── RightWallCollision (CollisionShape2D - Child)
 └── CeilingCollision (CollisionShape2D - Child)

```

---

### Step-by-Step: ၵၢၼ်သၢင်ႈ Arena Boundaries

ႁဝ်းမႃးၸၢမ်း သၢင်ႈ Bound Area တွၼ်ႈတႃႇ ႁႄႉၵင်ႈ Slime ႁဝ်း ၶႃႈ।

1. **1. Create New Scene:**
   တဵၵ်း တီႈ Tab **`+`** (New Scene Tab) -> တဵၵ်း **Other Node** -> ၶူၼ်ႉႁႃဝႃႈ `StaticBody2D` သေ တဵၵ်း **Create**. Rename Root Node ပဵၼ် **`ArenaBounds`**.
2. **2. Add Floor CollisionShape2D:**
   Right-click တီႈ `ArenaBounds` -> တဵၵ်း **Add Child Node** -> လိူၵ်ႈ **`CollisionShape2D`**.
* ၼႂ်း Inspector ၽၢႆႇၶႂႃ -> တီႈ Property `Shape` -> လိူၵ်ႈ **New RectangleShape2D**.
* ၼႂ်း Viewport 2D -> Stretch Rectangle ႁႂ်ႈယၢဝ်း ပဵၼ် Line ၼႃႈလိၼ် တီႈတႂ်ႈ (e.g., Size X: `1280`, Y: `40`).


3. **3. Add Side Walls & Ceiling:**
   Duplicate `CollisionShape2D` (တဵၵ်း `Ctrl + D`) ထႅင်ႈ 3 ဢၼ် တွၼ်ႈတႃႇ ႁဵတ်း:
* **Left Wall:** ဝၢင်းဝႆႉ တီႈ X = `0` ( Boundary ၽၢႆႇသၢႆႉ).
* **Right Wall:** ဝၢင်းဝႆႉ တီႈ X = `1280` ( Boundary ၽၢႆႇၶႂႃ).
* **Ceiling:** ဝၢင်းဝႆႉ တီႈ Y = `0` ( Boundary ၽၢႆႇၼိူဝ်).


4. **4. Save Scene:**
   တဵၵ်း `Ctrl + S` -> Save Scene သႂ်ႇၼႂ်း Folder `res://scenes/ArenaBounds.tscn`!

---

### 3. Instancing Into Main Scene & Test

1. ပိုတ်ႇ Scene **`Main.tscn`**.
2. ၼႂ်း FileSystem Dock (ၽၢႆႇသၢႆႉ-တႂ်ႈ) -> Drag & Drop ဢဝ် **`ArenaBounds.tscn`** လႄႈ **`SlimePlayer.tscn`** သႂ်ႇၼႂ်း Viewport.
3. တဵၵ်း **`F5`** တွၼ်ႈတႃႇ Run Play Game!
* ႁဝ်းတေႁၼ် Slime Player ႁဝ်း တူၵ်းလႅၼ်ႈ သႂ်ႇ ၼႃႈလိၼ် Floor သေ Bouncing ၶိုၼ်ႈလူင်း ယူႇၼႂ်း Arena Boundary Automated တေႉတေႉၶႃႈ!



---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ Debug Physics Collisions

ပေႃးႁဝ်း ၶႂ်ႈႁၼ် ႁၢင်ႈ Shape ၶွင် Collision Boundaries မိူဝ်ႈ ပိုတ်ႇ Run Game ၼၼ်ႉ၊ ႁဝ်းၸၢင်ႈ ၵႂႃႇတီႈ Top Menu Bar -> တဵၵ်း **Debug** -> Switch On **`Visible Collision Shapes`** ၶႃႈ!