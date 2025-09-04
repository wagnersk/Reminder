//
//  SplashViewController.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/4/25.
//
import UIKit

class SplashViewController:UIViewController {
    let contentView = SplashView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup(){
        self.view.addSubview(contentView)
        
        setupConstraints()
    }
    
    private func setupConstraints(){
        
        NSLayoutConstraint.activate([
            
                 contentView.topAnchor.constraint(equalTo: view.topAnchor),
                 contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                 contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                 contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
}
