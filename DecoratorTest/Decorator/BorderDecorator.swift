//
//  BorderDecorator.swift
//  DecoratorTest
//
//  Created by Lidiomar Fernando dos Santos Machado on 15/07/21.
//

import Foundation

class BorderDecorator: ComponentDecorator {
    
    private var borderWidth: Int
    
    init(component: Component, borderWidth: Int) {
        self.borderWidth = borderWidth
        super.init(component: component)
    }
    
    override func draw() {
        super.draw()
        drawBorder()
    }
    
    private func drawBorder() {
        print("Draw border with: \(borderWidth)")
    }
}
