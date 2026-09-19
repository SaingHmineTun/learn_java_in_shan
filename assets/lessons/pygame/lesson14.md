## 14: Formation Movement

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 14 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **Formation Movement (ၵၢၼ်တူင်ႉၼိုင် ၸွမ်းၸုမ်း)** ၶႃႈ!

ၼႂ်း Space Invaders Game ၼၼ်ႉ၊ Aliens တင်းသဵင်ႈ တေဢမ်ႇ လႅၼ်ႈၽၢႆႇလဵဝ်ၵူၺ်း။
မၼ်းတေ **တူင်ႉၼိုင် ပဵၼ် Formation ၸုမ်းလဵဝ်ၵၼ်**:

1. လႅၼ်ႈၵႂႃႇ ၽၢႆႇၶႂႃ တေႃႇပေႃး တုမ်ႇၺႃး ၶွပ်ႇၼႃႈၸေႃႈ (`SCREEN_WIDTH`)။
2. ပေႃး Alien တူဝ်ၼိုင်ႈ တုမ်ႉၺႃး ၶွပ်ႇၼႃႈၸေႃႈယဝ်ႉ၊ Aliens **တင်းသဵင်ႈ တေ လႅၼ်ႈယွၼ်ႈမႃး ၽၢႆႇတႂ်ႈ (Move Down)** သေ ပိၼ်ႇ Direction လႅၼ်ႈၵႂႃႇ ၽၢႆႇသၢႆႉ ၶိုၼ်း!

---

### 1. Synchronized Fleet Movement Logic

တွၼ်ႈတႃႇ ႁဵတ်းႁႂ်ႈ Alien Sprites တင်းသဵင်ႈ ၼႂ်း `alien_group` တူင်ႉၼိုင် ၸွမ်းၵၼ်ၼၼ်ႉ၊ ႁဝ်းတေ မၵ်းမၼ်ႈ **Direction Variable (`direction = 1`)** သေ Check Boundaries တီႈ **Outer Group Level** (ၼႂ်း Main Game Loop) ၶႃႈ:

* **Horizontal Motion:** ၼႂ်း `Alien.update()`၊ ႁဝ်းဢဝ် Direction (1 ဢမ်ႇၼၼ် -1) Multiply ၸွမ်း Speed:
```python
self.rect.x += self.speed * direction * dt

```


* **Boundary Check & Shift Down:** ၼႂ်း Main Game Loop၊ ႁဝ်း ၵူတ်ႇထတ်း (Check) Sprite တင်းသဵင်ႈ ၼႂ်း Group:
```python
move_down = False
for alien in alien_group.sprites():
    if alien.rect.right >= SCREEN_WIDTH and alien_direction > 0:
        alien_direction = -1
        move_down = True
    elif alien.rect.left <= 0 and alien_direction < 0:
        alien_direction = 1
        move_down = True

if move_down:
    for alien in alien_group.sprites():
        alien.rect.y += 20 # Drop down by 20 pixels

```



---

### Step-by-Step: Full Code with Formation Movement

ႁဝ်းမႃး Update တႅမ်ႈ Complete Alien Formation Code သႂ်ႇၼႂ်း `main.py` ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Space Invaders - Lesson 14: Formation Movement")

clock = pygame.time.Clock()
COLOR_BG = (10, 10, 25)

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
alien_direction = 1  # 1 = Moving Right, -1 = Moving Left

# Build 5x4 Grid Fleet
for row in range(4):
    for col in range(8):
        x = 80 + col * 70
        y = 40 + row * 45
        alien_group.add(Alien((x, y)))

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

    # Alien Formation Logic
    alien_group.update(dt, alien_direction)

    # Check boundaries for any alien in the fleet
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

    # Drop fleet down if boundary hit
    if move_down:
        for alien in alien_group.sprites():
            alien.rect.y += 18

    # Step 3: Render / Draw Frame
    screen.fill(COLOR_BG)

    laser_group.draw(screen)
    player_group.draw(screen)
    alien_group.draw(screen)

    pygame.display.flip()

# 5. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Update main.py Script:**
   Replace your script with the complete code above introducing `alien_direction` and fleet boundary detection.


2. **Run & Observe Fleet Motion:**
   Execute `python main.py` in your terminal.


3. **Verify Formation Bouncing:**
   Watch the entire grid of aliens move horizontally across the screen, bounce off the edges, and step down towards the player!


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `break` ၼႂ်း Boundary Checking

မိူဝ်ႈႁဝ်း ၵူတ်ႇထႅတ်ႈ (Check) Boundaries တီႈ `for alien in alien_group.sprites():` ၼၼ်ႉ၊ ႁဝ်းၸႂ်ႉ **`break`** သေ တိူင်ႉမၵ်းမၼ်ႈ ၵမ်းလဵဝ် မိူဝ်ႈထူပ်း Alien တူဝ်ၼိုင်ႈတူဝ် တူၵ်းၺႃး ၶွပ်ႇ Screen!
လွၵ်းလၢႆးၼႆႉ တေႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈ `alien_direction` တူၵ်း Bouncing Switch မုၼ်းၵႂႃႇ မုၼ်းမႃး ၼမ်ပူၼ်ႉမၢၵ်ႈ (Multiple Toggle Bug) ၼႂ်း Frame လဵဝ်ၵၼ် ၶႃႈ!