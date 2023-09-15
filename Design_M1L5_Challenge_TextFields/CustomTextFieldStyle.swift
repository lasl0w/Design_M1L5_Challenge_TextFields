//
//  CustomTextFieldStyle.swift
//  Design_M1L5_Challenge_TextFields
//
//  Created by tom montgomery on 9/14/23.
//

import Foundation
import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    
    // must call it with () at the end kind of like an init
    let gradient: LinearGradient = {
        
        LinearGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            startPoint: .leading,
            endPoint: .trailing)
    }()
    // Define it so we can pass it in
    let symbol: String
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        
        
        ZStack {
            // Textfield outline
            RoundedRectangle(cornerRadius: 10)
                .stroke(gradient, lineWidth: 2)
                .frame(height: 40)
            HStack {
                Image(systemName: symbol)
                    .foregroundColor(.gray)
                
                // TextField
                configuration
            }
            .padding()
            // separate the fields vertically too
        }
    }
}
