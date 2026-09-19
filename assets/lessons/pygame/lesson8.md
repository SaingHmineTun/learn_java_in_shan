## 8: Game Loop Polish

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 8 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **Game Loop Polish** ၶႃႈ।

မိူဝ်ႈႁဝ်း တႅမ်ႈ Game Mechanics ပိုၼ်ႉထၢၼ် ယဝ်ႉတူဝ်ႈယဝ်ႉၼၼ်ႉ၊ Game ႁဝ်း တေလဵၼ်ႈဢမ်ႇသိူဝ်း ပေႃးဢမ်ႇမီး Game States, Game Over Screens, လႄႈ Restart Mechanics ၶႃႈ။ 
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃး တႅမ်ႈ Game Polish တွၼ်ႈတႃႇ မၵ်းမၼ်ႈ Winning Score (`5` points), သႂ်ႇ Game Over State Overlay, လႄႈ ၵၢၼ် တဵၵ်း `SPACE` Key တွၼ်ႈတႃႇ Restart Game ၶိုၼ်း ၶႃႈ!

---

### 1. Game State Management (Modular States)

တွၼ်ႈတႃႇ ႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈ Ball တူင်ႉၼိုင် မိူဝ်ႈ Game ၵိူတ်ႇ Game Over ၼၼ်ႉ၊ ႁဝ်းတေမၵ်းမၼ်ႈ Boolean Flag **`game_active`** ၶႃႈ:

* **`game_active = True`:** Game Loop ႁဵတ်းၵၢၼ် Normal Physics Movement, Paddle Controls, လႄႈ Collision Detection।
* **`game_active = False`:** Freeze Object Movements, မူတ်းသေ Draw Game Over Text Overlay ၼိူဝ် Canvas, သေ ႁႂ်ႈ Player တဵၵ်း `SPACE` တွၼ်ႈတႃႇ Reset Points လႄႈ Restart State ၶိုၼ်း।

---

### 2. Game Over Overlay & Reset Logic

မိူဝ်ႈ Score သေၽၢႆႇၽၢႆႇ ၽႅဝ် `5` Points (Winning Score) ၼၼ်ႉ:

1. မၵ်းမၼ်ႈ `game_active = False`।
2. Draw Text "PLAYER 1 WINS!" ဢမ်ႇၼၼ် "PLAYER 2 WINS!" တီႈ Center Screen Canvas।
3. Draw Text "Press SPACE to Restart" တီႈ Sub-title Overlay।
4. မိူဝ်ႈ Player တဵၵ်း `pygame.K_SPACE` ၼႂ်း Event Queue ၼၼ်ႉ၊ Reset Score ပဵၼ် `0`, Reset Paddle & Ball Positions သေ လႅၵ်ႈ `game_active = True` ၶိုၼ်း!

---

### Step-by-Step: Full Polish Code for Lesson 8

ႁဝ်းမႃး Update တႅမ်ႈ Complete Polish Code သႂ်ႇ `main.py` ႁဝ်း ၶႃႈ:

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
pygame.display.set_caption("Pong - Lesson 8: Game Loop Polish")

# 3. Colors, Clock, & Fonts
COLOR_BG = (15, 15, 35)
COLOR_WHITE = (255, 255, 255)
COLOR_GOLD = (255, 215, 0)
clock = pygame.time.Clock()

font_score = pygame.font.Font(None, 60)
font_game_over = pygame.font.Font(None, 70)
font_sub = pygame.font.Font(None, 36)

# Game Objects (PyGame Rects)
player1_rect = pygame.Rect(20, 250, 15, 100)
player2_rect = pygame.Rect(765, 250, 15, 100)
ball_rect = pygame.Rect(SCREEN_WIDTH // 2 - 10, SCREEN_HEIGHT // 2 - 10, 20, 20)

# Movement Speeds
PADDLE_SPEED = 500.0
INITIAL_BALL_SPEED = 350.0
ball_speed_x = INITIAL_BALL_SPEED * random.choice((1, -1))
ball_speed_y = INITIAL_BALL_SPEED * random.choice((1, -1))

# Score & Game States
player1_score = 0
player2_score = 0
WINNING_SCORE = 5
game_active = True
winner_text = ""

running = True

def reset_ball():
    global ball_speed_x, ball_speed_y
    ball_rect.center = (SCREEN_WIDTH // 2, SCREEN_HEIGHT // 2)
    ball_speed_x = INITIAL_BALL_SPEED * random.choice((1, -1))
    ball_speed_y = INITIAL_BALL_SPEED * random.choice((1, -1))

def reset_game():
    global player1_score, player2_score, game_active, winner_text
    player1_score = 0
    player2_score = 0
    player1_rect.y = 250
    player2_rect.y = 250
    winner_text = ""
    reset_ball()
    game_active = True

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
            # Restart game when SPACE is pressed in Game Over state
            if not game_active and event.key == pygame.K_SPACE:
                reset_game()

    # STEP 2: UPDATE GAME LOGIC
    if game_active:
        # Keyboard Polling for Paddles
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

        # Scoring & Win Condition Check
        if ball_rect.left <= 0:
            player2_score += 1
            if player2_score >= WINNING_SCORE:
                game_active = False
                winner_text = "PLAYER 2 WINS!"
            else:
                reset_ball()
        elif ball_rect.right >= SCREEN_WIDTH:
            player1_score += 1
            if player1_score >= WINNING_SCORE:
                game_active = False
                winner_text = "PLAYER 1 WINS!"
            else:
                reset_ball()

    # STEP 3: RENDER / DRAW FRAME
    screen.fill(COLOR_BG)

    # Draw Net Line
    pygame.draw.aaline(screen, COLOR_WHITE, (SCREEN_WIDTH // 2, 0), (SCREEN_WIDTH // 2, SCREEN_HEIGHT))

    # Draw Paddles and Ball
    pygame.draw.rect(screen, COLOR_WHITE, player1_rect)
    pygame.draw.rect(screen, COLOR_WHITE, player2_rect)
    pygame.draw.ellipse(screen, COLOR_WHITE, ball_rect)

    # Draw Score HUD
    p1_surface = font_score.render(str(player1_score), True, COLOR_WHITE)
    p2_surface = font_score.render(str(player2_score), True, COLOR_WHITE)
    screen.blit(p1_surface, (SCREEN_WIDTH // 4 - p1_surface.get_width() // 2, 20))
    screen.blit(p2_surface, (3 * SCREEN_WIDTH // 4 - p2_surface.get_width() // 2, 20))

    # Draw Game Over Overlay Screen
    if not game_active:
        win_surface = font_game_over.render(winner_text, True, COLOR_GOLD)
        sub_surface = font_sub.render("Press SPACE to Restart", True, COLOR_WHITE)

        screen.blit(win_surface, (SCREEN_WIDTH // 2 - win_surface.get_width() // 2, SCREEN_HEIGHT // 2 - 50))
        screen.blit(sub_surface, (SCREEN_WIDTH // 2 - sub_surface.get_width() // 2, SCREEN_HEIGHT // 2 + 30))

    # Flip Buffer
    pygame.display.flip()

# 4. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Update main.py Script:**
   Replace `main.py` with this polished version adding game state variables and the Game Over UI overlay.


2. **Run & Test Match:**
   Execute `python main.py` in your terminal.


3. **Verify Game Over & Restart:**
   Play until a player reaches 5 points to see the gold winner message appear, then press `SPACE` to restart the match.


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ Game Over Input Handling

တွၼ်ႈတႃႇ Restart Game ၼၼ်ႉ၊ ႁဝ်းၸႂ်ႉ Event Loop `event.type == pygame.KEYDOWN` ၽၢႆႇၼႂ်း Event Handling Step၊ ဢမ်ႇၸႂ်ႉ Keyboard Polling ၶႃႈ।
လွၵ်းလၢႆးၼႆႉ တေႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈ Game Restart တႃႇသေႇ မိူဝ်ႈ Player တဵၵ်း Key `SPACE` ဝႆႉ ၶႃႈ!