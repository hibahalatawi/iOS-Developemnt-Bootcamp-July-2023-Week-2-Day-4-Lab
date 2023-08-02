//
//  RegisterationFormView.swift
//  Lap4
//
//  Created by Hibah Abdullah Alatawi on 15/01/1445 AH.
//

import SwiftUI

struct RegisterationFormView: View {
    
    //@Environment(\.dismiss) var dismiss
    
    @State private var fullName: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    
    @State private var errorMessage: String = ""
    
    var body: some View {
        
        VStack {
            Form {
                Section {
                    TextField("Full Name", text: $fullName)
                    TextField("Phone Number", text: $phoneNumber)
                        .keyboardType(.numberPad)
                    SecureField("Password", text: $password)
                } footer: {
                    Text(errorMessage)
                        .foregroundColor(.red)
                }
                
                
            }
                // Section {
                Button(action: {
                    registeration()
                }, label: {
                    Text("Register")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .bold()
                        .foregroundColor(.white)
                        .background {
                            Color.blue
                                .cornerRadius(12)
                        }
                        .padding(.horizontal)
                })
               // .frame(width:60, height: 40, alignment: .center)
                
                
                
            
        }
        
    }
    
    private func registeration() {
        if fullName.isEmpty || fullName.count < 4 {
            errorMessage = "Please enter full name."
        } else if phoneNumber.isEmpty || phoneNumber.count < 10 {
            errorMessage = "Please enter phone number."
        } else if password.isEmpty || password.count < 3 {
            errorMessage = "Please enter valid password."
        } else {
            errorMessage = ""
            
          //  dismiss()
        }
       
        
    }
}

struct RegisterationFormView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterationFormView()
    }
}
