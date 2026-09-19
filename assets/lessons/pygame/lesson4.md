## 4: RGB Colors & Drawing Primitives

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 4 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **RGB Colors & Drawing Primitives** ၶႃႈ।

မိူဝ်ႈႁဝ်း ဢမ်ႇပႆႇသႂ်ႇ Asset Images (Sprites) တီႈတႄႇၼၼ်ႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ Module **`pygame.draw`** သေ တႅမ်ႈ ႁၢင်ႈ Primitive Shapes 
ၸိူဝ်းပဵၼ် Rectangles, Circles, လႄႈ Lines တွၼ်ႈတႃႇ Render Visual Objects တီႈ ၼႃႈၸေႃႈ ၶႃႈ!

---

### 1. လွင်ႈမၵ်းမၼ်ႈ RGB Color

ၼႂ်း Computer Graphics ၼၼ်ႉ သီတင်းသဵင်ႈ တေမၵ်းမၼ်ႈ ၸႂ်ႉ Standard Tuple 3 ဢၼ်: **`(Red, Green, Blue)`** ဢၼ်မီး ၵႃႊၶၼ် တႄႇ `0` တေႃႇ `255` ၶႃႈ:

* **Black:** `(0, 0, 0)`
* **White:** `(255, 255, 255)`
* **Red:** `(255, 0, 0)`
* **Green:** `(0, 255, 0)`
* **Blue:** `(0, 0, 255)`

---

### 2. Module Functions: `pygame.draw`

ႁဝ်းၸႂ်ႉ Functions ၸိူဝ်းၼႆႉ တွၼ်ႈတႃႇ Draw Shapes သႂ်ႇ တီႈ Canvas Surface ႁဝ်း:

1. **`pygame.draw.rect(surface, color, rect)`:** တႅမ်ႈ ပႅၼ်ႈ rectangle (သႂ်ႇ `pygame.Rect(x, y, width, height)`).
2. **`pygame.draw.circle(surface, color, center, radius)`:** တႅမ်ႈ circle (သႂ်ႇ `(x, y)` position လႄႈ `radius`).
3. **`pygame.draw.aaline(surface, color, start_pos, end_pos)`:** တႅမ်ႈ line ဢၼ်ၸိုၼ်ႈလႅင်း (Anti-Aliased Line).

---

### Step-by-Step: ၵၢၼ် တႅမ်ႈ Pong Court Shapes

ႁဝ်းမႃးၸၢမ်း တႅမ်ႈ Shapes တႃႇ Pong Game ႁဝ်း (Paddles, Ball, လႄႈ Center Net Line) သႂ်ႇ Step 3 (Render/Draw) ၼႂ်း `main.py` ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Pong - Lesson 4: RGB Colors & Drawing Primitives")

# 3. Colors & Clock
COLOR_BG = (15, 15, 35)
COLOR_WHITE = (255, 255, 255)
clock = pygame.time.Clock()

# Game State Variables
running = True

# ==========================================
# CORE GAME LOOP
# ==========================================
while running:
    # STEP 0: Delta Time
    dt = clock.tick(60) / 1000.0

    # STEP 1: Event Handling
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
            
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                running = False

    # STEP 2: Update Logic (N/A)

    # STEP 3: RENDER / DRAW FRAME
    # Clear Canvas
    screen.fill(COLOR_BG)

    # A. Draw Middle Dashed Line (Court Net)
    pygame.draw.aaline(screen, COLOR_WHITE, (SCREEN_WIDTH // 2, 0), (SCREEN_WIDTH // 2, SCREEN_HEIGHT))

    # B. Draw Left Paddle (Player 1)
    pygame.draw.rect(screen, COLOR_WHITE, pygame.Rect(20, 250, 15, 100))

    # C. Draw Right Paddle (Player 2)
    pygame.draw.rect(screen, COLOR_WHITE, pygame.Rect(765, 250, 15, 100))

    # D. Draw Center Ball
    pygame.draw.circle(screen, COLOR_WHITE, (SCREEN_WIDTH // 2, SCREEN_HEIGHT // 2), 10)

    # Flip Buffer
    pygame.display.flip()

# 4. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Open main.py File:**
   Update your rendering code inside Step 3 with the primitive drawing functions shown above.

2. **Run Script:**
   Execute `python main.py` in your terminal.

3. **Verify Visual Output:**
   Confirm that you see two white paddles, a middle net line, and a center ball rendered cleanly on the dark screen.


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `pygame.Rect` Object

`pygame.Rect(x, y, width, height)` ပဵၼ် Object ဢၼ်ယႂ်ႇတေႉတေႉ ၼႂ်း PyGame ၶႃႈ!
မၼ်းဢမ်ႇၵူၺ်း ၸႂ်ႉတႃႇ Draw Rectangles၊ မၼ်း သိုပ်ႇ မီး Internal Attributes (ပိူင်တႅၵ်ႈ: `rect.top`, `rect.bottom`, `rect.center`, `rect.colliderect`) ဢၼ်ႁဝ်း တေၸႂ်ႉ တွၼ်ႈတႃႇ Collision Detection ၼႂ်း Lessons သိုပ်ႇ/ၼႃႈ ၶႃႈ!