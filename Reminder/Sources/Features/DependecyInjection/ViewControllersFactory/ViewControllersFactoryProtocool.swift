//
//  ViewControllersFactoryProtocool.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/19/25.
//

protocol ViewControllersFactoryProtocool: AnyObject {
    func makeSplashViewController(flowDelegate:SplashFlowDelegate) -> SplashViewController
    func makeLoginBottomSheetViewController(flowDelegate:LoginBottomSheetFlowDelegate) -> LoginBottomSheetViewController    
}
