//
//  ThirteenthSlideViewController.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol ThirteenthSlideViewProtocol: AnyObject {
}

class ThirteenthSlideViewController: BaseControllerElements {

    var presenter: ThirteenthSlidePresenterProtocol?

    init(presenter: ThirteenthSlidePresenterProtocol) {
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
        imageView.image = UIImage(named: "slide12") // установка пустой картинки
        imageView.backgroundColor = .systemGreen
        imageView.contentMode = .scaleToFill
    }

    @objc override internal func buttonRightPressed() {
        let viewControllerSlide = MainSlideModuleBuilder.build()
        self.present(viewControllerSlide, animated: true)
    }

    @objc override internal func buttonLeftPressed() {
        dismiss(animated: true) // возвращает она предыдущее окно
    }
}

