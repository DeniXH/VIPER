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
    func nextStepView() -> (String?, String?, String?, Bool?)
    func previosStepView() -> (String?, String?, String?, Bool?)
}

// Создаем енам состояний
enum State {
    case two
    case three
    case four
    case five
    case nextVC
}

class FourthInteractor: FourthInteractorProtocol {
    weak var presenter: FourthPresenterProtocol?
    var entity: FourthEntityProtocol?
    var modelViews: ModelViews

    var isChangeScreen: Bool?

//    struct Models {
//    var labelText: String
//    var textScreens: String
//    var nameLabel: String
//    }
//
//   // var models: (labelText: String, textScreens: String, nameLabel: String)? = nil
//    var models: Models?

    init(entity: FourthEntityProtocol?) {
        self.entity = entity
    }



    var currentState = State.two
    var count = 1
   // var models = (labelText: "", textScreens: "", nameLabel: "")
   // var models = (labelText: String, textScreens: String, nameLabel: String)?(nil)

  //  (labelText: String , textScreens: String, nameLabel: String)
    func nextStepView() -> (String?, String?, String?, Bool?) {
       // var models: (labelText: String, textScreens: String, nameLabel: String)
        // в зависимости от состояния меняем лейбл и меняем дальнейшее состояние
        guard let models: (labelText: String, textScreens: String, nameLabel: String) = entity?.getModel(modelsView: modelViews, position: count) else {}
        switch currentState {
        case .two:
            currentState = State.three
            isChangeScreen = nil
            count += 1
            return (models.labelText,
                    models.textScreens,
                    models.nameLabel,
                    isChangeScreen)
        case .three:
            currentState = State.four
            isChangeScreen = nil
//            guard let models: (labelText: String, textScreens: String, nameLabel: String) = entity?.getModel(modelsView: modelViews, position: count) else {}
            count += 1
            return (models.labelText,
                    models.textScreens,
                    models.nameLabel,
                    isChangeScreen)
        case .four:
            currentState = State.five
            isChangeScreen = nil
//            guard let models: (labelText: String, textScreens: String, nameLabel: String) = entity?.getModel(modelsView: modelViews, position: count) else {}
            count += 1
            return (models.labelText,
                    models.textScreens,
                    models.nameLabel,
                    isChangeScreen)
        case .five:
            currentState = State.nextVC
            isChangeScreen = nil
//            guard let models = entity?.getModel(modelsView: modelViews, position: count) else {}
            count += 1
            return (models.labelText,
                    models.textScreens,
                    models.nameLabel,
                    nil)
        case .nextVC:
            currentState = State.two
            isChangeScreen = true
            return (nil, nil, nil, isChangeScreen)
        }
    }

    func previosStepView() -> (String?, String?, String?, Bool?) {
      //  var models: (labelText: String, textScreens: String, nameLabel: String)
        // в зависимости от состояния меняем лейбл и меняем дальнейшее состояние
        guard let models: (labelText: String, textScreens: String, nameLabel: String) = entity?.getModel(modelsView: modelViews, position: count) else {}

        switch currentState {
        case .five:
            currentState = State.four
//            models = entity.getModel(modelsView: modelViews, position: count)
            count -= 1
            return (models.labelText,
                    models.textScreens,
                    models.nameLabel,
                    isChangeScreen)

        case .four:
            currentState = State.three
//            models = entity.getModel(modelsView: modelViews, position: count)
            count -= 1
            return (models.labelText,
                    models.textScreens,
                    models.nameLabel,
                    isChangeScreen)

        case .three:
            currentState = State.two
//            models = entity.getModel(modelsView: modelViews, position: count)
            count -= 1
            return (models.labelText,
                    models.textScreens,
                    models.nameLabel,
                    isChangeScreen)

        case .two:
            currentState = State.nextVC
//            models = entity.getModel(modelsView: modelViews, position: count)
            count -= 1
            return (models.labelText,
                    models.textScreens,
                    models.nameLabel,
                    isChangeScreen)
        case .nextVC:
            currentState = State.two
            return (nil, nil, nil, isChangeScreen)
        }
    }
}
