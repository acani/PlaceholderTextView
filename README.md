# PlaceholderTextView

`UITextView` with a `placeholder` property

Setup: [How to add a Git submodule to your Xcode project][1]

Usage:

```swift
let frame = CGRect(x: 20, y: 100, width: 280, height: 40)
let placeholderTextView = PlaceholderTextView(frame: frame)
placeholderTextView.placeholder = "Message"
view.addSubview(placeholderTextView)
```

Released under the [Unlicense][2].


  [1]: https://github.com/acani/Libraries
  [2]: http://unlicense.org
