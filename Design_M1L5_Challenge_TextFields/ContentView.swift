//
//  ContentView.swift
//  Design_M1L5_Challenge_TextFields
//
//  Created by tom montgomery on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var text1 = ""
    @State var text2 = ""
    
    var body: some View {
        VStack {
            
            TextField("Name", text: $text1)
                .textFieldStyle(CustomTextFieldStyle(symbol: "person"))
            TextField("Email", text: $text2)
                .textFieldStyle(CustomTextFieldStyle(symbol: "envelope"))
        }
        .padding()

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
