//
//  KeyBoardLayout.swift
//  Calculator SwiftUI
//
//  Created by Junjie Li on 5/7/21.
//

import SwiftUI

struct KeyBoardLayout<buttonView>: View where buttonView: View {
    var buttons: [String]
    var viewForButton: (String) -> buttonView
    
    init(buttons: [String], viewForButton: @escaping (String) -> buttonView){
        self.buttons=buttons
        self.viewForButton=viewForButton
    }
    
    var body: some View {
        GeometryReader{geometry in
            ForEach(0..<buttons.count){index in
                LayoutForButton(index: index, size: geometry.size)
            }
        }
    }
    
    func LayoutForButton(index: Int,size: CGSize)->some View{
        var buttonSize: CGSize
        if index > 15{
            buttonSize = CGSize(
                width: size.width / CGFloat(3),
                height: size.height / CGFloat(5)
            )
        }
        else{
            buttonSize = CGSize(
                width: size.width / CGFloat(4),
                height: size.height / CGFloat(5)
            )
        }
        

        let buttomPosition = CGPoint(
            x: (CGFloat(index % 4) + 0.5) * buttonSize.width,
            y: (CGFloat(index / 4) + 0.5) * buttonSize.height
        )
        

        return viewForButton(buttons[index])
            .frame(width: buttonSize.width, height: buttonSize.height)
            .position(buttomPosition)
    }
}


struct KeyBoardLayout_Previews: PreviewProvider {
    static var previews: some View {
        KeyBoardLayout(buttons: CalculatorViewModel().buttons){button in
            return ButtonView(button: button)
        }
    }
}
