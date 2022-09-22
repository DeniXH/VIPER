//
//  ThirdViewController.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation
import UIKit

protocol ThirdViewProtocol: AnyObject {

}

class ThirdViewController: BaseControllerElements {

    var presenter: ThirdPresenterProtocol?

    init(presenter: ThirdPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        imageView.image = UIImage(named: "slide3") // установка пустой картинки
        imageView.backgroundColor = .systemGreen
        imageView.contentMode = .scaleToFill
    }

    @objc override func buttonRightPressed() {
        let viewControllerSlide = FourthModuleBuilder.build()
        self.present(viewControllerSlide, animated: true)
    }

    @objc override func buttonLeftPressed() {
        dismiss(animated: true) // возвращает она предыдущее окно
    }
}
