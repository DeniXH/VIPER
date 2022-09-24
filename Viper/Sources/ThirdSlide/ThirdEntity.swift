//
//  ThirdEntity.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation
import UIKit

protocol ThirdEntityProtocol {
    func screenSettingsThirdScreen() -> ScreenSet
}

class ThirdEntity: ThirdEntityProtocol {
    weak var interactor: ThirdInteractorProtocol?
    
    func screenSettingsThirdScreen() -> ScreenSet {
        SetContentThirdScreen.getSettingsThirdScreen()
    }
}

struct SetContentThirdScreen {
    let pictureSlide: String
    let labelText: String
}

extension SetContentThirdScreen {
    static func getSettingsThirdScreen() -> ScreenSet {
        let contentScreen = SetContentScreen(pictureSlide: "slide3", labelText: "История")
        let content = ScreenSet(contentScreen.pictureSlide, contentScreen.labelText)
        return content
    }
}
