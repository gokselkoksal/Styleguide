# Styleguide

Sample styleguide implementation in Swift. 

For more: https://medium.com/@gokselkoksal/styling-with-swift-377d4afdb502

## Font & Color

```swift
enum Color {
    static let black = UIColor.blackColor()
    static let tint = UIColor.greenColor()
}

enum Alpha {
    static let none     = CGFloat(0.0)
    static let veryLow  = CGFloat(0.05)
    static let low      = CGFloat(0.30)
    static let medium1  = CGFloat(0.40)
    static let medium2  = CGFloat(0.50)
    static let medium3  = CGFloat(0.60)
    static let high     = CGFloat(0.87)
    static let full     = CGFloat(1.0)
}

struct Font {
    static func withSize(size: CGFloat, weight: CGFloat) -> UIFont {
        return UIFont.systemFontOfSize(size, weight: weight)
    }
}
```

### Usage

```swift
label.font = Font.withSize(15.0, UIFontWeightRegular)
label.textColor = Color.black

// Color + Alpha:
let colorWithAlpha = Color.red * Alpha.low
```

## TextStyle

```swift
struct TextStyle {
    let font: UIFont
    let color: UIColor
}
```

### Usage

```swift
titleLabel.style(TextStyle.title)
textLabel.style(TextStyle.body)

// Namespace your styles:
okButton.style(TextStyle.Button.action)
deleteButton.style(TextStyle.Button.destructive)
cancelButton.style(TextStyle.Button.cancel)

// Changing color of a text style:
let rareButtonStyle = TextStyle.Button.action + Color.white

// Applying alpha to a text style's color:
let rateButtonStyle = TextStyle.Button.action * Alpha.low
```

## ViewStyle & LayerStyle

```swift
struct ViewStyle {
    
    struct LayerStyle {
        
        struct BorderStyle {
            let color: UIColor
            let width: CGFloat
        }
        
        struct ShadowStyle {
            let color: UIColor
            let radius: CGFloat
            let offset: CGSize
            let opacity: Float
        }
        
        let masksToBounds: Bool?
        let cornerRadius: CGFloat?
        let borderStyle: BorderStyle?
        let shadowStyle: ShadowStyle?
    }
    
    let backgroundColor: UIColor?
    let tintColor: UIColor?
    let layerStyle: LayerStyle?
}
```

### Usage

```swift
button.style(ViewStyle.Button.rounded)
label.style(ViewStyle.Label.highlighted)
```

## Styling Protocols

To use these style structs with your view objects, you just need to conform to `TextStyling` and `ViewStyling` protocols. Check `StyleguideHelpers.swift` class to see implementation for commonly used views.

```swift
protocol TextStyling {
    func style(style: TextStyle)
}

protocol ViewStyling {
    func style(style: ViewStyle)
}
```
