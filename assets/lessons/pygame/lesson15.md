## 15: Group Collisions

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 15 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **Group Collisions (`pygame.sprite.groupcollide`)** ၶႃႈ!

ၼႂ်း Lesson 7 ၼၼ်ႉ ႁဝ်းလႆႈ ၸႂ်ႉ `colliderect` တွၼ်ႈတႃႇ ၵူတ်ႇထႅတ်ႈ Collision တီႈ Rect 2 ဢၼ် (Ball & Paddle)။ 
ၵူၺ်းၵႃႈ ၼႂ်း Space Invaders ၼႆႉ ႁဝ်းမီး Laser Sprites တၢင်းၼမ် ၼႂ်း `laser_group` လႄႈ Alien Sprites တၢင်းၼမ် ၼႂ်း `alien_group` ၶႃႈ।
ပေႃးႁဝ်း ၵႂႃႇတႅမ်ႈ `for` loop သေ ၸႅတ်ႈလူၺ်ႈ Line-by-Line Collisions ၼၼ်ႉ Code ႁဝ်းတေ ယၢဝ်းလႄႈ မႄးယၢပ်ႇ တေႉတေႉၶႃႈ। 
PyGame မီး Function ဢၼ်ပဵၼ် **`pygame.sprite.groupcollide()`** သေ ၵူတ်ႇထတ်း Collision တႃႇ **Group 2 ဢၼ်** သေ ယႃႉလႅဝ်ပႅတ်ႈ (Destroy) Sprites ဢၼ်တုမ်ႉၺႃးၵၼ် ႁင်းမၼ်းၶႃႈ!

---

### 1. `pygame.sprite.groupcollide()`

Function **`pygame.sprite.groupcollide(group1, group2, dokill1, dokill2)`** မီး Parameters ယႂ်ႇ 4 ဢၼ်:

1. **`group1`:** Group ဢၼ်ၼိုင်ႈ (ပိူင်တႅၵ်ႈ: `laser_group`)
2. **`group2`:** Group ထႅင်ႈဢၼ်ၼိုင်ႈ (ပိူင်တႅၵ်ႈ: `alien_group`)
3. **`dokill1`:** Boolean Flag (True/False) — ပေႃး `True`၊ Sprite တီႈ `group1` ဢၼ် တုမ်ႉၺႃး (Collision) ၼၼ်ႉ တေ `kill()` ႁင်းမၼ်း!
4. **`dokill2`:** Boolean Flag (True/False) — ပေႃး `True`၊ Sprite တီႈ `group2` ဢၼ် တုမ်ႉၺႃး (Collision) ၼၼ်ႉ တေ `kill()` ႁင်းမၼ်း!

```python
# သင်ဝႃႈ Laser ယိုဝ်းမႅၼ်ႈ Alien ၸိုင်: တေလႆႈ ယႃႉၶဝ်တင်းသွင်ဢၼ် ၸွမ်းၵၼ်ၶႃႈ။ 
collisions = pygame.sprite.groupcollide(laser_group, alien_group, True, True)

```

> **Return Value:** Function ၼႆႉ တေ Return Dictionary ဢၼ်မီး Key ပဵၼ် Sprite တီႈ Group 1 သေ Value ပဵၼ် List ၶွင် Sprites တီႈ Group 2 ဢၼ် မၼ်း တူၵ်းၺႃး! ႁဝ်းၸႂ်ႉ Dictionary ၼႆႉ တွၼ်ႈတႃႇ တႅၵ်ႈ Score (ဥပမာ: `score += len(aliens_hit) * 10`) ၶႃႈ!

---

### 2. Player Collisions (`pygame.sprite.spritecollide`)

တွၼ်ႈတႃႇ ၵူတ်ႇထတ်း ပေႃး Alien လႅၼ်ႈမႃး တူၵ်းၺႃး တူဝ် Player ၼၼ်ႉ၊ ႁဝ်းၸႂ်ႉ **`pygame.sprite.spritecollide(sprite, group, dokill)`**:

```python
# ၸႅတ်ႈတူၺ်းဝႃႈ Alien တုမ်ႉၺႃး Player ယဝ်ႉႁိုဝ်ႉ။
if pygame.sprite.spritecollide(player_group.sprite, alien_group, False):
    print("Game Over! Alien collided with Player.")
    running = False

```

---

### Step-by-Step: Full Code with Group Collisions & Score HUD

ႁဝ်းမႃး Update တႅမ်ႈ Complete Collision System & Score HUD သႂ်ႇ `main.py` ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Space Invaders - Lesson 15: Group Collisions")

clock = pygame.time.Clock()
COLOR_BG = (10, 10, 25)
COLOR_WHITE = (255, 255, 255)

font_score = pygame.font.Font(None, 40)
score = 0

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
    def __init__(self, pos):
        super().__init__()
        try:
            self.image = pygame.image.load("graphics/alien.png").convert_alpha()
            self.image = pygame.transform.scale(self.image, (40, 30))
        except FileNotFoundError:
            self.image = pygame.Surface((40, 30), pygame.SRCALPHA)
            pygame.draw.rect(self.image, (255, 50, 80), (0, 0, 40, 30))

        self.rect = self.image.get_rect(topleft=pos)
        self.speed = 120.0

    def update(self, dt, direction):
        self.rect.x += self.speed * direction * dt

# ----------------------------------------------------
# 4. INSTANTIATE GROUPS & FLEET
# ----------------------------------------------------
laser_group = pygame.sprite.Group()

player_group = pygame.sprite.GroupSingle()
player_group.add(Player((SCREEN_WIDTH // 2, SCREEN_HEIGHT - 60), laser_group))

alien_group = pygame.sprite.Group()
alien_direction = 1

def setup_fleet():
    for row in range(4):
        for col in range(8):
            x = 80 + col * 70
            y = 40 + row * 45
            alien_group.add(Alien((x, y)))

setup_fleet()

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

    # Step 2: Update Logic
    player_group.update(dt)
    laser_group.update(dt)
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
    # 1. Laser vs Alien Collision (Destroy both laser and alien)
    collisions = pygame.sprite.groupcollide(laser_group, alien_group, True, True)
    if collisions:
        for lasers, aliens_hit in collisions.items():
            score += len(aliens_hit) * 100

    # 2. Alien vs Player Collision
    if pygame.sprite.spritecollide(player_group.sprite, alien_group, False):
        print("GAME OVER! Aliens invaded your ship.")
        running = False

    # Step 3: Render / Draw Frame
    screen.fill(COLOR_BG)

    laser_group.draw(screen)
    player_group.draw(screen)
    alien_group.draw(screen)

    # Score HUD Text
    score_surface = font_score.render(f"SCORE: {score}", True, COLOR_WHITE)
    screen.blit(score_surface, (20, 20))

    pygame.display.flip()

# 5. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Update main.py Script:**
   Replace your script with the complete code above containing `groupcollide` and score calculations.


2. **Run & Test Laser Hits:**
   Execute `python main.py` in your terminal.


3. **Verify Collision Destruction:**
   Shoot at the alien formation to confirm lasers and aliens explode on impact while your score increments by 100 points per alien hit!


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `dokill1` & `dokill2`

When calling `groupcollide(laser_group, alien_group, True, True)`:

* Setting `dokill1 = True` deletes the laser projectile immediately upon impact.
* Setting `dokill2 = True` deletes the alien enemy sprite immediately upon impact.
  If you wanted a piercing laser that shoots through multiple aliens, you would set `dokill1 = False` and `dokill2 = True`!