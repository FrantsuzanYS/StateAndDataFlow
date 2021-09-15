//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 13.09.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            //user.name = name
            //user.isRegister.toggle()
            user.setUser(name: name)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
