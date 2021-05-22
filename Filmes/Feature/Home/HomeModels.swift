//
//  HomeModels.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import Foundation


enum HomeModels{
    
    enum GetHomeMovies {
        struct Response {
            var movies: [MovieItem]
        }
        struct ViewModel {
            var movies: [MovieItem]
        }
    }
    
}

