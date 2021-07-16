//
//  ComponentBuilder.swift
//  DecoratorTest
//
//  Created by Lidiomar Fernando dos Santos Machado on 16/07/21.
//

import Foundation

class ComponentBuilder {
    private var component: Component
    
    init(component: Component) {
        self.component = component
    }
    
    func withBorder(_ border: Int) -> ComponentBuilder {
        self.component = BorderDecorator(component: self.component, borderWidth: border)
        return self
    }
    
    func withPlusSize(_ size: Int) -> ComponentBuilder {
        self.component = PlusSizeComponent(component: self.component, size: size)
        return self
    }
    
    func build() -> Component {
        return component
    }
}
