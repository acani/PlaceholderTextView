import UIKit

public class PlaceholderTextView: UITextView {
    public var placeholder: String = "" { didSet { setNeedsDisplay() } }

    // MARK: - UIView

    override public var frame: CGRect { didSet { setNeedsDisplay() } }

    override public func drawRect(rect: CGRect) {
        super.drawRect(rect)
        if hasText() { return }
        let rect = CGRect(x: 5, y: 8, width: self.frame.width-5*2, height: self.frame.height-5*2)
        let attributes : [String : AnyObject]? = [NSFontAttributeName: font!, NSForegroundColorAttributeName: UIColor(white: 0.7, alpha: 1)]
        (placeholder as NSString).drawInRect(rect, withAttributes:attributes)
    }

    // MARK: - UITextView

    override public var text: String! { didSet { setNeedsDisplay() } }

    override public init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserver(self, selector: "setNeedsDisplay", name: UIApplicationDidChangeStatusBarOrientationNotification, object: nil)
        notificationCenter.addObserver(self, selector: "setNeedsDisplay", name: UITextViewTextDidChangeNotification, object: self)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
