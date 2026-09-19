## 11: Subclassing pygame.sprite.Sprite

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 11 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **Subclassing `pygame.sprite.Sprite**` ၶႃႈ!

မိူဝ်ႈႁဝ်း ႁဵတ်း Game ဢၼ်မီး Objects တၢင်းၼမ် (မိူၼ် Space Invaders ဢၼ်မီး Player, Enemies ၼမ်လိူဝ် 30-50 တူဝ်, လႄႈ Lasers) ၼၼ်ႉ၊ 
ပေႃးႁဝ်း သိုပ်ႇတႅမ်ႈ Variables ၼမ်လၢႆ ၼႂ်း Main Script ၼၼ်ႉ Code ႁဝ်းတေ လူယၢပ်ႇ သေ မႄးယၢပ် ၶႃႈယဝ်ႉ။
တွၼ်ႈတႃႇ ႁဵတ်းႁႂ်ႈ Code ႁဝ်း ပဵၼ် Structural Clean Object-Oriented Programming (OOP)၊ PyGame မီး Base Class **`pygame.sprite.Sprite`** 
ဢၼ်ပၼ် ႁဝ်း Subclass (Inherit) ဢဝ် မႃးၵေႃႇသၢင်ႈ Game Entities Dynamic ၶႃႈ!

---

### 1. ၶေႃႈမၢႆတွင်း Rule ယႂ်ႇ 2 ဢၼ် ၶွင် PyGame Sprite

မိူဝ်ႈႁဝ်း Subclass ဢဝ် `pygame.sprite.Sprite` မႃးၵေႃႇသၢင်ႈ Class မႂ်ႇ (ပိူင်တႅၵ်ႈ: `Player`) ၼၼ်ႉ၊ တေလႆႈမီး Standard Properties 2 ဢၼ်ၼႆႉ **တႃႇသေႇ** ၶႃႈ:

1. **`self.image`:** ဢၼ်ပဵၼ် PyGame `d` Object (Image ဢၼ်တေ Render တီႈ Screen).
2. **`self.rect`:** ဢၼ်ပဵၼ် PyGame `Rect` Object ( Position, Boundaries, လႄႈ Hitbox ၶွင် Sprite).

```python
class Player(pygame.sprite.Sprite):
    def __init__(self, pos):
        # 1. ALWAYS call the parent class constructor first!
        super().__init__()
        
        # 2. Define self.image
        self.image = pygame.image.load("graphics/player.png").convert_alpha()
        self.image = pygame.transform.scale(self.image, (60, 40))
        
        # 3. Define self.rect
        self.rect = self.image.get_rect(center=pos)

```

---

### 2. The `update()` Method

ၼႂ်း Sprite Class ႁဝ်း၊ ႁဝ်းတေ တႅမ်ႈ Function ဢၼ်ပဵၼ် **`def update(self, dt):`** ၶႃႈ।
Function ၼႆႉ တေမီး Duties တႃႇ ၵူတ်ႇထႅတ်ႈ Keyboard Input, Movement Math, လႄႈ Screen Boundary Clamping တင်းသဵင်ႈ ၶွင် Sprite တူဝ်ၼၼ်ႉ ၶႃႈ!

```python
def update(self, dt):
    keys = pygame.key.get_pressed()
    if keys[pygame.K_LEFT] or keys[pygame.K_a]:
        self.rect.x -= 400 * dt
    if keys[pygame.K_RIGHT] or keys[pygame.K_d]:
        self.rect.x += 400 * dt

    # Screen Clamping
    if self.rect.left < 0:
        self.rect.left = 0
    if self.rect.right > 800:
        self.rect.right = 800

```

---

### Step-by-Step: Full Code for Player Sprite Class

ႁဝ်းမႃး တႅမ်ႈ Complete OOP Script ဢၼ်ၸႂ်ႉ `Player` Sprite Class သႂ်ႇ `main.py` ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Space Invaders - Lesson 11: Sprite Class")

clock = pygame.time.Clock()
COLOR_BG = (10, 10, 25)

# ----------------------------------------------------
# 3. PLAYER SPRITE CLASS
# ----------------------------------------------------
class Player(pygame.sprite.Sprite):
    def __init__(self, pos):
        super().__init__()
        # Load image asset (or fallback to procedural surface)
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

# Instantiate Player Object
player = Player((SCREEN_WIDTH // 2, SCREEN_HEIGHT - 60))

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
    player.update(dt)

    # Step 3: Render / Draw Frame
    screen.fill(COLOR_BG)
    
    # Draw Player Surface
    screen.blit(player.image, player.rect)

    pygame.display.flip()

# 4. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Update main.py Script:**
   Replace your script with the OOP `Player` Sprite class architecture shown above.


2. **Run & Test Input:**
   Execute `python main.py` in your terminal.


3. **Verify Player Control:**
   Press `LEFT`/`RIGHT` or `A`/`D` keys to control the spaceship sprite cleanly encapsulated in its own class.


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `super().__init__()`

မိူဝ်ႈႁဝ်း တႅမ်ႈ `super().__init__()` ၼႂ်း `__init__` constructor ၶွင် `Player` ၼၼ်ႉ၊ မၼ်းပဵၼ် ၵၢၼ် ႁွင်ႉ Initialize Internal Tracking Properties တင်းသဵင်ႈ ၶွင် `pygame.sprite.Sprite` Parent Class!
ပေႃးႁဝ်း လိုမ်း သႂ်ႇ `super().__init__()`၊ PyGame တေ ဢမ်ႇ ၸၢင်ႈ ဢဝ် Sprite ၼႆႉ သႂ်ႇၼႂ်း **Sprite Groups** ၼႂ်း Lesson 12 သိုပ်ႇ/ၼႃႈ ၶႃႈ!