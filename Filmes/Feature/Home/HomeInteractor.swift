//
//  HomeInteractor.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import Foundation

protocol HomeInteractorProtocol {
    func showMoviesList()
}


class HomeInteractor: HomeInteractorProtocol {
    
    
    var presenter: HomePresenterProtocol?
    
    init(presenter: HomePresenterProtocol) {
        self.presenter = presenter
    }
    
    func showMoviesList() {
        
        let moviesList = [MovieItem(id: 1, poster_path: "house", original_title: "Filme 1"),
                          MovieItem(id: 2, poster_path: "house", original_title: "Filme 2"),
                          MovieItem(id: 3, poster_path: "house", original_title: "Filme 3"),
                          MovieItem(id: 4, poster_path: "house", original_title: "Filme 4")]
        
        let response = HomeModels.GetHomeMovies.Response(movies: moviesList)
        
        presenter?.presentListMovies(response: response)
        
    }

}
