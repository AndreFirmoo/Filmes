//
//  ViewCodeComponent.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import UIKit

@propertyWrapper
struct ViewCodeComponent<T: UIView> {
    var wrappedValue: T
    
    init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        self.wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}
