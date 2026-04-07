# Lesson 24: "DELETE Mapping (Removing Data)" (ၵၢၼ်လူတ်းၶေႃႈမုၼ်းလိၵ်ႈတႆး)

ၼႂ်း REST API ၼၼ်ႉ **DELETE** ပဵၼ် Method ဢၼ်ႁဝ်းၸႂ်ႉတွၼ်ႈတႃႇ "ယႃႉပႅတ်ႈ" (Destroy/Remove) ၶေႃႈမုၼ်းဢၼ်မီးဝႆႉယူႇၼႂ်း Database ၶႃႈ။ 
မိူၼ်ၼင်ႇ ႁဝ်းသႂ်ႇၶေႃႈၵႂၢမ်းၽိတ်းၼမ်လိူဝ်ပူၼ်ႉတီႈ သေၶႂ်ႈလူတ်းပႅတ်ႈႁႂ်ႈ Database ႁဝ်းဝဝ်မႃးၼၼ်ႉၶႃႈ။

### 1. ၵွပ်ႈသင် DELETE ၸင်ႇငၢႆႈလိူဝ်ပိူၼ်ႈ?
* **GET/DELETE:** ႁဝ်းၵူၺ်းလူဝ်ႇသူင်ႇ **ID** ၵႂႃႇၸွမ်း URL ၵူၺ်း၊ ဢမ်ႇလူဝ်ႇသူင်ႇ JSON Body ၵႂႃႇၸွမ်းၶႃႈ။
* **Success Response:** မိူဝ်ႈလူတ်းယဝ်ႉတူဝ်ႈ ႁဝ်းၵႆႉတွပ်ႇပၼ် Status `204 No Content` မၢႆထိုင်ဝႃႈ "လူတ်းယဝ်ႉယဝ်ႉ၊ ဢမ်ႇမီးသင်တေၼႄပၼ်ယဝ်ႉ" ၼႆၶႃႈ။



---

### 2. ၵၢၼ်တႅမ်ႈ Code ၼႂ်း `WordController`
ႁဝ်းၶူင်သၢင်ႈ Method ၼႆႉၶဝ်ႈၵႂႃႇၼႂ်း `WordController` ၶႃႈ:

```java
@DeleteMapping("/{id}")
public ResponseEntity<Void> deleteWord(@PathVariable Long id) {
    // 1. ႁွင်ႉၸႂ်ႉ Service တွၼ်ႈတႃႇလူတ်းၶေႃႈမုၼ်း
    wordService.delete(id);
    
    // 2. တွပ်ႇပၼ် Status 204 No Content (မၢႆထိုင်ဝႃႈ လူတ်းယဝ်ႉယဝ်ႉ)
    return ResponseEntity.noContent().build();
}
```

---

### 3. Annotation ဢၼ်လမ်ႇလွင်ႈ
* **`@DeleteMapping("/{id}")`**: မၵ်းမၼ်ႈဝႃႈ Method ၼႆႉ တေႁပ်ႉ Request ပဵၼ် DELETE တွၼ်ႈတႃႇလူတ်းၶေႃႈမုၼ်းလူၺ်ႈၸႂ်ႉ ID ၶႃႈ။
* **`ResponseEntity`**: ၼႆႉပဵၼ် Object ဢၼ် Spring Boot ၸႂ်ႉတွၼ်ႈတႃႇ "ၵုမ်းၵမ်" (Control) ၶေႃႈတွပ်ႇ (Response) ႁဝ်း ႁႂ်ႈႁဝ်းမၵ်းမၼ်ႈ Status Code (204, 404, 200) လႆႈႁင်းၵူၺ်းၶႃႈ။



---

### 4. လၢႆးႁဵတ်းၵၢၼ်ၶွင် DELETE Request
မိူဝ်ႈ User သူင်ႇ Request မႃးၸူး `http://localhost:8081/api/words/5`:
1.  **URL:** `/api/words/5` (လူတ်းတူဝ် ID = 5)
2.  **Method:** DELETE
3.  **Spring Boot** တေႁွင်ႉၸႂ်ႉ `wordRepository.deleteById(5)`။
4.  သင်မီး ID ၼၼ်ႉယူႇတႄႉ မၼ်းတေလူတ်းပႅတ်ႈၼႂ်း MySQL သေ တွပ်ႇပၼ်ၶိုၼ်းပဵၼ် Status **204** ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **No Content (204):** HTTP Status Code ဢၼ်မၢႆထိုင်ဝႃႈ ၵၢၼ်ႁဵတ်းယဝ်ႉတူဝ်ႈလီ ၵူၺ်းၵႃႈဢမ်ႇမီးၶေႃႈမုၼ်းသင်တေတွပ်ႇပၼ် (Empty Response)။
* **Idempotent (DELETE):** DELETE ပဵၼ် Idempotent မၢႆထိုင်ဝႃႈ သင်ႁဝ်းလူတ်း ID 5 ပွၵ်ႈၼိုင်ႈယဝ်ႉသေ ၵႂႃႇလူတ်းထႅင်ႈ ပွၵ်ႈသွင်ၼႆ ၽွၼ်းလႅၼ်ႈၼႂ်း Database ၵေႃႈတေမိူၼ်ၵဝ်ႇ (ID 5 ႁၢႆၵႂႃႇယဝ်ႉ)။
* **Soft Delete vs Hard Delete:** * **Hard Delete:** လူတ်းပႅတ်ႈတႄႉတႄႉၼႂ်း DB (ဢၼ်ႁဝ်းတိုၵ်ႉႁဵတ်းယူႇၼႆႉၶႃႈ)။
    * **Soft Delete:** မၢႆတွင်းဝႃႈ "လူတ်းယဝ်ႉ" ၵူၺ်းၵႃႈၶေႃႈမုၼ်းယင်းမီးဝႆႉယူႇ (ၸႂ်ႉ Column `is_deleted`)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်းၵႂႃႇလူတ်း ID ဢၼ်ဢမ်ႇမီးဝႆႉၼႂ်း Database (မိူၼ်ၼင်ႇ: ID = 9999) ၼႆ App ႁဝ်းတေပဵၼ်ၸိူင်ႉႁိုဝ်? (တေပဵၼ် Error ႁႃႉ ဢမ်ႇၼၼ် တေလႅၼ်ႈၵႂႃႇလႆႈယူႇ?)
2.  ၵွပ်ႈသင်ႁဝ်းၸင်ႇၸႂ်ႉ **`ResponseEntity<Void>`** တႅၼ်းတၢင်ၵၢၼ်ၸႂ်ႉ **`WordDTO`** ၼႂ်း Method DELETE?