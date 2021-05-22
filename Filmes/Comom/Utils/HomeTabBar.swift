//
//  HomeTabBar.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import UIKit

enum HomeTabBar {
    case home, people, favorites, profile
    
    var title: String {
        switch self {
        case .home:
            return Localization.homeTitle
        case .people:
            return Localization.peopleSearch
        case .favorites:
            return Localization.favorite
        case .profile:
            return Localization.profile
        }
    }
    
    var image:UIImage? {
        switch self {
        case .home:
            return UIImage(systemName: "house")
        case .people:
            return UIImage(systemName: "person.3")
        case .favorites:
            return UIImage(systemName: "star")
        case .profile:
            return UIImage(systemName: "gear")
        }
    }
    
    var selectedImage: UIImage? {
        switch self {
        case .home:
            return UIImage(systemName: "house.fill")
        case .people:
            return UIImage(systemName: "person.3.fill")
        case .favorites:
            return UIImage(systemName: "star.fill")
        case .profile:
            return UIImage(systemName: "gear.fill")
        }
    }
    
    var order: Int {
        switch self {
        case .home:
            return 0
        case .people:
            return 1
        case .favorites:
            return 2
        case .profile:
            return 3
        }
    }
}

