## 9: Capstone Game: Pong

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 9 ၼႆႉ ႁဝ်းတေမႃး **ႁူမ်ႈ (Consolidate)** ပိုၼ်ႉထၢၼ် တင်းသဵင်ႈ ဢၼ်ႁဝ်း လႆႈႁဵၼ်းမႃး တႅမ်ႈ ပဵၼ် **Complete Standalone Pong Game File** ဢၼ်မီး Refactored Functions, Dynamic Sound FX (Audio Synthesis), Menu Flow, လႄႈ Modular Game Loop Clean Architecture ၶႃႈ!

---

### 1. ၵၢၼ် Organize Project Architecture

ၼႂ်း Capstone Game ၼႆႉ ႁဝ်းတေ Organize Code ႁဝ်း ႁႂ်ႈပဵၼ် Clean Functions:

1. **`reset_ball()`:** Resets ball position to center with random trajectory direction.
2. **`reset_game()`:** Resets scores, paddle positions, and restarts the game state active flag.
3. **`handle_input(dt)`:** Handles keyboard polling for both players.
4. **`update_physics(dt)`:** Calculates ball dynamics, wall bounces, paddle collisions, and win conditions.
5. **`render_graphics()`:** Draws background canvas, dashed net, paddles, ball, score text, and game-over overlays.

---

### 2. Audio Beep Generation (`pygame.mixer`)

တွၼ်ႈတႃႇ ႁႂ်ႈ Pong Game ႁဝ်း မီး Sound FX (ႁွင်ႉ သႅင်ႇ / Beep) မိူဝ်ႈ Ball Bouncing ၺႃး Paddle ဢမ်ႇၼၼ် Wall ၼၼ်ႉ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ Module **`pygame.mixer.Sound`** သေ Create Beep Audio Surfaces Dynamic ၶႃႈ!

---

### Step-by-Step: The Complete Pong Capstone Project

ၼႆႉပဵၼ် Clean Standalone Code တွၼ်ႈတႃႇ Module 1 Capstone Project `main.py` ၶႃႈ:

```python
import pygame
import sys
import random

# 1. Initialize PyGame & Sound Mixer
pygame.init()
pygame.mixer.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Capstone Project - Classic Pong")

# 3. Colors, Clock, & Fonts
COLOR_BG = (15, 15, 35)
COLOR_WHITE = (255, 255, 255)
COLOR_GOLD = (255, 215, 0)
clock = pygame.time.Clock()

font_score = pygame.font.Font(None, 60)
font_game_over = pygame.font.Font(None, 70)
font_sub = pygame.font.Font(None, 36)

# Game Entities (Rects)
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

# Generate Simple Synthetic Beep Sound FX
def create_beep_sound(frequency=440, duration=0.1):
    sample_rate = 44100
    n_samples = int(sample_rate * duration)
    buf = bytearray()
    for i in range(n_samples):
        val = 127 if (i // (sample_rate // frequency)) % 2 == 0 else -127
        buf.append(val & 0xFF)
    return pygame.mixer.Sound(buffer=bytes(buf))

try:
    sound_bounce = create_beep_sound(600, 0.05)
    sound_score = create_beep_sound(200, 0.2)
except Exception:
    sound_bounce = None
    sound_score = None

def play_sound(snd):
    if snd:
        snd.play()

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

def handle_input(dt):
    keys = pygame.key.get_pressed()
    if keys[pygame.K_w] and player1_rect.top > 0:
        player1_rect.y -= PADDLE_SPEED * dt
    if keys[pygame.K_s] and player1_rect.bottom < SCREEN_HEIGHT:
        player1_rect.y += PADDLE_SPEED * dt

    if keys[pygame.K_UP] and player2_rect.top > 0:
        player2_rect.y -= PADDLE_SPEED * dt
    if keys[pygame.K_DOWN] and player2_rect.bottom < SCREEN_HEIGHT:
        player2_rect.y += PADDLE_SPEED * dt

def update_physics(dt):
    global ball_speed_x, ball_speed_y, player1_score, player2_score, game_active, winner_text

    # Ball Motion
    ball_rect.x += ball_speed_x * dt
    ball_rect.y += ball_speed_y * dt

    # Top/Bottom Wall Bounce
    if ball_rect.top <= 0 or ball_rect.bottom >= SCREEN_HEIGHT:
        ball_speed_y *= -1
        play_sound(sound_bounce)

    # Paddle Collisions
    if ball_rect.colliderect(player1_rect) and ball_speed_x < 0:
        ball_speed_x *= -1.05
        play_sound(sound_bounce)
    elif ball_rect.colliderect(player2_rect) and ball_speed_x > 0:
        ball_speed_x *= -1.05
        play_sound(sound_bounce)

    # Scoring Conditions
    if ball_rect.left <= 0:
        player2_score += 1
        play_sound(sound_score)
        if player2_score >= WINNING_SCORE:
            game_active = False
            winner_text = "PLAYER 2 WINS!"
        else:
            reset_ball()

    elif ball_rect.right >= SCREEN_WIDTH:
        player1_score += 1
        play_sound(sound_score)
        if player1_score >= WINNING_SCORE:
            game_active = False
            winner_text = "PLAYER 1 WINS!"
        else:
            reset_ball()

def render_graphics():
    screen.fill(COLOR_BG)

    # Dashed Net
    for y in range(0, SCREEN_HEIGHT, 30):
        pygame.draw.rect(screen, COLOR_WHITE, (SCREEN_WIDTH // 2 - 2, y, 4, 15))

    # Paddles & Ball
    pygame.draw.rect(screen, COLOR_WHITE, player1_rect)
    pygame.draw.rect(screen, COLOR_WHITE, player2_rect)
    pygame.draw.ellipse(screen, COLOR_WHITE, ball_rect)

    # Scores
    p1_surface = font_score.render(str(player1_score), True, COLOR_WHITE)
    p2_surface = font_score.render(str(player2_score), True, COLOR_WHITE)
    screen.blit(p1_surface, (SCREEN_WIDTH // 4 - p1_surface.get_width() // 2, 20))
    screen.blit(p2_surface, (3 * SCREEN_WIDTH // 4 - p2_surface.get_width() // 2, 20))

    # Game Over UI
    if not game_active:
        win_surface = font_game_over.render(winner_text, True, COLOR_GOLD)
        sub_surface = font_sub.render("Press SPACE to Restart", True, COLOR_WHITE)
        screen.blit(win_surface, (SCREEN_WIDTH // 2 - win_surface.get_width() // 2, SCREEN_HEIGHT // 2 - 50))
        screen.blit(sub_surface, (SCREEN_WIDTH // 2 - sub_surface.get_width() // 2, SCREEN_HEIGHT // 2 + 30))

    pygame.display.flip()

# ==========================================
# MAIN GAME LOOP
# ==========================================
running = True
while running:
    dt = clock.tick(60) / 1000.0

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                running = False
            if not game_active and event.key == pygame.K_SPACE:
                reset_game()

    if game_active:
        handle_input(dt)
        update_physics(dt)

    render_graphics()

pygame.quit()
sys.exit()

```

1. **Save Capstone Project:**
   Save this clean script as `pong_capstone.py` or inside your `module1` folder.


2. **Run & Test Full Game:**
   Execute `python pong_capstone.py` to play the complete Pong game featuring sound FX, score HUD, smooth controls, and restart flow.


---

### 🎉 Module 1 Complete!

Module 1 (Pong) ႁဝ်းယဝ်ႈတူဝ်ႈ တဵမ်ထူၼ်ႈ 100% သေ မီး Lessons 1 တေႃႇ 9 မၢၼ်ႇမႅၼ်ႈယဝ်ႉၶႃႈ!