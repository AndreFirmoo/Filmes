//
//  HomeView.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import UIKit

class HomeView: BaseView, CodeView {
    
    @ViewCodeComponent
    var viewSearch: UIView = {
        var view = UIView(frame: .zero)
        view.layer.cornerRadius = 10
        return view
    }()
    
    
    @ViewCodeComponent
    var search:UISearchBar = {
        var search = UISearchBar(frame: .zero)
        search.placeholder = "Pesquise o nome da série aqui... "
        return search
    }()
    
    
    @ViewCodeComponent
    var collectioView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.scrollDirection = .vertical
        collectionViewLayout.minimumInteritemSpacing = 0
        collectionViewLayout.minimumLineSpacing = 1
        let collection = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collection.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.indenfier)
        collection.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.indentifier)
        return collection
    }()
        
    @ViewCodeComponent
    var stackView: UIStackView = {
        var stack = UIStackView(frame: .zero)
        stack.axis = .vertical
        stack.alignment = .fill
        stack.spacing = 20
        stack.distribution = .fill
        return stack
    }()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    func setupComponents() {
        addSubview(stackView)
        stackView.addArrangedSubview(viewSearch)
        stackView.addArrangedSubview(collectioView)
        viewSearch.addSubview(search)
    }
    
    func setupConstraints() {
        stackViewConstraint()
        viewSearchConstraint()
        searchContraint()
    }
    
    func setupExtraConfiguration() {
        backgroundColor = .systemBackground
        stackView.backgroundColor = .systemBackground
        search.barTintColor = .systemBackground
        collectioView.backgroundColor = .systemBackground
    }
    
    private func stackViewConstraint() {
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 35).isActive = true
        stackView.leadingAnchor.constraint(equalTo:layoutMarginsGuide.leadingAnchor, constant:0).isActive = true
        stackView.trailingAnchor.constraint(equalTo:layoutMarginsGuide.trailingAnchor, constant:0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
    }
    private func viewSearchConstraint() {
        viewSearch.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    private func searchContraint() {
        search.topAnchor.constraint(equalTo: viewSearch.topAnchor, constant: 0).isActive = true
        search.bottomAnchor.constraint(equalTo: viewSearch.bottomAnchor, constant: 10).isActive = true
        search.trailingAnchor.constraint(equalTo: viewSearch.trailingAnchor, constant: -10).isActive = true
        search.leadingAnchor.constraint(equalTo: viewSearch.leadingAnchor, constant: 10).isActive = true
    }
}
