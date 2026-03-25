## Lesson 59: The Pillow Library
**(လွၵ်းလၢႆးၸႂ်ႉ Python တႃႇမႄးႁၢင်ႈ လႄႈ တႅမ်ႈလိၵ်ႈသႂ်ႇ Dynamic)**

### 1. Pillow (PIL) ပဵၼ်သင်?
**Pillow** ပဵၼ် Library ဢၼ်ၵျႃႉသုတ်း တႃႇၸတ်းၵၢၼ်ႁၢင်ႈ (Image Processing) ၼႂ်း Python။ မၼ်းၸၢင်ႈ:
* **Open:** ပိုတ်ႇ File ၶႅပ်းႁၢင်ႈ (.png, .jpg)။
* **Draw:** တႅမ်ႈလိၵ်ႈ (Text) ဢမ်ႇၼၼ် သၢႆ (Lines) သႂ်ႇၼိူဝ်ႁၢင်ႈ။
* **Fonts:** ၸႂ်ႉ Font ဢၼ်ႁဝ်းၶႂ်ႈၸႂ်ႉ (တူဝ်ယၢင်ႇ: Panglong Font တႃႇလိၵ်ႈတႆး)။
* **Save:** သိမ်းပဵၼ် File မႂ်ႇ လူၺ်ႈဢမ်ႇႁဵတ်းႁႂ်ႈ File တူဝ်ၵဝ်ႇ (Template) လူႉ။



---

### 2. လၢႆး Install Pillow
ၸၢႆးမၢဝ်း လူဝ်ႇႁႂ်ႈလုၵ်ႈႁဵၼ်းၶဝ် Install ၵွၼ်ႇၶႃႈ:
`pip install Pillow`

---

### 3. တူဝ်ယၢင်ႇ Code (Generating a Certificate)
ႁဝ်းၸၢမ်းတႅမ်ႈ Code ၼႆႉၶႃႈ။ ဢၼ်ၼႆႉတေဢဝ်ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း ၵႂႃႇတႅမ်ႈသႂ်ႇၼႂ်း Template ၶႃႈ။

```python
from PIL import Image, ImageDraw, ImageFont

def create_certificate(student_name, course_name):
    # 1. ပိုတ်ႇႁၢင်ႈ Template (လူဝ်ႇမီး File ၸိုဝ်ႈ 'template.png' ဝႆႉၵွၼ်ႇ)
    template = Image.open("template.png")
    draw = ImageDraw.Draw(template)

    # 2. မၵ်းမၼ်ႈ Font လႄႈ Size (လူဝ်ႇမီး File font 'arial.ttf')
    # တႃႇလိၵ်ႈတႆး ႁဝ်းၸၢင်ႈၸႂ်ႉ "Panglong.ttf" ၶႃႈၼႃ
    font_name = ImageFont.truetype("arial.ttf", 80)
    font_course = ImageFont.truetype("arial.ttf", 50)

    # 3. တႅမ်ႈလိၵ်ႈသႂ်ႇ (ၸႂ်ႉ Coordinate X, Y ဢၼ်ႁဵၼ်းမႃးၼႂ်း Lesson 58)
    # anchor="mm" မၢႆထိုင် ဝၢင်းဝႆႉၵႄႈၵၢင် (Middle-Middle)
    W, H = template.size
    draw.text((W/2, H/2), student_name, fill="black", font=font_name, anchor="mm")
    draw.text((W/2, H/2 + 100), course_name, fill="darkgreen", font=font_course, anchor="mm")

    # 4. သိမ်းပဵၼ် File မႂ်ႇ ၸွမ်းၸိုဝ်ႈလုၵ်ႈႁဵၼ်း
    file_name = f"cert_{student_name.replace(' ', '_')}.png"
    template.save(file_name)
    print(f"Certificate saved as: {file_name}")

# ၸမ်းၸႂ်ႉတူၺ်း
create_certificate("Sai Mao", "Python Android Development")
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`ImageDraw.Draw(template)`**: မိူၼ်ၼင်ႇႁဝ်းဢဝ် "ၵမ်တႅမ်ႈ" မႃးဝႆႉၼိူဝ်ၼႃႈၶႅပ်ႈႁၢင်ႈ ၼင်ႇႁိုဝ်ပေႃးတေတႅမ်ႈလႆႈၶႃႈ။
* **`ImageFont.truetype()`**: ၸွႆႈႁႂ်ႈႁဝ်းလိူၵ်ႈလႆႈ Font ဢၼ်ႁၢင်ႈလီ လႄႈ မၵ်းမၼ်ႈတၢင်းယႂ်ႇ (Size) ၶႃႈယဝ်ႉ။
* **`anchor="mm"`**: ဢၼ်ၼႆႉၵျႃႉတႄႉၶႃႈ! မၼ်းတေၸၼ်လိၵ်ႈႁႂ်ႈယူႇၵၢင် Coordinate (W/2, H/2) ၼၼ်ႉတႅတ်ႈၼႅတ်ႈ ဢမ်ႇဝႃႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်း တေယၢဝ်း ဢမ်ႇၼၼ် တေပွတ်းၵေႃႈယႃႇၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Certificate Generator** ၼၼ်ႉ:
1.  **Pillow** တေပဵၼ်တူဝ်ႁဵတ်းၵၢၼ်ၽၢႆႇလင် (Backend) တႃႇထုတ်ႇဝႂ်မၵ်းမၼ်ႈ။
2.  ႁဝ်းၸၢင်ႈထုတ်ႇဝႂ် 100-200 ဢၼ် ၼႂ်းၶၢဝ်းယၢမ်း 1-2 ၸႅၵ်ႉၵၼ်ႉၵူၺ်းၶႃႈယဝ်ႉ။

---