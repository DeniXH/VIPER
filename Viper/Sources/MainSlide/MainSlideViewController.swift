//
//  ViewController.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import UIKit

// должен быть протокол
// должна быть ссылка на презентер

protocol MainSlideViewProtocol: AnyObject {
}

class MainSlideViewController: MainControllerElements {
    
    var presenter: MainSlidePresenterProtocol?

    init(presenter: MainSlidePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        buttonLeft.isHidden = true
    }

    @objc override internal func buttonRightPressed() {
        presenter?.openNextModule(vc: self)
    }
}
