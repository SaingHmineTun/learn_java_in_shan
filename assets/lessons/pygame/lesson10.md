## 10: Image Assets & Image Loading

မႂ်ႇသုင်ႇၶႃႈ! ၼႆႉပဵၼ် **Lesson 10: Image Assets** ဢၼ်ၼႄလွၵ်းလၢႆး **Image Loading** သေ သႂ်ႇႁၢင်ႈ Sprite PNG ၶဝ်ႈၼႂ်း PyGame ၶႃႈ!

ၼႂ်း Module 1 ၼၼ်ႉ ႁဝ်းလႆႈၸႂ်ႉ primitive shapes (Rectangles, Circles)၊ ၵူၺ်းၵႃႈ တွၼ်ႈတႃႇ Space Invaders ႁဝ်း တေမီး Visuals ႁၢင်ႈလီၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **PNG Image Assets (Sprites)** ၶႃႈ।

---

### 1. လွၵ်းလၢႆး ဢဝ် Image File သႂ်ႇၼႂ်း Project Folder

မိူဝ်ႈပႆႇတႅမ်ႈ Code ၼၼ်ႉ၊ ႁဝ်းတေလႆႈ ဢဝ် Image File ႁၢင်ႈသင်ပိူင်း Spaceship မႃးဝႆႉၼႂ်း Project Folder ႁဝ်း သေ သၢင်ႈ Folder Structure ပဵၼ်ၼႆၶႃႈ:

```text
space_invaders/
│
├── graphics/
│   └── player.png    <-- (ဢဝ် Image File မႂ်းမႃးသႂ်ႇ တီႈၼႆႈ)
│
└── main.py           <-- (Code Python ႁဝ်း)

```

> **ၶေႃႈမၢႆတွင်း:** ႁၢင်ႈ Sprite ဢၼ်သၢင်ႇထုၵ်ႇ တႃႇၸႂ်ႉၼႂ်း PyGame ထုၵ်ႇလီပဵၼ် **`.png`** format ဢၼ်မီး Background Transparent (ၸိုၼ်ႈလႅင်း) ၶႃႈ।

---

### 2. `pygame.image.load()` & `convert_alpha()`

မိူဝ်ႈႁဝ်း Load Image ၶဝ်ႈမႃးၼႂ်း PyGame ၼၼ်ႉ၊ မီး Functions 2 ဢၼ် ဢၼ်ႁဝ်း တေလႆႈၸႂ်ႉတႃႇသေႇ:

1. **`pygame.image.load("graphics/player.png")`:** Load ဢဝ် Image File ၸွမ်း File Path ၶဝ်ႈမႃး ပဵၼ် `Surface` Object।
2. **`.convert_alpha()`:** Transform ဢဝ် Pixel Format ၶွင် Image ႁႂ်ႈမႅၼ်ႈၸွမ်း Display Screen သေ **ထိင်းဝႆႉ Transparency (Alpha Channel)** ၶႃႈ।
* *ႁဵတ်းသင်လႆႈၸႂ်ႉ?* ပေႃးႁဝ်း ၸႂ်ႉ `.convert_alpha()`၊ PyGame တေ Draw/Render Image ၼၼ်ႉ **ၽႂ်း 2x - 3x ပုၼ်ႈ** သေ Image တေဢမ်ႇမီး Background ႁၢင်ႈဢမ်ႇလီၶႃႈ!



```python
# Correct & Fast Image Loading in PyGame
player_surface = pygame.image.load("graphics/player.png").convert_alpha()

```

---

### 3. Image Resizing (`pygame.transform.scale`)

မၢင်ပွၵ်ႈ Image File ဢၼ်ႁဝ်း Load မႃးၼၼ်ႉ တေယႂ်ႇ ဢမ်ႇၼၼ် လဵၵ်းပူၼ်ႉၵႂႃႇ। ႁဝ်းၸႂ်ႉ **`pygame.transform.scale`** သေ လႅၵ်ႈလၢႆႈ Size မၼ်းလႆႈ:

```python
# Resize Image Surface to Width 60px, Height 40px
player_surface = pygame.transform.scale(player_surface, (60, 40))

```

---

### Step-by-Step: Full Code for Image Loading

ႁဝ်းမႃး တႅမ်ႈ Script တွၼ်ႈတႃႇ Load Image Asset `graphics/player.png` သေ Draw သႂ်ႇ Display Screen ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Space Invaders - Lesson 10: Image Assets")

clock = pygame.time.Clock()
COLOR_BG = (10, 10, 25)

# ----------------------------------------------------
# 3. LOAD & SETUP IMAGE ASSETS
# ----------------------------------------------------
# Load player PNG image from graphics folder
player_surface = pygame.image.load("graphics/player.png").convert_alpha()

# Optional: Resize player image if it is too big
player_surface = pygame.transform.scale(player_surface, (60, 40))

# Get Rect bounding box from the loaded image surface
player_rect = player_surface.get_rect(center=(SCREEN_WIDTH // 2, SCREEN_HEIGHT - 60))

running = True

# ==========================================
# CORE GAME LOOP
# ==========================================
while running:
    dt = clock.tick(60) / 1000.0

    # Step 1: Event Handling
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                running = False

    # Step 2: Update Logic (N/A for now)

    # Step 3: Render / Draw Frame
    screen.fill(COLOR_BG)

    # Blit Image Surface to Screen at player_rect Position
    screen.blit(player_surface, player_rect)

    pygame.display.flip()

# 4. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Create graphics Subfolder:**
   Create a subfolder named `graphics` inside your project directory (`space_invaders/graphics/`).

2. **Add player.png Image:**
   Copy your spaceship image into the `graphics/` folder and make sure it is named `player.png`.

3. **Run main.py Script:**
   Execute `python main.py` in your terminal to see your custom loaded image rendered at the bottom center of the screen.


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `surface.get_rect()`

မိူဝ်ႈႁဝ်း Load Image ၶဝ်ႈမႃးယဝ်ႉ၊ Function **`surface.get_rect()`** တေ Create `pygame.Rect` Object ဢၼ်မီး Size (Width & Height) မိူၼ် Image ၼၼ်ႉ တိၵ်းတိၵ်း!
ႁဝ်းၸၢင်ႈ သႂ်ႇ Anchor Arguments (ပိူင်တႅၵ်ႈ: `center=(x,y)`, `midbottom=(x,y)`, `topleft=(x,y)`) တွၼ်ႈတႃႇ ဝႆႉဝၢင်း Position သေတီႈတီႈၶႃႈ ၶႃႈ!