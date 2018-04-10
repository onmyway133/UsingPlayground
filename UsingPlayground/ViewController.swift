import UIKit
import Cheers

public class ViewController: UIViewController {

  public override func viewDidLoad() {
    super.viewDidLoad()

    let cheerView = CheerView()
    view.addSubview(cheerView)
    cheerView.frame = view.bounds

    // Configure
    cheerView.config.particle = .confetti(allowedShapes: [.rectangle, .circle])

    // Start
    cheerView.start()
  }
}

