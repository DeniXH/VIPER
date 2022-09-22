//
//  TwelthSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

protocol TwelthSlideInteractorProtocol: AnyObject {
}

class TwelthSlideInteractor: TwelthSlideInteractorProtocol {
    weak var presenter: TwelthSlidePresenterProtocol?
}
