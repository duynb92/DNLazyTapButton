
import Foundation

open class DNLazyTapButton : UIButton {
    var intervalTime : Int {
        return 3
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        self.addTarget(self, action: #selector(temporalyDisable), for: .touchUpInside)
    }
    
    @objc func temporalyDisable() {
        self.isUserInteractionEnabled = false
        DispatchQueue.main.asyncAfter(deadline: .now() + TimeInterval(intervalTime)) {
            self.isUserInteractionEnabled = true
        }
    }
    
    deinit {
        self.removeTarget(self, action: #selector(temporalyDisable), for: .touchUpInside)
    }
}

