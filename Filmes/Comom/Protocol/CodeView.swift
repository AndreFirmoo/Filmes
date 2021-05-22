//
//  CodeView.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import Foundation

protocol CodeView {
    func setup()
    func setupComponents()
    func setupConstraints()
    func setupExtraConfiguration()
}
extension CodeView {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }
}
