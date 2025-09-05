//
//  LoginBottomSheetViewController.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/5/25.
//

import UIKit

class LoginBottomSheetViewController: UIViewController {
    let loginView = LoginBottomSheetView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    private func setupUI() {
        setupConstraints()
    }
    
    private func setupConstraints() {
        self.view.addSubview(loginView)
    }
}
