//
//  MainSlideViewController.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import UIKit

// должен быть протокол
// должна быть ссылка на презентер

// MARK: - ViewProtocol

protocol MainSlideViewProtocol: AnyObject {
    func setView(model: ScreenSet)
}

// MARK: - ViewController

final class MainSlideViewController: MainControllerElements, MainSlideViewProtocol {
    
    // MARK: - Reference
    
    var presenter: MainSlidePresenterProtocol?
    
    // MARK: - Initializer
    
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
        presenter?.setScreenParameters()
    }
    
    // MARK: - Setup
    
    func setView(model: ScreenSet) {
        super.imageView.image = UIImage(named: model.imageName)
        super.label.text = model.labelText
    }
    
    // MARK: - Actions
    
    @objc override internal func buttonRightPressed() {
        presenter?.openNextModule()
    }
}
