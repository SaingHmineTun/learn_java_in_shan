## Lesson 79: Data Visualization (PieCharts)

ၼႂ်း JavaFX, `PieChart` ပဵၼ် UI Component ဢၼ်ၸၢင်ႈၼႄၶေႃႈမုၼ်းလၢႆးၼပ်ႉ (Statistics) ႁႂ်ႈၵူၼ်းလူလႆႈငၢႆႈၶႃႈ။

### 1. SQL Query for Statistics (ၵၢၼ်ၼပ်ႉၶေႃႈမုၼ်း)
ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇလႆႈၼပ်ႉတူၺ်းဝႃႈ ၼႂ်း Table `transactions` ၼၼ်ႉ မီးပပ်ႉ Category လႂ်ၵႂႃႇယဝ်ႉလၢႆၽိုၼ်ၶႃႈ။

```sql
SELECT b.category, COUNT(t.id) as borrow_count 
FROM transactions t
JOIN books b ON t.book_id = b.id
GROUP BY b.category;
```

---

### 2. Implementation in TransactionDAO.java
ႁဝ်းတေတႅမ်ႈ Method တွၼ်ႈတႃႇႁပ်ႉဢဝ်ၶေႃႈမုၼ်းၸိူဝ်းၼႆႉ မႃးသႂ်ႇၼႂ်း `PieChart.Data` ၶႃႈ။

```java
public ObservableList<PieChart.Data> getGenreStatistics() {
    ObservableList<PieChart.Data> chartData = FXCollections.observableArrayList();
    String sql = "SELECT b.category, COUNT(t.id) as borrow_count " +
                 "FROM transactions t JOIN books b ON t.book_id = b.id " +
                 "GROUP BY b.category";

    try (Connection conn = DBConnection.getInstance().getConnection();
         Statement st = conn.createStatement();
         ResultSet rs = st.executeQuery(sql)) {

        while (rs.next()) {
            // ဢဝ် Category Name လႄႈ Count မႃးသႂ်ႇၼႂ်း PieChart Data
            chartData.add(new PieChart.Data(
                rs.getString("category"), 
                rs.getInt("borrow_count")
            ));
        }
    } catch (SQLException e) { e.printStackTrace(); }
    return chartData;
}
```

---

### 3. UI Implementation (`DashboardController.java`)
ႁဝ်းတေၼႄ PieChart ၼႆႉဝႆႉၼႂ်းၼႃႈလိၵ်ႈ Dashboard ႁဝ်းၶႃႈ။

```java
@FXML
private PieChart genreChart;

private void loadChartData() {
    // 1. ႁွင်ႉဢဝ် Data လုၵ်ႉတီႈ DAO
    ObservableList<PieChart.Data> data = transDAO.getGenreStatistics();
    
    // 2. သႂ်ႇ Data ၶဝ်ႈၼႂ်း Chart
    genreChart.setData(data);
    genreChart.setTitle("ပပ်ႉဢၼ်ၵူၼ်းယိမ်ၼမ်သေပိူၼ်ႈ (Genre Popularity)");
    genreChart.setLegendSide(Side.RIGHT); // ၼႄသဵၼ်ႈမၢႆဝႆႉၽၢႆႇၶႂႃ
}
```



---

### 🎓 Summary for Thung Mao Kham Students

* **Visual Insights**: ၵၢၼ်ၸႂ်ႉ PieChart မၼ်းၸွႆႈႁႂ်ႈ Admin ႁူႉလႆႈၵမ်းလဵဝ်ဝႃႈ လုၵ်ႈႁဵၼ်းၶဝ်သူင်လူပပ်ႉလၢႆးလႂ် (e.g. Programming, Novel, History)။
* **Real-time Stats**: ၵၢၼ်ႁွင်ႉ `loadChartData()` ၵူႈပွၵ်ႈမိူဝ်ႈပိုတ်ႇ App မၼ်းတေႁဵတ်းႁႂ်ႈ Admin ႁူႉလႆႈ Statistics ဢၼ်မႂ်ႇသုတ်းတႃႇသေႇၶႃႈ။
* **Professional Look**: ၵၢၼ်ထႅမ် Charts ၶဝ်ႈၵႂႃႇၼႂ်း Project **TMK Library** ၼႆႉ မၼ်းႁဵတ်းႁႂ်ႈ App ႁဝ်းတူၺ်းလီ လႄႈ မီးၵႃႈၶၼ် (Value) လိူဝ်ၵဝ်ႇၼမ်ၶႃႈ။

ၸဝ်ႈၵဝ်ႇ ပွင်ႇၸႂ်လွင်ႈၵၢၼ်ၸႂ်ႉ **Data Visualization** ၼႆႉယဝ်ႉယူႇႁႃႉၶႃႈ? ပေႃးဢူဝ်ႇၶေႇယဝ်ႉ ႁဝ်းတေၵႂႃႇ **Lesson 80: Reporting (PDF Borrowing Slips)** တွၼ်ႈတႃႇႁဵတ်း "ဝႂ်ယိမ်ပပ်ႉ" ပၼ် Member ၶႃႈၼႃ!