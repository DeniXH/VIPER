//
//  ThirdInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// протокол
// слабая ссылка на презентер

protocol FourthInteractorProtocol: AnyObject {
    func nextStepView() -> (String?, String?, Bool?)
    func previosStepView() -> (String?, String?, Bool?)
}

// Создаем енам состояний
enum State {
   // case one
    case two
    case three
    case four
    case five
    case nextVC
}

class FourthInteractor: FourthInteractorProtocol {
    weak var presenter: FourthPresenterProtocol?

    var isChangeScreen: Bool?

    let modelsView: ModelViews = ModelViews(labelsText: ["V", "I", "P", "E", "R"],
                                            textScreens: ["показывает что скажет Презентер и передает ввод пользователя Презентеру",
                                                          "содержит описание сценария использования",
                                                          "содержит логику отображения и умеет подготавливать данные для представления пользователю, а также реагировать на ввод пользователя",
                                                          "описание предметной модели",
                                                          "пятый слайд про букву R"])
    var currentState = State.two

    func nextStepView() -> (String?, String?, Bool?) {
        // в зависимости от состояния меняем лейбл и меняем дальнейшее состояние
        switch currentState {
//        case .one:
//            currentState = State.two
//            isChangeScreen = nil
//            return (modelsView.labelsText[0],
//                    modelsView.textScreens[0],
//                    isChangeScreen)
        case .two:
            currentState = State.three
            isChangeScreen = nil
            return (modelsView.labelsText[1],
                    modelsView.textScreens[1],
                    isChangeScreen)
        case .three:
            currentState = State.four
            isChangeScreen = nil
            return (modelsView.labelsText[2],
                    modelsView.textScreens[2],
                    isChangeScreen)
        case .four:
            currentState = State.five
            isChangeScreen = nil
            return (modelsView.labelsText[3],
                    modelsView.textScreens[3],
                    isChangeScreen)
        case .five:
            currentState = State.nextVC
            isChangeScreen = nil
            return (modelsView.labelsText[4],
                    modelsView.textScreens[4],
                    nil)
        case .nextVC:
            currentState = State.two
            isChangeScreen = true
            return (nil, nil, isChangeScreen)
        }
    }

    func previosStepView() -> (String?, String?, Bool?) {
        // в зависимости от состояния меняем лейбл и меняем дальнейшее состояние
        switch currentState {
        case .five:
            currentState = State.four
            return (modelsView.labelsText[4],
                    modelsView.textScreens[4],
                    nil)
        case .four:
            currentState = State.three
            return (modelsView.labelsText[3],
                    modelsView.textScreens[3],
                    nil)
        case .three:
            currentState = State.two
            return (modelsView.labelsText[2],
                    modelsView.textScreens[2],
                    nil)
        case .two:
            currentState = State.nextVC
            return (modelsView.labelsText[0],
                    modelsView.textScreens[0],
                    nil)
       // case .one:

        case .nextVC:
            currentState = State.two
            return (nil, nil, true)
        }
    }
}
