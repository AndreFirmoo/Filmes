//
//  HomePresenter.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import Foundation

protocol HomePresenterProtocol {
    func presentListMovies(response: HomeModels.GetHomeMovies.Response)
}

class HomePresenter: HomePresenterProtocol {
   
    var viewController: HomeViewControllerDisplayProtocol?
    var coordinator: HomeCoordinator?
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    deinit {
        coordinator?.didFinish(child: coordinator)
    }
    
    func presentListMovies(response: HomeModels.GetHomeMovies.Response) {
        let viewModel = HomeModels.GetHomeMovies.ViewModel(movies: response.movies)
        viewController?.showListMovies(viewModel: viewModel)
    }
    
}
