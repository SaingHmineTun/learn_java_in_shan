## Lesson 40: Multithreading (Ping without UI Freeze)

ၼႂ်း JavaFX ၼၼ်ႉ ႁဝ်းမီးပိူင်ဝႆႉဝႃႈ: **"ယႃႇပေႁဵတ်းၵၢၼ်ၼၵ်း (ၼင်ႇ Database/Network) ၼိူဝ် Main UI Thread"** ၶႃႈ။ 
ႁဝ်းတေၸႂ်ႉ Class `Task` တွၼ်ႈတႃႇၸတ်းၵၢၼ်ၶႃႈ။



### 1. Controller Logic Update (`PingController.java`)

ႁဝ်းတေမႄး `handlePing()` ႁႂ်ႈၸႂ်ႉ `Task` တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် Background ၶႃႈ။

```java
@FXML
private void handlePing() {
    // 1. သၢင်ႈ Task တွၼ်ႈတႃႇႁဵတ်းၵၢၼ်ၽၢႆႇလင် (Background)
    Task<Boolean> pingTask = new Task<>() {
        @Override
        protected Boolean call() throws Exception {
            // ႁဵတ်းၵၢၼ်ၼၵ်းၼႂ်းၼႆႉ (UI တေဢမ်ႇၶၢင်)
            Connection conn = DatabaseConnection.getInstance().getConnection();
            return conn != null && !conn.isClosed();
        }
    };

    // 2. မိူဝ်ႈ Task ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ (Success)
    pingTask.setOnSucceeded(e -> {
        boolean result = pingTask.getValue();
        updateUI(result);
    });

    // 3. မိူဝ်ႈ Task မီး Error (Failed)
    pingTask.setOnFailed(e -> {
        updateUI(false);
        System.err.println("❌ Thread Error: " + pingTask.getException().getMessage());
    });

    // 4. တႄႇ Thread မႂ်ႇ တွၼ်ႈတႃႇလႅၼ်ႈ Task ၼၼ်ႉ
    Thread backgroundThread = new Thread(pingTask);
    backgroundThread.setDaemon(true); // ႁႂ်ႈပိတ်းၸွမ်း App မိူဝ်ႈပိတ်း App
    backgroundThread.start();
}
```

---

### 2. Improving UX: Loading State (လွင်ႈပႂ်ႉထတ်း)
တွၼ်ႈတႃႇႁႂ်ႈ User ႁူႉဝႃႈ ပရူဝ်ႇၵရႅမ်းတိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇၼၼ်ႉ ႁဝ်းၸၢင်ႈလႅၵ်ႈသီပဵၼ် **သီလိူင် (Yellow)** မိူဝ်ႈတိုၵ်ႉ Ping ယူႇၶႃႈ။

```java
@FXML
private void handlePing() {
    // ၼႄဝႃႈတိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ (Loading Status)
    connectionStatus.setFill(Color.YELLOW);
    lblStatus.setText("Checking...");

    Task<Boolean> pingTask = new Task<>() {
        @Override
        protected Boolean call() throws Exception {
            // ၸႂ်ႉ Thread.sleep(2000) တွၼ်ႈတႃႇၸမ်းတူၺ်း (Optional)
            return DatabaseConnection.getInstance().getConnection() != null;
        }
    };
    
    // ... setOnSucceeded လႄႈ setOnFailed ...
    new Thread(pingTask).start();
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Multithreading)

* **`Task<V>`**: ပဵၼ် Class ၼႂ်း JavaFX ဢၼ်ၸတ်းၵၢၼ် Background Work လႆႈငၢႆႈသုတ်း။ မၼ်းမီး Method ၼင်ႇ `setOnSucceeded` ဢၼ်တေလႅၼ်ႈၼိူဝ် UI Thread ႁင်းၵူၺ်းမၼ်း မိူဝ်ႈၵၢၼ်ယဝ်ႉၶႃႈ။
* **`setDaemon(true)`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇၶႃႈ။ သင်ႁဝ်းဢမ်ႇသႂ်ႇဝႆႉၼႆ မိူဝ်ႈႁဝ်းပိၵ်ႉ App ယဝ်ႉ Thread ၼၼ်ႉတေယင်းတိုၵ်ႉလႅၼ်ႈယူႇၼႂ်း Computer ႁဝ်း (Zombie process) ၶႃႈ။
* **UI Thread Safety**: ၼႂ်း `call()` Method ၼၼ်ႉ ႁဝ်း **"ဢမ်ႇၸၢင်ႈ"** မႄး UI (ၼင်ႇ `lblStatus.setText`) လႆႈၵမ်းလဵဝ်ၶႃႈ။ လူဝ်ႇမႄးၼႂ်း `setOnSucceeded` ၵူၺ်းၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **Main Thread**: တွၼ်ႈတႃႇၼႄ UI။
* **Background Thread**: တွၼ်ႈတႃႇႁဵတ်းၵၢၼ်ၼၵ်း (Database/Ping)။
* **Task**: တူဝ်ၵွင်ႉသၢၼ် (Bridge) ၵႄႈ Thread သွင်ဢၼ်ၶႃႈ။
