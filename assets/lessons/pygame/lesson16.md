## 16: Custom Timers & Waves

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 16 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **Custom User Events, Timers (`pygame.time.set_timer`) & Wave Progression** ၶႃႈ!

ၼႂ်း Space Invaders ၼႆႉ၊ ပေႃး Player ယိုဝ်းလႅဝ် Alien Fleet ၼႂ်း Wave ၼိုင်ႈဢၼ်ယဝ်ႉၼၼ်ႉ၊ Game ႁဝ်း တေလႆႈ **Respawn ၵေႃႇသၢင်ႈ Wave မႂ်ႇ (Next Wave)** ဢၼ်မီး Speed ၽႂ်းၶိုၼ်ႈ ၶႃႈ।

တွၼ်ႈတႃႇ ႁဵတ်းႁႂ်ႈ Alien Fleet ၵိူတ်ႇ Firing Lasers မႃး တီႈ Player ၼၼ်ႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ **Custom Timers** သေ Trigger Event ၼႂ်း Interval Time ၵူႈဢၼ်ၶႃႈ!

---

### 1. `pygame.USEREVENT` & `pygame.time.set_timer()`

PyGame ပၼ် ႁဝ်း Create Custom Events ၶွင်တူဝ်ႁဝ်း သေ သႂ်ႇ Timer Trigger ၼႂ်း Event Queue:

1. **Define Event ID:** `ALIEN_LASER_EVENT = pygame.USEREVENT + 1`
2. **Set Timer Interval:** `pygame.time.set_timer(ALIEN_LASER_EVENT, 800)` (Trigger တႃႇၵူႈ `800` Milliseconds)
3. **Handle in Event Loop:**
```python
for event in pygame.event.get():
    if event.type == ALIEN_LASER_EVENT and len(alien_group) > 0:
        # Select a random alien to shoot a laser down
        random_alien = random.choice(alien_group.sprites())
        alien_laser_group.add(AlienLaser(random_alien.rect.center))

```



---

### 2. Wave Progression Mechanics

မိူဝ်ႈ Alien Fleet ၼႂ်း Group လႅဝ်ပႅတ်ႈ မူတ်းယဝ်ႉ (`len(alien_group) == 0`)၊ ႁဝ်းတေ:

1. Increment Wave Counter: `wave += 1`
2. Respawn alien fleet ၶိုၼ်း
3. Increase base alien speed or firing interval တွၼ်ႈတႃႇ ႁဵတ်းႁႂ်ႈ Game ယၢပ်ႇလိူဝ်ၵဝ်ႇ (Increase Difficulty)!

---

### Step-by-Step: Full Code with Custom Timers & Waves

ႁဝ်းမႃး Update တႅမ်ႈ Complete Wave Progression Code သႂ်ႇ `main.py` ၶႃႈ:

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
pygame.display.set_caption("Space Invaders - Lesson 16: Custom Timers & Waves")

clock = pygame.time.Clock()
COLOR_BG = (10, 10, 25)
COLOR_WHITE = (255, 255, 255)
COLOR_RED = (255, 60, 60)

font_ui = pygame.font.Font(None, 40)
score = 0
wave = 1

# ----------------------------------------------------
# 3. SPRITE CLASSES
# ----------------------------------------------------
class Laser(pygame.sprite.Sprite):
    def __init__(self, pos):
        super().__init__()
        self.image = pygame.Surface((4, 18))
        self.image.fill((255, 255, 0))
        self.rect = self.image.get_rect(center=pos)
        self.speed = 650.0

    def update(self, dt):
        self.rect.y -= self.speed * dt
        if self.rect.bottom < 0:
            self.kill()

class AlienLaser(pygame.sprite.Sprite):
    def __init__(self, pos):
        super().__init__()
        self.image = pygame.Surface((4, 18))
        self.image.fill(COLOR_RED)
        self.rect = self.image.get_rect(center=pos)
        self.speed = 400.0

    def update(self, dt):
        self.rect.y += self.speed * dt
        if self.rect.top > SCREEN_HEIGHT:
            self.kill()

class Player(pygame.sprite.Sprite):
    def __init__(self, pos, laser_group):
        super().__init__()
        try:
            self.image = pygame.image.load("graphics/player.png").convert_alpha()
            self.image = pygame.transform.scale(self.image, (60, 40))
        except FileNotFoundError:
            self.image = pygame.Surface((60, 40), pygame.SRCALPHA)
            pygame.draw.polygon(self.image, (0, 255, 150), [(30, 0), (0, 40), (60, 40)])

        self.rect = self.image.get_rect(center=pos)
        self.speed = 450.0
        self.laser_group = laser_group
        self.can_shoot = True
        self.shoot_time = 0
        self.cooldown = 250

    def shoot(self):
        if self.can_shoot:
            laser = Laser(self.rect.midtop)
            self.laser_group.add(laser)
            self.can_shoot = False
            self.shoot_time = pygame.time.get_ticks()

    def update(self, dt):
        keys = pygame.key.get_pressed()
        if keys[pygame.K_LEFT] or keys[pygame.K_a]:
            self.rect.x -= self.speed * dt
        if keys[pygame.K_RIGHT] or keys[pygame.K_d]:
            self.rect.x += self.speed * dt

        if keys[pygame.K_SPACE]:
            self.shoot()

        if not self.can_shoot:
            current_time = pygame.time.get_ticks()
            if current_time - self.shoot_time >= self.cooldown:
                self.can_shoot = True

        if self.rect.left < 0:
            self.rect.left = 0
        if self.rect.right > SCREEN_WIDTH:
            self.rect.right = SCREEN_WIDTH

class Alien(pygame.sprite.Sprite):
    def __init__(self, pos, speed):
        super().__init__()
        try:
            self.image = pygame.image.load("graphics/alien.png").convert_alpha()
            self.image = pygame.transform.scale(self.image, (40, 30))
        except FileNotFoundError:
            self.image = pygame.Surface((40, 30), pygame.SRCALPHA)
            pygame.draw.rect(self.image, (255, 50, 80), (0, 0, 40, 30))

        self.rect = self.image.get_rect(topleft=pos)
        self.speed = speed

    def update(self, dt, direction):
        self.rect.x += self.speed * direction * dt

# ----------------------------------------------------
# 4. INSTANTIATE GROUPS & CUSTOM TIMERS
# ----------------------------------------------------
laser_group = pygame.sprite.Group()
alien_laser_group = pygame.sprite.Group()

player_group = pygame.sprite.GroupSingle()
player_group.add(Player((SCREEN_WIDTH // 2, SCREEN_HEIGHT - 60), laser_group))

alien_group = pygame.sprite.Group()
alien_direction = 1
base_alien_speed = 100.0

def setup_fleet(speed):
    for row in range(4):
        for col in range(8):
            x = 80 + col * 70
            y = 40 + row * 45
            alien_group.add(Alien((x, y), speed))

setup_fleet(base_alien_speed)

# Set Custom User Event Timer for Alien Firing
ALIEN_LASER_EVENT = pygame.USEREVENT + 1
pygame.time.set_timer(ALIEN_LASER_EVENT, 800)  # Fire every 800 ms

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

        # Custom Timer Event: Random Alien Firing
        elif event.type == ALIEN_LASER_EVENT and len(alien_group) > 0:
            random_alien = random.choice(alien_group.sprites())
            alien_laser_group.add(AlienLaser(random_alien.rect.midbottom))

    # Step 2: Update Logic
    player_group.update(dt)
    laser_group.update(dt)
    alien_laser_group.update(dt)
    alien_group.update(dt, alien_direction)

    # Alien Formation Boundary Check
    move_down = False
    for alien in alien_group.sprites():
        if alien.rect.right >= SCREEN_WIDTH and alien_direction > 0:
            alien_direction = -1
            move_down = True
            break
        elif alien.rect.left <= 0 and alien_direction < 0:
            alien_direction = 1
            move_down = True
            break

    if move_down:
        for alien in alien_group.sprites():
            alien.rect.y += 18

    # --- GROUP COLLISIONS ---
    # 1. Player Laser vs Alien
    collisions = pygame.sprite.groupcollide(laser_group, alien_group, True, True)
    if collisions:
        for lasers, aliens_hit in collisions.items():
            score += len(aliens_hit) * 100

    # 2. Alien Laser vs Player
    if pygame.sprite.spritecollide(player_group.sprite, alien_laser_group, True):
        print("GAME OVER! You were hit by an alien laser.")
        running = False

    # 3. Alien Body vs Player
    if pygame.sprite.spritecollide(player_group.sprite, alien_group, False):
        print("GAME OVER! Aliens invaded your ship.")
        running = False

    # --- NEXT WAVE CHECK ---
    if len(alien_group) == 0:
        wave += 1
        base_alien_speed += 30.0  # Speed up fleet for next wave
        alien_direction = 1
        setup_fleet(base_alien_speed)

    # Step 3: Render / Draw Frame
    screen.fill(COLOR_BG)

    laser_group.draw(screen)
    alien_laser_group.draw(screen)
    player_group.draw(screen)
    alien_group.draw(screen)

    # UI Text Overlays
    score_surface = font_ui.render(f"SCORE: {score}", True, COLOR_WHITE)
    wave_surface = font_ui.render(f"WAVE: {wave}", True, COLOR_WHITE)
    screen.blit(score_surface, (20, 20))
    screen.blit(wave_surface, (SCREEN_WIDTH - 150, 20))

    pygame.display.flip()

# 5. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Update main.py Script:**
   Replace your script with the code above adding `AlienLaser`, custom timers, and wave progression logic.

2. **Run & Test Alien Shooting:**
   Execute `python main.py` in your terminal.


3. **Verify Wave Respawn:**
   Avoid alien lasers while clearing the fleet to confirm the next wave automatically spawns at a faster speed!


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `pygame.time.set_timer()`

သင်ဝႃႈႁဝ်းၸႂ်ႉတိုဝ်း `pygame.time.set_timer(EVENT_ID, milliseconds)` ၼႆၸိုင်:

* Event ၼႆႉ တေႁဵတ်းၵၢၼ် ႁင်းၵူၺ်း တေႃႇထိုင်ႁဝ်းၸႂ်ႉတိုဝ်း `pygame.time.set_timer(EVENT_ID, 0)` တႃႇၵိုတ်းမၼ်းယဝ်ႉ!
* ၸႂ်ႉတိုဝ်း `pygame.USEREVENT + N` တႃႇသေႇလႄႈ (e.g., `USEREVENT + 1`, `USEREVENT + 2`) တွၼ်ႈတႃႇ တေဝႄႈ ပၼ်ႁႃၼမ်လၢႆၼၼ်ႉ!