## 1: Core Engine & Bouncing Ball Setup

မႂ်ႇသုင်ၶႃႈ! ၼႂ်း Lesson 1 ၼႆႉ ႁဝ်းတေတႄႇလဵပ်ႈႁဵၼ်း **libGDX Engine Setup** လႄႈ ၵေႃႇသၢင်ႈ **Bouncing Ball Loop** ၶႃႈ।
မိူဝ်ႈႁဝ်း တေႁဵတ်း Game ႁႂ်ႈမီး Smooth Movement ၼၼ်ႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ Standard Game Loop Lifecycle မႃး ထိင်း Element ၸိူဝ်းမီးၼႂ်း Game ၶႃႈ।
libGDX မီး `ApplicationAdapter` ဢၼ်မီး Functions လၢႆလၢႆဢၼ် မိူၼ်ၼင်ႇ `create()`, `render()`, လႄႈ `dispose()` တႃႇႁႂ်ႈႁဝ်း
ထိင်း Memory လႄႈ Graphics Performance လႆႈလီငၢမ်ႈ ၶႃႈ।

---

### 1. `Gdx.graphics.getDeltaTime()` လႄႈ `ShapeRenderer` ပဵၼ်သင်?

* **`Gdx.graphics.getDeltaTime()`**: ပဵၼ် Function ဢၼ် Return ပၼ် ၶၢဝ်းယၢမ်း (Time in Seconds) ၼႂ်းလွၵ်းသွင် Frame ၶႃႈ। မၼ်းတေ ၵူတ်ႇထတ်း တႃႇသေႇ ၼႂ်း ၵူႈ Frame တႃႇႁႂ်ႈ Velocity Movement ႁဝ်း ၽဵင်ႇၵၼ် ယူႇတီႈ Monitor Refresh Rate ၵူႈ Device ၶႃႈ।
* **`ShapeRenderer`**: ပဵၼ် Class ဢၼ်ၸႂ်ႉ draw Primitive Shapes (Circle, Rectangle, Line) လူၺ်ႈ Hardware Acceleration (OpenGL) ၶႃႈ।
* **Syntax usage:**

```java
// Delta Time
float dt = Gdx.graphics.getDeltaTime();

// Movement Physics
x += velocityX * dt;
y += velocityY * dt;

// Draw Primitive Circle
shapeRenderer.begin(ShapeRenderer.ShapeType.Filled);
shapeRenderer.circle(x, y, radius);
shapeRenderer.end();

```

---

### 2. Ball Movement Math & Screen Clamping

မိူဝ်ႈႁဝ်း ဢဝ် Delta Time (`dt`) မႃး Update Position `x`, `y` ၼၼ်ႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ Bounce Check ႁႄႉဝႆႉ ဢမ်ႇႁႂ်ႈ Ball လွတ်ႈဢွၵ်ႇ ၼႃႈၸေႃႈ (Screen Canvas Boundaries) ၶႃႈ:

```java
// Movement Speed (Pixels per second)
float velocityX = 350f;
float velocityY = 350f;

// Update Logic
x += velocityX * dt;
y += velocityY * dt;

// Bounce Logic (X-Axis Boundary)
if (x - radius <= 0 || x + radius >= Gdx.graphics.getWidth()) {
    velocityX *= -1;
}

// Bounce Logic (Y-Axis Boundary)
if (y - radius <= 0 || y + radius >= Gdx.graphics.getHeight()) {
    velocityY *= -1;
}

```

---

### Step-by-Step: ၵၢၼ် တႅမ်ႈ Bouncing Ball Engine

ႁဝ်းမႃးၸၢမ်း တႅမ်ႈ Core Engine Update Logic ၼႂ်း `BouncingBallGame.java` ၶႃႈ:

```java
package com.tmk.game;

import com.badlogic.gdx.ApplicationAdapter;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;

public class BouncingBallGame extends ApplicationAdapter {
    private ShapeRenderer shapeRenderer;
    
    // Position & Ball properties
    private float x, y;
    private float radius = 25f;
    
    // Velocity (Pixels per second)
    private float velocityX = 350f;
    private float velocityY = 350f;

    @Override
    public void create() {
        // 1. Initialize ShapeRenderer
        shapeRenderer = new ShapeRenderer();
        
        // Center Ball in Window Canvas
        x = Gdx.graphics.getWidth() / 2f;
        y = Gdx.graphics.getHeight() / 2f;
    }

    @Override
    public void render() {
        // STEP 0: Delta Time
        float dt = Gdx.graphics.getDeltaTime();

        // STEP 1: UPDATE GAME LOGIC
        x += velocityX * dt;
        y += velocityY * dt;

        // Bounce Logic - X Axis (Left / Right Boundaries)
        if (x - radius <= 0 || x + radius >= Gdx.graphics.getWidth()) {
            velocityX *= -1;
        }
        
        // Bounce Logic - Y Axis (Bottom / Top Boundaries)
        if (y - radius <= 0 || y + radius >= Gdx.graphics.getHeight()) {
            velocityY *= -1;
        }

        // STEP 2: CLEAR SCREEN (TMK Brand Green Color #1e3a1e)
        Gdx.gl.glClearColor(0.11f, 0.22f, 0.11f, 1f);
        Gdx.gl.glClear(GL20.GL_COLOR_BUFFER_BIT);

        // STEP 3: RENDER / DRAW FRAME (TMK Yellow Color #ffcc00)
        shapeRenderer.begin(ShapeRenderer.ShapeType.Filled);
        shapeRenderer.setColor(new Color(1.0f, 0.8f, 0.0f, 1.0f));
        shapeRenderer.circle(x, y, radius);
        shapeRenderer.end();
    }

    @Override
    public void dispose() {
        // STEP 4: CLEANUP & FREE MEMORY
        shapeRenderer.dispose();
    }
}

```

1. **ပိုတ်ႇ File BouncingBallGame.java:**
   တႅမ်ႈ သႂ်ႇ Variables ပိုၼ်ႉထၢၼ် လႄႈ Setup `ShapeRenderer` ၼႂ်း Lifecycle Methods။
2. **Run Program:**
   Run Project ၼႂ်း IDE ဢမ်ၼ်ၼၼ် လုၵ်ႉတီႈ Terminal သေ ၸႂ်ႉ Command `./gradlew desktop:run` ၶႃႈ।
3. **ၵူတ်ႇထတ်း တူၺ်း ၵၢၼ်တူင်ႉၼိုင်:**
   တူၺ်း လုၵ်ႈၼိဝ်ႉတိုင်ႇ (Ball) ဢၼ်လႅၼ်ႈ လႄႈ Bounce ၼႂ်း 4 ၽၢႆႇ Canvas Boundaries ၶႃႈ।

---

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ Float Precision in Coordinates

libGDX ၸႂ်ႉ တူဝ်ၼပ်ႉ **Float (Floating-point numbers)** တႃႇထိင်း Positioning `x`, `y` တင်းသဵင်ႈ ၶႃႈ।
မိူဝ်ႈႁဝ်း Multiply ၸွမ်း `dt` (ဥပမာ: `350 * 0.016 = 5.6`), Engine တေ ဢဝ် `5.6` Pixels မႃး Update သႂ်ႇ OpenGL Vector Context ႁဵတ်းႁႂ်ႈ Movement Smooth တေႉတေႉ လႄႈ ၽဵင်ႇၵၼ် ၵူႈ Device ၶႃႈ!