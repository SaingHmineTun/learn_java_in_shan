## 1: Environment Setup & Window Canvas

မႂ်ႇသုင်ႇၶႃႈ! ၼႂ်း Lesson 1 ၼႆႉ ႁဝ်းတေတႄႇလဵပ်ႈႁဵၼ်း တွၼ်ႈထူၼ်ႈၼိုင်ႈ ၶွင် Module 1 (Pong) ဢၼ်ပဵၼ် **Environment Setup & Window Canvas** ၶႃႈ!

မိူဝ်ႈႁဝ်းတေ တႄႇႁဵတ်း Game ၸႂ်ႉတိုဝ်း PyGame ၼၼ်ႉ၊ လွင်ႈ Set up Virtual Environment၊ ၵၢၼ် Install PyGame Library လႄႈ လွင်ႈ ပိုတ်ႇ Window Canvas ဢၼ်ပဵၼ် ၼႃႈဢူၵ်း Game ႁဝ်းၼၼ်ႉ ပဵၼ် ပိုၼ်ႉထၢၼ် ဢၼ်ယႂ်ႇတေႉတေႉၶႃႈ။ 
ပေႃးႁဝ်း ဢမ်ႇ မၵ်းမၼ်ႈ Display Surface ႁႂ်ႈမႅၼ်ႈ၊ Game Window ႁဝ်း တေဢမ်ႇၼိမ် သေ တေဢမ်ႇၸၢင်ႈ Render Graphic လႆႈလီၶႃႈ।

---

### 1. လွင်ႈ Install PyGame Library

ၼႂ်း Python ၼၼ်ႉ PyGame ဢမ်ႇပႃးမႃးၸွမ်း Built-in လႄႈ ႁဝ်းတေလႆႈၸႂ်ႉ `pip` သေ Install သႂ်ႇၼႂ်း Terminal/Command Prompt ၶႃႈ:

```bash
pip install pygame

```

ပေႃး Install ယဝ်ႉတူဝ်ႈယဝ်ႉ၊ ႁဝ်းၸၢင်ႈ ၵေႃႇသၢင်ႈ Script `main.py` သေ Import ၶဝ်ႈမႃး ၸႂ်ႉလႆႈယဝ်ႉၶႃႈ।

---

### 2. ၶေႃႈၵေႃႇသၢင်ႈ Display Surface ၼႂ်း PyGame

မိူဝ်ႈႁဝ်း ႁဵတ်း Game Window ၼၼ်ႉ၊ မီး Functions ပိုၼ်ႉထၢၼ် 3 ဢၼ် ဢၼ်ႁဝ်း တေလႆႈၸႂ်ႉတႃႇသေႇ:

1. **`pygame.init()`:** ပဵၼ် ၵၢၼ် ပိုတ်ႇႁႂ်ႈ PyGame Modules တင်းသဵင်ႈ (Audio, Display, Font) တႄႇႁဵတ်းၵၢၼ်।
2. **`pygame.display.set_mode((width, height))`:** ပဵၼ် ၵၢၼ် မၵ်းမၼ်ႈ Window Canvas Resolution သေ သိုပ်ႇ Render Visual Elements တင်းသဵင်ႈ।
3. **`pygame.display.set_caption("Title")`:** ပဵၼ် ၵၢၼ်သႂ်ႇ ႁူဝ်ၶေႃႈ (Title Bar Text) တီႈ ၼႃႈဢူၵ်း Window Game ႁဝ်း।

---

### Step-by-Step: ၵၢၼ် တႅမ်ႈ Code ပိုတ်ႇ Game Window

ႁဝ်းမႃးၸၢမ်း တႅမ်ႈ Code တွၼ်ႈတႃႇ ပိုတ်ႇ PyGame Window Canvas ဢၼ်တႄႇ သႂ်ႇ Size **800 x 600** ၶႃႈ:

```python
import pygame
import sys

# 1. Initialize PyGame Modules
pygame.init()

# 2. Set Window Resolution (Width, Height)
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))

# 3. Set Window Title
pygame.display.set_caption("Pong - Module 1")

# 4. Basic Event Loop (တႃႇႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈ Window ပိၵ်ႉၵႂႃႇ)
running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    # Fill canvas with black color (RGB: 0, 0, 0)
    screen.fill((0, 0, 0))
    
    # Update display
    pygame.display.flip()

# 5. Clean Exit
pygame.quit()
sys.exit()

```

1. **Install PyGame Package:**
   Open terminal or command prompt and run `pip install pygame` inside your project directory.


2. **Create main.py File:**
   Create a new file named `main.py` and write the initialization script importing `pygame` and `sys`.


3. **Run & Test Window:**
   Execute `python main.py` in your terminal to see a blank 800x600 window titled "Pong - Module 1".


---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ `pygame.display.flip()`

ၼႂ်း PyGame ၼၼ်ႉ မၼ်းၸႂ်ႉ **Double Buffering System** ၶႃႈ။

* **Back Buffer:** တီႈ ဢၼ် PyGame တႅမ်ႈ/Render Shapes လႄႈ Sprites ၼႂ်း Memory။
* **Front Buffer:** ၼႃႈၸေႃႈ (Screen) ဢၼ် Player ႁၼ်ယူႇ ယၢမ်းလဵဝ်။

မိူဝ်ႈႁဝ်း ႁွင်ႉ `pygame.display.flip()` (ဢမ်ႇၼၼ် `pygame.display.update()`) ၼၼ်ႉ၊ PyGame တေ Swap ဢဝ် Back Buffer မႃး ပိုတ်ႇၼႄ တီႈ Front Buffer သေ ႁဵတ်းႁႂ်ႈ Visuals ႁဝ်း ပိုတ်ႇလႅင်း ဢမ်ႇမီး လွင်ႈ Flickering (မၢၵ်ႇတႃ ယိပ်း/မႅပ်ႈ) ၶႃႈ!