//
//  HomeCoordinator.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import UIKit



final class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var childCoordinator: [Coordinator] = []
    
    var parentCoordinator: Coordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let presenter = HomePresenter(coordinator: self)
        let interactor = HomeInteractor(presenter: presenter)
        let viewController = HomeViewController(interactor: interactor)
        presenter.viewController = viewController
        
        navigationController.pushViewController(viewController, animated: true)
    }
}
extension HomeCoordinator: HomeViewControllerDisplayProtocol {
    func showListMovies(viewModel: HomeModels.GetHomeMovies.ViewModel) {
        
    }
    
 
    
    
}
