//
//  LabelLeftControllerElements.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

class LabelLeftControllerElements: BaseControllerElements {

    // MARK: - Lifecicle

    override func viewDidLoad() {
       super.viewDidLoad()
        setupLayout()
    }

    // MARK: - Layout settings

      override func setupLayout() {

            imageView.translatesAutoresizingMaskIntoConstraints = false
            label.translatesAutoresizingMaskIntoConstraints = false
            buttonRight.translatesAutoresizingMaskIntoConstraints = false
            buttonLeft.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

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
