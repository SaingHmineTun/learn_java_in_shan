

## **Module 8 | Project 8: User Profile & Settings Dashboard**

### **1. ViewModel.swift (Logic & Validation)**

ႁဝ်းတေသၢင်ႈ ViewModel တႃႇၵုမ်းထိင်း Logic ၵၢၼ်ၵူတ်ႇထတ်း (Validation) ၶႃႈ။

```swift
import Foundation
import Observation

@Observable
class ProfileViewModel {
    // Profile Fields
    var displayName = "Sai Mao"
    var email = "saimao@tmk.com"
    var bio = "Programming Lecturer and Developer at Thung Mao Kham (TMK)."
    
    // Settings Fields
    var isNotificationEnabled = true
    var appTheme = "System"
    var fontSize = 16.0
    
    // Validation Logic
    var isEmailValid: Bool {
        email.contains("@") && email.contains(".")
    }
    
    var isDisplayNameValid: Bool {
        displayName.count >= 3
    }
    
    var canSave: Bool {
        isEmailValid && isDisplayNameValid && !bio.isEmpty
    }
}

```

---

### **2. MainView.swift (UI & Interaction)**

ၼႆႉပဵၼ် Code တွၼ်ႈ UI တင်းမူတ်းၶႃႈ။

```swift
import SwiftUI

struct UserProfileSettingsView: View {
    @State private var viewModel = ProfileViewModel()
    
    // Focus States တႃႇၵုမ်းထိင်း Keyboard
    enum Field { case name, email, bio }
    @FocusState private var focusedField: Field?
    
    var body: some View {
        NavigationStack {
            Form {
                // Section 1: Visual Profile Header
                Section {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "person.crop.circle.fill.badge.plus")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.blue)
                            
                            Text(viewModel.displayName)
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Text(viewModel.email)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                    }
                    .padding(.vertical)
                }
                .listRowBackground(Color.clear) // ႁႂ်ႈ Background ပဝ်ႇဝႆႉ
                
                // Section 2: Account Details (Validation & Focus)
                Section(header: Text("Account Information")) {
                    TextField("Display Name", text: $viewModel.displayName)
                        .focused($focusedField, equals: .name)
                        .submitLabel(.next)
                    
                    if !viewModel.isDisplayNameValid && !viewModel.displayName.isEmpty {
                        Text("Name is too short").font(.caption).foregroundColor(.red)
                    }
                    
                    TextField("Email", text: $viewModel.email)
                        .focused($focusedField, equals: .email)
                        .submitLabel(.next)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                    
                    if !viewModel.isEmailValid && !viewModel.email.isEmpty {
                        Text("Invalid email format").font(.caption).foregroundColor(.red)
                    }
                }
                
                // Section 3: Biography (Multi-line Input)
                Section(header: Text("Biography")) {
                    TextEditor(text: $viewModel.bio)
                        .focused($focusedField, equals: .bio)
                        .frame(height: 100)
                }
                
                // Section 4: App Settings (Pickers, Steppers, Toggles)
                Section(header: Text("App Settings")) {
                    Toggle("Push Notifications", isOn: $viewModel.isNotificationEnabled)
                    
                    Picker("Theme Preference", selection: $viewModel.appTheme) {
                        Text("Light").tag("Light")
                        Text("Dark").tag("Dark")
                        Text("System").tag("System")
                    }
                    .pickerStyle(.navigationLink)
                    
                    Stepper("Font Size: \(Int(viewModel.fontSize))pt", value: $viewModel.fontSize, in: 12...24)
                }
                
                // Section 5: Save Action
                Section {
                    Button(action: saveProfile) {
                        HStack {
                            Spacer()
                            Text("Save Profile Changes")
                                .fontWeight(.semibold)
                            Spacer()
                        }
                    }
                    .disabled(!viewModel.canSave)
                }
            }
            .navigationTitle("Profile & Settings")
            .onSubmit {
                // Auto-advance Focus
                switch focusedField {
                case .name: focusedField = .email
                case .email: focusedField = .bio
                default: focusedField = nil
                }
            }
            .toolbar {
                ToolbarItem(placement: .keyboard) {
                    Button("Done") { focusedField = nil }
                }
            }
        }
    }
    
    private func saveProfile() {
        print("Profile Saved for \(viewModel.displayName)!")
        focusedField = nil
    }
}

#Preview {
    UserProfileSettingsView()
}

```

---

### **Summary of Project Features**

| Feature | Swift Implementation (Shan) |
| --- | --- |
| **Data Validation** | ၸႂ်ႉ ViewModel တႃႇၵူတ်ႇထတ်း Email လႄႈ ၸိုဝ်ႈ ၵမ်းလဵဝ် (Real-time)။ |
| **Focus Management** | ၸႂ်ႉ `@FocusState` တႃႇႁႂ်ႈ Keyboard လႅၼ်ႈၸွမ်းလွၵ်းတႅမ်ႈလႆႈငၢႆႈငၢႆႈ။ |
| **Diverse Inputs** | ၸႂ်ႉတင်း TextField, TextEditor, Toggle, Picker, လႄႈ Stepper ၼႂ်း Form လဵဝ်ၵၼ်။ |
| **Interactive UI** | ပုမ်ႇ Save တေပဵၼ်သီၸၢင် (Disabled) သင် User တႅမ်ႈ Data ၽိတ်းယူႇၶႃႈ။ |

---