//
//  ThirteenthSlideViewController.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - ViewProtocol

protocol ThirteenthSlideViewProtocol: AnyObject {
    func setView(image: UIImageView, label: UILabel)
}

// MARK: - ViewController

final class ThirteenthSlideViewController: LabelLeftControllerElements, ThirteenthSlideViewProtocol {
    
    // MARK: - Reference
    
    var presenter: ThirteenthSlidePresenterProtocol?
    
    // MARK: - Initializers
    
    init(presenter: ThirteenthSlidePresenterProtocol) {
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
        guard let model = presenter?.setScreenParameters() else { return }
        image.image = UIImage(named: model.imageName)
        label.text = model.labelText
    }
    
    // MARK: - Actions
    
    @objc override internal func buttonRightPressed() {
        presenter?.openNextModule(view: self)
    }
    
    @objc override internal func buttonLeftPressed() {
        dismiss(animated: true) // возвращает она предыдущее окно
    }
}
