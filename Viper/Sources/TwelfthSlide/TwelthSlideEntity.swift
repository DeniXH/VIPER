//
//  TwelthSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

// MARK: - EntityProtocol

protocol TwelthSlideEntityProtocol {
    func screenSettingsTwelthScreen() -> SetContentTwelthScreen
}

// MARK: - Entity

final class TwelthSlideEntity: TwelthSlideEntityProtocol {
    
    // MARK: - Reference
    
    weak var interactor: TwelthSlideInteractorProtocol?
    
    // MARK: - Model Init
    
    func screenSettingsTwelthScreen() -> SetContentTwelthScreen {
        SetContentTwelthScreen.getSettingsTwelthScreen()
    }
}

// MARK: - Screen Model

struct SetContentTwelthScreen {
    let pictureSlide: String
    let labelText: String
}

// MARK: - Extension

private extension SetContentTwelthScreen {
    static func getSettingsTwelthScreen() -> SetContentTwelthScreen {
        SetContentTwelthScreen(pictureSlide: "slide11", labelText: "Состав одного модуля")
    }
}
