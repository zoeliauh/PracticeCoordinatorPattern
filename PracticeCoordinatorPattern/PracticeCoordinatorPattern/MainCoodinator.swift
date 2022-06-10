//
//  MainCoodinator.swift
//  PracticeCoordinatorPattern
//
//  Created by woanjwu liauh on 2022/6/10.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navifationController: UINavigationController?
    
    var children: [Coordinator]? = nil
    
    func eventOccured(with type: Event) {
        switch type {
        case .buttonTapped:
            var vc:UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navifationController?.pushViewController(vc, animated: true)
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navifationController?.navigationBar.barTintColor = .black
        navifationController?.setViewControllers([vc], animated: false)
    }
    
    
}
