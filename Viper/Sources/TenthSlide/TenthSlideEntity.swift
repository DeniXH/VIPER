//
//  TenthSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit
// протокол
// слабая ссылка интерактор
protocol TenthSlideEntityProtocol {
    func screenSettingsTenthScreen() -> ScreenSet
}

class TenthSlideEntity: TenthSlideEntityProtocol {
    weak var interactor: TenthSlideInteractorProtocol?
    
    func screenSettingsTenthScreen() -> ScreenSet {
        SetContentTenthScreen.getSettingsTenthScreen()
    }
}

struct SetContentTenthScreen {
    let pictureSlide: String
    let labelText: String
}

extension SetContentTenthScreen {
    static func getSettingsTenthScreen() -> ScreenSet {
        let contentScreen = SetContentScreen(pictureSlide: "slide9", labelText: "Схема")
        let content = ScreenSet(contentScreen.pictureSlide, contentScreen.labelText)
        return content
    }
}

