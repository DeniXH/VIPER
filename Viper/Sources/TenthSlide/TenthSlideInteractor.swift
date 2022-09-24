//
//  TenthSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

// MARK: - InteractorProtocol

protocol TenthSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

// MARK: - Interactor

final class TenthSlideInteractor: TenthSlideInteractorProtocol {
    
    // MARK: - References
    
    weak var presenter: TenthSlidePresenterProtocol?
    var entity: TenthSlideEntityProtocol?
    
    // MARK: - Initializer
    
    init(entity: TenthSlideEntityProtocol) {
        self.entity = entity
    }
    
    // MARK: - Entity Request
    
    func getContentScreens() -> ScreenSet {
        guard let model = entity?.screenSettingsTenthScreen() else { return (imageName: "", labelText: "") }
        return (model.pictureSlide, model.labelText)
    }
}
