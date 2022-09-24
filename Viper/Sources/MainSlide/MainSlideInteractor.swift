//
//  Interactor.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation
// протокол
// слабая ссылка на презентер

protocol MainSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

class MainSlideInteractor: MainSlideInteractorProtocol {
    weak var presenter: MainSlidePresenterProtocol?
    var entity: MainSlideEntityProtocol?
    
    init(entity: MainSlideEntityProtocol) {
        self.entity = entity
    }
    
    func getContentScreens() -> ScreenSet {
        var screen: ScreenSet
        screen.imageName = ""
        screen.labelText = ""
        if let settings = entity?.screenSettingsMainScreen() {
            screen = settings
        }
        return screen
    }
}
