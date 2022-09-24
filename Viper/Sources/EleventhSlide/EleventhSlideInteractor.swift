//
//  EleventhSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

protocol EleventhSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

class EleventhSlideInteractor: EleventhSlideInteractorProtocol {
    weak var presenter: EleventhSlidePresenterProtocol?
    var entity: EleventhSlideEntityProtocol?
    
    init(entity: EleventhSlideEntityProtocol) {
        self.entity = entity
    }
    
    func getContentScreens() -> ScreenSet {
        var screen: ScreenSet
        screen.imageName = ""
        screen.labelText = ""
        if let settings = entity?.screenSettingsEleventhScreen() {
            screen = settings
        }
        return screen
    }
}
