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
    
//    lazy var imageView: UIImageView = {
//       let imageView = UIImageView()
//       imageView.image = UIImage(named: "viper")
//       imageView.contentMode = .scaleAspectFill
//       imageView.clipsToBounds = true
//       return imageView
//   }()


    lazy var label: UILabel = {
       let label = UILabel()
       label.text = "Label"
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
        label.text = "V"
        label.font = .systemFont(ofSize: 25)
        label.backgroundColor = .blue
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()

    lazy var button: UIButton = {
      let button = UIButton()
        button.setTitle("Кнопка", for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()


    @objc func buttonPressed() {}

    func setupHierarchy() {
        view.addSubview(label)
        view.addSubview(textLabel)
        view.addSubview(symbolLabel)
    }

    func setupLayout() {
      //  imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

//            imageView.topAnchor.constraint(equalTo: view.topAnchor),
//            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            label.heightAnchor.constraint(equalToConstant: 200),
//            label.widthAnchor.constraint(equalToConstant: 250),
//            label.heightAnchor.constraint(equalToConstant: 1000),

            textLabel.topAnchor.constraint(equalTo: label.bottomAnchor),
            textLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            textLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            textLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),

            symbolLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            symbolLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            symbolLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            symbolLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
