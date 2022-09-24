//
//  FourthInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation

// протокол
// слабая ссылка на презентер

// MARK: - InteractroProtocol

protocol FourthInteractorProtocol: AnyObject {
    func nextStepView() -> Bool?
    func previosStepView() -> Bool?
}

// MARK: - Interator

final class FourthInteractor: FourthInteractorProtocol {
    
    // MARK: - Presenter and Entity
    
    weak var presenter: FourthPresenterProtocol?
    var entity: FourthEntityProtocol?
    
    // MARK: - ScreenChanging Elemets
    
    private var isChangeScreen: Bool?
    private var count = -1
    
    // MARK: - Initializers
    
    init(entity: FourthEntityProtocol) {
        self.entity = entity
    }
    
    // MARK
    
    func updateViewContent(model: ModelFromInteractor) {
        presenter?.updateViewContent(model: model)
    }
    
    // MARK: - Actions Control
    
    func nextStepView() -> Bool? {
        // в зависимости от состояния меняем лейбл и меняем дальнейшее состояние
        count += 1
        guard count != 5, let models: (labelText: String, textScreens: String, nameLabel: String) = entity?.getModel(position: count)
        else {
            count -= 1
            return true
        }
        
        updateViewContent(model: (models.labelText,
                          models.textScreens,
                          models.nameLabel,
                          isChangeScreen))
        
        return nil
    }
    
    func previosStepView() -> Bool? {
        // в зависимости от состояния меняем лейбл и меняем дальнейшее состояние
        count -= 1
        guard count != -1, let models: (labelText: String, textScreens: String, nameLabel: String) = entity?.getModel(position: count)
        else { return true }
        
        updateViewContent(model: (models.labelText,
                          models.textScreens,
                          models.nameLabel,
                          isChangeScreen))
        
        return nil
    }
}
