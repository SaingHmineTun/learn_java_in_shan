# Lesson 70: "Server Tuning: Buffer Pools and Memory Basics"

MySQL ဢမ်ႇလႆႈလူၶေႃႈမုၼ်းၼႂ်း Disk (Hard drive) ၵူႈပွၵ်ႈၶႃႈ။ ၵွပ်ႈ သင်လူတီႈ Disk ၼႆ မၼ်း "ထိူင်း" (Slow) ႁႅင်းၼႃႇၶႃႈ။ 
မၼ်းတေဢဝ်ၶေႃႈမုၼ်း ဢၼ်ၸႂ်ႉၼမ်ၼၼ်ႉ မႃးသိမ်းဝႆႉၼႂ်း **RAM** ဢွၼ်တၢင်းၶႃႈ။

### 1. InnoDB Buffer Pool (ဢွင်ႈတီႈသိမ်းၶေႃႈမုၼ်းၼႂ်း RAM)
ၼႆႉပဵၼ် "ၵႅၼ်ၸႂ်" ႁင်း Performance ၼႂ်း InnoDB ၶႃႈ။ **Buffer Pool** မၢႆထိုင် ဢွင်ႈတီႈၼႂ်း RAM ဢၼ် MySQL ၸႂ်ႉတႃႇသိမ်း:
* **Data Pages:** ၶေႃႈမုၼ်းတႄႉတႄႉ ၼႂ်း Table။
* **Indexes:** သဵၼ်ႈမၢႆတႃႇသွၵ်ႈႁႃ။



* **Rule of Thumb:** သင် Server ၸဝ်ႈၵဝ်ႇ မီးဝႆႉတႃႇ Database ၵူၺ်းၼႆ ၸဝ်ႈၵဝ်ႇထုၵ်ႇလီပၼ် Buffer Pool **50% ထိုင် 80%** ႁင်း RAM တင်းမူတ်းၶႃႈ။
* **Command:** `SET GLOBAL innodb_buffer_pool_size = 4G;` (သင်မီး RAM 8G)။

### 2. Why RAM is Faster than Disk?
ဝူၼ်ႉတူၺ်း "ၵၢၼ်ႁႃပပ်ႉလိၵ်ႈ" ၶႃႈ...
* **Disk:** မိူၼ်ၵၢၼ်လႅၼ်ႈၵႂႃႇႁႃပပ်ႉၼႂ်း "ႁူင်းတူၺ်းလိၵ်ႈ" (Library) ဢၼ်ယူႇၵႆၵႆ။
* **RAM (Buffer Pool):** မိူၼ်ၵၢၼ်ဢဝ် ပပ်ႉလိၵ်ႈၼၼ်ႉဝႆႉ "ၼိူဝ်ၽိူၼ်" ၸဝ်ႈၵဝ်ႇၵမ်းလဵဝ်။ ၶႂ်ႈပိုတ်ႇလူမိူဝ်ႈလႂ်ၵေႃႈ လႆႈၵမ်းလဵဝ်ၶႃႈ။

### 3. Log Buffer (ၵၢၼ်သိမ်း Transaction)
မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ `INSERT/UPDATE` ၼၼ်ႉ MySQL တေဢမ်ႇၵႂႃႇတႅမ်ႈသႂ်ႇၼႂ်း Disk ၵမ်းလဵဝ် (ၵွပ်ႈမၼ်းထိူင်း) ၶႃႈ။ မၼ်းတေတႅမ်ႈဝႆႉၼႂ်း **Log Buffer** (RAM) ဢွၼ်တၢင်းသေ ၸင်ႇၵွႆႈသူင်ႇၵႂႃႇတီႈ Disk ၸွမ်းၼင်ႇ ၶၢဝ်းယၢမ်း (မိူၼ်ၼင်ႇ ၵူႈ 1 ၸႅတ်ႉၵႅၼ်ႉ) ၶႃႈ။
* **Variable:** `innodb_log_buffer_size`

### 4. Connection Buffer (Memory တွၼ်ႈတႃႇ User ၵူႈၵေႃႉ)
ၵူႈပွၵ်ႈ သင်မီး User (ဢမ်ႇၼၼ် App Flutter) ၵွင်ႉ (Connect) ၶဝ်ႈမႃးၼႆ MySQL တေၸႅၵ်ႇ Memory တွၼ်ႈဢွၼ်ႇၼိုင်ႈ (မိူၼ်ၼင်ႇ `sort_buffer_size`) ပၼ် User ၵေႃႉၼၼ်ႉၶႃႈ။
* **Warning:** သင်ၸဝ်ႈၵဝ်ႇပၼ် Memory တွၼ်ႈၼႆႉ ယႂ်ႇလူၼ်ႉၵႂႃႇ (မိူၼ်ၼင်ႇ 64MB တႃႇ 1 Connection) သေမီးၵူၼ်းၶဝ်ႈမႃး 100 ၵေႃႉၼႆ RAM ၸဝ်ႈၵဝ်ႇတေ "တဵမ်" (Exhausted) သေ ၸၢင်ႈႁဵတ်းႁႂ်ႈ Server ၶႅင်ၵႂႃႇလႆႈၶႃႈၼႃႈ။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Server Tuning
* **Don't Over-allocate:** ယႃႇပၼ် Memory တေႃႇ MySQL ၼမ်လိူဝ် RAM တႄႉ ဢၼ်ၸဝ်ႈၵဝ်ႇမီး၊ ၵွပ်ႈမၼ်းတေႁဵတ်းႁႂ်ႈ OS ၸႂ်ႉ "Swap" သေ Database တေထိူင်းလိူဝ်ၵဝ်ႇၶႃႈ။
* **Restart Required:** ၵၢၼ်လႅၵ်ႈလၢႆႈ Variable လွင်ႈယႂ်ႇ မၢင်ပွၵ်ႈတေလႆႈႁဵတ်း Restart ပၼ် MySQL Server ၸင်ႇတေႁဵတ်းၵၢၼ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Buffer Pool:** Memory ဢၼ်လွင်ႈယႂ်ႇသုတ်း တႃႇသိမ်း Data လႄႈ Index။
* **Throughput:** တၢင်းၼမ်ၵၢၼ်ႁဵတ်းၵၢၼ် ဢၼ် Database ႁဵတ်းလႆႈၼႂ်း 1 ၸႅတ်ႉၵႅၼ်ႉ။
* **Warm-up Period:** ၶၢဝ်းယၢမ်းဢၼ် MySQL တိုၵ်ႉဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉ Disk ၶိုၼ်ႈမႃးသိမ်းၼႂ်း RAM (ဝၢႆး Restart)။
* **Swapping:** ၵၢၼ်ဢဝ် Disk မႃးၸႂ်ႉတႅၼ်း RAM (ထူင်းႁႅင်း လႄႈ ထုၵ်ႇလီႁႄႉၵင်ႈ)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင် Server ၸဝ်ႈၵဝ်ႇမီး RAM 4GB... ၸဝ်ႈၵဝ်ႇထုၵ်ႇလီပၼ် **`innodb_buffer_pool_size`** ၵႃႈလၢႆၶႃႈ?
2.  ႁဵတ်းသင်လႄႈ ၵၢၼ်လူၶေႃႈမုၼ်းၼႂ်း **RAM** ဝႆးလိူဝ် **Disk** ၶႃႈ?
3.  သင်ၸဝ်ႈၵဝ်ႇပၼ် Memory ပၼ် Connection ၵေႃႉပၼ်ၵေႃႉ ၼမ်လူၼ်ႉၵႂႃႇ... မၼ်းတေပဵၼ်ၽေးသင်ၶႃႈ?

---