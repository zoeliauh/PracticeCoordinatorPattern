//
//  SecondViewController.swift
//  PracticeCoordinatorPattern
//
//  Created by woanjwu liauh on 2022/6/10.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SecondVC"
        view.backgroundColor = .blue
    }
}
