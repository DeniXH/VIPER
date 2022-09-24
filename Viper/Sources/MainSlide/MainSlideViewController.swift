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
    func setView(image: UIImageView, label: UILabel)
}

class MainSlideViewController: MainControllerElements, MainSlideViewProtocol {
    
    var presenter: MainSlidePresenterProtocol?
    
    init(presenter: MainSlidePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView(image: UIImageView, label: UILabel) {
        let screenSet = presenter?.setScreenParameters()
        image.image = UIImage(named: "\(screenSet?.imageName ?? "")")
        label.text = screenSet?.labelText
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        setView(image: imageView, label: label)
        buttonLeft.isHidden = true
    }
    
    @objc override internal func buttonRightPressed() {
        presenter?.openNextModule(view: self)
    }
}
