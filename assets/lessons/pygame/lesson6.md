## 6: Bouncing Ball Physics

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 6 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **Bouncing Ball Physics** ၶႃႈ।

ၼႂ်း Game Pong ၼႆႉ၊ လွင်ႈႁဵတ်းႁႂ်ႈ မၢၵ်ႇလွမ်ႈ (Ball) တူင်ႉၼိုင် သေ Bounce 
မိူဝ်ႈၵႂႃႇ တူၵ်းၺႃး ၶွပ်ႇၼႃႈၸေႃႈ ၽၢႆႇၼိူဝ် လႄႈ ၽၢႆႇတႂ်ႈ (Top & Bottom Walls) ၼၼ်ႉ ပဵၼ် Physics Engine ပိုၼ်ႉထၢၼ် ဢၼ်ယႂ်ႇတေႉတေႉၶႃႈ।

---

### 1. Velocity Vectors (Direction & Speed)

တွၼ်ႈတႃႇ ႁႂ်ႈ Ball တူင်ႉၼိုင်လႆႈတီႈ 2D ၼၼ်ႉ၊ ႁဝ်းတေမၵ်းမၼ်ႈ Variable 2 ဢၼ်: **`ball_speed_x`** လႄႈ **`ball_speed_y`** ၶႃႈ।

* **Direction:** တူဝ်ၼပ်ႉ Positive (`+`) တေလႅၼ်ႈ ၽၢႆႇၶႂႃ / ၽၢႆႇတႂ်ႈ၊ တူဝ်ၼပ်ႉ Negative (`-`) တေလႅၼ်ႈ ၽၢႆႇသၢႆႉ / ၽၢႆႇၼိူဝ်။
* **Position Update:** ၼႂ်း Frame ၵူႈဢၼ်ၼၼ်ႉ ႁဝ်းတေဢဝ် Speed Multiply ၸွမ်း Delta Time (`dt`) သေ Update သႂ်ႇ Position:
```python
ball_rect.x += ball_speed_x * dt
ball_rect.y += ball_speed_y * dt

```



---

### 2. Wall Bounce Reflection Logic

မိူဝ်ႈ Ball လႅၼ်ႈၵႂႃႇၺႃး ၶွပ်ႇၼႃႈၸေႃႈ ၽၢႆႇၼိူဝ် (`ball_rect.top <= 0`) ဢမ်ႇၼၼ် ၽၢႆႇတႂ်ႈ (`ball_rect.bottom >= SCREEN_HEIGHT`) ၼၼ်ႉ၊ 
ႁဝ်းတေလႆႈ **Invert (ပိၼ်ႇ) တူဝ်ၼပ်ႉ `ball_speed` (ဢဝ် Multiply `-1`) သေ ႁဵတ်းႁႂ်ႈ Direction မၼ်း Bouncing ပိၼ်ႇၵႂႃႇ ၽၢႆႇတၢင်းၼိုင်ႈ ၶႃႈ:

```python
# Bounce Off Top or Bottom Screen Edges
if ball_rect.top <= 0 or ball_rect.bottom >= SCREEN_HEIGHT:
    ball_speed_y *= -1

```

---

### Step-by-Step: ၵၢၼ် တႅမ်ႈ Ball Movement & Wall Bouncing

ႁဝ်းမႃးၸၢမ်း တႅမ်ႈ Physics Math တွၼ်ႈတႃႇ Ball Movement သႂ်ႇ Step 2 (Update Logic) ၼႂ်း `main.py` ၶႃႈ:

```python
import pygame
import sys
import random

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Pong - Lesson 6: Bouncing Ball Physics")

# 3. Colors & Clock
COLOR_BG = (15, 15, 35)
COLOR_WHITE = (255, 255, 255)
clock = pygame.time.Clock()

# Game Objects (PyGame Rects)
player1_rect = pygame.Rect(20, 250, 15, 100)
player2_rect = pygame.Rect(765, 250, 15, 100)
ball_rect = pygame.Rect(SCREEN_WIDTH // 2 - 10, SCREEN_HEIGHT // 2 - 10, 20, 20)

# Movement Speeds
PADDLE_SPEED = 450.0
ball_speed_x = 350.0 * random.choice((1, -1))
ball_speed_y = 350.0 * random.choice((1, -1))

running = True

# Helper function to reset ball to center
def reset_ball():
    global ball_speed_x, ball_speed_y
    ball_rect.center = (SCREEN_WIDTH // 2, SCREEN_HEIGHT // 2)
    ball_speed_x *= random.choice((1, -1))
    ball_speed_y *= random.choice((1, -1))

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

    # STEP 2: UPDATE GAME LOGIC
    # Keyboard Input for Paddles
    keys = pygame.key.get_pressed()
    if keys[pygame.K_w] and player1_rect.top > 0:
        player1_rect.y -= PADDLE_SPEED * dt
    if keys[pygame.K_s] and player1_rect.bottom < SCREEN_HEIGHT:
        player1_rect.y += PADDLE_SPEED * dt

    if keys[pygame.K_UP] and player2_rect.top > 0:
        player2_rect.y -= PADDLE_SPEED * dt
    if keys[pygame.K_DOWN] and player2_rect.bottom < SCREEN_HEIGHT:
        player2_rect.y += PADDLE_SPEED * dt

    # Ball Movement
    ball_rect.x += ball_speed_x * dt
    ball_rect.y += ball_speed_y * dt

    # Ball Wall Bouncing (Top / Bottom)
    if ball_rect.top <= 0 or ball_rect.bottom >= SCREEN_HEIGHT:
        ball_speed_y *= -1

    # Reset Ball if it goes past Left or Right Screen Edges
    if ball_rect.left <= 0 or ball_rect.right >= SCREEN_WIDTH:
        reset_ball()

    # STEP 3: RENDER / DRAW FRAME
    screen.fill(COLOR_BG)

    # Net Line
    pygame.draw.aaline(screen, COLOR_WHITE, (SCREEN_WIDTH // 2, 0), (SCREEN_WIDTH // 2, SCREEN_HEIGHT))

    # Draw Paddles and Ball
    pygame.draw.rect(screen, COLOR_WHITE, player1_rect)
    pygame.draw.rect(screen, COLOR_WHITE, player2_rect)
    pygame.draw.ellipse(screen, COLOR_WHITE, ball_rect)

    # Flip Buffer
    pygame.display.flip()

# 4. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Open main.py File:**
   Add `ball_rect` and speed variables along with the `reset_ball()` function.


2. **Update Ball Motion Math:**
   Add position updates and top/bottom boundary bouncing calculations inside Step 2.


3. **Run & Observe Bouncing:**
   Execute `python main.py` and verify that the ball moves diagonally and bounces smoothly off the top and bottom walls.


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `random.choice((1, -1))`

မိူဝ်ႈ Ball Reset ၼၼ်ႉ၊ ႁဝ်းၸႂ်ႉ `random.choice((1, -1))` တွၼ်ႈတႃႇ Random ပၼ် Direction သိုဝ်ႈ တီႈတႄႇ (မၢင်ၵႃႈ လႅၼ်ႈၵႂႃႇ ၽၢႆႇသၢႆႉ၊ မၢင်ၵႃႈ လႅၼ်ႈၵႂႃႇ ၽၢႆႇၶႂႃ)၊ ႁဵတ်းႁႂ်ႈ Game ႁဝ်း ဢမ်ႇလႅၼ်ႈ ၽၢႆႇတၢင်းလဵဝ် တႃႇသေႇ ၶႃႈ!