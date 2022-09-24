//
//  TwelthSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

// MARK: - InteractorProtocol

protocol TwelthSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

// MARK: - Interactor

final class TwelthSlideInteractor: TwelthSlideInteractorProtocol {
    
    // MARK: - References
    
    weak var presenter: TwelthSlidePresenterProtocol?
    var entity: TwelthSlideEntityProtocol?
    
    // MARK: - Initializer
    
    init(entity: TwelthSlideEntityProtocol) {
        self.entity = entity
    }
    
    // MARK: - Entity Request
    
    func getContentScreens() -> ScreenSet {
        guard let model = entity?.screenSettingsTwelthScreen() else { return (imageName: "", labelText: "") }
        return (model.pictureSlide, model.labelText)
    }
}
