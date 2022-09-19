//
//  Interactor.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// протокол
// слабая ссылка на презентер

protocol SlideInteractorProtocol: AnyObject {

}

class SlideInteractor: SlideInteractorProtocol {
    weak var presenter: SlidePresenterProtocol?
}

