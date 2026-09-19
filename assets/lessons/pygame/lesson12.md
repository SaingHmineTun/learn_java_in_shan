## 12: Sprite Groups

မႂ်ႇသုင်ၶႃႈ! ၼႂ်း Lesson 12 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **Sprite Groups (`pygame.sprite.Group`)** ၶႃႈ!

ၼႂ်း Lesson 11 ၼၼ်ႉ ႁဝ်းလႆႈ ၵေႃႇသၢင်ႈ Class `Player` ဢၼ် Subclass မႃးတီႈ `pygame.sprite.Sprite` သေ ႁွင်ႉ `player.update()` လႄႈ `screen.blit(player.image, player.rect)` တီႈ Main Loop।

ၵူၺ်းၵႃႈ ပေႃးႁဝ်းမီး Entities တၢင်းၼမ် မိူၼ်ၼႂ်း Space Invaders (Player 1 တူဝ်, Enemies 30-50 တူဝ်, လႄႈ Lasers တၢင်းၼမ်)၊ ပေႃးႁဝ်း ၵႂႃႇႁွင်ႉ `update()` လႄႈ `blit()` တႃႇ ၵူႈ Object ၼိုင်ႈတူဝ် တိၵ်းတိၵ်းၼၼ်ႉ Code ႁဝ်းတေ ၼမ်ႁႅင်းလႄႈ မႄးယၢပ်ႇၶႃႈ।
တွၼ်ႈတႃႇ ၵႄႈပၼ်ႁႃၼႆႉ PyGame မီး **`pygame.sprite.Group`** တွၼ်ႈတႃႇ ႁူမ်ႈ (Group) ဢဝ် Sprites တင်းသဵင်ႈ မႃးဝႆႉ တီႈလဵဝ် ၶႃႈ!

---

### 1. `pygame.sprite.Group` လႄႈ `GroupSingle`

PyGame မီး Class တႃႇ ႁဵတ်း Sprites 2 မဵဝ်း:

1. **`pygame.sprite.Group()`:** တႃႇ သိမ်းဢဝ် Sprites တၢင်းၼမ် (ပိူင်တႅၵ်ႈ: Enemies, Lasers, Particles)।
2. **`pygame.sprite.GroupSingle()`:** တႃႇ သိမ်းဢဝ် Sprite တူဝ်လဵဝ် (ပိူင်တႅၵ်ႈ: Player)।

```python
# Create Group instances
player_group = pygame.sprite.GroupSingle()
player_group.add(Player((400, 540)))

alien_group = pygame.sprite.Group()

```

---

### 2. Powerful Methods: `group.update()` & `group.draw()`

မိူဝ်ႈႁဝ်း ဢဝ် Sprites သႂ်ႇၼႂ်း Group ယဝ်ႉ၊ ႁဝ်း **ဢမ်ႇလူဝ်ႇ** ၸႂ်ႉ `for` loop ၵႂႃႇ Call update ဢမ်ႇၼၼ် blit ၵမ်း တူဝ် ယဝ်ႉၶႃႈ! ႁဝ်းၸႂ်ႉ ၶေႃႈသင်ႇ 2 ဢၼ်ၼႆႉ လႆႈၵမ်းလဵဝ်ၶႃႈ:

1. **`group.update(dt)`:** တေ Automatic ၵႂႃႇ ႁွင်ႉ Method `update(dt)` တီႈ **Sprites တင်းသဵင်ႈ** ဢၼ်မီးၼႂ်း Group ၼၼ်ႉ।
2. **`group.draw(surface)`:** တေ Automatic ဢဝ် `sprite.image` တင်းသဵင်ႈ တီႈ Group ၼၼ်ႉ မႃး Render Blit သႂ်ႇ တီႈ Position `sprite.rect` ပၼ် Display Screen!

```python
# Inside Game Loop
player_group.update(dt)     # Calls update() on all player sprites
alien_group.update(dt)      # Calls update() on all alien sprites

player_group.draw(screen)   # Blits player image at player rect
alien_group.draw(screen)    # Blits all alien images at their rects

```

---

### Step-by-Step: Full Code for Sprite Groups

ႁဝ်းမႃး Update တႅမ်ႈ Complete OOP Code ဢၼ်ၸႂ်ႉ Sprite Groups သႂ်ႇ `main.py` ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Space Invaders - Lesson 12: Sprite Groups")

clock = pygame.time.Clock()
COLOR_BG = (10, 10, 25)

# ----------------------------------------------------
# 3. SPRITE CLASSES
# ----------------------------------------------------
class Player(pygame.sprite.Sprite):
    def __init__(self, pos):
        super().__init__()
        try:
            self.image = pygame.image.load("graphics/player.png").convert_alpha()
            self.image = pygame.transform.scale(self.image, (60, 40))
        except FileNotFoundError:
            self.image = pygame.Surface((60, 40), pygame.SRCALPHA)
            pygame.draw.polygon(self.image, (0, 255, 150), [(30, 0), (0, 40), (60, 40)])

        self.rect = self.image.get_rect(center=pos)
        self.speed = 450.0

    def update(self, dt):
        keys = pygame.key.get_pressed()
        if keys[pygame.K_LEFT] or keys[pygame.K_a]:
            self.rect.x -= self.speed * dt
        if keys[pygame.K_RIGHT] or keys[pygame.K_d]:
            self.rect.x += self.speed * dt

        # Screen Clamping
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

# ----------------------------------------------------
# 4. INSTANTIATE GROUPS & SPRITES
# ----------------------------------------------------
player_group = pygame.sprite.GroupSingle()
player_group.add(Player((SCREEN_WIDTH // 2, SCREEN_HEIGHT - 60)))

alien_group = pygame.sprite.Group()

# Create a 5x4 Grid of Alien Sprites automatically
for row in range(4):
    for col in range(8):
        x = 100 + col * 75
        y = 50 + row * 50
        alien = Alien((x, y))
        alien_group.add(alien)

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

    # Step 2: Update Logic via Groups!
    player_group.update(dt)
    alien_group.update(dt)

    # Step 3: Render / Draw Frame via Groups!
    screen.fill(COLOR_BG)

    player_group.draw(screen)
    alien_group.draw(screen)

    pygame.display.flip()

# 5. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Update main.py Script:**
   Replace your `main.py` code with the updated architecture implementing `pygame.sprite.Group` and `GroupSingle`.

2. **Run & Observe Output:**
   Execute `python main.py` in your terminal.

3. **Verify Group Rendering:**
   Confirm that a grid of 32 alien sprites and your player ship are all rendered and updated with single group method calls!


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `Group.draw()`
မိူဝ်ႈၽွင်း ၸႂ်ႉတိုဝ်း `group.draw(screen)` ၼၼ်ႉ PyGame တေၶူၼ်ႉႁႃပၼ် `self.image` လႄႈ `self.rect` သေ ႁွင်ႉၸႂ်ႉၵႂႃႇႁင်းမၼ်းယဝ်ႉ။
သင်ဝႃႈ class သေဢၼ်ဢၼ် လိုမ်းသႂ်ႇဝႆႉ `self.image` ဢမ်ႇၼၼ် `self.rect` ၼႆၸိုင် PyGame တေႄၼပၼ် Error ဢၼ်ပဵၼ် `AttributeError` ယဝ်ႉ!