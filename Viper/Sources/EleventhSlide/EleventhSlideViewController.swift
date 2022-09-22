//
//  EleventhSlideViewController.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol EleventhSlideViewProtocol: AnyObject {
}

class EleventhSlideViewController: BaseControllerElements {

    var presenter: EleventhSlidePresenterProtocol?

    init(presenter: EleventhSlidePresenterProtocol) {
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
        imageView.image = UIImage(named: "slide10") // установка пустой картинки
        imageView.backgroundColor = .systemGreen
        imageView.contentMode = .scaleToFill
    }

    @objc override internal func buttonRightPressed() {
        let viewControllerSlide = TwelthSlideModuleBuilder.build()
        self.present(viewControllerSlide, animated: true)
    }

    @objc override internal func buttonLeftPressed() {
        dismiss(animated: true) // возвращает она предыдущее окно
    }
}
