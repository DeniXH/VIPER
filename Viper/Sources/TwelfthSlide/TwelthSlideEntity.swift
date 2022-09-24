//
//  TwelthSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

protocol TwelthSlideEntityProtocol {
    func screenSettingsTwelthScreen() -> ScreenSet
}

class TwelthSlideEntity: TwelthSlideEntityProtocol {
    weak var interactor: TwelthSlideInteractorProtocol?
    
    func screenSettingsTwelthScreen() -> ScreenSet {
        SetContentTwelthScreen.getSettingsTwelthScreen()
    }
}

struct SetContentTwelthScreen {
    let pictureSlide: String
    let labelText: String
}

extension SetContentTwelthScreen {
    static func getSettingsTwelthScreen() -> ScreenSet {
        let contentScreen = SetContentScreen(pictureSlide: "slide11", labelText: "Состав одного модуля")
        let content = ScreenSet(contentScreen.pictureSlide, contentScreen.labelText)
        return content
    }
}
