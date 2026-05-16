

## တွၼ်ႈသွၼ် 16: Shan Handwriting Logic (Visual Reordering Engine)

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးတူၺ်းလၢႆးတႅမ်ႈ Code `ShanLogic` ဢၼ်ၸတ်းၵၢၼ်လွင်ႈတႅမ်ႈလိၵ်ႈတႆးလူၺ်ႈလၢႆး **Visual Order** 
(တႅမ်ႈသရ "ေ" ဢွၼ်တၢင်း ၸင်ႇသိုပ်ႇတႅမ်ႈ တူဝ်မႄႈလိၵ်ႈ "ၵ") ႁႂ်ႈပိၼ်ႇပဵၼ် **Logical Order** ၶွင် Unicode Standard ႁင်းမၼ်းယဝ်ႉ။

### 1. The Reordering Matrix

မိူဝ်ႈ User ပိုတ်ႇ Handwriting Mode ၼၼ်ႉ System ႁဝ်းတေလႆႈၸႂ်ႉ `context.unicodeScalars` တႃႇႁၼ်သၢႆ Data ဢၼ်မီးဝႆႉၼၼ်ႉယဝ်ႉ:

* **Input "ေ" တူဝ်လဵဝ်:** Keyboard တေသူင်ႇ `TEMP` (ZWSP - 8203) + `MY_E` ("ေ") ၵႂႃႇၵွၼ်ႇ ၼင်ႇႁိုဝ် "ေ" တေဢမ်ႇမီးတူင်ႇၶႆႇပႃဝႆႉၽၢႆႇၼႃႈ။
* **Input တူဝ်မႄႈလိၵ်ႈ ၸွမ်းမႃး:** System တေၸႂ်ႉ `proxy.deleteBackward()` ထွၼ်ဢွၵ်ႇသေ သူင်ႇပဵၼ် **တူဝ်မႄႈလိၵ်ႈ + ေ** (မိူၼ်ၼင်ႇ ၵ + ေ = ၵေ) တႅၼ်းယဝ်ႉ။

---

### 2. Full Code: ShanLogic.swift

ၼႆႉပဵၼ် File `ShanLogic.swift` ဢၼ်တႅတ်ႈတေႃး ၸွမ်းၼင်ႇဢၼ်ၸဝ်ႈၵဝ်ႇမႄးဝႆႉၶႃႈ:

```swift
import UIKit

class ShanLogic {
    // --- Unicode Constants ---
    private static let MY_E: Character = "\u{1031}"  // ေ (4145)
    private static let SH_E: Character = "\u{1084}"  // ႄ (4228)
    private static let ASAT: Character = "\u{103A}"  // ် (4154)
    private static let TEMP: Character = "\u{200B}"  // ZWSP (8203)
    
    // --- Flags (Mirroring Java Logic) ---
    private static var swapConsonant = false
    private static var swapMedial = false

    // MARK: - Handle Input
    static func handleInput(primaryCode: String, proxy: UITextDocumentProxy, isHandwriting: Bool) {
        let inputChar = Character(primaryCode)
        let context = proxy.documentContextBeforeInput ?? ""
        let scalars = Array(context.unicodeScalars)
        
        // 1. Handwriting Mode: Initial E-Vowel Input (ေ / ႄ)
        if (inputChar == MY_E || inputChar == SH_E) && isHandwriting {
            proxy.insertText(String([TEMP, inputChar]))
            swapConsonant = false
            swapMedial = false
            return
        }
        
        if scalars.isEmpty {
            proxy.insertText(String(inputChar))
            return
        }

        // 2. Standard Reordering (Always Active - ိူ , ို , ႆၢ , ေႂ)
        if scalars.count > 0 {
            let firstChar = Character(scalars[scalars.count - 1])
            
            // Reorder ေႂ (ASAT + 1082 -> 1082 + ASAT)
            if firstChar == ASAT && inputChar == "\u{1082}" {
                proxy.deleteBackward()
                proxy.insertText("\u{1082}\u{103A}")
                return
            }
            // Reorder ႆၢ (1086 + 1062 -> 1062 + 1086)
            if firstChar == "\u{1086}" && inputChar == "\u{1062}" {
                proxy.deleteBackward()
                proxy.insertText("\u{1062}\u{1086}")
                return
            }
            // Reorder ိူ (1030 + 102D -> 102D + 1030)
            if firstChar == "\u{1030}" && inputChar == "\u{102D}" {
                proxy.deleteBackward()
                proxy.insertText("\u{102D}\u{1030}")
                return
            }
            // Reorder ို (102F + 102D -> 102D + 102F)
            if firstChar == "\u{102F}" && inputChar == "\u{102D}" {
                proxy.deleteBackward()
                proxy.insertText("\u{102D}\u{102F}")
                return
            }
        }

        // 3. Handwriting Swap Logic (Visual Typing)
        if isHandwriting {
            handleShanTyping(inputChar: inputChar, proxy: proxy)
        } else {
            proxy.insertText(primaryCode)
        }
    }

    private static func handleShanTyping(inputChar: Character, proxy: UITextDocumentProxy) {
        let context = proxy.documentContextBeforeInput ?? ""
        
        if isOthers(inputChar) {
            swapConsonant = false
            swapMedial = false
            proxy.insertText(String(inputChar))
            return
        }

        let scalars = Array(context.unicodeScalars)
        if scalars.isEmpty {
            swapConsonant = false; swapMedial = false
            proxy.insertText(String(inputChar))
            return
        }
        
        let firstChar = Character(scalars[scalars.count - 1])

        if firstChar == MY_E || firstChar == SH_E {
            // Swap E with Consonant
            if isConsonant(inputChar) {
                if !swapConsonant {
                    swapConsonant = true
                    reorderWithZWSP(inputChar: inputChar, charBefore: firstChar, proxy: proxy)
                } else {
                    swapConsonant = false; swapMedial = false
                    proxy.insertText(String(inputChar))
                }
                return
            }
            // Swap E with Asat (Caution Case)
            if inputChar == ASAT {
                if swapConsonant {
                    swapConsonant = false
                    reorderWithZWSP(inputChar: inputChar, charBefore: firstChar, proxy: proxy)
                    return
                }
            }
            // Swap E with Medial (ျ , ြ)
            if isMedial(inputChar) {
                if !swapMedial && swapConsonant {
                    swapMedial = true
                    proxy.deleteBackward()
                    proxy.insertText(String([inputChar, firstChar]))
                    return
                }
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
        
        if firstChar == MY_E || firstChar == SH_E {
            swapConsonant = false
            swapMedial = false
            
            if scalars.count >= 2 {
                let secPrev = Character(scalars[scalars.count - 2])
                
                if isMedial(secPrev) {
                    swapConsonant = true; swapMedial = false
                    proxy.deleteBackward() // Delete E
                    proxy.deleteBackward() // Delete Medial
                    proxy.insertText(String(firstChar))
                } else if isConsonant(secPrev) {
                    swapMedial = false; swapConsonant = false
                    proxy.deleteBackward() // Delete E
                    proxy.deleteBackward() // Delete Consonant
                    proxy.insertText(String([TEMP, firstChar]))
                } else if secPrev == TEMP {
                    proxy.deleteBackward() // Delete E
                    proxy.deleteBackward() // Delete ZWSP
                } else {
                    proxy.deleteBackward()
                }
            } else {
                proxy.deleteBackward()
            }
        } else {
            if scalars.count >= 3 {
                let secPrev = Character(scalars[scalars.count - 2])
                let thirdChar = Character(scalars[scalars.count - 3])
                
                if secPrev == MY_E || secPrev == SH_E {
                    swapConsonant = (thirdChar != TEMP)
                }
            }
            proxy.deleteBackward()
        }
    }

    // MARK: - Helpers
    private static func reorderWithZWSP(inputChar: Character, charBefore: Character, proxy: UITextDocumentProxy) {
        proxy.deleteBackward() // Delete E
        let context = proxy.documentContextBeforeInput ?? ""
        if context.last == TEMP {
            proxy.deleteBackward() // Delete ZWSP
        }
        proxy.insertText(String([inputChar, charBefore]))
    }

    private static func isConsonant(_ char: Character) -> Bool {
        return "ၵၶငၸသၺတထၼပၽမယရလဝႁဢ".contains(char)
    }

    private static func isMedial(_ char: Character) -> Bool {
        return char == "\u{103B}" || char == "\u{103C}"
    }

    private static func isOthers(_ char: Character) -> Bool {
        let others: [Character] = ["\u{1086}", "\u{1087}", "\u{1088}", "\u{1089}", "\u{108A}", "\u{1037}", "\u{1038}", "\u{1062}", "\u{1083}", "\u{1082}"]
        return others.contains(char)
    }
}

```

---

### 3. လွင်ႈလမ်ႇလွင်ႈၼႂ်းတွၼ်ႈသွၼ် (Key Takeaways)

* **State Management:** လွင်ႈၸႂ်ႉ `swapConsonant` လႄႈ `swapMedial` ပဵၼ်တူဝ်မၢႆဝႆႉဝႃႈ Keyboard တိုၵ်ႉယူႇၼႂ်းသၢႆၵၢၼ်လႅၵ်ႈလၢႆႊ (Swap State) ႁိုဝ် ဢမ်ႇယူႇ ၼႆယဝ်ႉ။
* **Flawless Delete:** `handleSingleDelete` ၸွႆႈလၢင်ႉပႃး `TEMP (ZWSP)` ဢွၵ်ႇပႅတ်ႈ ၼင်ႇႁိုဝ် တူဝ်လိၵ်ႈတေဢမ်ႇၵိုတ်းၶမ်ဝႆႉၼႂ်း Memory Box ယဝ်ႉ။

---