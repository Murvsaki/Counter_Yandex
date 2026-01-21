# 📱 Counter App

A simple yet powerful iOS application for counting anything you need. Perfect for tracking items, events, or daily counts.

## ✨ Features

### Basic Functionality
- ✅ Simple one-tap counting with a main button
- ✅ Clear display in "Counter Value: X" format
- ✅ Zero value on app launch

### Advanced Features
- ✅ **Increment (+)** - Red "+" button
- ✅ **Decrement (-)** - Blue "-" button
- ✅ **Reset** - Reset button with appropriate icon
- ✅ **Non-negative protection** - Counter never goes below 0
- ✅ **Change history** - Scrollable text view logging all operations:
  - Value changes (+1/-1)
  - Counter resets
  - Attempts to go below zero
- ✅ **Timestamped entries** - Each log includes date and time

## 🎯 Purpose

This app solves a common problem: keeping track of counts in daily life. Whether counting books in your library, tracking gym reps, or monitoring daily habits, the Counter App provides a clean, intuitive interface with a complete history of changes.

## 🛠 Technical Implementation

### UI/UX Design
- **Auto Layout**: Responsive interface for all screen sizes
- **Color Coding**: Red for increment, blue for decrement as specified
- **Accessibility**: History text view is:
  - Scrollable for browsing entire history
  - Non-editable to prevent accidental changes
  - Clearly formatted for readability

## 🚀 How to Use

1. **Increment**: Tap the red "+" button
2. **Decrement**: Tap the blue "-" button
3. **Reset**: Tap the reset button to return to zero
4. **View History**: Scroll through the log at the bottom to see all operations

## 📝 Operation Logging

The app maintains a detailed log of all actions:

```
Change History:
[01/22/2026, 14:30:15]: value changed by +1
[01/22/2026, 14:30:16]: value changed by +1
[01/22/2026, 14:30:17]: attempt to decrease below zero
[01/22/2026, 14:30:18]: counter reset to zero
```

## 🏗 Project Structure

```
CounterApp/
├── ViewController.swift      # Main application controller
├── Main.storyboard          # User interface layout
├── Assets.xcassets          # App icons and resources
├── LaunchScreen.storyboard  # Launch screen
└── Info.plist              # App configuration
```

## 🧪 Testing & Verification

The app has been validated against all requirements:

- [x] **Launch Stability**: App launches without crashes
- [x] **Initial State**: Label shows "0" on startup
- [x] **Counter Functionality**: Increment/decrement works correctly
- [x] **Zero Protection**: Counter never goes below 0
- [x] **History Logging**: All operations properly logged with timestamps
- [x] **Text View Behavior**: History view scrolls but is not editable
- [x] **UI Compliance**: Buttons have correct colors and icons

## 📋 Requirements

- **iOS**: 13.0 or later
- **Xcode**: 14.0 or later
- **Swift**: 5.0 or later
- **Device**: iPhone or iPad

## 🎓 Learning Outcomes

This project demonstrates:
- UIKit fundamentals (UILabel, UIButton, UITextView)
- MVC architecture implementation
- Interface Builder and Auto Layout
- State management in iOS apps
- Code organization best practices
- Debugging and testing iOS applications

## 📄 License

This project is developed for educational purposes as part of iOS development learning.

## 👤 Author

Developed as an iOS learning project.

---
