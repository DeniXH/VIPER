//
//  Entity.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation
import UIKit
// протокол
// слабая ссылка интерактор
protocol MainSlideEntityProtocol {
    func screenSettingsMainScreen() -> ScreenSet
}

class MainSlideEntity: MainSlideEntityProtocol {
    weak var interactor: MainSlideInteractorProtocol?
    
    func screenSettingsMainScreen() -> ScreenSet {
        SetContentMainScreen.getSettingsMainScreen()
    }
}

struct SetContentMainScreen {
    let pictureSlide: String
    let labelText: String
}

extension SetContentMainScreen {
    static func getSettingsMainScreen() -> ScreenSet {
        let contentScreen = SetContentScreen(pictureSlide: "slide1", labelText: """
                      Ты думал так выглядит настоящий
                      VIPER ?
                      """)
        let content = ScreenSet(contentScreen.pictureSlide, contentScreen.labelText)
        return content
    }
}
