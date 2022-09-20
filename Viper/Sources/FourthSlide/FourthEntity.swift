//
//  FourthEntity.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation

protocol FourthEntityProtocol {}

class FourthEntity: FourthEntityProtocol {
    weak var interactor: FourthInteractorProtocol?
}

var firstText = "asdfasdf"
var secondText = "ewqrqrqewrqwe"
var thirdText = "rewrwertrytuyt"
var fourthText = "xc,vncxvnjkdf"


func makeText () -> [String]{ // сделать по другому , сделано для теста
    let arrText = [firstText, secondText, thirdText, fourthText]
    return arrText
}
//var arrText = [firstText, secondText, thirdText, fourthText]

