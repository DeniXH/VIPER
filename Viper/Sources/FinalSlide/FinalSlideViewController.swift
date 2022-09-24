//
//  FinalSlideViewController.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - ViewProtocol

protocol FinalSlideViewProtocol: AnyObject {

}

// MARK: - ViewController

final class FinalSlideViewController: UIViewController, FinalSlideViewProtocol {
    
    // MARK: - Reference
    
    var presenter: FinalSlidePresenterProtocol?
    
    // MARK: - Elements
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 35)
        label.numberOfLines = 0
        label.sizeToFit()
        return label
    }()
    
    private func persons() -> UILabel {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 25)
        label.numberOfLines = 0
        label.sizeToFit()
        return label
    }
    
    private lazy var buttonRight: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "tintRight"), for: .highlighted)
        button.alpha = 0.2
        button.addTarget(self, action: #selector(buttonRightPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonLeft: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "tintLeft"), for: .highlighted)
        button.alpha = 0.2
        button.addTarget(self, action: #selector(buttonLeftPressed), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Initializers
    
    init(presenter: FinalSlidePresenterProtocol) {
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
    
    // MARK: - Setup
    
    private func setupPersonLabels() -> (leftPersons: UILabel, rightPersons: UILabel) {
        guard let model = presenter?.setScreenParameters() else { return (UILabel(), UILabel()) }
        
        label.text = model.labelText
        
        let leftPersons = persons()
        let rightPersons = persons()
        
        view.addSubview(leftPersons)
        view.addSubview(rightPersons)
        
        let arrayCenter = model.person.count / 2
        let firstHalf = model.person[0 ..< arrayCenter]
        let secondHalf = model.person[arrayCenter ..< model.person.count]
        
        leftPersons.text = firstHalf.joined(separator: "\n")
        rightPersons.text = secondHalf.joined(separator: "\n")
        
        return (leftPersons, rightPersons)
    }
    
    private func setupHierarchy() {
        view.addSubview(label)
        view.addSubview(buttonLeft)
        view.addSubview(buttonRight)
    }
    
    private func setupLayout() {
        
        let labels = setupPersonLabels()
        
        labels.leftPersons.translatesAutoresizingMaskIntoConstraints = false
        labels.rightPersons.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        buttonRight.translatesAutoresizingMaskIntoConstraints = false
        buttonLeft.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labels.leftPersons.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            labels.leftPersons.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            labels.leftPersons.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            labels.leftPersons.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            labels.rightPersons.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            labels.rightPersons.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            labels.rightPersons.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            labels.rightPersons.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
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
    
    @objc func buttonRightPressed() {
        presenter?.openNextModule(view: self)
    }
    
    @objc func buttonLeftPressed() {
        dismiss(animated: true)
    }
}
