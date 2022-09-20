//
//  FourthViewController.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation
import UIKit

protocol FourthViewProtocol: AnyObject {
    
}

class FourthViewController: SymbolsViewController {

    var presenter: FourthPresenterProtocol?

    init(presenter: FourthPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
    }

    @objc override func buttonPressed() {
        
    }
}
