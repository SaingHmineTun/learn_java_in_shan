## 7: Rect Collisions & Scoring

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း လွၵ်းလၢႆး **Collision Detection** ၼႂ်းၵႄႈ Ball လႄႈ Paddle လူၺ်ႈ Function `colliderect` လႄႈ
ၵၢၼ် တႅမ်ႈ Score HUD Surface ၸႂ်ႉတိုဝ်း Module `pygame.font` ၶႃႈ!

---

### 1. Paddle-Ball Collision (`colliderect`)

`pygame.Rect` မီး Function ဢၼ်ပဵၼ် Collision ဢၼ်ၸႂ်ႉငၢႆႈတေႉတေႉ ဢၼ်ပဵၼ် **`rect1.colliderect(rect2)`** ၶႃႈ।

မိူဝ်ႈ Ball ၵႂႃႇတူၵ်းၺႃး Left ဢမ်ႇၼၼ် Right Paddle ၼၼ်ႉ၊ ႁဝ်းတေ:

1. **Invert Horizontal Velocity:** ဢဝ် `ball_speed_x *= -1` သေ ႁဵတ်းႁႂ်ႈ Ball Bounce ပိၼ်ႇၵႂႃႇ ၽၢႆႇတၢင်းၼိုင်ႈ।
2. **Speed Increment (Optional):** ဢဝ် Multiply Speed တူဝ်ၼပ်ႉ လဵၵ်ႉ (ဥပမာ: `1.05`) တွၼ်ႈတႃႇ ႁဵတ်းႁႂ်ႈ Game ၽႂ်းတိူဝ်း မိူဝ်ႈ Bounces ၵူႊၵူႊပွၵ်ႈ

```python
# Check Ball Collision with Left Paddle or Right Paddle
if ball_rect.colliderect(player1_rect) and ball_speed_x < 0:
    ball_speed_x *= -1.05  # Reverse and slightly speed up
elif ball_rect.colliderect(player2_rect) and ball_speed_x > 0:
    ball_speed_x *= -1.05  # Reverse and slightly speed up

```

---

### 2. Font Surface Rendering (`pygame.font`)

တွၼ်ႈတႃႇ Render Text Score တီႈ Top Screen Canvas ၼၼ်ႉ၊ ႁဝ်းတေၸႂ်ႉ Module **`pygame.font.Font`** ၶႃႈ:

1. **Create Font Object:** `font = pygame.font.Font(None, 60)` (ၸႂ်ႉ System Default Font Size 60)।
2. **Render Surface:** `score_surface = font.render(str(score), True, COLOR_WHITE)`।
3. **Blit to Screen:** `screen.blit(score_surface, (x_pos, y_pos))` (Blit ပဵၼ် ၵၢၼ် Copy/Draw Surface ၼိုင်ႈ သႂ်ႇ တီႈ Display Surface)।

---

### Step-by-Step: Full Code for Lesson 7

ႁဝ်းမႃး တႅမ်ႈ Code ဢၼ်မီး Collisions လႄႈ Score Tracking သႂ်ႇၼႂ်း `main.py` ႁဝ်း ၶႃႈ:

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
pygame.display.set_caption("Pong - Lesson 7: Rect Collisions & Scoring")

# 3. Colors, Clock, & Fonts
COLOR_BG = (15, 15, 35)
COLOR_WHITE = (255, 255, 255)
clock = pygame.time.Clock()

font = pygame.font.Font(None, 60)

# Game Objects (PyGame Rects)
player1_rect = pygame.Rect(20, 250, 15, 100)
player2_rect = pygame.Rect(765, 250, 15, 100)
ball_rect = pygame.Rect(SCREEN_WIDTH // 2 - 10, SCREEN_HEIGHT // 2 - 10, 20, 20)

# Movement Speeds
PADDLE_SPEED = 500.0
INITIAL_BALL_SPEED = 350.0
ball_speed_x = INITIAL_BALL_SPEED * random.choice((1, -1))
ball_speed_y = INITIAL_BALL_SPEED * random.choice((1, -1))

# Score Variables
player1_score = 0
player2_score = 0

running = True

def reset_ball():
    global ball_speed_x, ball_speed_y
    ball_rect.center = (SCREEN_WIDTH // 2, SCREEN_HEIGHT // 2)
    ball_speed_x = INITIAL_BALL_SPEED * random.choice((1, -1))
    ball_speed_y = INITIAL_BALL_SPEED * random.choice((1, -1))

# ==========================================
# CORE GAME LOOP
# ==========================================
while running:
    # STEP 0: Delta Time
    dt = clock.tick(60) / 1000.0

    # STEP 1: EVENT HANDLING
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                running = False

    # STEP 2: UPDATE GAME LOGIC
    # Keyboard Polling (Outside event loop!)
    keys = pygame.key.get_pressed()
    if keys[pygame.K_w] and player1_rect.top > 0:
        player1_rect.y -= PADDLE_SPEED * dt
    if keys[pygame.K_s] and player1_rect.bottom < SCREEN_HEIGHT:
        player1_rect.y += PADDLE_SPEED * dt

    if keys[pygame.K_UP] and player2_rect.top > 0:
        player2_rect.y -= PADDLE_SPEED * dt
    if keys[pygame.K_DOWN] and player2_rect.bottom < SCREEN_HEIGHT:
        player2_rect.y += PADDLE_SPEED * dt

    # Ball Motion
    ball_rect.x += ball_speed_x * dt
    ball_rect.y += ball_speed_y * dt

    # Wall Bounce (Top / Bottom)
    if ball_rect.top <= 0 or ball_rect.bottom >= SCREEN_HEIGHT:
        ball_speed_y *= -1

    # Paddle Collisions
    if ball_rect.colliderect(player1_rect) and ball_speed_x < 0:
        ball_speed_x *= -1.05
    elif ball_rect.colliderect(player2_rect) and ball_speed_x > 0:
        ball_speed_x *= -1.05

    # Scoring (Left / Right Edges)
    if ball_rect.left <= 0:
        player2_score += 1
        reset_ball()
    elif ball_rect.right >= SCREEN_WIDTH:
        player1_score += 1
        reset_ball()

    # STEP 3: RENDER / DRAW FRAME
    screen.fill(COLOR_BG)

    # Net Line
    pygame.draw.aaline(screen, COLOR_WHITE, (SCREEN_WIDTH // 2, 0), (SCREEN_WIDTH // 2, SCREEN_HEIGHT))

    # Draw Paddles and Ball
    pygame.draw.rect(screen, COLOR_WHITE, player1_rect)
    pygame.draw.rect(screen, COLOR_WHITE, player2_rect)
    pygame.draw.ellipse(screen, COLOR_WHITE, ball_rect)

    # Draw Score HUD Text
    p1_text = font.render(str(player1_score), True, COLOR_WHITE)
    p2_text = font.render(str(player2_score), True, COLOR_WHITE)
    screen.blit(p1_text, (SCREEN_WIDTH // 4 - p1_text.get_width() // 2, 20))
    screen.blit(p2_text, (3 * SCREEN_WIDTH // 4 - p2_text.get_width() // 2, 20))

    # Flip Buffer
    pygame.display.flip()

# 4. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Update main.py:**
   Replace your `main.py` code with this complete script containing `colliderect` and font rendering.


2. **Run & Test:**
   Execute `python main.py` in your terminal.


3. **Verify Collisions & Score:**
   Test hitting the ball with paddles to confirm it bounces and speeds up, and let it pass a paddle to check if scores update at the top.