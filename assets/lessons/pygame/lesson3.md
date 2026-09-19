## 3: Frame Rates & Delta Time

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 3 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **Frame Rates & Delta Time** ၶႃႈ।

မိူဝ်ႈႁဝ်း ဢမ်ႇမၵ်းမၼ်ႈ Frame Rate (FPS - Frames Per Second) ၼၼ်ႉ၊ Game Loop ႁဝ်းတေလႅၼ်ႈ ၽႂ်းသုတ်းတီႈ Computer ႁဝ်း ႁဵတ်းလႆႈ (ၸၢင်ႈပဵၼ် 300 - 1000 FPS)।
လွင်ႈၼႆႉ တေႁဵတ်းႁႂ်ႈ Computer/Laptop ႁဝ်း လိူတ်ႇႁႅင်း (Overheat) သေ တေႁဵတ်းႁႂ်ႈ Player ဢၼ်ၸႂ်ႉ Computer ၽႂ်း လဵၼ်ႈ Game ၽႂ်းပူၼ်ႉ၊ သေ Player ဢၼ်ၸႂ်ႉ Computer ထိူင်း လဵၼ်ႈ Game ထိူင်းၵႂႃႇ — ၼႆႉပဵၼ် ပၼ်ႁႃယႂ်ႇတေႉတေႉ ၼႂ်း Game Development ၶႃႈ!

---

### 1. `pygame.time.Clock()` လႄႈ `clock.tick(60)`

တွၼ်ႈတႃႇ ႁႄႉႁၢမ်ႈ Limits ႁႂ်ႈ Game ႁဝ်း လႅၼ်ႈမႅၼ်ႈ 60 FPS တႃႇသေႇၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ Object **`pygame.time.Clock`** ၶႃႈ।

* **`clock = pygame.time.Clock()`:** ၵေႃႇသၢင်ႈ Clock Controller Instance တီႈ Outer Loop।
* **`clock.tick(60)`:** ႁွင်ႉၸႂ်ႉ ၼႂ်း Game Loop တႃႇ ႁႂ်ႈ PyGame Delay/Pause ပၼ် သေ ႁႄႉဝႆႉ ဢမ်ႇႁႂ်ႈ လႅၼ်ႈပူၼ်ႉ 60 Frames ၼႂ်း 1 ၸႅၵ်ႉၵၢၼ်ႉ (Second)।

---

### 2. Delta Time (`dt`) ပဵၼ်သင်?

**Delta Time (`dt`)** ပဵၼ် **ယၢမ်းၶၢဝ်း (Amount of time in seconds)** ဢၼ်လၢႆႈ Frame ၼိုင်ႈဢၼ် တေႃႇ Frame ၼိုင်ႈဢၼ် (1/60 = 0.0166 ၸႅၵ်ႉၵၢၼ်ႉ) ၶႃႈ।

* **`dt = clock.tick(60) / 1000.0`:** Function `clock.tick()` တေ Return သႂ်ႇ တူဝ်ၼပ်ႉ Milliseconds (ms)၊ ပေႃးႁဝ်း ဢဝ်မႃးၸႅၵ်ႇ `1000.0` တေလႆႈ Delta Time ပဵၼ် ၸႅၵ်ႉၵၢၼ်ႉ (Seconds)।
* **လွၵ်းလၢႆး Frame-Independent Movement Math:**
* ဢမ်ႇၸႂ်ႉ `dt`: `position_x += 5` (တေလႅၼ်ႈ 5 Pixels ၸွမ်း Frame - ၸၢင်ႈၽႂ်း/ထိူင်း ၸွမ်း Computer speed)
* ၸႂ်ႉ `dt`: `position_x += speed * dt` (တေလႅၼ်ႈ `speed` Pixels ၸွမ်း ၸႅၵ်ႉၵၢၼ်ႉ - မၢၼ်ႇမႅၼ်ႈ တီႈ Computer မူတ်းယဝ်ႉ!)



---

### Step-by-Step: ၵၢၼ် တႅမ်ႈ Frame Rate Control & Delta Time

ႁဝ်းမႃးၸၢမ်း Update တႅမ်ႈ `dt` သႂ်ႇၼႂ်း Game Loop `main.py` ႁဝ်း ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Pong - Lesson 3: Frame Rates & Delta Time")

# 3. Create Clock Instance
clock = pygame.time.Clock()

# Game State Variables
running = True

# ==========================================
# CORE GAME LOOP
# ==========================================
while running:
    # --------------------------------------
    # STEP 0: CALCULATE DELTA TIME (dt)
    # --------------------------------------
    # Limits game loop to 60 FPS and gets delta time in seconds
    dt = clock.tick(60) / 1000.0

    # --------------------------------------
    # STEP 1: PROCESS INPUTS / EVENTS
    # --------------------------------------
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
            
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                running = False

    # --------------------------------------
    # STEP 2: UPDATE GAME LOGIC
    # --------------------------------------
    # (ႁဝ်းတေၸႂ်ႉ variable dt ၼႆႉ တွၼ်ႈတႃႇ Multiply Dynamic Velocity Vector)

    # --------------------------------------
    # STEP 3: RENDER / DRAW FRAME
    # --------------------------------------
    screen.fill((15, 15, 35))

    pygame.display.flip()

# 4. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Open main.py File:**
   Add `clock = pygame.time.Clock()` before the `while running:` loop.


2. **Calculate Delta Time:**
   Add `dt = clock.tick(60) / 1000.0` as the very first line inside the game loop.


3. **Run & Test:**
   Execute `python main.py` to verify the game runs capped smoothly at 60 FPS without high CPU usage.


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `dt` ၼႂ်း Physics Math

မိူဝ်ႈႁဝ်း တေလဵပ်ႈႁဵၼ်း Movement ၼႂ်း Lesson သိုပ်ႇၼႃႈၼၼ်ႉ၊ ႁဝ်းတေမၵ်းမၼ်ႈ Speed ပဵၼ် **Pixels per second** (ပိူင်တႅၵ်ႈ: `300` pixels/sec) သေ ဢဝ်မႃး Multiply ၸွမ်း `dt` ၶႃႈ।
လွၵ်းလၢႆးၼႆႉ တေႁဵတ်းႁႂ်ႈ Game Physics ႁဝ်း Smooth သေ လႅၼ်ႈ မၢၼ်ႇမႅၼ်ႈ (Consistent) တႃႇသေႇ တီႈ Dynamic Displays မူတ်းၶႃႈ!