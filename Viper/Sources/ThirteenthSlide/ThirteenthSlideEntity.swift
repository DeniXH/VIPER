//
//  ThirteenthSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

// MARK: - EntityProtocol

protocol ThirteenthSlideEntityProtocol {
    func screenSettingsThirteenthScreen() -> SetContentThirteenthScreen
}

// MARK: - Entity

final class ThirteenthSlideEntity: ThirteenthSlideEntityProtocol {
    
    // MARK: - Reference
    
    weak var interactor: ThirteenthSlideInteractorProtocol?
    
    // MARK: - Model Init
    
    func screenSettingsThirteenthScreen() -> SetContentThirteenthScreen {
        SetContentThirteenthScreen.getSettingsThirteenthScreen()
    }
}

// MARK: - Screen Model

struct SetContentThirteenthScreen {
    let pictureSlide: String
    let labelText: String
}

// MARK: - Extension

private extension SetContentThirteenthScreen {
    static func getSettingsThirteenthScreen() -> SetContentThirteenthScreen {
        SetContentThirteenthScreen(pictureSlide: "slide12", labelText: "Плюсы и минусы архитектуры")
    }
}
