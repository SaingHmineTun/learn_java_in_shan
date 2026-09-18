## 8: UI Setup & Game Export

ၼႂ်း Lesson 7 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈတႅမ်ႈ GDScript တွၼ်ႈတႃႇ တီႉၺွပ်း Mouse Click သေ ႁႂ်ႈ Slime ႁဝ်း Bounces လႅၼ်ႈ ၸွမ်း Impulse Force ၵႂႃႇယဝ်ႉၶႃႈ!

ယၢမ်းလဵဝ် ႁဝ်းတေသိုပ်ႇလဵပ်ႈႁဵၼ်းၵႂႃႇ တွၼ်ႈထူၼ်ႈแปတ်ႈ ဢၼ်ပဵၼ် တွၼ်ႈသုတ်း ၶွင် Module 1 ၼႆႉ — ၼၼ်ႉပဵၼ် **UI Setup & Game Export** ၶႃႈ။

မိူဝ်ႈႁဝ်း တေ ၶူင်သၢင်ႈ Game ႁႂ်ႈယဝ်ႉတူဝ်ႈၼၼ်ႉ၊ ႁဝ်းလူဝ်ႇမီး **CanvasLayer UI** (မိူၼ်ၼင်ႇ Restart Button) တွၼ်ႈတႃႇ Control Game Loop လႄႈ လွၵ်းလၢႆး **Export Game** ႁႂ်ႈပဵၼ် ၽၢႆႇ Executable (`.exe`) တႃႇ ဢဝ် ၵႂႃႇ ႁႂ်ႈ ၵူၼ်းဢိူၼ်း/Player ၶဝ် ပိုတ်ႇလဵၼ်ႈ လႆႈ ၼႂ်း PC ၶႃႈ!

---

### 1. CanvasLayer ပဵၼ်သင်?

**CanvasLayer** ၼႆႉ ပဵၼ် Node ဢၼ်ၸႂ်ႉ Render UI Control Elements (မိူၼ်ၼင်ႇ Button, Label, Health Bar) ႁႂ်ႈ **တဵင်ႈဝႆႉ တီႈ ၼႃႈဢူၵ်း (Screen Viewport)** တႃႇသေႇ ၶႃႈ။

* ပေႃးႁဝ်း ဢမ်ႇၸႂ်ႉ `CanvasLayer`၊ မိူဝ်ႈ Camera2D ၶၢႆႉတီး ၸွမ်း Slime Player ၼၼ်ႉ၊ UI Controls ႁဝ်း တေ ၶၢႆႉ လႅၼ်ႈ ပူၼ်ႉ ၼႃႈဢူၵ်း ၵႂႃႇ ၸွမ်း 2D World Space ၶႃႈ!

---

### 2. Scene Architecture ၶွင် Game UI

ႁဝ်းတေ သၢင်ႈ UI Canvas Overlay သႂ်ႇ ၼႂ်း `Main.tscn`:

```text
Main (Node2D - Root)
 ├── SlimePlayer (RigidBody2D Instance)
 ├── ArenaBounds (StaticBody2D Instance)
 └── UI (CanvasLayer - Child)
      └── RestartButton (Button - Child)

```

---

### Step-by-Step: ၵၢၼ်သၢင်ႈ UI & Connect Signal

1. **1. Open Main Scene:**
   ပိုတ်ႇ Scene **`Main.tscn`** ၼႂ်း Viewport 2D Space။


2. **2. Add CanvasLayer & Button:**
* Right-click တီႈ Root Node `Main` -> တဵၵ်း **Add Child Node** -> လိူၵ်ႈ **`CanvasLayer`** (Rename ပဵၼ် `UI`)။
* Right-click တီႈ Node `UI` (`CanvasLayer`) -> တဵၵ်း **Add Child Node** -> လိူၵ်ႈ **`Button`** (Rename ပဵၼ် `RestartButton`)။
* ၼႂ်း Inspector ၶွင် `RestartButton` -> တီႈ Property `Text` -> သႂ်ႇคำဝႃႈ **`Restart Arena`**။


3. **3. Connect Signal to Reload Scene:**
* Select Node `RestartButton` -> ၵႂႃႇတီႈ **Node Dock** (Tab ၶၢင်း Inspector Dock ၽၢႆႇၶႂႃ)။
* Double-click တီႈ Signal **`pressed()`** -> Connect သႂ်ႇ Root Node `Main` (`Main.gd`)။
* တႅမ်ႈ GDScript ၼႂ်း `Main.gd` တွၼ်ႈတႃႇ Reload Game:


```gdscript
extends Node2D

func _on_restart_button_pressed() -> void:
	# Reload current active scene to restart game
	get_tree().reload_current_scene()

```

---

### 3. Step-by-Step: ၵၢၼ် Export Game ပဵၼ် Windows Executable (.exe)

မိူဝ်ႈ Mini Game **Slime Bounce Arena** ႁဝ်း ယဝ်ႉတူဝ်ႈယဝ်ႉ၊ ႁဝ်းမႃး Export မၼ်း ပဵၼ် Standalone Application ၶႃႈ!

1. **1. Open Export Menu:**
   ၵႂႃႇတီႈ Top Menu Bar -> တဵၵ်း **Project** -> လိူၵ်ႈ **Export...**


2. **2. Add Windows Preset:**
   တဵၵ်း Button **Add...** တီႈ ၼိူဝ် -> လိူၵ်ႈ **Windows Desktop**.

* ပေႃးမၼ်း ၼႄ Warning ဝႃႈ *Export templates are missing* -> တဵၵ်း **Manage Export Templates** သေ Download Official Templates ၶွင် Godot 4 (Download ၵမ်းလဵဝ် ยဝ်ႉတူဝ်ႈ)။


3. **3. Export Project File:**
   တဵၵ်း Button **Export Project...** တီႈ တႂ်ႈ -> လိူၵ်ႈ Folder သိမ်း -> သႂ်ႇ File Name `Slime_Bounce_Arena.exe` သေ တဵၵ်း **Save**!


---