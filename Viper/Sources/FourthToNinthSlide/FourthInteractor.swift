//
//  ThirdInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// протокол
// слабая ссылка на презентер

protocol FourthInteractorProtocol: AnyObject {
    func firstView() -> ModelFromInteractor
    func nextStepView() -> ModelFromInteractor
    func previosStepView() -> ModelFromInteractor
}

class FourthInteractor: FourthInteractorProtocol {
    weak var presenter: FourthPresenterProtocol?
    var entity: FourthEntityProtocol?
    
    
    var isChangeScreen: Bool?
    
    init(entity: FourthEntityProtocol) {
        self.entity = entity
    }
    
    var count = 0
    
    func firstView() -> ModelFromInteractor {
        guard let models: (labelText: String, textScreens: String, nameLabel: String) = entity?.getModel(position: count) else { return (nil, nil, nil, nil)
        }
        
        return (models.labelText,
                models.textScreens,
                models.nameLabel,
                isChangeScreen)
    }
    
    func nextStepView() -> ModelFromInteractor {
        // в зависимости от состояния меняем лейбл и меняем дальнейшее состояние
        count += 1
        
        guard count != 5, let models: (labelText: String, textScreens: String, nameLabel: String) = entity?.getModel(position: count) else {
            count -= 1
            return (nil, nil, nil, true)
        }
        
        return (models.labelText,
                models.textScreens,
                models.nameLabel,
                isChangeScreen)
    }
    
    func previosStepView() -> ModelFromInteractor {
        // в зависимости от состояния меняем лейбл и меняем дальнейшее состояние
        count -= 1
        guard count != -1, let models: (labelText: String, textScreens: String, nameLabel: String) = entity?.getModel(position: count) else { return (nil, nil, nil, true) }
        
        return (models.labelText,
                models.textScreens,
                models.nameLabel,
                isChangeScreen)
    }
}
