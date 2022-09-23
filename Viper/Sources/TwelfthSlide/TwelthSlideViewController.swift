//
//  TwelthSlideViewController.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol TwelthSlideViewProtocol: AnyObject {
}

class TwelthSlideViewController: LabelLeftControllerElements {

    var presenter: TwelthSlidePresenterProtocol?

    init(presenter: TwelthSlidePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        // происходит переопределение параметров imageView
        imageView.image = UIImage(named: "slide11") // установка пустой картинки
        label.text = "Состав одного модуля"
    }

    @objc override internal func buttonRightPressed() {
        let viewControllerSlide = ThirteenthSlideModuleBuilder.build()
        self.present(viewControllerSlide, animated: true)
    }

    @objc override internal func buttonLeftPressed() {
        dismiss(animated: true) // возвращает она предыдущее окно
    }
}
