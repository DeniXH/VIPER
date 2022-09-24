//
//  ThirdViewController.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation
import UIKit

protocol ThirdViewProtocol: AnyObject {
    func setView(image: UIImageView, label: UILabel)
}

class ThirdViewController: BaseControllerElements, ThirdViewProtocol {
    
    var presenter: ThirdPresenterProtocol?
    
    init(presenter: ThirdPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView(image: UIImageView, label: UILabel) {
        let screenSet = presenter?.setScreenParameters()
        image.image = UIImage(named: "\(screenSet?.imageName ?? "")")
        label.text = screenSet?.labelText
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setView(image: imageView, label: label)
    }
    
    @objc override internal func buttonRightPressed() {
        presenter?.openNextModule(view: self)
    }
    
    @objc override func buttonLeftPressed() {
        dismiss(animated: true) // возвращает она предыдущее окно
    }
}
