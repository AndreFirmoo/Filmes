//
//  HeaderCollectionReusableView.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 16/05/21.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView, CodeView {
    
    static let indenfier = "Header"
    
    @ViewCodeComponent
    var titleOfSection: UILabel = {
        var title = UILabel(frame: .zero)
        title.numberOfLines = 0
        title.textColor = .white
        title.font = UIFont.systemFont(ofSize: 35.0)
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupComponents() {
        addSubview(titleOfSection)
    }
    
    func setupConstraints() {
        titleOfSection.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        titleOfSection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        titleOfSection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
    }
    
    func setupExtraConfiguration() {}
    
    override func prepareForReuse() {
        titleOfSection.text = nil
    }
  
}
