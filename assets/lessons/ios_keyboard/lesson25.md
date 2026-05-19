## တွၼ်ႈသွၼ် 25: High-Performance Word Suggestions (Text-File Word Matching)

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေလူတ်ႉဢၢၼ်ႇ Data တူဝ်လိၵ်ႈလုၵ်ႉတီႈ File `.txt` ဢၼ်ပဵၼ် `eng_words.txt`, `shn_words.txt`, လႄႈ `mm_words.txt` ဢၼ်မီးတူဝ်လိၵ်ႈဝႆႉ Line-by-Line သေ
မႃးသၢင်ႈ **Trie Cache Lookup Engine** တွၼ်ႈတႃႇလၢမ်းတူဝ်လိၵ်ႈ (Word Completion Suggestions) ၵမ်းလဵဝ် မိူဝ်ႈ User တိုၵ်ႉတႅမ်ႈလိၵ်ႈ ၼႆယဝ်ႉ။

---

### 1. Memory Buffer Lookup Engine

ၼင်ႇႁိုဝ်ပၵ်းပိူင် Suggestion Engine ႁဝ်းတေဢမ်ႇၸိူင်ႉ Delay လႄႈ ဢမ်ႇၵိၼ်ႁႅင်း Memory ၼမ်ၼၼ်ႉ (Low Latency Real-time Lookup)
ႁဝ်းတေၸႂ်ႉ **Memory Tokenizer Buffered String Mapping** ယဝ်ႉ:

* မိူဝ်ႈ Keyboard `onAppear` မႃးၼၼ်ႉ System တေ Auto-load File `.txt` ၸွမ်းၽႃႇသႃႇဢၼ်လိူၵ်ႈဝႆႉ ၶဝ်ႈၵႂႃႇသိမ်းဝႆႉၼႂ်း In-Memory `Set<String>` (ဢမ်ႇၼၼ် Array) ယဝ်ႉ။
* မိူဝ်ႈ User တႅမ်ႈလိၵ်ႈတူဝ်လႂ်ၵေႃႈယဝ်ႉ System တေထတ်းဢၢၼ်ႇ "တူဝ်လိၵ်ႈတိုၵ်ႉတႅမ်ႈ (Current Typed Word Block)" သေဢဝ်ၵႂႃႇ `hasPrefix` Match တူၺ်း ၼႂ်း Memory Cache ၵမ်းလဵဝ်သေ တေထုတ်ႇဢဝ် 3 တူဝ် ဢၼ်ပဵၼ်ၵႂႃႇလႆႈသုတ်း မႃးၼႄၼိူဝ် Bar ယဝ်ႉ။

---

### 2. ထႅမ်သႂ်ႇ States Properties ၼႂ်း `KeyboardViewModel.swift`

ႁဝ်းလူဝ်ႇမႃးထႅမ်သႂ်ႇ Variables တွၼ်ႈတႃႇ Track တူဝ်လိၵ်ႈတိုၵ်ႉတႅမ်ႈ လႄႈ Array ၶွင်တူဝ်လိၵ်ႈလၢမ်း (Suggestions List) ဝႆႉၼႂ်း `KeyboardViewModel.swift` ၶႃႈ:

```swift
// ၼႂ်း KeyboardViewModel.swift

// MARK: - Lesson 25 Word Suggestion States
@Published var suggestions: [String] = []        // 🛠️ ဢၼ်ၵွတ်ႇၵၢႆႇ 3 တူဝ်လိၵ်ႈလၢမ်း တွၼ်ႈတႃႇၼႄၼိူဝ် Bar
@Published var currentTypedWord: String = ""      // 🛠️ တူဝ်လိၵ်ႈတိုၵ်ႉတႅမ်ႈ Tracked Buffer
private var wordDictionary: [String] = []         // 🛠️ Local In-Memory Cache Dict Registry

// 🚀 Function တႃႇလူတ်ႉဢၢၼ်ႇ File .txt လုၵ်ႉတီႈ Extension Bundle Base
func loadDictionaryForCurrentLayout() {
    let fileName: String
    switch currentLayout {
    case .english: fileName = "eng_words"
    case .shan: fileName = "shn_words"
    case .myanmar: fileName = "mm_words"
    }
    
    guard let path = Bundle.main.path(forResource: fileName, ofType: "txt") else {
        print("⚠️ Dictionary file not found: \(fileName).txt")
        return
    }
    
    DispatchQueue.global(qos: .userInitiated).async {
        do {
            let content = try String(contentsOfFile: path, encoding: .utf8)
            // Separating entries component items line by line cleanly
            let words = content.components(separatedBy: .newlines)
                .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
                .filter { !$0.isEmpty }
            
            DispatchQueue.main.async {
                self.wordDictionary = words
                self.generateSuggestions() // Re-trigger tracking layout sync
            }
        } catch {
            print("❌ Error loading dictionary data file matrix: \(error)")
        }
    }
}

// 🚀 Function တွၼ်ႈတႃႇၼပ်ႉသွၼ်ႇ Match တူဝ်လိၵ်ႈလၢမ်း
func generateSuggestions() {
    guard !currentTypedWord.isEmpty else {
        self.suggestions = []
        return
    }
    
    let query = currentTypedWord.lowercased()
    
    // High-performance filtering mechanism parsing word components prefix loops
    let filtered = wordDictionary.filter { $0.lowercased().hasPrefix(query) }
    
    // Pick first 3 premium matched elements natively to fit UI specs limit
    self.suggestions = Array(filtered.prefix(3))
}

// 🚀 Function တႃႇ Commit တူဝ်လိၵ်ႈလၢမ်း မိူဝ်ႈ User Click လိူၵ်ႈ
func selectSuggestion(_ word: String) {
    guard let proxy = controller?.textDocumentProxy else { return }
    
    // 1. Delete backward the incomplete characters user already typed manually
    let deleteCount = currentTypedWord.count
    for _ in 0..<deleteCount {
        proxy.deleteBackward()
    }
    
    // 2. Insert the complete high-fidelity dictionary matched word string block
    proxy.insertText(word + " ") // Add a trailing spacing cleanly upon committing
    
    // 3. Clear state values tracking buffers instantly
    currentTypedWord = ""
    suggestions = []
    triggerFeedback()
}

```
---

### 3. သၢင်ႈ Component Display Layer (`TMKSuggestionBarView.swift`)

သၢင်ႈ File Swift မႂ်ႇၸိုဝ်ႈ **`TMKSuggestionBarView.swift`** ၼႆလႄႈ။ ၼႆႉပဵၼ်တူဝ် Bar ဢၼ်တေဝၢင်းဝႆႉ တီႈၼိူဝ်သုတ်းၶွင် ၶီးပွတ်ႇႁဝ်းယဝ်ႉ:

```swift
//
//  TMKSuggestionBarView.swift
//  tmk-keyboard
//
//  Created by Sai Mao on 18/5/2569 BE.
//

import SwiftUI

struct TMKSuggestionBarView: View {
    @EnvironmentObject var viewModel: KeyboardViewModel
    
    var body: some View {
        let theme = viewModel.currentTheme
        
        HStack(spacing: 0) {
            
            // WORDS SUGGESTIONS LIST FIELDS ROWS
            HStack(spacing: 0) {
                if viewModel.suggestions.isEmpty {
                    // Blank System Prompt state representation text wrapper
                    Spacer()
                    Text("Thung Mao Kham Keyboard")
                        .font(.system(size: 14, fontDesign: .rounded))
                        .foregroundColor(theme.keyForeground.opacity(0.35))
                    Spacer()
                } else {
                    ForEach(viewModel.suggestions, id: \.self) { word in
                        Button(action: {
                            viewModel.selectSuggestion(word)
                        }) {
                            Text(word)
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                                .foregroundColor(theme.keyForeground)
                                .lineLimit(1)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                        
                        // Internal cell items dividers line streams
                        if word != viewModel.suggestions.last {
                            Rectangle()
                                .fill(theme.keyForeground.opacity(0.08))
                                .frame(width: 1, height: 18)
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 40)
        // Draw standard premium background blending with current visual palette properties
        .background(theme.keyboardBackground.opacity(0.96))
        .overlay(
            // Subtle horizontal bottom hairline partition dividing suggestions from grid rows
            Rectangle()
                .fill(theme.keyForeground.opacity(0.1))
                .frame(height: 0.5),
            alignment: .bottom
        )
    }
}

```

---

### 4. ဢဝ်ၵႂႃႇဝၢင်းဝႆႉၼႂ်း Master UI Window Layout (`KeyboardView.swift`)

မႃးပိုတ်ႇ File **`KeyboardView.swift`** သေ ဢဝ် `TMKSuggestionBarView` ၵႂႃႇဝၢင်းဝႆႉၼိူဝ်သုတ်း ၼႂ်း **`VStack`** ၶွင် Interface Layout Rows Matrix ၸိူင်ႉၼႆၶႃႈ:

```swift
// ၼႂ်း KeyboardView.swift -> inside master structural rows layer block
VStack {

    Spacer()
    
    TMKSuggestionBarView()
    
    VStack {
        switch viewModel.keyboardMode {
        case .numeric: NumericLayoutView(controller: controller, viewModel: viewModel)
        case .emoji: EmojiLayoutView(controller: controller, viewModel: viewModel)
        case .alphabetic: renderAlphabeticLayout()
        }
    }
    .clipped(false)
}
.padding(.bottom, 4)
.padding(.horizontal, 4) // Separate suggestion bar full bleed from key matrix padding extensions if desired

```

လွင်ႈ Gesture Input Tracking ၼႂ်း `TMKKeyView.swift`၊ တီႈ `.onEnded` ၶွင်ပုမ်ႇလိၵ်ႈလွင်ႈလွင်ႈ၊ မိူဝ်ႈ User ၼိပ်ႉတူဝ်လိၵ်ႈတူဝ်လႂ်ၶဝ်ႈၵႂႃႇယဝ်ႉ ႁႂ်ႈထႅမ်သႂ်ႇ:

```swift
viewModel.currentTypedWord.append(label)
viewModel.generateSuggestions()

```

*(လွင်ႈ Delete Key ၵေႃႈယဝ်ႉ မိူဝ်ႈ Delete တေလူဝ်ႇ `currentTypedWord.removeLast()` သေ Re-trigger `generateSuggestions()` ၶႃႈ)*

---