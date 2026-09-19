## 13: Firing & Cooldowns

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 13 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **Firing Mechanics & Cooldown Timers** ၶႃႈ!

ၼႂ်း Space Invaders Game ၼႆႉ၊ Player လူဝ်ႇလႆႈ ပိုတ်ႇယိုဝ်း Laser/Bullet တွၼ်ႈတႃႇ ယႃႇလႅဝ် Enemies। 
ၵူၺ်းၵႃႈ ပေႃးႁဝ်း ဢမ်ႇမၵ်းမၼ်ႈ Cooldown Timer ဝႆႉ၊ မိူဝ်ႈ Player တဵၵ်း `SPACE` ဝႆႉၼၼ်ႉ Laser တေ လႅၼ်ႈဢွၵ်ႇ ၼမ်ပူၼ်ႉႁႅင်း (Spam Laser Wall) ႁဵတ်းႁႂ်ႈ Game ဢမ်ႇလဵၼ်ႈၵျေႃႇ ၶႃႈ।

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃး တႅမ်ႈ Class **`Laser`**, လွၵ်းလၢႆး **Off-Screen Memory Pruning (`kill()`)**, လႄႈ **Laser Cooldown Management** လူၺ်ႈ `pygame.time.get_ticks()` ၶႃႈ!

---

### 1. `Laser` Sprite Class & Automatic Memory Pruning (`kill()`)

မိူဝ်ႈ Laser လႅၼ်ႈ ပူၼ်ႉၶွပ်ႇ ၼႃႈၸေႃး ၽၢႆႇၼိူဝ် (`self.rect.bottom < 0`) ၼၼ်ႉ၊ ပေႃးႁဝ်း ဢမ်ႇ ဢဝ်လႅဝ်ပႅတ်ႈမၼ်း၊ Object Laser ၼၼ်ႉ တေ သိုပ်ႇလႅၼ်ႈ ၼႂ်း Memory တႃႇသေႇသေ တေႁဵတ်းႁႂ်ႈ Game ႁဝ်း ထိူင်း (Lag) ၵႂႃႇ ၶႃႈ।

PyGame Sprite မီး Function **`self.kill()`** ဢၼ်တေ Removal ထုတ်ႇဢွၵ်ႇ Sprite တူဝ်ၼၼ်ႉ တီႈ **Sprite Groups တင်းသဵင်ႈ** ဢၼ်မၼ်း ယူႇဝႆႉ သေ Clean Memory ႁႂ်ႈ ႁင်းမၼ်းၶႃႈ:

```python
class Laser(pygame.sprite.Sprite):
    def __init__(self, pos):
        super().__init__()
        self.image = pygame.Surface((4, 15))
        self.image.fill((255, 255, 0)) # Yellow Laser
        self.rect = self.image.get_rect(center=pos)
        self.speed = 600.0

    def update(self, dt):
        self.rect.y -= self.speed * dt
        # Remove laser from memory when off-screen
        if self.rect.bottom < 0:
            self.kill()

```

---

### 2. Laser Cooldown Logic via `pygame.time.get_ticks()`

**`pygame.time.get_ticks()`** တေ Return ပၼ် တူဝ်ၼပ်ႉ Milliseconds တႄႇမိူဝ်ႈ PyGame Start Run မႃး।

ႁဝ်းၸႂ်ႉ System ၼႆႉ တွၼ်ႈတႃႇ မၵ်းမၼ်ႈ Cooldown Delay (ပိူင်တႅၵ်ႈ: `250` ms):

1. **`self.can_shoot = True`:** State တႃႇ ႁူႉဝႃႈ Laser ၸွင်ႇပိုတ်ႇယိုဝ်းလႆႈ।
2. **`self.shoot_time = 0`:** Timestamp ဢၼ် Laser ပိုတ်ႇလႅၼ်ႈ ၵမ်းလိုၼ်းသုတ်း।
3. **`self.cooldown = 250`:** Delay milliseconds ဢၼ်လူဝ်ႇ လႆႈပႂ်ႉ တႃႇယိုဝ်းထႅင်ႈၼိုင်ႈၵမ်း။

```python
# Check if cooldown duration has passed
if not self.can_shoot:
    current_time = pygame.time.get_ticks()
    if current_time - self.shoot_time >= self.cooldown:
        self.can_shoot = True

```

---

### Step-by-Step: Full Code with Firing & Cooldowns

ႁဝ်းမႃး Update တႅမ်ႈ Complete Firing Mechanics Code သႂ်ႇ `main.py` ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Space Invaders - Lesson 13: Firing & Cooldowns")

clock = pygame.time.Clock()
COLOR_BG = (10, 10, 25)

# ----------------------------------------------------
# 3. SPRITE CLASSES
# ----------------------------------------------------
class Laser(pygame.sprite.Sprite):
    def __init__(self, pos):
        super().__init__()
        self.image = pygame.Surface((4, 18))
        self.image.fill((255, 255, 0))  # Yellow Laser
        self.rect = self.image.get_rect(center=pos)
        self.speed = 650.0

    def update(self, dt):
        self.rect.y -= self.speed * dt
        # Destroy laser when it leaves the screen canvas
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

        # Cooldown timer attributes
        self.can_shoot = True
        self.shoot_time = 0
        self.cooldown = 250  # milliseconds between shots

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

        # Shoot input
        if keys[pygame.K_SPACE]:
            self.shoot()

        # Cooldown check
        if not self.can_shoot:
            current_time = pygame.time.get_ticks()
            if current_time - self.shoot_time >= self.cooldown:
                self.can_shoot = True

        # Screen Clamping
        if self.rect.left < 0:
            self.rect.left = 0
        if self.rect.right > SCREEN_WIDTH:
            self.rect.right = SCREEN_WIDTH

# ----------------------------------------------------
# 4. INSTANTIATE GROUPS & SPRITES
# ----------------------------------------------------
laser_group = pygame.sprite.Group()

player_group = pygame.sprite.GroupSingle()
player_group.add(Player((SCREEN_WIDTH // 2, SCREEN_HEIGHT - 60), laser_group))

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

    # Step 3: Render / Draw Frame
    screen.fill(COLOR_BG)

    laser_group.draw(screen)
    player_group.draw(screen)

    pygame.display.flip()

# 5. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Update main.py Script:**
   Replace your script with the code above introducing the `Laser` class and cooldown logic inside `Player`.


2. **Run & Test Firing:**
   Execute `python main.py` in your terminal.


3. **Verify Cooldown & Pruning:**
   Hold down the `SPACE` key to verify lasers spawn with a smooth 250ms delay, and notice they clean up automatically as they fly off-screen.


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `self.kill()`

When `laser.kill()` is invoked, PyGame automatically deletes that instance from `laser_group`. You can verify this by checking `len(laser_group)`—it won't continuously grow, keeping your game's memory footprint footprint small and lightweight!