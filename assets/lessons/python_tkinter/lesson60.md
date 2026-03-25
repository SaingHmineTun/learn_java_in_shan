## Lesson 60: PDF Generation
**(ၵၢၼ်ပိၼ်ႇႁၢင်ႈ Certificate ႁႂ်ႈပဵၼ် File PDF တႃႇ Print)**

### 1. ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ PDF?
* **Print Quality:** File PDF တေႁဵတ်းႁႂ်ႈတၢင်းယႂ်ႇ (Size) ႁၢင်ႈႁဝ်း မႅၼ်ႈၸွမ်းၼႃႈ **A4** တႅတ်ႈၼႅတ်ႈ၊ ဢမ်ႇယိုတ်း ဢမ်ႇလႅဝ်ၶႃႈ။
* **Professional:** ဝႂ်မၵ်းမၼ်ႈ ဢၼ်ပဵၼ်တူဝ်တႄႉၼၼ်ႉ ၵႆႉသူင်ႇပၼ်လုၵ်ႈႁဵၼ်းပဵၼ် PDF ၶႃႈယဝ်ႉ။
* **Universal:** ပိုတ်ႇၼႂ်း Phone ၵေႃႈလႆႈ၊ Computer ၵေႃႈလႆႈ လူၺ်ႈႁၢင်ႈမၼ်းဢမ်ႇလႅၵ်ႈလၢႆႈၶႃႈ။



---

### 2. လၢႆး Install Tool ဢၼ်လူဝ်ႇၸႂ်ႉ
ႁဝ်းတေၸႂ်ႉ Library ဢၼ်ၸိုဝ်ႈဝႃႈ **`img2pdf`** ယွၼ်ႉမၼ်းပဵၼ် Tool ဢၼ်ဝႆးသုတ်း လႄႈ ဢမ်ႇႁဵတ်းႁႂ်ႈႁၢင်ႈႁဝ်းလႅဝ် (Lossless) ၶႃႈၼႃ။

**Install Command:**
`pip install img2pdf`

---

### 3. တူဝ်ယၢင်ႇ Code (Converting Image to PDF)
ႁဝ်းၸၢမ်းတႅမ်ႈ Function ၼႆႉသႂ်ႇၼႂ်း Project ႁဝ်းတူၺ်းၶႃႈ။ မၼ်းတေဢဝ် File `.png` ႁဝ်းၵႂႃႇပဵၼ် `.pdf` ၵမ်းလဵဝ်ၶႃႈယဝ်ႉ။

```python
import img2pdf
from PIL import Image

def save_as_pdf(image_path, pdf_path):
    try:
        # 1. ပိုတ်ႇ File ႁၢင်ႈဢၼ်ႁဝ်းႁဵတ်းဝႆႉ
        with open(pdf_path, "wb") as f:
            # 2. ပိၼ်ႇႁၢင်ႈၼၼ်ႉ ႁႂ်ႈပဵၼ် PDF Bytes
            # img2pdf တေဢဝ် Dimensions ႁၢင်ႈမႃးမၵ်းမၼ်ႈသႅၼ်းၸေႃႈ ႁင်းမၼ်း
            f.write(img2pdf.convert(image_path))
            
        print(f"Success: Created PDF at {pdf_path}")
    except Exception as e:
        print(f"Error: {e}")

# --- ၸမ်းၸႂ်ႉတူၺ်း ---
# ဢဝ် File PNG ဢၼ်ႁဵတ်းဝႆႉၼႂ်း Lesson 59 မႃးၸႂ်ႉၶႃႈ
save_as_pdf("cert_Sai_Mao.png", "cert_Sai_Mao.pdf")
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`"wb"` (Write Binary):** ယွၼ်ႉ File PDF ပဵၼ် Binary Data၊ ႁဝ်းလူဝ်ႇသႂ်ႇ `b` ၸွမ်း မိူဝ်ႈပိုတ်ႇ File တႃႇတႅမ်ႈၶႃႈၼႃ။
* **Zero Loss:** `img2pdf` ဢမ်ႇမႄး (Re-encode) ႁၢင်ႈႁဝ်းမႂ်ႇ၊ မၼ်းၵူၺ်းဢဝ်ႁၢင်ႈၼၼ်ႉ "ႁေႃႇ" (Wrap) သႂ်ႇၼႂ်း PDF ၵူၺ်း၊ ၵွပ်ႈၼၼ် ႁၢင်ႈတေၸႅင်ႈလီမိူၼ်ၵဝ်ႇ 100% ၶႃႈယဝ်ႉ။
* **Automation:** မိူဝ်ႈႁဝ်းႁဵတ်း **TMK Certificate Generator** တူဝ်တႄႉၼၼ်ႉ ႁဝ်းတေသင်ႇႁႂ်ႈမၼ်းထုတ်ႇတင်း PNG လႄႈ PDF ၸွမ်းၵၼ် ၵမ်းလဵဝ်ၵူၺ်းၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Project** ၼႆႉ:
1.  ႁဝ်းတေၸႂ်ႉ PDF တႃႇႁဵတ်းႁႂ်ႈၶူးသွၼ်ၶဝ် Print ဢွၵ်ႇပၼ်လုၵ်ႈႁဵၼ်းလႆႈငၢႆႈငၢႆႈ။
2.  ႁဝ်းၸၢင်ႈႁဵတ်း Folder ဢွၼ်ႇၼိုင်ႈ ၸိုဝ်ႈဝႃႈ `output/` တႃႇသိမ်း File ၸိူဝ်းၼႆႉ ႁႂ်ႈသႅၼ်ႈသႂ်ၶႃႈယဝ်ႉ။

---