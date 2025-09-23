//
//  NewReceipt.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/22/25.
//

import UIKit

class NewReceiptViewController: UIViewController {
    private let newReceiveView = NewReceiptView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupActions()
    }
    
    private func setupView() {
        view.backgroundColor = Colors.gray800
        view.addSubview(newReceiveView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        newReceiveView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            newReceiveView.topAnchor.constraint(equalTo: view.topAnchor),
            newReceiveView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newReceiveView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newReceiveView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        
        
    }
    
    private func setupActions() {
        newReceiveView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
    }
    
    @objc private func backButtonTapped(){
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
}
