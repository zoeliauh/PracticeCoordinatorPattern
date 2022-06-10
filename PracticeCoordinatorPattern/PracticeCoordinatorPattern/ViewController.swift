//
//  ViewController.swift
//  PracticeCoordinatorPattern
//
//  Created by woanjwu liauh on 2022/6/10.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"
        setupButton()
    }
    
    func setupButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .orange
        button.setTitleColor(.white, for: .normal)
        button.setTitle("TapMe!", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        coordinator?.eventOccured(with: .buttonTapped)
    }
}

