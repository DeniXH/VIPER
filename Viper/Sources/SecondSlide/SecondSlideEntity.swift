//
//  SecondSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
import UIKit
// протокол
// слабая ссылка интерактор
protocol SecondSlideEntityProtocol {
    func screenSettings() -> ScreenSet
}

class SecondSlideEntity: SecondSlideEntityProtocol {
    weak var interactor: SecondSlideInteractorProtocol?
    
    func screenSettings() -> ScreenSet {
        SetContentScreen.getSettingsScreen()
    }
}

struct SetContentScreen {
    let pictureSlide: String
    let labelText: String
}

extension SetContentScreen {
    static func getSettingsScreen() -> ScreenSet {
        let contentScreen = SetContentScreen(pictureSlide: "slide2", labelText: "Настоящий VIPER выглядит так!")
        let content = ScreenSet(contentScreen.pictureSlide, contentScreen.labelText)
        return content
    }
}
