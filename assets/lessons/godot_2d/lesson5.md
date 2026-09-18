## 5: Adding Bounciness (Physics Material)

ၼႂ်း Lesson 4 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈသၢင်ႈ Scene ၶွင် Slime Player လႄႈ Assembly Nodes ၵႂႃႇယဝ်ႉၶႃႈ!

ယၢမ်းလဵဝ် ႁဝ်းတေသိုပ်ႇလဵပ်ႈႁဵၼ်းၵႂႃႇ တွၼ်ႈထူၼ်ႈႁႃႈ ၶွင် Module ၼႆႉ — ၼၼ်ႉပဵၼ် **Adding Bounciness (Physics Material)** ၶႃႈ။

မိူဝ်ႈႁဝ်းၸႂ်ႉ `RigidBody2D` ၼၼ်ႉ၊ Godot Engine တေCalculate Physics Automatic ပၼ် ၶႃႈ။ ၵူၺ်းၵႃႈ ပေႃးႁဝ်း ပႆႇသႂ်ႇ **CollisionShape2D** လႄႈ **PhysicsMaterial** ၼၼ်ႉ၊ Slime ႁဝ်း တေဢမ်ႇမီး တူဝ်တီႉၺွပ်း Physics (Collision) သေ တေဢမ်ႇမီး ႁႅင်း Bouncing (Elasticity) သင်ၶႃႈ။

---

### 1. CollisionShape2D ပဵၼ်သင်?

**CollisionShape2D** ၼႆႉ ပဵၼ် Node ဢၼ်မၵ်းမၼ်ႈ ၶႅၼ်ႈ Boundary တွၼ်ႈတႃႇ ႁႂ်ႈ Engine ႁူႉဝႃႈ ဢွင်ႈတီႈလႂ် ၶွင် Sprite ဢၼ်တေ တူၵ်းတီႈ Platform ၼၼ်ႉၶႃႈ။

1. **CircleShape2D:** သၢင်ႇထုၵ်ႇ တႃႇ Slime ဢမ်ႇၼၼ် Bouncing Ball ၵွပ်ႈမၼ်း ရူတ်ႈလႅၼ်ႈ Smooth.
2. **RectangleShape2D:** သၢင်ႇထုၵ်ႇ တႃႇ Ground Floor, Walls, လႄႈ Platforms.
3. **CapsuleShape2D:** သၢင်ႇထုၵ်ႇ တႃႇ Humanoid Platformer Characters.

---

### 2. PhysicsMaterial (Bounce & Friction Parameters)

**PhysicsMaterial** ၼႆႉ ပဵၼ် Resource ဢၼ်ၸႂ်ႉ မၵ်းမၼ်ႈ Physical Properties ၶွင် `RigidBody2D` ၶႃႈ:

1. **Bounce (Elasticity):**
* Value Range: `0.0` ထိုင် `1.0`
* `0.0` = ဢမ်ႇ Bouncing သင် (မိူၼ်ၼင်ႇ တူၵ်းသႂ်ႇ ႁိၼ်).
* `0.85` = Bouncing ႁႅင်းတေႉတေႉ (သၢင်ႇထုၵ်ႇ တႃႇ Slime Player ႁဝ်း)။


2. **Friction (Surface Resistance):**
* Value Range: `0.0` ထိုင် `1.0`
* `0.0` = လႄႈ Slippery တေႉတေႉ (မိူၼ်ၼင်ႇ ၼမ်ႉၵႅင်း/Ice)။
* `1.0` = မီး Friction ႁႅင်း (ဢမ်ႇ Slip ငၢႆႈ)။



---

### Step-by-Step: ၵၢၼ် Config Bouncing Physics

ႁဝ်းမႃးၸၢမ်း Config Physics Component တွၼ်ႈတႃႇ `SlimePlayer.tscn` ၶႃႈ।

1. **1. Add CollisionShape2D Node:**
   Open Scene `SlimePlayer.tscn` -> Right-click တီႈ Root Node `SlimePlayer` (`RigidBody2D`) -> တဵၵ်း **Add Child Node** -> လိူၵ်ႈ **`CollisionShape2D`** သေ တဵၵ်း Create.
2. **2. Assign Shape Property:**
   တဵၵ်း တီႈ Node `CollisionShape2D` -> ၵႂႃႇတီႈ **Inspector Dock** (ၽၢႆႇၶႂႃ) -> တီႈ Property `Shape` -> တဵၵ်း လိူၵ်ႈ **CircleShape2D**.
* ၼႂ်း Viewport ၼၼ်ႉ ႁဵတ်း Drag Dots ႁႂ်ႈ Radius ၶွင် Circle ၽဵင်ႇၵၼ် ႁႂ်ႈၵိုၵ်းႁၢင်ႈ Visual Slime.


3. **3. Create PhysicsMaterial Resource:**
   တဵၵ်း တီႈ Root Node `SlimePlayer` (`RigidBody2D`) -> ၵႂႃႇတီႈ Inspector Dock -> တီႈ Category **Physics Material Override** -> တဵၵ်း လိူၵ်ႈ **New PhysicsMaterial**.
4. **4. Set Bounce & Friction Values:**
   တဵၵ်း သႂ်ႇ ၼႂ်း `PhysicsMaterial` ဢၼ်သၢင်ႈမႂ်ႇ ၼၼ်ႉ:
* Set **`Bounce`** = `0.85`
* Set **`Friction`** = `0.1`


5. **5. Save Scene:**
   တဵၵ်း `Ctrl + S` တွၼ်ႈတႃႇ Save Scene!

---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ Gravity Scale

ၼႂ်း Inspector ၶွင် `RigidBody2D` ၼၼ်ႉ မီး Property ဢၼ်ႁွင်ႉဝႃႈ **`Gravity Scale`** ၶႃႈ।
Default value မၼ်းပဵၼ် `1.0`၊ ၵူၺ်းၵႃႈ ပေႃးႁဝ်း လႅၵ်ႈပဵၼ် **`1.5`** ၼၼ်ႉ Slime Player ႁဝ်း တေ တူၵ်းၼႅၼ်ႈ လႄႈ Bouncing ႁႅင်း responsive လိူဝ် မႃး ၶႃႈ!