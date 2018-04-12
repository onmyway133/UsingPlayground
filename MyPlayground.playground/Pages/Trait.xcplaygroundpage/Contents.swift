//: Playground - noun: a place where people can play

import UIKit
import AppFramework
import PlaygroundSupport

let controller = ResourceViewController()

let parent = UIViewController()
parent.addChildViewController(controller)
parent.view.addSubview(controller.view)
controller.didMove(toParentViewController: parent)

let traits = UITraitCollection.init(traitsFrom: [
  .init(horizontalSizeClass: .compact),
  .init(verticalSizeClass: .regular),
  .init(userInterfaceIdiom: .phone)
])

controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
parent.view.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
controller.view.frame = parent.view.frame
parent.preferredContentSize = parent.view.frame.size

parent.setOverrideTraitCollection(traits, forChildViewController: controller)

PlaygroundPage.current.liveView = parent.view

