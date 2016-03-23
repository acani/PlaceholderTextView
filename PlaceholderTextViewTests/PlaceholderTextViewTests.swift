import XCTest
import PlaceholderTextView

class PlaceholderTextViewTests: XCTestCase {
    func testPlaceholder() {
        let placeholderTextView = PlaceholderTextView(frame: CGRectZero, textContainer: nil)
        placeholderTextView.placeholder = "Message"
        XCTAssertEqual(placeholderTextView.placeholder, "Message")
    }
}
