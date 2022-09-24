//
//  EleventhSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol EleventhSlideEntityProtocol {
    func screenSettingsEleventhScreen() -> ScreenSet
}

class EleventhSlideEntity: EleventhSlideEntityProtocol {
    weak var interactor: EleventhSlideInteractorProtocol?
    
    func screenSettingsEleventhScreen() -> ScreenSet {
        SetContentEleventhScreen.getSettingsEleventhScreen()
    }
}

struct SetContentEleventhScreen {
    let pictureSlide: String
    let labelText: String
}

extension SetContentEleventhScreen {
    static func getSettingsEleventhScreen() -> ScreenSet {
        let contentScreen = SetContentScreen(pictureSlide: "slide10", labelText: "Распределение модулей между экранами")
        let content = ScreenSet(contentScreen.pictureSlide, contentScreen.labelText)
        return content
    }
}

