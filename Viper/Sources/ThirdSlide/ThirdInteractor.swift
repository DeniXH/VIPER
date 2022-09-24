//
//  ThirdInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation

// MARK: - InteractorProtocol

protocol ThirdInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

// MARK: - Interactor

final class ThirdInteractor: ThirdInteractorProtocol {
    
    // MARK: - References
    
    weak var presenter: ThirdPresenterProtocol?
    var entity: ThirdEntityProtocol?
    
    // MARK: - Initializer
    
    init(entity: ThirdEntityProtocol) {
        self.entity = entity
    }
    
    // MARK: - Entity Request
    
    func getContentScreens() -> ScreenSet {
        guard let model = entity?.screenSettingsThirdScreen() else { return (imageName: "", labelText: "") }
        return (model.pictureSlide, model.labelText)
    }
}
