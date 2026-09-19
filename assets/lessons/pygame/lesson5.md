## 5: Keyboard Polling

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 5 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **Keyboard Polling** ၶႃႈ।

မိူဝ်ႈႁဝ်း တေႁဵတ်း Movement ႁႂ်ႈ Player တူင်ႉၼိုင် (Move Paddles) ႁႂ်ႈ Smooth ၼၼ်ႉ၊ လွၵ်းလၢႆး Event Queue (`pygame.KEYDOWN`) ၼႂ်း Lesson 2 ၼၼ်ႉ ဢမ်ႇသၢင်ႇထုၵ်ႇၶႃႈ။ 
ပေႃးၸႂ်ႉ Event Queue၊ Paddle ႁဝ်း တေတူင်ႉၼိုင်လႆႈ ၼိုင်ႈၵမ်းၵူၺ်းသေ မီး Pause Latency သေ ၼဵၵ်းထႅင်ႈၵမ်း မၼ်းၸင်ႇသိုပ်ႇလႅၼ်ႈ (မိူၼ်ႁဝ်း တႅမ်ႈလိၵ်ႈ Typing ၼၼ်ႉ) ၶႃႈ။
တွၼ်ႈတႃႇ တူင်ႉၼိုင် Smooth လႆႈလီၼၼ် ႁဝ်းတေလႆႈၸႂ်ႉ **Keyboard Polling** လူၺ်ႈ Function **`pygame.key.get_pressed()`** ၶႃႈ!

---

### 1. `pygame.key.get_pressed()` ပဵၼ်သင်?

`pygame.key.get_pressed()` ပဵၼ် Function ဢၼ် Return ပၼ် Boolean Sequence Tuple ဢၼ်မီး သၢႆမၢႆ Key တင်းသဵင်ႈ တီႈ Keyboard ၶႃႈ။

* **Check Continuous Key Hold:** မၼ်းတေ ၵူတ်ႇထတ်း (Check) တႃႇသေႇ ၼႂ်း ၵူႈ Frame ဝႃႈ တီႈ Frame ၼႆႉ Key ၼၼ်ႉ `True` (တဵၵ်းဝႆႉ) ဢမ်ႇၼၼ် `False` (လွတ်ႈဝႆႉ) ၶႃႈ।
* **Syntax usage:**
```python
keys = pygame.key.get_pressed()
if keys[pygame.K_w]:
    # Move left paddle up
if keys[pygame.K_s]:
    # Move left paddle down

```



---

### 2. Player Movement Math & Screen Clamping

မိူဝ်ႈႁဝ်း ဢဝ် Input မႃး Update `rect.y` ၼၼ်ႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ Delta Time (`dt`) သေ Clamping ႁႄႉဝႆႉ ဢမ်ႇႁႂ်ႈ Paddle လွတ်ႈဢွၵ်ႇ ၼႃႈၸေႃႈ (Screen Boundaries) ၶႃႈ:

```python
# Movement Speed (Pixels per second)
PADDLE_SPEED = 400

# Left Paddle Inputs (W / S keys)
if keys[pygame.K_w]:
    player1_rect.y -= PADDLE_SPEED * dt
if keys[pygame.K_s]:
    player1_rect.y += PADDLE_SPEED * dt

# Keep Paddle inside Screen Canvas Boundaries (Clamping)
if player1_rect.top < 0:
    player1_rect.top = 0
if player1_rect.bottom > SCREEN_HEIGHT:
    player1_rect.bottom = SCREEN_HEIGHT

```

---

### Step-by-Step: ၵၢၼ် တႅမ်ႈ Player Paddle Controls

ႁဝ်းမႃးၸၢမ်း တႅမ်ႈ Control Math တွၼ်ႈတႃႇ Player 1 (W/S) လႄႈ Player 2 (UP/DOWN) သႂ်ႇ Step 2 (Update Logic) ၼႂ်း `main.py` ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Pong - Lesson 5: Keyboard Polling")

# 3. Colors & Clock
COLOR_BG = (15, 15, 35)
COLOR_WHITE = (255, 255, 255)
clock = pygame.time.Clock()

# Game Objects (PyGame Rects)
player1_rect = pygame.Rect(20, 250, 15, 100)
player2_rect = pygame.Rect(765, 250, 15, 100)
PADDLE_SPEED = 450.0  # Pixels per second

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

    # STEP 2: UPDATE GAME LOGIC & KEYBOARD POLLING
    keys = pygame.key.get_pressed()

    # Player 1 Controls (W / S)
    if keys[pygame.K_w]:
        player1_rect.y -= PADDLE_SPEED * dt
    if keys[pygame.K_s]:
        player1_rect.y += PADDLE_SPEED * dt

    # Player 2 Controls (Arrow Up / Arrow Down)
    if keys[pygame.K_UP]:
        player2_rect.y -= PADDLE_SPEED * dt
    if keys[pygame.K_DOWN]:
        player2_rect.y += PADDLE_SPEED * dt

    # Screen Clamping - Player 1
    if player1_rect.top < 0:
        player1_rect.top = 0
    if player1_rect.bottom > SCREEN_HEIGHT:
        player1_rect.bottom = SCREEN_HEIGHT

    # Screen Clamping - Player 2
    if player2_rect.top < 0:
        player2_rect.top = 0
    if player2_rect.bottom > SCREEN_HEIGHT:
        player2_rect.bottom = SCREEN_HEIGHT

    # STEP 3: RENDER / DRAW FRAME
    screen.fill(COLOR_BG)

    # Net Line
    pygame.draw.aaline(screen, COLOR_WHITE, (SCREEN_WIDTH // 2, 0), (SCREEN_WIDTH // 2, SCREEN_HEIGHT))

    # Draw Both Paddles
    pygame.draw.rect(screen, COLOR_WHITE, player1_rect)
    pygame.draw.rect(screen, COLOR_WHITE, player2_rect)

    # Center Ball Placeholder
    pygame.draw.circle(screen, COLOR_WHITE, (SCREEN_WIDTH // 2, SCREEN_HEIGHT // 2), 10)

    # Flip Buffer
    pygame.display.flip()

# 4. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Open main.py File:**
   Replace paddle position values with `pygame.Rect` objects and add the keyboard polling logic.


2. **Run Script:**
   Execute `python main.py` in your terminal.


3. **Test Controls:**
   Press and hold `W`/`S` keys to control the left paddle, and `UP`/`DOWN` arrow keys for the right paddle.


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ Float Precision in Rects

`pygame.Rect` Attributes ၸိူဝ်းပဵၼ် `x`, `y`, `top`, `bottom` တေ Auto-Convert သႂ်ႇ တူဝ်ၼပ်ႉ **Integers (Whole numbers)** တႃႇသေႇ ၶႃႈ။
မိူဝ်ႈႁဝ်း Multiply ၸွမ်း `dt` (ဥပမာ: `450 * 0.016 = 7.2`), PyGame တေ ဢဝ် `7` Pixels မႃး Update သႂ်ႇ Rect Positioning, ႁဵတ်းႁႂ်ႈ Movement Smooth တေႉတေႉ ၶႃႈ!