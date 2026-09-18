## 2: Understanding Nodes & Scene Tree

ၼႂ်း Lesson 1 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈသၢင်ႈ Project လႄႈ ႁူႉၸၵ်ႈ Interface ၶွင် Godot Engine ၵႂႃႇယဝ်ႉၶႃႈ!

ယၢမ်းလဵဝ် ႁဝ်းတေသိုပ်ႇလဵပ်ႈႁဵၼ်းၵႂႃႇ တွၼ်ႈထူၼ်ႈသွင် ၶွင် Module ၼႆႉ — ၼၼ်ႉပဵၼ် **Understanding Nodes & Scene Tree** ၶႃႈ။

မိူဝ်ႈႁဝ်းတေ တေႇႁဵတ်း Game ၼႂ်း Godot ၼၼ်ႉ၊ ႁဝ်းလူဝ်ႇႁူႉၸႅင်ႈလႅင်း လွင်ႈ **Node** လႄႈ **Scene** ၶႃႈ။
သွင်ဢၼ်ၼႆႉ ပဵၼ် ပိုၼ်ႉထၢၼ် ဢၼ်လွင်ႈယႂ်ႇသုတ်း ၼႂ်း Godot Engine ယဝ်ႉၶႃႈ။

---

### 1. Node ပဵၼ်သင်? (The Building Block of Godot)

**Node** ၼႆႉ ပဵၼ် တူဝ်ႁဵတ်းၵၢၼ် Basic ဢၼ်လဵၵ်းသေပိူၼ်ႈ ၼႂ်း Godot ၶႃႈ။
ၵူႊလွင်ႈလွင်ႈ ၼႂ်း Game ႁဝ်း (မိူၼ်ၼင်ႇ ႁၢင်ႈ, Sound, Camera, ဢမ်ႇၼၼ် Collision boundary) တင်းသဵင်ႈ တေပဵၼ် Node ဢၼ်ၼိုင်ႈၶႃႈ။

1. **Node2D:** ပဵၼ် Node ပိုၼ်ႉထၢၼ် တွၼ်ႈတႃႇ 2D Object ဢၼ်မီး Location (Position), Scale, လႄႈ Rotation (X/Y Axis)။
2. **Sprite2D:** ပဵၼ် Node ဢၼ်ၸႂ်ႉ တႃႇၼႄ ႁၢင်ႈ (Texture / Image `.png`) ၼႂ်း 2D Space။
3. **CollisionShape2D:** ပဵၼ် Node ဢၼ်ၸႂ်ႉ မၵ်းမၼ်ႈ ၶႅၼ်ႈ (Boundary) တွၼ်ႈတႃႇ တီႉၺွပ်း Physics လႄႈ လွင်ႈတူၵ်း ၵၼ်။
4. **AudioStreamPlayer2D:** ပဵၼ် Node ဢၼ်ၸႂ်ႉ တႃႇပိုတ်ႇ Sound FX ဢမ်ႇၼၼ် BGM ၼႂ်း Game။

---

### 2. Scene လႄႈ Scene Tree ပဵၼ်သင်?

မိူဝ်ႈႁဝ်းဢဝ် Node လၢႆလၢႆဢၼ် မႃးႁူမ်ႈၵၼ် ႁႂ်ႈႁဵတ်းၵၢၼ် လႆႈဢၼ်ၼိုင်ႈၼၼ်ႉ ႁဝ်းႁွင်ႉဝႃႈ **Scene** ၶႃႈ။

* **Scene (`.tscn`):** ပဵၼ် ဢၼ်ဢဝ် Node လၢႆလၢႆဢၼ် ႁူမ်ႈၵၼ် ႁႂ်ႈပဵၼ် File ဢၼ်ၼိုင်ႈ (မိူၼ်ၼင်ႇ `SlimePlayer.tscn` ဢၼ်မီး Sprite2D + CollisionShape2D ႁူမ်ႈၵၼ်)။
* **Scene Tree (Parent & Child Relationship):** ၼႂ်း Scene ၼိုင်ႈဢၼ် တေမီး Node ဢၼ်ပဵၼ် **Parent** (မႄႈ) လႄႈ Node ဢၼ်ပဵၼ် **Child** (လုၵ်ႈ) ၸိူဝ်းမႃးၵိုၵ်းၽၢႆႇတႂ်ႈ။

```text
Main (Node2D - Parent)
 ├── SlimePlayer (RigidBody2D - Child)
 │    ├── Sprite2D (Child of SlimePlayer)
 │    └── CollisionShape2D (Child of SlimePlayer)
 └── ArenaBounds (StaticBody2D - Child)
      └── CollisionShape2D (Child of ArenaBounds)

```

> **Golden Rule:** ပေႃး Parent Node ၶၢႆႉတီး (Move), Dynamic Rotate, ဢမ်ႇၼၼ် Disappear (Delete) ၼႆ Child Nodes ၸိူဝ်းယူႇၽၢႆႇတႂ်ႈ မၼ်းတင်းသဵင်ႈ တေၶၢႆႉၸွမ်း လႄႈ ႁဵတ်းၵၢၼ်ၸွမ်း တႃႇသေႇၶႃႈ!

---

### Step-by-Step: ၵၢၼ်သၢင်ႈ Child Node

ႁဝ်းမႃးၸၢမ်း သၢင်ႈ Node Structure တွၼ်ႈတႃႇ Player Character ၶႃႈ।

1. **1. Open Main Scene:**
   ပိုတ်ႇ Scene `Main.tscn` ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ ၼႂ်း Lesson 1 ၼၼ်ႉ။
2. **2. Add Child Node (Sprite2D):**
   Right-click တီႈ Node `Main` ၼႂ်း **Scene Dock** (ၽၢႆႇသၢႆႉ) -> တဵၵ်း **Add Child Node** -> ၶူၼ်ႉႁႃဝႃႈ `Sprite2D` သေ တဵၵ်း **Create**။
3. **3. Assign Texture:**
   တဵၵ်းတီႈ `Sprite2D` ဢၼ်သၢင်ႈမႂ်ႇ -> ၵႂႃႇတီႈ **Inspector Dock** (ၽၢႆႇၶႂႃ) -> တီႈ Property `Texture` ၼၼ်ႉ Drag & Drop ဢဝ် Image ႁၢင်ႈ Slime သႂ်ႇ။
4. **4. Save Scene:**
   တဵၵ်း `Ctrl + S` တွၼ်ႈတႃႇ Save ၶေႃႈမုၼ်း!

---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ Node Inheritance

ၼႂ်း Godot Engine ၼၼ်ႉ Node ၵူႈဢၼ် မီး Property လႄႈ Behavior ဢၼ်မၼ်း လႆႈဢမူၺ်ႇ/Inherit တၢင်းႁူႉ မႃးတၢင်း Parent Types ၶႃႈ။
(ပိူင်ယၢင်ႇ: `Sprite2D` မီး Property position/scale ၵွပ်ႈမၼ်း Inherit မႃးတီႈ `Node2D` ၼၼ်ႉၶႃႈ)။