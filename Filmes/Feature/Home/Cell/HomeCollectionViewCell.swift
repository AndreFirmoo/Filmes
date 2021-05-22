//
//  HomeCollectionViewCell.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 16/05/21.
//

import UIKit


final class HomeCollectionViewCell: UICollectionViewCell, CodeView {
  
    
    static let indentifier = "ListShows"
    
    @ViewCodeComponent
    var imageCell: UIImageView = {
        var imageCell = UIImageView(frame: .zero)
        imageCell.layer.cornerRadius = 10
        return imageCell
    }()
    
    @ViewCodeComponent
    var title: UILabel = {
        var title = UILabel(frame: .zero)
        title.textColor = .white
        title.textAlignment = .center
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupComponents() {
        contentView.addSubview(imageCell)
        contentView.addSubview(title)
    }
    
    func setupConstraints() {
        imageCellConstraint()
        titleCellConstraint()
    }
    func setupExtraConfiguration() {}
    
    func setupCell(itemMovie: MovieItem) {
        imageCell.image = UIImage(systemName: itemMovie.poster_path ?? "")
        title.text = itemMovie.original_title
    }
    
    private func imageCellConstraint() {
        imageCell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        imageCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5).isActive = true
        imageCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
        imageCell.bottomAnchor.constraint(equalTo: title.topAnchor, constant: 0).isActive = true
        imageCell.heightAnchor.constraint(equalToConstant: contentView.bounds.height-40).isActive = true
    }
    
    private func titleCellConstraint() {
        title.topAnchor.constraint(equalTo: imageCell.bottomAnchor, constant: 0).isActive = true
        title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
        title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5).isActive = true
    }
}
