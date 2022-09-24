//
//  SecondSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

// протокол
// слабая ссылка на презентер

// MARK: - InteractorProtocol

protocol SecondSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

// MARK: - Interactor

final class SecondSlideInteractor: SecondSlideInteractorProtocol {
    
    // MARK: - References
    
    weak var presenter: SecondSlidePresenterProtocol?
    var entity: SecondSlideEntityProtocol?
    
    // MARK: - Initializer

    init(entity: SecondSlideEntityProtocol) {
        self.entity = entity
    }
    
    // MARK: - Entity Request

    func getContentScreens() -> ScreenSet {
        guard let model = entity?.screenSettings() else { return (imageName: "", labelText: "") }
        return (model.pictureSlide, model.labelText)
    }
}
