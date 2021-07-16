//
//  ViewController.swift
//  DecoratorTest
//
//  Created by Lidiomar Fernando dos Santos Machado on 15/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        callComponent()
    }
    
    private func callComponent() {
        let component = Component()
        let componentBuilder = ComponentBuilder(component: component).withBorder(15).withPlusSize(10).build()
        componentBuilder.draw()
        componentBuilder.resize()
    }
}

