//
//  ThirdViewController.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import UIKit

// MARK: - ViewProtocol

protocol ThirdViewProtocol: AnyObject {
    func setView(image: UIImageView, label: UILabel)
}

// MARK: - ViewController

final class ThirdViewController: BaseControllerElements, ThirdViewProtocol {
    
    // MARK: - Reference
    
    var presenter: ThirdPresenterProtocol?
    
    // MARK: - Initializers
    
    init(presenter: ThirdPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setView(image: imageView, label: label)
    }
    
    // MARK: - Setup
    
    func setView(image: UIImageView, label: UILabel) {
        guard let screenSet = presenter?.setScreenParameters() else { return }
        image.image = UIImage(named: screenSet.imageName)
        label.text = screenSet.labelText
    }
    
    // MARK: - Actions
    
    @objc override internal func buttonRightPressed() {
        presenter?.openNextModule(view: self)
    }
    
    @objc override func buttonLeftPressed() {
        dismiss(animated: true) // Возвращает предыдущее окно
    }
}
