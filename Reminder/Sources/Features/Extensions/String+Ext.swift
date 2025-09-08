//
//  String+Ext.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/5/25.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
