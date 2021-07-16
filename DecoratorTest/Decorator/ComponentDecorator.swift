//
//  Decorator.swift
//  DecoratorTest
//
//  Created by Lidiomar Fernando dos Santos Machado on 15/07/21.
//

import Foundation
import UIKit

class ComponentDecorator: Component {
    
    private var component: Component
    
    init(component: Component) {
        self.component = component
    }
    
    override func draw() {
        self.component.draw()
    }
    
    override func resize() {
        self.component.resize()
    }
    
}
