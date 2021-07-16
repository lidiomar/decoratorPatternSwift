//
//  PlusSizeComponent.swift
//  DecoratorTest
//
//  Created by Lidiomar Fernando dos Santos Machado on 15/07/21.
//

import Foundation

class PlusSizeDecorator: ComponentDecorator {
    
    private var size: Int
    
    init(component: Component, size: Int) {
        self.size = size
        super.init(component: component)
    }
    
    override func resize() {
        super.resize()
        plusSize()
    }
    
    private func plusSize() {
        print("Resize with: \(size)")
    }
}
