//
//  MovieListModels.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 21/05/21.
//

import Foundation
struct MovieList: Codable{
    var page: Int
    let total_pages: Int
    let results: [MovieItem]
    
    init(page:Int, total_pages:Int,results:[MovieItem]) {
        self.page = page
        self.total_pages = total_pages
        self.results = results
    }
}

struct MovieItem: Codable {
    let id:Int32?
    let poster_path: String?
    let original_title:String?
}
