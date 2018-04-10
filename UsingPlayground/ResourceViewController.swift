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
  }

  private func setup() {
    imageView.contentMode = .scaleAspectFit

    view.addSubview(imageView)
    view.addSubview(label)

    activate(
      imageView.anchor.width.multiplier(0.7),
      imageView.anchor.centerX
    )
  }
}
