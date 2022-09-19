//
//  ViewController.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
import UIKit

// должен быть протокол
// должна быть ссылка на презентер

protocol SlideViewProtocol: AnyObject {
}

class SlideViewController: BaseControllerElements {

    var presenter: SlidePresenterProtocol?

    init(presenter: SlidePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        // происходит переопределение параметров imageView
        imageView.image = UIImage() // установка пустой картинки
        imageView.backgroundColor = .systemGreen
        imageView.contentMode = .scaleToFill
    }

    @objc override internal func buttonRightPressed() {
        let viewControllerSlide = ThirdModuleBuilder.build()
        self.present(viewControllerSlide, animated: true)
    }

    @objc override internal func buttonLeftPressed() {
        dismiss(animated: true) // возвращает она предыдущее окно
    }
}