import UIKit
import Cheers
import PlaygroundSupport

// Use cheer alone
let cheerView = CheerView()
cheerView.frame = CGRect(x: 0, y: 50, width: 200, height: 400)

// Configure
cheerView.config.particle = .confetti(allowedShapes: [.rectangle, .circle])

// Start
cheerView.start()

PlaygroundPage.current.liveView = cheerView

