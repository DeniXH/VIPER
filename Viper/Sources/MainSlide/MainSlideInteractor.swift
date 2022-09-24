//
//  MainSlideInteractor.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation

// протокол
// слабая ссылка на презентер

// MARK: - InteractorProtocol

protocol MainSlideInteractorProtocol: AnyObject {
    func getContentScreens()
}

// MARK: - Interactor

final class MainSlideInteractor: MainSlideInteractorProtocol {
    
    // MARK: - References
    
    weak var presenter: MainSlidePresenterProtocol?
    var entity: MainSlideEntityProtocol?
    
    // MARK: - Initializer
    
    init(entity: MainSlideEntityProtocol) {
        self.entity = entity
    }
    
    // MARK: - Entity Request
    
    func getContentScreens() {
        guard let model = entity?.screenSettingsMainScreen() else { return }
        presenter?.updateViewContent(model: (model.pictureSlide, model.labelText))
    }
}
