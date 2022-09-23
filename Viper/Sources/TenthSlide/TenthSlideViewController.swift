//
//  TenthSlideViewController.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol TenthSlideViewProtocol: AnyObject {
}

class TenthSlideViewController: BaseControllerElements {

    var presenter: TenthSlidePresenterProtocol?

    init(presenter: TenthSlidePresenterProtocol) {
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
        imageView.image = UIImage(named: "slide9") // установка пустой картинки
        label.text = "Схема"
    }

    @objc override internal func buttonRightPressed() {
        presenter?.openNextModule(view: self)
    }

    @objc override internal func buttonLeftPressed() {
        dismiss(animated: true) // возвращает она предыдущее окно
    }
}

