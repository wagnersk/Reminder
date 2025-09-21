//
//  ViewController+Ext.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/20/25.
//
import UIKit

extension UIViewController {
    func  setupContentViewToBounds(contentView:UIView) {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
       
        ])
    }
}
