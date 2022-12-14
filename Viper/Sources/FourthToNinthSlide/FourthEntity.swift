//
//  FourthSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation

// протокол
// слабая ссылка интерактор

// MARK: - EntityProtocol

protocol FourthEntityProtocol {
    func getModel(position: Int) -> (String, String, String)
}

// MARK: - Entity

final class FourthSlideEntity: FourthEntityProtocol {
    
    // MARK: - References
    
    weak var interactor: FourthInteractorProtocol?
    var modelsView = ModelViews.getModelsView()
    
    // MARK: - Model
    
    func getModel(position: Int) -> (String, String, String)  {
        return (modelsView.labelsText[position],
                modelsView.textScreens[position],
                modelsView.nameLabel[position])
    }
}

// MARK: - Model

struct ModelViews {
    let labelsText: [String]
    let textScreens: [String]
    let nameLabel: [String]
}

// MARK: - Extension

private extension ModelViews {
    static func getModelsView () -> ModelViews {
        ModelViews(labelsText: ["V", "I", "P", "E", "R"],
                   textScreens: ["Показывает, что скажет Презентер и передает ввод пользователя презентеру",
                                 "Содержит описание сценария использования",
                                 "Содержит логику отображения и умеет подготавливать данные для представления пользователю, а также реагировать на ввод пользователя",
                                 "Описание предметной модели",
                                 "Описывает логику навигации между экранами"],
                   nameLabel: ["View", "Interactor", "Presenter", "Entity", "Router"])
    }
}
