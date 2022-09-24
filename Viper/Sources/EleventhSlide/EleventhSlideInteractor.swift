//
//  EleventhSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

// MARK: - InteractorProtocol

protocol EleventhSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

// MARK: - Interactor

final class EleventhSlideInteractor: EleventhSlideInteractorProtocol {
    
    // MARK: - References
    
    weak var presenter: EleventhSlidePresenterProtocol?
    var entity: EleventhSlideEntityProtocol?
    
    // MARK: - Initializer
    
    init(entity: EleventhSlideEntityProtocol) {
        self.entity = entity
    }
    
    // MARK: - Entity Request
    
    func getContentScreens() -> ScreenSet {
        guard let model = entity?.screenSettingsEleventhScreen() else { return (imageName: "", labelText: "") }
        return (model.pictureSlide, model.labelText)
    }
}
