## Lesson 80: Reporting (PDF Borrowing Slips)

မိူဝ်ႈ Admin ၼဵၵ်းယိမ်ပပ်ႉ (Issue Book) ဢွင်ႇမေႃယဝ်ႉၼၼ်ႉ, System တေလႆႈထႅၵ်ႇဢွၵ်ႇ PDF ဢၼ်မီးၶေႃႈမုၼ်း Member, Book, လႄႈ ဝၼ်းထိႉ ႁႂ်ႈပဵၼ်သၵ်းသီႇ (Evidence) ၶႃႈ။

### 1. Setup iText Dependency
ဢွၼ်တၢင်းသုတ်း ၸဝ်ႈၵဝ်ႇလူဝ်ႇထႅမ် iText 7 ၶဝ်ႈၼႂ်း `pom.xml` (သင်ၸႂ်ႉ Maven) ဢမ်ႇၼၼ် ထႅမ်ၾၢႆႇ `.jar` ၶဝ်ႈၼႂ်း Project ၶႃႈ။

---

### 2. Implementation: PDF Service (`ReportingService.java`)
```xml

<dependency>
    <groupId>com.itextpdf</groupId>
    <artifactId>kernel</artifactId>
    <version>9.5.0</version> <!-- Replace with the desired version -->
</dependency>
<dependency>
    <groupId>com.itextpdf</groupId>
    <artifactId>io</artifactId>
    <version>9.5.0</version> <!-- Replace with the desired version -->
</dependency>
<dependency>
    <groupId>com.itextpdf</groupId>
    <artifactId>layout</artifactId>
    <version>9.5.0</version> <!-- Replace with the desired version -->
</dependency>
```
ႁဝ်းတေတႅမ်ႈ Service တွၼ်ႈတႃႇႁဵတ်းၾၢႆႇ PDF ၶႃႈ။

```java
package top.saimao.service;

import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Paragraph;
import top.saimao.model.Transaction;

import java.io.FileOutputStream;

public class ReportingService {

    public void generateBorrowSlip(Transaction trans, String destPath) {
        try {
            // 1. တႄႇပိုတ်ႇ PDF Writer လႄႈ Document
            PdfWriter writer = new PdfWriter(new FileOutputStream(destPath));
            PdfDocument pdf = new PdfDocument(writer);
            Document document = new Document(pdf);

            // 2. ထႅမ်ႁူဝ်ၶေႃႈ (Title)
            document.add(new Paragraph("THUNG MAO KHAM LIBRARY").setBold().setFontSize(18));
            document.add(new Paragraph("Borrowing Slip (ဝႂ်ယိမ်ပပ်ႉ)"));
            document.add(new Paragraph("-----------------------------------"));

            // 3. ထႅမ်ၶေႃႈမုၼ်း Transaction
            document.add(new Paragraph("Transaction ID: " + trans.getId()));
            document.add(new Paragraph("Member Name: " + trans.getMember().getFullName()));
            document.add(new Paragraph("Book Title: " + trans.getBook().getTitle()));
            document.add(new Paragraph("Issue Date: " + trans.getDate()));
            document.add(new Paragraph("Status: " + trans.getStatus()));

            document.add(new Paragraph("-----------------------------------"));
            document.add(new Paragraph("Please return the book on time. Thank you!"));

            // 4. ပိတ်း Document
            document.close();
            System.out.println("PDF Created: " + destPath);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
```

---

### 3. Integration with UI (`TransactionController.java`)

မိူဝ်ႈ Admin ၼဵၵ်း "Issue Book" ဢွင်ႇမေႃယဝ်ႉ, ႁဝ်းတေႁွင်ႉၸႂ်ႉ PDF Service ၼႆႉၶႃႈ။

```java
@FXML
private void handleIssueBook() {
    // ... Logic ၵၢၼ်ယိမ်ပပ်ႉဢၼ်တႅမ်ႈဝႆႉၼၼ်ႉ
    
    if (transService.issueBook(userId, memberId, bookId)) {
        // ထႅၵ်ႇဢွၵ်ႇ PDF ဝၢႆးလုၵ်ႉတီႈယိမ်ယဝ်ႉ
        Transaction lastTrans = transDAO.findLatest(); // ႁႃသဵၼ်ႈမၢႆၵမ်းလိုၼ်းသုတ်း
        ReportingService reporting = new ReportingService();
        reporting.generateBorrowSlip(lastTrans, "slip_" + lastTrans.getId() + ".pdf");
        
        AlertMaker.showAlert(Alert.AlertType.INFORMATION, "Success", "PDF Generated", "ဝႂ်ယိမ်ပပ်ႉ PDF ဢွၵ်ႇယဝ်ႉယဝ်ႉၶႃႈ!");
        refreshTable();
    }
}
```

---

### 🎓 Summary for Thung Mao Kham Students

* **Professional Reporting**: ၵၢၼ်မီး PDF Report မၼ်းႁဵတ်းႁႂ်ႈ Project **TMK Library** ႁဝ်းတူၺ်းလီ လႄႈ ၸႂ်ႉၵၢၼ်လႆႈတႄႉၼႂ်းႁူင်းႁဵၼ်းၶႃႈ။
* **iText Library**: iText ပဵၼ် Library ဢၼ်ဝႆး လႄႈ ၸႂ်ႉငၢႆႈ တွၼ်ႈတႃႇတႅမ်ႈလိၵ်ႈၶဝ်ႈၼႂ်း PDF လူၺ်ႈၸႂ်ႉ Java Code ၶႃႈ။
* **File Management**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ `FileChooser` တွၼ်ႈတႃႇပၼ် Admin လိူၵ်ႈတီႈသိမ်း (Save Path) ၾၢႆႇ PDF ၼၼ်ႉလႆႈထႅင်ႈၶႃႈ။

ၸဝ်ႈၵဝ်ႇ ပွင်ႇၸႂ်လွင်ႈၵၢၼ်ထႅၵ်ႇဢွၵ်ႇ (Generate) PDF ၼႆႉယဝ်ႉယူႇႁႃႉၶႃႈ? ပေႃးဢူဝ်ႇၶေႇယဝ်ႉ ႁဝ်းတေၵႂႃႇ **Lesson 81: Deployment (.EXE Installer)** တွၼ်ႈတႃႇႁဵတ်းၾၢႆႇ Setup ဢဝ်ၵႂႃႇ Install ၸႂ်ႉၼႂ်း Windows ၶႃႈၼႃ!