//
//  MainSlideEntity.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation

// протокол
// слабая ссылка интерактор

// MARK: - EntityProtocol

protocol MainSlideEntityProtocol {
    func screenSettingsMainScreen() -> SetContentMainScreen
}

// MARK: - Entity

final class MainSlideEntity: MainSlideEntityProtocol {
    
    // MARK: - References
    
    weak var interactor: MainSlideInteractorProtocol?
    
    // MARK: - Model Init
    
    func screenSettingsMainScreen() -> SetContentMainScreen {
        SetContentMainScreen.getSettingsMainScreen()
    }
}

// MARK: - ModelStruct

struct SetContentMainScreen {
    let pictureSlide: String
    let labelText: String
}

// MARK: - Extension

private extension SetContentMainScreen {
    static func getSettingsMainScreen() -> SetContentMainScreen {
        SetContentMainScreen(pictureSlide: "slide1", labelText: """
                      Ты думал так выглядит настоящий
                      VIPER?
                      """)
    }
}
