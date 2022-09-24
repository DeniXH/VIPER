//
//  TenthSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

// протокол
// слабая ссылка интерактор

// MARK: - EntityProtocol

protocol TenthSlideEntityProtocol {
    func screenSettingsTenthScreen() -> SetContentTenthScreen
}

// MARK: - Entity

final class TenthSlideEntity: TenthSlideEntityProtocol {
    
    // MARK: - Reference
    
    weak var interactor: TenthSlideInteractorProtocol?
    
    // MARK: - Model Init
    
    func screenSettingsTenthScreen() -> SetContentTenthScreen {
        SetContentTenthScreen.getSettingsTenthScreen()
    }
}

// MARK: - Screen Model

struct SetContentTenthScreen {
    let pictureSlide: String
    let labelText: String
}

// MARK: - Extension

private extension SetContentTenthScreen {
    static func getSettingsTenthScreen() -> SetContentTenthScreen {
        SetContentTenthScreen(pictureSlide: "slide9", labelText: "Схема")
    }
}
