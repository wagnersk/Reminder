//
//  LoginBottomSheetViewDelegate.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/6/25.
//

import UIKit

protocol LoginBottomSheetViewDelegate: AnyObject {
    func sendLoginData(user: String, password: String)
    
}
