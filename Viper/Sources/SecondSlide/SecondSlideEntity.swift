//
//  SecondSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation

// протокол
// слабая ссылка интерактор

// MARK: - EntityProtocol

protocol SecondSlideEntityProtocol {
    func screenSettings() -> SetContentScreen
}

// MARK: - Entity

final class SecondSlideEntity: SecondSlideEntityProtocol {
    
    // MARK: - References
    
    weak var interactor: SecondSlideInteractorProtocol?
    
    // MARK: - Model Init
    
    func screenSettings() -> SetContentScreen {
        SetContentScreen.getSettingsScreen()
    }
}

// MARK: - Screen Model

struct SetContentScreen {
    let pictureSlide: String
    let labelText: String
}

// MARK: - Extension

private extension SetContentScreen {
    static func getSettingsScreen() -> SetContentScreen {
        SetContentScreen(pictureSlide: "slide2", labelText: "Настоящий VIPER выглядит так!")
    }
}
