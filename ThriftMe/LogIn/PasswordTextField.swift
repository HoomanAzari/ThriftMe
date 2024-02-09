//
//  PasswordTextField.swift
//  ThriftMe
//
//  Created by Houman Azari on 2024-02-09.
//
import SwiftUI

struct PasswordTextFieldView: View {
    @Binding private var text: String
    @State private var isSecured: Bool = true
    private var title: String
    
    init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        ZStack(alignment: .trailing) {
            if isSecured {
                SecureField(title, text: $text)
                    .textFieldStyle(.roundedBorder)
                
        
            } else {
                TextField(title, text: $text)
                    .textFieldStyle(.roundedBorder)
            }

            Button(action: {
                isSecured.toggle()
            }) {
                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                    .accentColor(.gray)
                    .padding(.trailing, 10)
            }
        }
    }
}


struct PasswordTextField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordTextFieldView("Hello", text: .constant("Yo"))
    }
}
