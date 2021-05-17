//
//  ClaculatorViewModel.swift
//  Calculator SwiftUI
//
//  Created by Junjie Li on 5/7/21.
//

import Foundation

class CalculatorViewModel:ObservableObject{
    @Published var calculatorModel = CalculatorModel()
    
    var buttons: [String]{
        return calculatorModel.buttons
    }
    
    func chooseButton(button: String){
        calculatorModel.chooseButton(button: button)
    }
}
