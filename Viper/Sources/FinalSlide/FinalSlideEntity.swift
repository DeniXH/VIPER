//
//  FinalSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

// MARK: - EntityProtocol

protocol FinalSlideEntityProtocol {
    func screenSettingsThirteenthScreen() -> SetContentFinalScreen
}

// MARK: - Entity

final class FinalSlideEntity: FinalSlideEntityProtocol {
    
    // MARK: - Reference
    
    weak var interactor: FinalSlideInteractorProtocol?
    
    // MARK: - Model Init
    
    func screenSettingsThirteenthScreen() -> SetContentFinalScreen {
        SetContentFinalScreen.getSettingsFinalScreen()
    }
}

// MARK: - Screen Model

struct SetContentFinalScreen {
    let labelText: String
    let person: [String]
}

// MARK: - Extension

private extension SetContentFinalScreen {
    static func getSettingsFinalScreen() -> SetContentFinalScreen {
        SetContentFinalScreen(labelText: "Участники презентации",
                              person: ["Артур Горлов",
                                       "Антон Храпов",
                                       "Денис Холодков",
                                       "Анатолий Курилик",
                                       "Сергей Масюк",
                                       "Илья Лаврионов",
                                       "Андрей Богомолов",
                                       "Артём Галай"]
        )
    }
}
