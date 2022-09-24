//
//  EleventhSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

// MARK: - EntityProtocol

protocol EleventhSlideEntityProtocol {
    func screenSettingsEleventhScreen() -> SetContentEleventhScreen
}

// MARK: - Entity

final class EleventhSlideEntity: EleventhSlideEntityProtocol {
    
    // MARK: - Reference
    
    weak var interactor: EleventhSlideInteractorProtocol?
    
    // MARK: - Model Init
    
    func screenSettingsEleventhScreen() -> SetContentEleventhScreen {
        SetContentEleventhScreen.getSettingsEleventhScreen()
    }
}

// MARK: - Screen Model

struct SetContentEleventhScreen {
    let pictureSlide: String
    let labelText: String
}

// MARK: - Extension

private extension SetContentEleventhScreen {
    static func getSettingsEleventhScreen() -> SetContentEleventhScreen {
        SetContentEleventhScreen(pictureSlide: "slide10", labelText: "Распределение модулей между экранами")
    }
}
