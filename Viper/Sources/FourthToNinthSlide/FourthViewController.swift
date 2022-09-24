//
//  FourthViewController.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

// должен быть протокол
// должна быть ссылка на презентер

// MARK: - ViewProtocol

protocol FourthViewProtocol: AnyObject {
    func setupView(model: ModelFromInteractor)
}

// MARK: - ViewController

final class FourthViewController: UIViewController, FourthViewProtocol {
    
    // MARK: - Presenter
    
    var presenter: FourthPresenterProtocol?
    
    // MARK: - Initializers
    
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
        buttonRightPressed()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Elements
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 80)
        label.sizeToFit()
        label.textAlignment = .left
        return label
    }()
    
    private lazy var textLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.textColor = .white
        textLabel.sizeToFit()
        textLabel.font = .systemFont(ofSize: 20)
        textLabel.numberOfLines = 0
        return textLabel
    }()
    
    private lazy var symbolLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 400)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var buttonRight: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "tintRight"), for: .highlighted)
        button.alpha = 0.4
        button.addTarget(self, action: #selector(buttonRightPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonLeft: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "tintLeft"), for: .highlighted)
        button.alpha = 0.4
        button.addTarget(self, action: #selector(buttonLeftPressed), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Setup
    
    func setupView(model: ModelFromInteractor) {
        label.text = model.nameLabel
        textLabel.text = model.textScreens
        symbolLabel.text = model.symbolLabelText
    }
    
    private func setupHierarchy() {
        view.addSubview(label)
        view.addSubview(textLabel)
        view.addSubview(symbolLabel)
        view.addSubview(buttonLeft)
        view.addSubview(buttonRight)
    }
    
    private func setupLayout() {
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
    
    // MARK: - Actions
    
    @objc private func buttonLeftPressed() {
        presenter?.buttonLeftPressed()
    }
    
    @objc private func buttonRightPressed() {
        presenter?.buttonRightPressed()
    }
}
