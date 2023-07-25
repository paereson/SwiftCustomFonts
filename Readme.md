#  Custom Fonts in Swift and SwiftUI

### Main Points

Custom fonts make your app more original. There is more valuable when it's accessibility-ready. How to add new fonts to your project? You should begin with finding and downloading your favorite fonts. Then you can start adding them to your project.

## Usage

### 1) Copy custom fonts to your project
You can easily drag and drop your fonts to a specific folder. Make sure you added files to the correct project.

### 2) Add fonts to info.plist
Now, we need to add our new fonts to the project info.plist file. All fonts name and styles should be added.

### 3) Prepare fonts and style enums for all new fonts
We are ready to prepare an easy font factory to manage our new fonts. Create a class for that. You can specify the style and font size of your app. Here's an example of enums for that:
```
enum CustomFonts: String {
    case lato = "Lato"
    case openSans = "OpenSans"
    case oswald = "Oswald"
    case roboto = "Roboto"
    case tiltPrism = "TiltPrism"
}

enum CustomFontStyle: String {
    case bold = "-Bold"
    case light = "-Light"
    case medium = "-Medium"
    case regular = "-Regular"
    case semiBold = "-SemiBold"
    case thin = "-Thin"
}

enum CustomFontSize: CGFloat {
    case h0 = 36.0
    case h1 = 32.0
    case h2 = 20.0
    case h3 = 16.0
    case h4 = 8.0
}
```

### 4) Prepare UIFonts extension
Static func in UIFonts helps us to deal with new fonts faster. We have all new fonts on hand. Add this static func to the extension:
```
extension UIFont {

    static func customFont(
        font: CustomFonts,
        style: CustomFontStyle,
        size: CustomFontSize,
        isScaled: Bool = true) -> UIFont {
            
            let fontName: String = font.rawValue + style.rawValue
            
            guard let font = UIFont(name: fontName, size: size.rawValue) else {
                debugPrint("Font can't be loaded")
                return UIFont.systemFont(ofSize: size.rawValue)
            }
            
            return isScaled ? UIFontMetrics.default.scaledFont(for: font) : font
        }
}
```

Now you can easily use your new fonts in your project, like that:

```
label.font = .customFont(
font: .tiltPrism,
style: .regular,
size: .h0)
```

### 5) Customaize it for SwiftUI
SwiftUI supports dynamic type by default and is multi-line by default. So if you add Text("Some text") to your view, you're done. You can add the extension for Fonts like that:
```
import SwiftUI

extension Font {

    static func customFont(
        font: CustomFonts,
        style: CustomFontStyle,
        size: CustomFontSize,
        isScaled: Bool = true) -> Font {
            
            let fontName: String = font.rawValue + style.rawValue
            
            return Font.custom(fontName, size: size.rawValue)
        }
}
```

then use it:

```
Text("This is test label")
    .font(
        .customFont(
            font: .oswald,
            style: .bold,
            size: .h1
        )
    )
```

### Let's see tutorial how to add it to you project on medium.com
https://medium.com/@paereson/how-to-deal-with-custom-fonts-in-swift-and-swiftui-f7886a824ac8
