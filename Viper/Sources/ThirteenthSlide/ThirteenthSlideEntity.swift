//
//  ThirteenthSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

protocol ThirteenthSlideEntityProtocol {
    func screenSettingsThirteenthScreen() -> ScreenSet
}

class ThirteenthSlideEntity: ThirteenthSlideEntityProtocol {
    weak var interactor: ThirteenthSlideInteractorProtocol?
    
    func screenSettingsThirteenthScreen() -> ScreenSet {
        SetContentThirteenthScreen.getSettingsThirteenthScreen()
    }
}

struct SetContentThirteenthScreen {
    let pictureSlide: String
    let labelText: String
}

extension SetContentThirteenthScreen {
    static func getSettingsThirteenthScreen() -> ScreenSet {
        let contentScreen = SetContentScreen(pictureSlide: "slide12", labelText: "Плюсы и минусы архитектуры")
        let content = ScreenSet(contentScreen.pictureSlide, contentScreen.labelText)
        return content
    }
}
