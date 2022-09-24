//
//  ThirteenthSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

// MARK: - InteractorProtocol

protocol ThirteenthSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

// MARK: - Interactor

final class ThirteenthSlideInteractor: ThirteenthSlideInteractorProtocol {
    
    // MARK: - Reference
    
    weak var presenter: ThirteenthSlidePresenterProtocol?
    var entity: ThirteenthSlideEntityProtocol?
    
    // MARK: - Initializer
    
    init(entity: ThirteenthSlideEntityProtocol) {
        self.entity = entity
    }
    
    // MARK: - Entity Request
    
    func getContentScreens() -> ScreenSet {
        guard let model = entity?.screenSettingsThirteenthScreen() else { return (imageName: "", labelText: "") }
        return (model.pictureSlide, model.labelText)
    }
}
