//
//  ContentView.swift
//  Calculator SwiftUI
//
//  Created by Junjie Li on 5/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CalculatorKeyboardView(calculatorViewModel: CalculatorViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
