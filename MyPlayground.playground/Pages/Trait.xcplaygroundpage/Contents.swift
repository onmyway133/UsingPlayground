//: Playground - noun: a place where people can play

import UIKit
import AppFramework
import PlaygroundSupport

let controller = ResourceViewController()

let parent = UIViewController()
parent.addChildViewController(controller)
parent.view.addSubview(controller.view)

let traits = UITraitCollection.init(traitsFrom: [
  .init(horizontalSizeClass: .compact),
  .init(verticalSizeClass: .regular),
  .init(userInterfaceIdiom: .phone)
])

parent.setOverrideTraitCollection(traits, forChildViewController: controller)

PlaygroundPage.current.liveView = parent.view

