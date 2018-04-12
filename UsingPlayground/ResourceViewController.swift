//
//  ResourceViewController.swift
//  UsingPlayground
//
//  Created by Khoa Pham on 10.04.2018.
//  Copyright © 2018 Khoa Pham. All rights reserved.
//

import UIKit
import Anchors

public class ResourceViewController: UIViewController {
  let imageView = UIImageView()
  let label = UILabel()

  public override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = UIColor.gray

    setup()

    let bundle = Bundle(for: ResourceViewController.self)
    imageView.image = UIImage(named: "ironMan", in: bundle, compatibleWith: nil)
    label.text = NSLocalizedString(
      "ironManDescription", tableName: nil,
      bundle: bundle, value: "", comment: "Can't find localised string"
    )

    // font
    let fontURL = bundle.url(forResource: "Avengeance", withExtension: "ttf")
    CTFontManagerRegisterFontsForURL(fontURL! as CFURL, CTFontManagerScope.process, nil)
    let font = UIFont(name: "Avengeance", size: 30)!
    label.font = font
  }

  private func setup() {
    imageView.contentMode = .scaleAspectFit
    label.textAlignment = .center
    label.textColor = .black
    label.font = UIFont.preferredFont(forTextStyle: .headline)
    label.numberOfLines = 0

    view.addSubview(imageView)
    view.addSubview(label)

    activate(
      imageView.anchor.width.multiplier(0.6),
      imageView.anchor.height.ratio(1.0),
      imageView.anchor.center,

      label.anchor.top.equal.to(imageView.anchor.bottom).constant(10),
      label.anchor.paddingHorizontally(20)
    )
  }
}
