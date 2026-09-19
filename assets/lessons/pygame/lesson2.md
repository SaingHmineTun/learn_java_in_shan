
## 2: The Mindset Shift & Game Loop

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 2 ၼႆႉ ႁဝ်းတေလဵပ်ႈႁဵၼ်း **The Mindset Shift & Game Loop** ၶႃႈ။

မိူဝ်ႈႁဝ်း တႅမ်ႈ Script Python ပိုၼ်ႉထၢၼ် (Console App) ၼၼ်ႉ၊ Code ႁဝ်းတေ တႄႇ Run တီႈၼိူဝ် လႅၼ်ႈၵႂႃႇ တီႈတႂ်ႈ သေ ပေႃးတႅမ်ႈ/Print Output ယဝ်ႉ ၵေႃႈ Program တေ ပိၵ်ႉ Quit ၵႂႃႇၶႃႈ။

ၵူၺ်းၵႃႈ ၼႂ်း **Game Development** ၼၼ်ႉ မၼ်းဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ! Game ၼႆႉ မၼ်းလူဝ်ႇ ႁဵတ်းၵၢၼ် တႃႇသေႇ၊ တေလႆႈ ၵေႃႇသၢင်ႈ **Game Loop (Continuous Loop)** ဢၼ်လႅၼ်ႈ 60 ႁွပ်ႈ ၼႂ်း 1 ၸႅၵ်ႉၵၢၼ်ႉ (60 FPS) တွၼ်ႈတႃႇ ႁပ်ႉဢဝ် Input, Update တွၼ်ႈၵၢၼ် လႄႈ Render Visual ၼႃႈၸေႃႈ ယူႇတႃႇသေႇ ၶႃႈ။

---

### 1. ၽၢင်ႁၢင်ႈ ပိုၼ်ႉထၢၼ် ၶွင် Game Loop (The 3 Core Steps)

ၼႂ်း Game Loop ႁဝ်းၼႆႉ တေမီး လွၵ်းလၢႆး ႁဵတ်းၵၢၼ် 3 တွၼ်ႈၼႆႉ ဢၼ်လႅၼ်ႈဝႆႉယူႇ တႃႇသေႇၶႃႈ:

1. **Process Input (Event Handling):** ထူပ်း/ႁပ်ႉဢဝ် Event ဢၼ် Player တဵၵ်း Keyboard, Dynamic Mouse Movement ဢမ်ႇၼၼ် တဵၵ်း ပိၵ်ႉ Window (`pygame.QUIT`)။
2. **Update Game State (Game Logic):** တွၼ်ႈတႃႇ တွၼ်ႈသၢင်ႈ တူဝ်လဵၼ်ႈ (Player Position), Dynamic Physics, Ball Bouncing, လႄႈ Collision Detection။
3. **Render / Draw Frame:** Clean ၼႃႈၸေႃႈၵဝ်ႇ သေ တႅမ်ႈ/Draw Shapes, Sprites ဢၼ်မႂ်ႇ သႂ်ႇ ပိုၼ်ႉထၢၼ် Back Buffer သေ Display Flip မၼ်း မႃး တီႈ Front Screen။

---

### 2. Event Queue ၼႂ်း PyGame (`pygame.event.get()`)

မိူဝ်ႈ Player တဵၵ်း Key ဢမ်ႇၼၼ် တဵၵ်း Mouse ၼၼ်ႉ၊ PyGame တေ ဢဝ် Event ၸိူဝ်းၼၼ်ႉ သႂ်ႇဝႆႉ ၼႂ်း **Event Queue** (ႁႅင်းတွင်းလႅၼ်ႈ) ၶႃႈ।

ႁဝ်းတေလႆႈၸႂ်ႉ `for event in pygame.event.get():` သေ ၵႂႃႇ လတ်းဢဝ် Event တင်းသဵင်ႈ ၼႂ်း Queue မႃး ၵူတ်ႇထႅတ်ႈ (Check) ဝႃႈ Player ႁဵတ်းသင်ၵႂႃႇ ၶႃႈ:

* **`event.type == pygame.QUIT`:** မိူဝ်ႈ Player တဵၵ်း Icon [X] တီႈ Window Title Bar।
* **`event.type == pygame.KEYDOWN`:** မိူဝ်ႈ Player တႄႇတဵၵ်း Key (Keyboard Down)
* **`event.type == pygame.KEYUP`:** မိူဝ်ႈ Player ပွႆႇ Key (Keyboard Release)

---

### Step-by-Step: ၵၢၼ် တႅမ်ႈ Structured Game Loop Code

ႁဝ်းမႃး တႅမ်ႈ Structured Game Loop ဢၼ်ၸိုၼ်ႈလႅင်း သေ မီး Structured Code Engine တႃႇ `main.py` ႁဝ်း ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame
pygame.init()

# 2. Setup Screen Canvas
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Pong - Lesson 2: Game Loop")

# 3. Game State Variables
running = True

# ==========================================
# CORE GAME LOOP
# ==========================================
while running:
    # --------------------------------------
    # STEP 1: PROCESS INPUTS / EVENTS
    # --------------------------------------
    for event in pygame.event.get():
        # Check if user clicked the window close button
        if event.type == pygame.QUIT:
            running = False
            
        # Check for single key press events
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE: # Press ESC to Quit
                running = False

    # --------------------------------------
    # STEP 2: UPDATE GAME LOGIC
    # --------------------------------------
    # (တေဢဝ် Position Physics, Movement Math မႃးသႂ်ႇ တီႈၼႆႈ ၼႂ်း Lesson သိုပ်ႇ/ၼႃႈ)

    # --------------------------------------
    # STEP 3: RENDER / DRAW FRAME
    # --------------------------------------
    # Clear screen with dark blue color (RGB: 15, 15, 35)
    screen.fill((15, 15, 35))

    # Update visual contents to display
    pygame.display.flip()

# 4. Cleanup & Exit Program
pygame.quit()
sys.exit()

```

1. **Open main.py File:**
   Replace your previous `main.py` script with this structured 3-step Game Loop architecture.


2. **Execute Code:**
   Run `python main.py` in your terminal.


3. **Test Event Input:**
   Try pressing the `ESC` key or clicking the window close button `[X]` to verify that the application quits cleanly.


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ PyGame Quit Error Handling

ပေႃးႁဝ်း ဢမ်ႇ သႂ်ႇ `sys.exit()` ၽၢႆႇတႂ်ႈ `pygame.quit()` ၼၼ်ႉ၊ မိူဝ်ႈ Game Loop ယဝ်ႉတူဝ်ႈ (Break `while` loop) ၵႂႃႇယဝ်ႉ Python ၸၢင်ႈ ပိုတ်ႇ Show Error `pygame.error: video system not initialized` ၶႃႈ।
လွင်ႈႁွင်ႉ `sys.exit()` တေႁဵတ်းႁႂ်ႈ Python Interpreter Close/Quit ၵႂႃႇ ႁႂ်ႈ မေးဢဝ် Standard Process မၢၼ်ႇမၢၼ်ႇမႅၼ်ႈမႅၼ်ႈ ၶႃႈ!