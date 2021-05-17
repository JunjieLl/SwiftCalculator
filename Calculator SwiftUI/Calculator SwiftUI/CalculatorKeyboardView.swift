//
//  CalculatorKeyboardView.swift
//  Calculator SwiftUI
//
//  Created by Junjie Li on 5/7/21.
//

import SwiftUI

struct CalculatorKeyboardView: View {
    @ObservedObject var calculatorViewModel: CalculatorViewModel
    var body: some View {
        GeometryReader{geometry  in
            VStack(alignment: .leading){
                ResultView(calculatorViewModel: calculatorViewModel)
                    .padding(.leading)
                    .frame(width: geometry.size.width, height: geometry.size.height*1/4, alignment: .leading)
                
                KeyBoardLayout(buttons: calculatorViewModel.buttons){button in
                    ButtonView(button: button)
                        .onTapGesture(perform: {
                            calculatorViewModel.chooseButton(button: button)
                        })
                }
                
            }
        }
    }
}


struct ButtonView: View{
    var button: String
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color.orange)
            Text(button)
                .foregroundColor(.blue)
                .font(.largeTitle)
                .aspectRatio(contentMode: .fit)
        }
        .padding(CGFloat(5))
    }
}

struct CalculatorKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorKeyboardView(calculatorViewModel: CalculatorViewModel())
    }
}
