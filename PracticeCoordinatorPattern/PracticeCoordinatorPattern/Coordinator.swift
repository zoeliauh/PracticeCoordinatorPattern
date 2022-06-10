//
//  Coordinator.swift
//  PracticeCoordinatorPattern
//
//  Created by woanjwu liauh on 2022/6/10.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navifationController: UINavigationController? { get set }
    
    // coordinator can also owned other coordinator
    var children: [Coordinator]? { get set }
    
    // 其他 VC 告訴 coordinator 有事發生，需要處理
    func eventOccured(with type: Event)
    
    // 當 app 執行時，coordinator 需要被告知開始執行
    func start()
}

// 所有的 VC 都需要有個中繼的 coordinator
protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
