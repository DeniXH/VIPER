//
//  BaseControllerElements.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
import UIKit

class MainControllerElements: UIViewController {

// MARK: - Lifecicle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }

// MARK: - Setup elements

     lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "slide1")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()

     lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Label"
        label.font = .systemFont(ofSize: 15)
        label.backgroundColor = .blue
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()

     lazy var buttonRight: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "tintRight"), for: .highlighted)
        button.alpha = 0.4 // нужна будет)
        button.addTarget(self, action: #selector(buttonRightPressed), for: .touchUpInside)
        return button
    }()

    @objc func buttonRightPressed() { }

     lazy var buttonLeft: UIButton = {
        let button = UIButton(type: .custom) // тип кастомный, нет серого выделения как в системной
        button.setImage(UIImage(named: "tintLeft"), for: .highlighted) // когда будет выделена будет картинка (for: .highlighted)
        button.alpha = 0.4 // нужна будет)
        button.addTarget(self, action: #selector(buttonLeftPressed), for: .touchUpInside)
        return button
    }()

    @objc func buttonLeftPressed() { }

    func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(buttonRight)
        view.addSubview(buttonLeft)
    }

// MARK: - Layout settings

    func setupLayout() {

        imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        buttonRight.translatesAutoresizingMaskIntoConstraints = false
        buttonLeft.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 70),

            buttonRight.topAnchor.constraint(equalTo: view.topAnchor),
            buttonRight.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            buttonRight.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
            buttonRight.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            buttonLeft.topAnchor.constraint(equalTo: view.topAnchor),
            buttonLeft.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            buttonLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            buttonLeft.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60)
        ])
    }
}
