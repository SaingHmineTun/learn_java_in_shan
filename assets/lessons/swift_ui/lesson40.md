

## **Module 5 | Project 5: Real-time Crypto & Market Tracker**

### **1. ယိူင်းဢၢၼ်း (Goal)**

သၢင်ႈ App ဢၼ်မီး "Market Dashboard" တႃႇတူၺ်းၵႃႈၶၼ် Coin:

* **Networking Service:** ၸႂ်ႉ `URLSession` တႃႇလူတ်ႇ Data လုၵ်ႉတီႈ CoinGecko API (ဢမ်ႇၼၼ် Mock API)။
* **ViewModel:** ၸႂ်ႉ `@Observable` တႃႇၸတ်းၵၢၼ် Data လႄႈ API States (Loading, Success, Failed)။
* **AsyncImage:** ၼႄ Logo ၶွင် Coin ၵူႈဢၼ်ဢၼ်။
* **Real-time Logic:** မီးပုမ်ႇ Refresh တႃႇလူတ်ႇ Data မႂ်ႇ။

---

### **2. Solution Code (တူဝ်ယၢင်ႇ Code)**

```swift
import SwiftUI
import Observation

// 1. Data Model
struct Coin: Codable, Identifiable {
    let id: String
    let symbol: String
    let name: String
    let image: String
    let current_price: Double
    let price_change_percentage_24h: Double
}

// 2. ViewModel
@Observable
class CryptoViewModel {
    var coins: [Coin] = []
    var isLoading = false
    var errorMessage: String? = nil
    
    func fetchMarketData() async {
        isLoading = true
        errorMessage = nil
        
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=10&page=1&sparkline=false"
        guard let url = URL(string: urlString) else { return }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedCoins = try JSONDecoder().decode([Coin].self, from: data)
            self.coins = decodedCoins
            self.isLoading = false
        } catch {
            self.errorMessage = "Failed to load data. Please try again."
            self.isLoading = false
        }
    }
}

// 3. Main View
struct CryptoTrackerView: View {
    @State private var viewModel = CryptoViewModel()
    
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.isLoading {
                    ProgressView("Fetching Market...")
                } else if let error = viewModel.errorMessage {
                    VStack {
                        Image(systemName: "wifi.exclamationmark").font(.largeTitle)
                        Text(error).padding()
                        Button("Retry") { Task { await viewModel.fetchMarketData() } }
                    }
                } else {
                    List(viewModel.coins) { coin in
                        HStack(spacing: 15) {
                            AsyncImage(url: URL(string: coin.image)) { img in
                                img.resizable().scaledToFit()
                            } placeholder: {
                                Circle().fill(.secondary.opacity(0.2))
                            }
                            .frame(width: 40, height: 40)
                            
                            VStack(alignment: .leading) {
                                Text(coin.name).font(.headline)
                                Text(coin.symbol.uppercased()).font(.caption).foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .trailing) {
                                Text("$\(coin.current_price, specifier: "%.2f")").font(.subheadline).bold()
                                Text("\(coin.price_change_percentage_24h, specifier: "%.2f")%")
                                    .font(.caption)
                                    .foregroundColor(coin.price_change_percentage_24h >= 0 ? .green : .red)
                            }
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("TMK Crypto Market")
            .toolbar {
                Button { Task { await viewModel.fetchMarketData() } } label: {
                    Image(systemName: "arrow.clockwise")
                }
            }
            .task {
                await viewModel.fetchMarketData()
            }
        }
    }
}

```

---

### **3. Summary**

| Feature | SwiftUI Concept Used (Shan) |
| --- | --- |
| **API Fetching** | ၸႂ်ႉ `URLSession` တႃႇဢဝ် Data တေႉတေႉလုၵ်ႉတီႈ Internet။ |
| **JSON Decoding** | လႅၵ်ႈ JSON လုၵ်ႉ API ႁႂ်ႈပဵၼ် Swift `struct`။ |
| **State Management** | ၸႂ်ႉ Enum ဢမ်ႇၼၼ် Variable တႃႇၵုမ်းထိင်း Loading လႄႈ Error။ |
| **UI Updates** | ၸႂ်ႉ `@Observable` တႃႇ Refresh UI ႁင်းမၼ်း မိူဝ်ႈ Data လႅၵ်ႈလၢႆႈ။ |

---