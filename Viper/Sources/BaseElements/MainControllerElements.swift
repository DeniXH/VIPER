//
//  MainControllerElements.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

class MainControllerElements: UIViewController {
    
    // MARK: - Elements
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 35)
        label.numberOfLines = 2
        label.sizeToFit()
        return label
    }()
    
    lazy var buttonRight: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "tintRight"), for: .highlighted)
        button.alpha = 0.2
        button.addTarget(self, action: #selector(buttonRightPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonLeft: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "tintLeft"), for: .highlighted)
        button.alpha = 0.2
        button.addTarget(self, action: #selector(buttonLeftPressed), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(buttonRight)
        view.addSubview(buttonLeft)
    }
    
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
    
    @objc func buttonRightPressed() { }
    @objc func buttonLeftPressed() { }
}
