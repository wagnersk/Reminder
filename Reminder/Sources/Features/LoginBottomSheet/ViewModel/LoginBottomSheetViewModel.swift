//
//  LoginBottomSheetViewModel.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/8/25.
//

import Firebase

class LoginBottomSheetViewModel {
    
    var succesResult:((String)->Void)?
    var errorResult:((String)->Void)?
    
    
    func doAuth(usernameLogin: String, password: String) {
        print(usernameLogin)
        Auth.auth().signIn(withEmail: usernameLogin, password: password){[weak self] authResult, error in
            if let error = error {
                print("Autenticação nao foi com sucesso \(error)")
                self?.errorResult?("Erro ao realizar login, verifique as credenciais digitadas")
                
            } else {
                self?.succesResult?(usernameLogin)
     
            }
            
            
        }
    }
}
