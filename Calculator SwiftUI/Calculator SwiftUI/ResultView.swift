//
//  ResultView.swift
//  Calculator SwiftUI
//
//  Created by Junjie Li on 5/7/21.
//

import SwiftUI

struct ResultView: View {
    @ObservedObject var calculatorViewModel: CalculatorViewModel
    
    var body: some View {
        Text(calculatorViewModel.calculatorModel.result)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
            .minimumScaleFactor(0.4)
    }
}



//
//struct ResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultView()
//    }
//}
