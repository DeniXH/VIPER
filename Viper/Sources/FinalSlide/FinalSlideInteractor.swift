//
//  FinalSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

// MARK: - InteractorProtocol

protocol FinalSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> (labelText: String, person: [String])
}

// MARK: - Interactor

final class FinalSlideInteractor: FinalSlideInteractorProtocol {
    
    // MARK: - Reference
    
    weak var presenter: FinalSlidePresenterProtocol?
    var entity: FinalSlideEntityProtocol?
    
    // MARK: - Initializer
    
    init(entity: FinalSlideEntityProtocol) {
        self.entity = entity
    }
    
    // MARK: - Entity Request
    
    func getContentScreens() -> (labelText: String, person: [String]) {
        guard let model = entity?.screenSettingsThirteenthScreen() else { return (labelText: "", person: []) }
        return (model.labelText, model.person)
    }
}
