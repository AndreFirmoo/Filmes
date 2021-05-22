//
//  HomeViewController.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import UIKit

protocol HomeViewControllerDisplayProtocol {
    func showListMovies(viewModel: HomeModels.GetHomeMovies.ViewModel)
}


class HomeViewController: BaseViewController, HasCodeView {
    typealias CustomView = HomeView

    var interactor: HomeInteractor?
    var movie = [MovieItem]()
    init(interactor: HomeInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        interactor?.showMoviesList()
        setupView()
        
    }
    
    private func setupView() {
        view = HomeView()
        customView?.collectioView.delegate = self
        customView?.collectioView.dataSource = self
      
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movie.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.indentifier, for: indexPath) as! HomeCollectionViewCell
        cell.backgroundColor = .red
        let item = movie[indexPath.item]
        cell.setupCell(itemMovie: item)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
}
extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largura = collectionView.bounds.width / 2
        return CGSize(width: largura-15, height: 160)
    }
}

extension HomeViewController: HomeViewControllerDisplayProtocol {
    func showListMovies(viewModel: HomeModels.GetHomeMovies.ViewModel) {
        movie.append(contentsOf:viewModel.movies)
        customView?.collectioView.reloadData()
    }
    
    
}
