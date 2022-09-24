//
//  ThirteenthSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

protocol ThirteenthSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

class ThirteenthSlideInteractor: ThirteenthSlideInteractorProtocol {
    weak var presenter: ThirteenthSlidePresenterProtocol?
    var entity: ThirteenthSlideEntityProtocol?
    
    init(entity: ThirteenthSlideEntityProtocol) {
        self.entity = entity
    }
    
    func getContentScreens() -> ScreenSet {
        var screen: ScreenSet
        screen.imageName = ""
        screen.labelText = ""
        if let settings = entity?.screenSettingsThirteenthScreen() {
            screen = settings
        }
        return screen
    }
}
