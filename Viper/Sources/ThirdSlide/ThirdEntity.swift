//
//  ThirdEntity.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation

// MARK: - EntityProtocol

protocol ThirdEntityProtocol {
    func screenSettingsThirdScreen() -> SetContentThirdScreen
}

// MARK: - Entity

final class ThirdEntity: ThirdEntityProtocol {
    
    // MARK: - Reference
    
    weak var interactor: ThirdInteractorProtocol?
    
    // MARK: - Model Init
    
    func screenSettingsThirdScreen() -> SetContentThirdScreen {
        SetContentThirdScreen.getSettingsThirdScreen()
    }
}

// MARK: - Screen Model

struct SetContentThirdScreen {
    let pictureSlide: String
    let labelText: String
}

// MARK: - Extension

private extension SetContentThirdScreen {
    static func getSettingsThirdScreen() -> SetContentThirdScreen {
        SetContentThirdScreen(pictureSlide: "slide3", labelText: "История")
    }
}
