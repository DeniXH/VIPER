//
//  TenthSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

protocol TenthSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

class TenthSlideInteractor: TenthSlideInteractorProtocol {
    weak var presenter: TenthSlidePresenterProtocol?
    var entity: TenthSlideEntityProtocol?
    
    init(entity: TenthSlideEntityProtocol) {
        self.entity = entity
    }
    
    func getContentScreens() -> ScreenSet {
        var screen: ScreenSet
        screen.imageName = ""
        screen.labelText = ""
        if let settings = entity?.screenSettingsTenthScreen() {
            screen = settings
        }
        return screen
    }
}
