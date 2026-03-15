# Lesson 79: Performance Profiling Basics

### 1. တၢင်းၽႂ်းမီးၽွၼ်းလီသင်?

* **User Experience:** ၵူၼ်းၸႂ်ႉတေသိူဝ်းၸႂ်။
* **SEO (Google):** Google တေပၼ် Rank သုင်သုင် ၸူး Website ဢၼ်လႅၼ်ႈၽႂ်း။
* **Conversion:** ၸဝ်ႈၵဝ်ႇတေၶၢႆၶူဝ်းလႆႈၼမ်လိူဝ် တီႈ Website ဢၼ်ဢမ်ႇ Lag။

### 2. Lighthouse (ၶိူင်ႈတႅၵ်ႈတၢင်းၽႂ်း)

ၼႂ်း Chrome DevTools မီး Tool ၼိုင်ႈဢၼ်ႁွင်ႉဝႃႈ **Lighthouse**။ မၼ်းတေတႅၵ်ႈတူၺ်း Website ၸဝ်ႈၵဝ်ႇသေ ပၼ် "ၶႅပ်းၼင်" (Score) 0-100 ၶႃႈ။

**Metrics လမ်ႇလွင်ႈ:**

* **LCP (Largest Contentful Paint):** ႁၢင်ႈၽၢင်ဢၼ်ယႂ်ႇသုတ်း ၼႄၵိူတ်ႇၶိုၼ်ႈၽႂ်းၵႃႈႁိုဝ်။
* **FID (First Input Delay):** မိူဝ်ႈၵူၼ်းၼဵၵ်းပုမ်ႇ၊ Browser ႁပ်ႉႁူႉၽႂ်းၵႃႈႁိုဝ်။
* **CLS (Cumulative Layout Shift):** ၼႃႈလိၵ်ႈ "သၼ်ႇ" (Jump) ၵႂႃႇမႃးႁႃႉ မိူဝ်ႈတိုၵ်ႉလူတ်ႇယူႇ။

---

### 3. Performance Tab (Profiling)

သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈႁူႉဝႃႈ "ၵူတ်ႉ JS ထႅဝ်လႂ်" ဢၼ်ႁဵတ်းႁႂ်ႈ Website ဢืดႃႉ၊ တေလႆႈၸႂ်ႉ **Performance Tab** ၶႃႈ။

1. ၼဵၵ်းပုမ်ႇ **Record**။
2. တူင်ႉၼိုင်ၼိူဝ် Website ဢိတ်းၼိုင်ႈ။
3. ၼဵၵ်း **Stop**။
4. တူၺ်း **Flame Chart**: မၼ်းတေၼႄဝႃႈ Function တူဝ်လႂ်ၵိၼ်ၶိင်ႇ CPU ႁိုင်သုတ်း။

---

### 4. လၢႆးႁဵတ်းႁႂ်ႈ Website ၽႂ်း (Optimization)

* **Image Optimization:** ယႃႇပေၸႂ်ႉႁၢင်ႈဢၼ်ယႂ်ႇၼႃႇ (MB)၊ လႅၵ်ႈပဵၼ် `.webp` ႁိုဝ် `.jpg` ဢၼ်ဢွၼ်ႇ။
* **Lazy Loading:** ႁႂ်ႈႁၢင်ႈၽၢင်လူတ်ႇ မိူဝ်ႈႁဝ်း Scroll ၵႂႃႇၽႅဝ်တီႈမၼ်းၵူၺ်း။
* **Minification:** တႅၼ်းၵၢၼ်တေၸႂ်ႉ CSS/JS ဢၼ်မီး Space ၼမ်၊ ၸႂ်ႉ Vite တႃႇ "ၶႅၼ်" (Compress) ၵူတ်ႉႁႂ်ႈပဵၼ်ထႅဝ်လဵဝ်။
* **Avoid Blocky JS:** ယႃႇပေႁဵတ်း Loop ဢၼ်ယႂ်ႇၼႃႇၼႂ်း Main Thread၊ မၼ်းတေႁဵတ်းႁႂ်ႈ UI ၵိုတ်း (Freeze)။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **"Premature optimization is the root of all evil"**: ယႃႇပိုင်ႈ "ၵႄႈ" တၢင်းၽႂ်း သင်ၸဝ်ႈၵဝ်ႇတိုၵ်ႉတႅမ်ႈၵူတ်ႉဢမ်ႇယဝ်ႉ။ တႅၵ်ႈတူၺ်း (Measure) ဢွၼ်တၢင်း ၸင်ႇၵႄႈၶႃႈ။
* ၸႂ်ႉ **Lighthouse** ပဵၼ်ၵၢၼ်ငၢၼ်းပိုၼ်ႉထၢၼ် ဢွၼ်တၢင်းတေ Launch Website တႃႇသေႇ။
* ၵၢၼ်လႅၵ်ႈလၢႆႈဢွၼ်ႇဢွၼ်ႇ (မိူၼ်ၼင်ႇ လႅၵ်ႈ Size ႁၢင်ႈၽၢင်) ၸၢင်ႈႁဵတ်းႁႂ်ႈ Website ၽႂ်းၶိုၼ်ႈ 2-3 ပၼ်ႇၶႃႈ။

---