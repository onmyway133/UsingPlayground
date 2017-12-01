//: Playground - noun: a place where people can play

import UIKit
import Cheers
import AppFramework
import PlaygroundSupport

let cheerView = CheerView()
cheerView.frame = CGRect(x: 0, y: 50, width: 200, height: 400)

// Configure
cheerView.config.particle = .confetti

// Start
cheerView.start()

let myController = ViewController()

PlaygroundPage.current.liveView = myController.view

