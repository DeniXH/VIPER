//
//  TwelthSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

protocol TwelthSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

class TwelthSlideInteractor: TwelthSlideInteractorProtocol {
    weak var presenter: TwelthSlidePresenterProtocol?
    var entity: TwelthSlideEntityProtocol?
    
    init(entity: TwelthSlideEntityProtocol) {
        self.entity = entity
    }
    
    func getContentScreens() -> ScreenSet {
        var screen: ScreenSet
        screen.imageName = ""
        screen.labelText = ""
        if let settings = entity?.screenSettingsTwelthScreen() {
            screen = settings
        }
        return screen
    }
}
