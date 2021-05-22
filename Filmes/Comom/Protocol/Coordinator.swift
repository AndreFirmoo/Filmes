//
//  Coordinator.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//

import UIKit

protocol Coordinator: class {
    var navigationController:UINavigationController {get set}
    var childCoordinator: [Coordinator] {get set}
    var parentCoordinator: Coordinator? {get set}
    
    func start()
    
    func add(childCoordinator coordinator: Coordinator)
    
    func remove(childCoordinator coordinator: Coordinator)
    
    func didFinish(child coordinator: Coordinator?)
    
}

extension Coordinator {
    func add(childCoordinator coordinator: Coordinator) {
        childCoordinator.append(coordinator)
    }
    
    func remove(childCoordinator coordinator: Coordinator) {
        childCoordinator = childCoordinator.filter {$0 !== coordinator}
    }
    
    func didFinish(child coordinator: Coordinator?) {
        if let coordinator = coordinator {
            remove(childCoordinator: coordinator)
        }else {
            parentCoordinator?.didFinish(child: self)
        }
    }
}
