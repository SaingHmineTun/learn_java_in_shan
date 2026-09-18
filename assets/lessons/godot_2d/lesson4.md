## 4: Creating Slime Player (Node2D & Sprite2D)

ၼႂ်း Lesson 3 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈ Config Display Window Resolution 1280x720 လႄႈ Stretch Mode ၵႂႃႇယဝ်ႉၶႃႈ!

ယၢမ်းလဵဝ် ႁဝ်းတေသိုပ်ႇလဵပ်ႈႁဵၼ်းၵႂႃႇ တွၼ်ႈထူၼ်ႈသီႇ ၶွင် Module ၼႆႉ — ၼၼ်ႉပဵၼ် **Creating Slime Player (Node2D & Sprite2D)** ၶႃႈ။

မိူဝ်ႈႁဝ်းတေ သၢင်ႈ Player Character ၼႂ်း Game ၼၼ်ႉ၊ ႁဝ်းဢမ်ႇထုၵ်ႇလီ သၢင်ႈမၼ်း သႂ်ႇၼႂ်း `Main.tscn` ၵမ်းလဵဝ်ၶႃႈ။ ႁဝ်းတေလႆႈသၢင်ႈ **Dedicated Character Scene** ဢၼ်သေႃးတႃႇ မီး Node ၶွင်မၼ်း သေ Save ဝႆႉပဵၼ် ၽၢႆႇ `.tscn` ႁင်းမၼ်းၶႃႈ။

---

### 1. Scene Architecture ၶွင် Slime Player

တွၼ်ႈတႃႇ Player Character ႁဝ်းၼႆႉ ႁဝ်းတေၸႂ်ႉ Physics Node ဢၼ်ပဵၼ် **RigidBody2D** ပဵၼ် Root Node ၶႃႈ။

1. **RigidBody2D (Root Node):** ပဵၼ် Node ဢၼ်ၸႂ်ႉ Gravity, Velocity, Forces, လႄႈ Physics Dynamic Real-world Simulation ၶႃႈ
2. **Sprite2D (Child Node):** တွၼ်ႈတႃႇ ၼႄ Graphic ႁၢင်ႈ Slime ၶွင်ႁဝ်း.
3. **Camera2D (Child Node):** တွၼ်ႈတႃႇ ႁႂ်ႈ Camera ၶၢႆႉတီႈ တမ်းၸွမ်း Dynamic Slime Player တႃႇသေႇ.

```text
SlimePlayer (RigidBody2D - Root)
 ├── Sprite2D (Child)
 └── Camera2D (Child)

```

---

### 2. ၵၢၼ်သၢင်ႈ New Character Scene

လွၵ်းလၢႆးသၢင်ႈ Scene တွၼ်ႈတႃႇ Player Character ၶႃႈ:

1. တဵၵ်း တီႈ Tab **`+`** (New Scene Tab) ၼႂ်း Top Center Bar.
2. ၼႂ်း Scene Dock ၽၢႆႇသၢႆႉ -> တဵၵ်း **Other Node** -> ၶူၼ်ႉႁႃဝႃႈ `RigidBody2D` သေ တဵၵ်း **Create**.
3. Rename Root Node ၼၼ်ႉ ပဵၼ် **`SlimePlayer`**.

---

### Step-by-Step: ၵၢၼ် Assembly Node & Assign Visual Texture

ႁဝ်းမႃးၸၢမ်း Assembly Visual Components တွၼ်ႈတႃႇ Slime Player ၶႃႈ।

1. **1. Add Sprite2D Node:**
   Right-click တီႈ `SlimePlayer` (`RigidBody2D`) -> တဵၵ်း **Add Child Node** -> လိူၵ်ႈ **`Sprite2D`** သေ တဵၵ်း Create.
2. **2. Assign Slime Texture Image:**
   တဵၵ်း တီႈ `Sprite2D` -> ၵႂႃႇတီႈ **Inspector Dock** (ၽၢႆႇၶႂႃ) -> တီႈ Property `Texture` ၼၼ်ႉ Drag & Drop ဢဝ် Image ႁၢင်ႈ Slime (ဢၼ်ယူႇၼႂ်း `res://assets/sprites/slime.png`) သႂ်ႇ.
3. **3. Add Camera2D Node:**
   Right-click တီႈ `SlimePlayer` ၶိုၼ်း -> တဵၵ်း **Add Child Node** -> လိူၵ်ႈ **`Camera2D`** သေ တဵၵ်း Create.
* ၼႂ်း Inspector ၶွင် `Camera2D` -> Switch On `Position Smoothing` -> `Enabled` (တႃႇႁႂ်ႈ Camera ၶၢႆႉတီး Smooth).


4. **4. Save Scene:**
   တဵၵ်း `Ctrl + S` -> Save Scene သႂ်ႇၼႂ်း Folder `res://scenes/SlimePlayer.tscn`!

---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ Scene Instancing

မိူဝ်ႈႁဝ်း Save Scene `SlimePlayer.tscn` ယဝ်ႉ၊ ႁဝ်းၸၢင်း ၵႂႃႇတီႈ Scene `Main.tscn` သေ Drag & Drop ဢဝ် `SlimePlayer.tscn` မႃးဝၢင်းသႂ်ႇ (ႁွင်ႉဝႃႈ **Instancing Scene**) ၶႃႈ!
လွၵ်းလၢႆးၼႆႉ ႁဵတ်းႁႂ်ႈ ႁဝ်းမႄး Editor UI ၶွင် Player ၼႂ်း ၽၢႆႇ `SlimePlayer.tscn` တီႈလဵဝ် သေ Level တင်းသဵင်ႈ တေ Update ၸွမ်း မၼ်း Automated တႃႇသေႇ ၶႃႈ!