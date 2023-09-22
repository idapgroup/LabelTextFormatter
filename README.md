# LabelTextFormatter

UILabel and NSAttributedString extensions that allow you to simply set text to the label.

So you can set the text simply from String:
```swift
self.someLabel.setText(text: "some text", font: .systemFont(ofSize: 15), color: .black)
```
or from NSAttributedString:
```swift
self.someLabel.setTextFrom(value: someAttributedString, font: .systemFont(ofSize: 15), color: .black)
```
You can also combine several AttributedStrings into one:
```swift
self.someLabel.setTextFrom(values: [firstPartAttributedString, secondPartAttributedString])
```
And you can set the text of the label from the string with a certain set of parameters:
```swift
self.someLabel.setAttributedText(
    "some text",
    font: .systemFont(ofSize: 15),
    color: .black,
    lineSpacing: 8,
    leterSpacing: 4,
    minimumLineHeight: 8,
    lineHeightMultiple: 4,
    underlied: false,
    alignment: .center
)
```
Or you can create AttributedString instance with a certain set of parameters:
```swift
let someAttributedString = NSAttributedString.create(
    from: "some text",
    font: .systemFont(ofSize: 15),
    color: .black,
    lineSpacing: 8,
    leterSpacing: 4,
    minimumLineHeight: 8,
    lineHeightMultiple: 4,
    underlied: false,
    alignment: .center
)
```

## Requirements

iOS 9+. Swift 3.0.

## Installation

LabelTextFormatter is available through CocoaPods. To install it, simply add the following line to your Podfile:
```ruby
pod "LabelTextFormatter"
```
LabelTextFormatter is available through Carthage. To install it, simply add the following line to your Cartfile:
```ruby
github "idapgroup/LabelTextFormatter"
```
## License

LabelTextFormatter is available under the New BSD license. See the LICENSE file for more info.
