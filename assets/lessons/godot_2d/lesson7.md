## 7: Coding Player Control (GDScript Physics)

ၼႂ်း Lesson 6 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈသၢင်ႈ StaticBody2D Arena Boundaries သေ ႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈ Slime ႁဝ်း တူၵ်းလႅၼ်ႈ ပူၼ်ႉ ၼႃႈဢူၵ်း ၵႂႃႇယဝ်ႉၶႃႈ!

ယၢမ်းလဵဝ် ႁဝ်းတေသိုပ်ႇလဵပ်ႈႁဵၼ်းၵႂႃႇ တွၼ်ႈထူၼ်ႈၸဵတ်း ၶွင် Module ၼႆႉ — ၼၼ်ႉပဵၼ် **Coding Player Control (GDScript Physics)** ၶႃႈ။

ယၢမ်းလဵဝ် Slime ႁဝ်း မီး Gravity လႄႈ Bounciness ၵူၺ်း သေ ပႆႇလႆႈ မီး Input Interactivity သင်ၶႃႈ။ ႁဝ်းတေ တႅမ်ႈ **GDScript** တွၼ်ႈတႃႇ တီႉၺွပ်း Mouse Click လႄႈ ၸူႉ Launch ႁႅင်း Impulse Force သႂ်ႇ Slime ႁႂ်ႈ Bounces လႅၼ်ႈ ၸွမ်း Vector Direction ၶႃႈ!

---

### 1. Impulse Force ၼႂ်း RigidBody2D ပဵၼ်သင်?

မိူဝ်ႈႁဝ်း ထိင်း `RigidBody2D` ၼၼ်ႉ ႁဝ်း ဢမ်ႇထုၵ်ႇလီ လႅၵ်ႈလၢႆႈ Property `position` ဢမ်ႇၼၼ် `velocity` မၼ်း Direct ၶႃႈ။ ႁဝ်းတေလႆႈ ၸႂ်ႉ Physics Methods ၶွင် Godot Engine:

1. **`apply_central_impulse(force_vector)`:** ပဵၼ် ၵၢၼ် ဢဝ် ႁႅင်း (Force Vector) ထႅမ် သႂ်ႇ တီႈ ၵၢင် (Center) ၶွင် RigidBody2D ၵမ်းလဵဝ် (မိူၼ်ၼင်ႇ ၵၢၼ် ၵႂႃႇ တပ်ႉ/တဵၵ်း မၢၵ်ႇမွၵ်ႇ)။
2. **`apply_impulse(force_vector, position)`:** ပဵၼ် ၵၢၼ် ဢဝ် ႁႅင်း ထႅမ် သႂ်ႇ တီႈ Offset Position ဢၼ် မၵ်းမၼ်ႈ (ႁဵတ်းႁႂ်ႈ Object ၶၢႆႉတီးပႃး)။

---

### 2. Logic Vector Calculation

တွၼ်ႈတႃႇ ႁႂ်ႈ Slime ႁဝ်း Bounces လႅၼ်ႈ ၵႂႃႇ ၽၢႆႇၵၢၼ်ႈတၢင်း ဢၼ် ႁဝ်း တဵၵ်း Mouse ၼၼ်ႉ ႁဝ်းတေ Calculated Direction Vector မိူၼ်ၼႆ ၶႃႈ:

$$\text{Launch Vector} = \text{Normalized}(\text{Slime Position} - \text{Mouse Position})$$

* ပေႃးႁဝ်း တဵၵ်း Mouse တီႈ တႂ်ႈ Slime ၼၼ်ႉ Vector တေ Bouncing ၶိုၼ်ႈ ၽၢႆႇၼိူဝ် (Slime Slingshot Mechanic)!

---

### Step-by-Step: ၵၢၼ် တႅမ်ႈ GDScript ၼႂ်း `SlimePlayer.gd`

1. **1. Open SlimePlayer Scene:**
   ပိုတ်ႇ Scene **`SlimePlayer.tscn`** -> တဵၵ်း Selection ဢဝ် Root Node **`SlimePlayer`** (`RigidBody2D`)။


2. **2. Attach Script:**
   ၼႂ်း **Scene Dock** (ၽၢႆႇသၢႆႉ) -> တဵၵ်း Icon **Attach Script** (ႁၢင်ႈဝႂ်ၸေႈ Icon `+`) -> Path: `res://scripts/SlimePlayer.gd` သေ တဵၵ်း **Create**။


3. **3. Write Impulse Logic Code:**
   မွတ်ႇ Code ၵဝ်ႇ ပႅတ်ႈ သေ သႂ်ႇ GDScript Code ၼႆႉ ၶႃႈ:


```gdscript
extends RigidBody2D

# ၶေႃႈလဵၼ်ႈ Dynamics setup
@export var launch_force: float = 500.0

func _input(event: InputEvent) -> void:
	# Check တီႉၺွပ်း Mouse Left Click Event
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
		var mouse_pos: Vector2 = get_global_mouse_position()
		
		# Calculate Launch Vector direction
		var launch_direction: Vector2 = (global_position - mouse_pos).normalized()
		
		# Apply central impulse force to Slime
		apply_central_impulse(launch_direction * launch_force)

```

---

### 4. Test Game Mechanics!

1. တဵၵ်း **`Ctrl + S`** တွၼ်ႈတႃႇ Save Script `SlimePlayer.gd`။
2. ပိုတ်ႇ Scene **`Main.tscn`** သေ တဵၵ်း **`F5`** တွၼ်ႈတႃႇ Play Test Game!
3. ၸၢမ်း ဢဝ် Mouse တဵၵ်း တီႈ တႂ်ႈ/ၶၢင်း ၶွင် Slime Player ႁဝ်း — Slime တေ Bounces လႅၼ်ႈ Bouncing ၸွမ်း Launch Impulse Vectors ႁႅင်း responsive တေႉတေႉၶႃႈ!

---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `@export` Variable

ၼႂ်း GDScript ၼၼ်ႉ ပေႃးႁဝ်း တႅမ်ႈ **`@export var launch_force: float = 500.0`** ၼၼ်ႉ၊ Variable `launch_force` တေ ဢွၵ်ႇ ၼႄ တီႈ **Inspector Dock** Automatic ၶႃႈ!
ႁဝ်းတေ ၸၢင်ႈ လႅၵ်ႈပဵၼ် `600` ဢမ်ႇၼၼ် `800` ၼႂ်း Inspector လႆႈ ငၢႆႈငၢႆႈ ဢမ်ႇလူဝ်ႇ မႃး မႄး တီႈ Code ၶိုၼ်း ၶႃႈ!