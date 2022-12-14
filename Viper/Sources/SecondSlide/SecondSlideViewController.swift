//
//  SecondSlideViewController.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

// должен быть протокол
// должна быть ссылка на презентер

// MARK: - ViewProtocol

protocol SecondSlideViewProtocol: AnyObject {
    func setView(image: UIImageView, label: UILabel)
}

// MARK: - ViewController

final class SecondSlideViewController: BaseControllerElements, SecondSlideViewProtocol {
    
    // MARK: - References
    
    var presenter: SecondSlidePresenterProtocol?
    
    // MARK: - Initializers
    
    init(presenter: SecondSlidePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        // происходит переопределение параметров imageView
        setView(image: imageView, label: label)
    }
    
    // MARK: - Setup
    
    func setView(image: UIImageView, label: UILabel) {
        guard let screenSet = presenter?.setScreenParameters() else { return }
        image.image = UIImage(named: screenSet.imageName)
        label.text = screenSet.labelText
    }
    
    override func setupLayout() {
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        buttonRight.translatesAutoresizingMaskIntoConstraints = false
        buttonLeft.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: label.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            
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
    
    @objc override internal func buttonRightPressed() {
        presenter?.openNextModule(view: self)
    }
    
    @objc override internal func buttonLeftPressed() {
        dismiss(animated: true) //  Возвращение предыдущего окна
    }
}
