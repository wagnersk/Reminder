//
//  HomeFlowDelegate.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/20/25.
//
import Foundation

public protocol HomeFlowDelegate: AnyObject {
    func navigateToRecipes()
    func logout()

}
