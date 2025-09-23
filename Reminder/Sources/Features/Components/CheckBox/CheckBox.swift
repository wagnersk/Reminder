//
//  CheckBox.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/22/25.
//

import UIKit

class CheckBox: UIView {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Typography.input
        label.textColor = Colors.gray200
        label.text = "Tomar Agora"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let checkBox: UIButton = {
        let btn = UIButton(type: .system)
        
        btn.setImage(UIImage(systemName: "square"), for: .normal)
        btn.tintColor = Colors.gray400
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    
    init(title:String){
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = title
        
        setupView()
        
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupView(){
        addSubview(titleLabel)
        addSubview(checkBox)
        
        setupConstraints()
    }
    
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            checkBox.leadingAnchor.constraint(equalTo: leadingAnchor),
            checkBox.centerYAnchor.constraint(equalTo: centerYAnchor),
            checkBox.widthAnchor.constraint(equalToConstant: 24),
            checkBox.heightAnchor.constraint(equalToConstant: 24),
            
            titleLabel.leadingAnchor.constraint(equalTo: checkBox.trailingAnchor, constant: Metrics.small),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: checkBox.centerYAnchor),
            
            self.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        // estado inicial
        
    }
    
    
    
    
}


