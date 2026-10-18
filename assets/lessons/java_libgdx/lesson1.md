## Lesson 1: Downloading gdx-setup.jar and Configuring Tool Parameters

**(ပၢင်သွၼ်: ၵၢၼ် Download gdx-setup.jar လႄႈ မၵ်းမၼ်ႈ Setup Tool Parameters)**

### 1. ပိူင်ဝၢင်း Software (Application Design)

ၼႂ်း Lesson 1 ၼႆႉ ႁဝ်းတေတႄႇလဵပ်ႈႁဵၼ်း **ၵၢၼ် Download လႄႈ မၵ်းမၼ်ႈ Official libGDX Setup Tool (`gdx-setup.jar`)** တႃႇသၢင်ႈ Project Template ဢၼ်မီး Gradle Build Automation System ၶႃႈ:

* **Tool Purpose**: ႁဵတ်းပၼ် Auto-generate Project Files လႄႈ Auto-download Libraries Dependencies တင်းသဵင်ႈ တႃႇ Java Engine ႁဝ်း।
* **Core Parameters**: မၵ်းမၼ်ႈ Name, Package, Game Class, Destination Path, လႄႈ Sub-projects।
* **Optimization**: လိူၵ်ႈဢဝ် **Desktop** Sub-project ဢၼ်လဵဝ် တႃႇႁႂ်ႈ Project Structure ႁဝ်း တူၺ်းငၢႆႊ လႄႈ ႁႂ်ႈ Size မၼ်းလဵၵ်ႉၶႃႈ।

---

### 2. ၵၢၼ် မၵ်းမၼ်ႈ Parameters (Setup Tool Configuration)

မိူဝ်ႈပိုတ်ႇ Run File `gdx-setup.jar` (တဵၵ်း Double-click ဢမ်ႇၼၼ် Run ၼႂ်း Terminal `java -jar gdx-setup.jar`) ႁဝ်းတေလႆႈသႂ်ႇ Parameter values ၼင်ႇၼႆၶႃႈ:

* **Name**: `TMK Game Course` (ၸိုဝ်ႈ Project)
* **Package**: `com.tmk.game` (Package Namespace)
* **Game Class**: `BouncingBallGame` (Main Class ဢၼ် Extends ApplicationAdapter)
* **Destination**: `/path/to/your/project/folder` (Folder တီႈဝႆႉ Code)
* **Android SDK**: *(ဝႆႉ ဝၢင်ႇ/Blank, သင်တေဢမ်ႇႁဵတ်း Android Project)*
* **Sub Projects**: Uncheck All သေ **Check ဢဝ် Desktop ဢၼ်လဵဝ်**
* **Extensions**: Uncheck All (ႁဝ်းတေယိူင်းဢၢၼ်း တႄႇဢဝ် Standard Primitives လႄႈ Pure Code သေႁဵတ်း)

---

### 3. Step-by-Step: ၵၢၼ် Download လႄႈ Generate Project

1. **Download Setup Tool File:**
* ၵႂႃႇတီႈ Website [libgdx.com/dev/setup](https://libgdx.com/dev/setup/?utm_source=gemini) သေ Download ဢဝ် File **`gdx-setup.jar`** သႂ်ႇၼႂ်း Computer ၶႃႈ।

2. **Open Setup GUI Interface:**
* ပိုတ်ႇ Terminal / Command Prompt သေ တႅမ်ႈ Command ၼႆႉသေ Run ၶႃႈ:
```bash
java -jar gdx-setup.jar

```

3. **Fill Parameters & Generate:**
* သႂ်ႇ Parameter Values ၼင်ႇပဵၼ်သေႃႉ တီႈ Section 2 ၼၼ်ႉ သေ တဵၵ်း Button **"Generate"** ၶႃႈ।
* Tool တေ Auto-fetch Download dependencies မႃးသႂ်ႇ ပၼ် ၶႃႈ।



---

### 4. ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ Tool Parameters

* **Package Name (`com.tmk.game`)**: ပဵၼ် Unique Identity ဢၼ်တေၸႂ်ႉ Organize Java Files ၼႂ်း Source Directory ၶႃႈ।
* **Gradle Build Automation**: `gdx-setup.jar` တေ Auto-configure File `build.gradle` ပၼ်သေ ႁဵတ်းႁႂ်ႈႁဝ်း ဢမ်ႇလူဝ်ႇ Manual Download `.jar` Files မႃး Paste သႂ်ႇ Link Path ၼၼ်ႉၶႃႈ!