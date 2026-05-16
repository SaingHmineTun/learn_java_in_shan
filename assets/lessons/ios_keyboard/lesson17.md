

## တွၼ်ႈသွၼ် 17: Burma Handwriting Logic (Complex Stacking Engine)

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈပၢႆးဝူၼ်ႉ Matrix ဢၼ်လမ်ႇလွင်ႈသုတ်း ၶွင်လိၵ်ႈမၢၼ်ႈ ယွၼ်ႉမၼ်းမီးလွင်ႈ **Character Stacking (တူဝ်သွၼ်ႉလူၺ်ႈ Virama ္)** လႄႈ **Medial Stack** ယဝ်ႉ။

### 1. ပၢႆးဝူၼ်ႉၵၢၼ်ၸတ်းၵၢၼ် တူဝ်သွၼ်ႉ (Virama Stacking)

ၼႂ်းလိၵ်ႈမၢၼ်ႈ မိူဝ်ႈ User ပိုတ်ႇ Handwriting Mode သေ တႅမ်ႈလိၵ်ႈလၢႆး Visual Order (တႅမ်ႈ "ေ" ဝႆႉဢွၼ်တၢင်း) ၼၼ်ႉ
မၼ်းတေမီး Case ဢၼ်ယၢပ်ႇၵႂႃႇထႅင်ႈ မိူၼ်ၼင်ႇတူဝ်သွၼ်ႉ **"ဗြေ"** ဢမ်ႇၼၼ် တူဝ်ဆင့် **"ပ္ပ"** ယဝ်ႉ။

* **Case 1 (Standard Consonant Swap):** ၼိပ်ႉ `ေ` -> ၼိပ်ႉ `မ` = Keyboard တေလႅၵ်ႈပၼ်ပဵၼ် `မေ`။
* **Case 2 (Virama Stacking):** သင် User ၼိပ်ႉ `္` (Virama) ၸွမ်းမႃး တႂ်ႈသၢႆၵၢၼ် `swapConsonant`၊ Keyboard တေပိတ်း Flag `swapConsonant` သေ ပိုတ်ႇ `evowelVirama = true` ဝႆႉ။
* **Case 3 (The Core Stacking Swap):** မိူဝ်ႈ `evowelVirama == true` လႄႈ User ၼိပ်ႉဗျည်းတူဝ်ထႅင်ႈတူဝ်ၼိုင်ႈ (မိူၼ်ၼင်ႇ `ပ`)၊ System တေလႆႈလိပ်း (Backward) ဢွၵ်ႇ 2 ၵမ်း သေ သႂ်ႇပဵၼ် **`္ + ပ + ေ`** တႅၼ်းၶႃႈ။

---

### 2. Full Code: MyanmarLogic.swift

ၼႆႉပဵၼ် File `MyanmarLogic.swift` ဢၼ်တဵမ်ထူၼ်ႈ လႄႈ မႄးလၢႆးဢၢၼ်ႇ `scalars` ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈၸွမ်းပၵ်းပိူင်သုတ်းၶႃႈ:

```swift
import UIKit

class MyanmarLogic {
    // --- Unicode Constants ---
    private static let MY_E: Character = "\u{1031}"     // ေ (4145)
    private static let VIRAMA: Character = "\u{1039}"   // ္ (4153)
    private static let ASAT: Character = "\u{103A}"     // ် (4154)
    private static let TEMP: Character = "\u{200B}"     // ZWSP (8203)
    
    // --- Flags & Stacks ---
    private static var swapConsonant = false
    private static var swapMedial = false
    private static var hasZWSP = false
    private static var evowelVirama = false
    private static var medialCount: Int = 0
    private static var medialStack: [Int] = [0, 0, 0]

    // MARK: - Handle Input
    static func handleInput(primaryCode: String, proxy: UITextDocumentProxy, isHandwriting: Bool) {
        let inputChar: Character = Character(primaryCode)
        let primaryInt = Int(inputChar.unicodeScalars.first?.value ?? 0)
        
        let context = proxy.documentContextBeforeInput ?? ""
        let scalars = Array(context.unicodeScalars)
        
        // 1. Handle MY_E (ေ) with Handwriting Mode
        if inputChar == MY_E && isHandwriting {
            if !(scalars.count >= 2 && Character(scalars[scalars.count - 1]) == ASAT && Character(scalars[scalars.count - 2]) == VIRAMA) {
                proxy.insertText(String([TEMP, MY_E]))
                hasZWSP = true
            }
            resetFlags()
            return
        }
        
        if scalars.isEmpty {
            proxy.insertText(String(inputChar))
            return
        }
        
        let firstChar = Character(scalars[scalars.count - 1])

        // 2. Auto-Correct: dot_above (ံ) + au vowel (ု) -> (ုံ)
        if firstChar == "\u{1036}" && inputChar == "\u{102F}" {
            proxy.deleteBackward()
            proxy.insertText("\u{102F}\u{1036}")
            return
        }
        
        // 3. Stacking Logic (Virama)
        if inputChar == VIRAMA && swapConsonant {
            swapConsonant = false
            evowelVirama = true
            proxy.insertText(primaryCode)
            return
        }

        // 4. PrimeBook Function (Reordering Logic)
        if isHandwriting {
            handlePrimeBook(inputChar: inputChar, primaryInt: primaryInt, proxy: proxy, charBefore: firstChar)
        } else {
            proxy.insertText(primaryCode)
        }
    }

    private static func handlePrimeBook(inputChar: Character, primaryInt: Int, proxy: UITextDocumentProxy, charBefore: Character?) {
        if inputChar == VIRAMA && swapConsonant {
            swapConsonant = false
            evowelVirama = true
            proxy.insertText(String(inputChar))
            return
        }
        
        if evowelVirama {
            if isConsonant(inputChar) {
                swapConsonant = true
                proxy.deleteBackward() // Delete Virama
                proxy.deleteBackward() // Delete E
                proxy.insertText(String([VIRAMA, inputChar, MY_E]))
                evowelVirama = false
                return
            } else {
                evowelVirama = false
            }
        }

        if isOthers(primaryInt) {
            resetFlags()
            proxy.insertText(String(inputChar))
            return
        }

        if charBefore != MY_E {
            proxy.insertText(String(inputChar))
            return
        }

        if isConsonant(inputChar) {
            if !swapConsonant {
                swapConsonant = true
                reorderEVowel(inputChar: inputChar, proxy: proxy)
            } else {
                swapConsonant = false
                proxy.insertText(String(inputChar))
            }
            return
        }

        if isMedial(inputChar) {
            if isValidMedial(primaryInt) {
                medialStack[medialCount] = primaryInt
                medialCount += 1
                swapMedial = true
                reorderEVowel(inputChar: inputChar, proxy: proxy)
                return
            }
        }
        
        proxy.insertText(String(inputChar))
    }

    // MARK: - Handle Delete
    static func handleDelete(proxy: UITextDocumentProxy, isHandwriting: Bool) {
        if isHandwriting {
            handleSingleDelete(proxy: proxy)
        } else {
            proxy.deleteBackward()
        }
    }

    private static func handleSingleDelete(proxy: UITextDocumentProxy) {
        let context = proxy.documentContextBeforeInput ?? ""
        let scalars = Array(context.unicodeScalars)
        
        if scalars.isEmpty {
            proxy.deleteBackward()
            return
        }
        
        let firstChar = Character(scalars[scalars.count - 1]) 

        if firstChar == MY_E {
            swapConsonant = false
            swapMedial = false
            
            if scalars.count >= 2 {
                let secPrev = Character(scalars[scalars.count - 2]) 
                if isMedial(secPrev) {
                    swapConsonant = true; swapMedial = false
                    proxy.deleteBackward(); proxy.deleteBackward()
                    proxy.insertText(String(firstChar))
                } else if isConsonant(secPrev) {
                    if scalars.count >= 3 && Character(scalars[scalars.count - 3]) == VIRAMA {
                        swapConsonant = true
                        proxy.deleteBackward(); proxy.deleteBackward(); proxy.deleteBackward()
                        proxy.insertText(String(firstChar))
                    } else {
                        swapMedial = false; swapConsonant = false; hasZWSP = true
                        proxy.deleteBackward(); proxy.deleteBackward()
                        proxy.insertText(String([TEMP, firstChar]))
                    }
                } else if secPrev == TEMP {
                    proxy.deleteBackward(); proxy.deleteBackward()
                    swapConsonant = true
                } else {
                    proxy.deleteBackward()
                }
            } else {
                proxy.deleteBackward()
            }
        } else {
            // ✅ Fix: Check suffix/scalars safely to track swapConsonant state when deleting
            if scalars.count >= 2 {
                let secPrev = Character(scalars[scalars.count - 2])
                if secPrev == MY_E {
                    let thirdChar = scalars.count >= 3 ? Character(scalars[scalars.count - 3]) : nil
                    swapConsonant = (thirdChar != TEMP)
                }
            }
            proxy.deleteBackward()
        }
    }

    // MARK: - Helpers
    private static func reorderEVowel(inputChar: Character, proxy: UITextDocumentProxy) {
        if hasZWSP {
            proxy.deleteBackward(); proxy.deleteBackward()
            hasZWSP = false
        } else {
            proxy.deleteBackward()
        }
        proxy.insertText(String([inputChar, MY_E]))
    }

    private static func resetFlags() {
        swapConsonant = false; swapMedial = false; medialCount = 0; evowelVirama = false
    }

    private static func isConsonant(_ char: Character) -> Bool {
        let code = char.unicodeScalars.first?.value ?? 0
        return code >= 4096 && code <= 4129
    }

    private static func isMedial(_ char: Character) -> Bool {
        let code = char.unicodeScalars.first?.value ?? 0
        return code > 4154 && code < 4159
    }

    private static func isOthers(_ code: Int) -> Bool {
        return [0x102b, 0x102c, 0x1037, 0x1038].contains(code)
    }

    private static func isValidMedial(_ code: Int) -> Bool {
        if !swapConsonant || medialCount > 2 { return false }
        if !swapMedial { return true }
        if medialStack[medialCount - 1] == 0x103e { return false }
        return true 
    }
}

```

---

### 3. လွင်ႈလမ်ႇလွင်ႈၼႂ်းတွၼ်ႈသွၼ် (Key Takeaways)

* **`evowelVirama` State Matrix:** ၵုမ်းထိင်းသၢႆၵၢၼ်တႅမ်ႈ မိူဝ်ႈမီး `္` (Virama) ဝႆႉၼႂ်းဝူင်ႈၵၢင် သရ "ေ" ႁႂ်ႈပိၼ်ႇ Layout ပဵၼ်တူဝ်သွၼ်ႉမၢၼ်ႇမႅၼ်ႈယဝ်ႉ။
* **Medial Validation:** `isValidMedial` တႅပ်းတတ်းဝႃႈ တူဝ် Medials (ျ၊ ြ၊ ွ၊ ှ) ၸိူဝ်းၼႆႉ တေလႅၵ်ႈလၢၵ်ႈ Layout ၸွမ်း E-vowel လႆႈလၢႆၸၼ်ႉ (Up to 3 levels)။

---