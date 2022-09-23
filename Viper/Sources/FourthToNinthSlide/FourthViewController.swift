//
//  ThirdViewController.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
import UIKit

// должен быть протокол
// должна быть ссылка на презентер

protocol FourthViewProtocol: AnyObject {
}

class FourthViewController: UIViewController {

    var presenter: FourthPresenterProtocol?

    init(presenter: FourthPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupHierarchy()
        setupLayout()
    }

    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "View"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 80)
        label.sizeToFit()
        label.textAlignment = .left
        return label
    }()

    lazy var textLabel: UILabel = {
      let textLabel = UILabel()
        textLabel.text = "Показывает, что скажет Презентер и передает ввод пользователя презентеру"
        textLabel.textColor = .white
        textLabel.sizeToFit()
        textLabel.font = .systemFont(ofSize: 20)
        textLabel.numberOfLines = 0
        return textLabel
    }()

    lazy var symbolLabel: UILabel = {
        let label = UILabel()
        label.text = "V"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 400)
        label.textAlignment = .center
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

    @objc func buttonLeftPressed() {
        let nextStep = presenter?.getPreviosStep()

        if nextStep?.3 != nil {
            dismiss(animated: true)
        } else {
            label.text = nextStep?.2
            textLabel.text = nextStep?.1
            symbolLabel.text = nextStep?.0
        }
    }

    // функция правой кнопки
    @objc func buttonRightPressed() {
        var nextStep = presenter?.getNextStep()

        if nextStep?.3 != nil {
            let viewControllerSlide = TenthSlideModuleBuilder.build()
            // presenter.функция роутера, с параметром ввиде контроллера
            self.present(viewControllerSlide, animated: true)
        } else {
            label.text = nextStep?.2
            textLabel.text = nextStep?.1
            symbolLabel.text = nextStep?.0
        }
        nextStep?.3 = nil
    }

    func setupHierarchy() {
        view.addSubview(label)
        view.addSubview(textLabel)
        view.addSubview(symbolLabel)
        view.addSubview(buttonLeft)
        view.addSubview(buttonRight)
    }

    func setupLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        symbolLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonRight.translatesAutoresizingMaskIntoConstraints = false
        buttonLeft.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),

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
