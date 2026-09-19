## 17: Capstone Game: Space Invaders

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 17 ၼႆႉ ႁဝ်းတေမႃး **ႁူမ်ႈလေႃး (Consolidate)** တွၼ်ႈၵၢၼ် တင်းသဵင်ႈ ၶွင် Module 2 သေ တႅမ်ႈ ပဵၼ် **Complete Space Invaders Capstone Game** ၶႃႈ!

ၼႂ်း Capstone Project ၼႆႉ ႁဝ်းတေ ဢဝ် OOP Sprite Classes, Custom Timers, Group Collisions, Player Lives System (မၢၵ်ႇႁူဝ်ၸႂ် 3 တူဝ်), Wave Scaling, Game Over Screen, လႄႈ Restart Mechanics မႃး ႁဵတ်းၵၢၼ် ၸွမ်းၵၼ် တီႈ Structured Clean Architecture ၶႃႈ!

---

### 1. Player Lives & Health Management

တွၼ်ႈတႃႇ ႁဵတ်းႁႂ်ႈ Game ႁဝ်း မီး Game Balance ႁၢင်ႈလီ၊ မိူဝ်ႈ Player ၺႃး Alien Laser တူၵ်း :

1. **Decrement Lives:** `lives -= 1`
2. **Clear Alien Lasers:** Clear `alien_laser_group.empty()` ႁႂ်ႈ Player မီး Aisle Time တႃႇ Reset Position.
3. **Check Game Over:** ပေႃး `lives <= 0`၊ မၵ်းမၼ်ႈ `game_active = False` သေ ပိုတ်ႇ Game Over Screen Overlay.

---

### 2. Complete Game Architecture Breakdown

ႁဝ်းတေသၢင်ႈ Structure Modular Logic ပဵၼ် 3 Main Classes လႄႈ Game State Controllers:

* **`Player` (Sprite Class):** Controls spaceship movement, laser cooldowns, and shooting.
* **`Laser` & `AlienLaser` (Sprite Classes):** Moves player and enemy projectiles with auto-pruning (`kill()`).
* **`Alien` (Sprite Class):** Formation grid movement logic.
* **`Game` Manager / Main State Loops:** Handles wave progression, collisions, HUD overlays, and resets.

---

### Step-by-Step: The Complete Space Invaders Capstone Project

ၼႆႉပဵၼ် Clean Standalone Code တွၼ်ႈတႃႇ Module 2 Capstone Project `main.py` ၶႃႈ:

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
pygame.display.set_caption("Capstone Project - Space Invaders")

clock = pygame.time.Clock()
COLOR_BG = (10, 10, 25)
COLOR_WHITE = (255, 255, 255)
COLOR_RED = (255, 60, 60)
COLOR_GOLD = (255, 215, 0)
COLOR_GREEN = (0, 255, 150)

# Fonts
font_ui = pygame.font.Font(None, 36)
font_title = pygame.font.Font(None, 64)

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
        self.speed = 420.0

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
            pygame.draw.polygon(self.image, COLOR_GREEN, [(30, 0), (0, 40), (60, 40)])

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
            pygame.draw.rect(self.image, COLOR_RED, (0, 0, 40, 30))

        self.rect = self.image.get_rect(topleft=pos)
        self.speed = speed

    def update(self, dt, direction):
        self.rect.x += self.speed * direction * dt

# ----------------------------------------------------
# 4. GAME STATE SETUP
# ----------------------------------------------------
laser_group = pygame.sprite.Group()
alien_laser_group = pygame.sprite.Group()
alien_group = pygame.sprite.Group()

player_group = pygame.sprite.GroupSingle()
player = Player((SCREEN_WIDTH // 2, SCREEN_HEIGHT - 60), laser_group)
player_group.add(player)

score = 0
wave = 1
lives = 3
game_active = True
alien_direction = 1
base_alien_speed = 100.0

# Timer Event for Alien Firing
ALIEN_LASER_EVENT = pygame.USEREVENT + 1
pygame.time.set_timer(ALIEN_LASER_EVENT, 750)

def setup_fleet(speed):
    alien_group.empty()
    for row in range(4):
        for col in range(8):
            x = 80 + col * 70
            y = 50 + row * 45
            alien_group.add(Alien((x, y), speed))

setup_fleet(base_alien_speed)

def reset_game():
    global score, wave, lives, game_active, base_alien_speed, alien_direction
    score = 0
    wave = 1
    lives = 3
    base_alien_speed = 100.0
    alien_direction = 1
    laser_group.empty()
    alien_laser_group.empty()
    player.rect.center = (SCREEN_WIDTH // 2, SCREEN_HEIGHT - 60)
    setup_fleet(base_alien_speed)
    game_active = True

# ==========================================
# MAIN GAME LOOP
# ==========================================
running = True
while running:
    dt = clock.tick(60) / 1000.0

    # STEP 1: Event Handling
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                running = False
            if not game_active and event.key == pygame.K_SPACE:
                reset_game()

        # Enemy Shooting Event
        elif event.type == ALIEN_LASER_EVENT and game_active and len(alien_group) > 0:
            random_alien = random.choice(alien_group.sprites())
            alien_laser_group.add(AlienLaser(random_alien.rect.midbottom))

    # STEP 2: Update Game Logic
    if game_active:
        player_group.update(dt)
        laser_group.update(dt)
        alien_laser_group.update(dt)
        alien_group.update(dt, alien_direction)

        # Alien Fleet Boundaries Check
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

        # --- COLLISIONS ---
        # 1. Player Lasers vs Aliens
        collisions = pygame.sprite.groupcollide(laser_group, alien_group, True, True)
        if collisions:
            for lasers, aliens_hit in collisions.items():
                score += len(aliens_hit) * 100

        # 2. Alien Lasers vs Player
        if pygame.sprite.spritecollide(player_group.sprite, alien_laser_group, True):
            lives -= 1
            alien_laser_group.empty()  # Clear pending lasers on hit
            if lives <= 0:
                game_active = False

        # 3. Alien Body Collisions / Invaded Bottom Boundary
        if pygame.sprite.spritecollide(player_group.sprite, alien_group, False):
            game_active = False

        for alien in alien_group.sprites():
            if alien.rect.bottom >= SCREEN_HEIGHT - 60:
                game_active = False

        # --- WAVE PROGRESSION ---
        if len(alien_group) == 0:
            wave += 1
            base_alien_speed += 25.0
            alien_direction = 1
            laser_group.empty()
            alien_laser_group.empty()
            setup_fleet(base_alien_speed)

    # STEP 3: Render / Draw Frame
    screen.fill(COLOR_BG)

    # Draw Game Sprites
    laser_group.draw(screen)
    alien_laser_group.draw(screen)
    player_group.draw(screen)
    alien_group.draw(screen)

    # Draw HUD UI
    score_surf = font_ui.render(f"SCORE: {score}", True, COLOR_WHITE)
    wave_surf = font_ui.render(f"WAVE: {wave}", True, COLOR_WHITE)
    lives_surf = font_ui.render(f"LIVES: {lives}", True, COLOR_RED if lives == 1 else COLOR_WHITE)

    screen.blit(score_surf, (20, 15))
    screen.blit(wave_surf, (SCREEN_WIDTH // 2 - wave_surf.get_width() // 2, 15))
    screen.blit(lives_surf, (SCREEN_WIDTH - 140, 15))

    # Game Over Overlay Screen
    if not game_active:
        over_surf = font_title.render("GAME OVER", True, COLOR_RED)
        sub_surf = font_ui.render("Press SPACE to Restart", True, COLOR_GOLD)

        screen.blit(over_surf, (SCREEN_WIDTH // 2 - over_surf.get_width() // 2, SCREEN_HEIGHT // 2 - 50))
        screen.blit(sub_surf, (SCREEN_WIDTH // 2 - sub_surf.get_width() // 2, SCREEN_HEIGHT // 2 + 20))

    pygame.display.flip()

# 5. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Save Capstone Project:**
   သိမ်းဝႆႉ `space_invaders_capstone.py` တီႈၼႂ်း project folder သူလႄႈ


2. **Run & Test Full Game:**
   Execute လူၺ်ႈ `python space_invaders_capstone.py` တႃႇလဵၼ်ႈ Game ၼႆႉလႄႈ။ 


---

### 🎉 Module 2 Complete!

Module 2 (Space Invaders) ႁဝ်းယဝ်ႉတူဝ်ႈ လီငၢမ်းယဝ်ႉၶႃႈ!