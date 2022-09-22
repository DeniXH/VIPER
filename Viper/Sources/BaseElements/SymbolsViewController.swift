//
//  SymbolsViewController.swift
//  Viper
//
//  Created by Денис Холодков on 20.09.2022.
//

import Foundation
import UIKit

class SymbolsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }

    lazy var label: UILabel = {
       let label = UILabel()
    //   label.text = "Здесь будет расшифровка"
       label.font = .systemFont(ofSize: 15)
       label.backgroundColor = .blue
       label.textAlignment = .center
       label.textColor = .white
       return label
   }()

    lazy var textLabel: UILabel = {
      let textLabel = UILabel()
        textLabel.backgroundColor = .red
        return textLabel
    }()

    lazy var symbolLabel: UILabel = {
        let label = UILabel()
       // label.text = "V"
        label.font = .systemFont(ofSize: 25)
        label.backgroundColor = .cyan
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

    lazy var buttonLeft: UIButton = {
       let button = UIButton(type: .custom) // тип кастомный, нет серого выделения как в системной
       button.setImage(UIImage(named: "tintLeft"), for: .highlighted) // когда будет выделена будет картинка (for: .highlighted)
       button.alpha = 0.4 // нужна будет)
       button.addTarget(self, action: #selector(buttonLeftPressed), for: .touchUpInside)
       return button
   }()

    @objc func buttonRightPressed() {}
    @objc func buttonLeftPressed() {}


    func setupHierarchy() {
        view.addSubview(label)
        view.addSubview(textLabel)
        view.addSubview(symbolLabel)
        view.addSubview(buttonLeft)
        view.addSubview(buttonRight)
    }

    func setupLayout() {
      //  imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        symbolLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonRight.translatesAutoresizingMaskIntoConstraints = false
        buttonLeft.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

//            imageView.topAnchor.constraint(equalTo: view.topAnchor),
//            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            label.heightAnchor.constraint(equalToConstant: 100),
//            label.widthAnchor.constraint(equalToConstant: 250),
//            label.heightAnchor.constraint(equalToConstant: 1000),

            textLabel.topAnchor.constraint(equalTo: label.bottomAnchor),
            textLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            textLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            textLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),

            symbolLabel.topAnchor.constraint(equalTo: label.topAnchor),
            symbolLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            symbolLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            symbolLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

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
