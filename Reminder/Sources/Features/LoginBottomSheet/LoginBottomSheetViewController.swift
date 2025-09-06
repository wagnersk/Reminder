//
//  LoginBottomSheetViewController.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/5/25.
//

import UIKit

class LoginBottomSheetViewController: UIViewController {
    let loginView = LoginBottomSheetView()
    var handleAreaHeight: CGFloat = 50.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginView.delegate = self
        
        
        setupUI()
        setupGesture()
    }
    
    private func setupUI() {
        self.view.addSubview(loginView)
        loginView.translatesAutoresizingMaskIntoConstraints = false
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            loginView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            loginView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            loginView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        
        let heightConstraint = loginView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        
    }
    
    private func setupGesture(){
        
        
    }
    
    private func handlePanGesture(){
        
    }
    
    func animateShow(completion: (() -> Void)? = nil){
        self.view.layoutIfNeeded()
        loginView.transform = CGAffineTransform(translationX: 0, y: loginView.frame.height)
        UIView.animate(withDuration: 0.3, animations: {
            self.loginView.transform = .identity
            self.view.layoutIfNeeded()
        }) {
            _ in
            completion?()
        }
        
    }
    
}

extension LoginBottomSheetViewController:LoginBottomSheetViewDelegate{
    func sendLoginData(user: String, password: String) {
        print(user,password)
        
    }
    
    
}
