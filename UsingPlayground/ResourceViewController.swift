//
//  ResourceViewController.swift
//  UsingPlayground
//
//  Created by Khoa Pham on 10.04.2018.
//  Copyright © 2018 Khoa Pham. All rights reserved.
//

import UIKit
import Anchors

final class ResourceViewController: UIViewController {
  let imageView = UIImageView()
  let label = UILabel()

  override func viewDidLoad() {
    super.viewDidLoad()

    setup()
    imageView.image = UIImage(named: "ironMan")
    label.text = NSLocalizedString("Iron Man", comment: "")
  }

  private func setup() {
    imageView.contentMode = .scaleAspectFit
    label.textAlignment = .center
    label.textColor = .black
    label.font = UIFont.preferredFont(forTextStyle: .headline)

    view.addSubview(imageView)
    view.addSubview(label)

    activate(
      imageView.anchor.width.multiplier(0.6),
      imageView.anchor.height.ratio(1.0),
      imageView.anchor.center,

      label.anchor.top.equal.to(imageView.anchor.bottom).constant(10),
      label.anchor.centerX
    )
  }
}
