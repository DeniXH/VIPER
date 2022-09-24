//
//  ThirdInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation

protocol ThirdInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

class ThirdInteractor: ThirdInteractorProtocol {
    weak var presenter: ThirdPresenterProtocol?
    var entity: ThirdEntityProtocol?
    
    init(entity: ThirdEntityProtocol) {
        self.entity = entity
    }
    
    func getContentScreens() -> ScreenSet {
        var screen: ScreenSet
        screen.imageName = ""
        screen.labelText = ""
        if let settings = entity?.screenSettingsThirdScreen() {
            screen = settings
        }
        return screen
    }
}
