//
//  AppCoordinator.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import UIKit

final class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var childCoordinator: [Coordinator] = []
    
    var parentCoordinator: Coordinator?
    
    init() {
        navigationController = UINavigationController()
    }
    
    
    func start() {}
}

extension AppCoordinator: AppPresenter {
    func showHome() {
        let homeTabBarController = UITabBarController()
        navigationController.navigationBar.isHidden = true
        
        let homeBarItems: [HomeTabBar] = [.home, .favorites, .people, .profile].sorted(by: {$0.order < $1.order})
        let navControllers = homeBarItems.map{prepareHomeNavigationController(with: $0)}
        homeTabBarController.viewControllers = navControllers
        navigationController.pushViewController(homeTabBarController
                                                , animated: true)
    }
    
    
    private func prepareHomeNavigationController(with homeTabBar: HomeTabBar) -> UIViewController {
        let navigationController = UINavigationController()
        
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.tabBarItem = UITabBarItem(title: homeTabBar.title, image: homeTabBar.image, selectedImage: homeTabBar.selectedImage)
        switch homeTabBar {
        case .home:
            let coordinator = HomeCoordinator(navigationController: navigationController)
            coordinator.parentCoordinator = self
            add(childCoordinator: coordinator)
            coordinator.start()
        default:
            print("")
        }
        return navigationController
    }
    
}
