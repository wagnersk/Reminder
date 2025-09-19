//
//  ViewControllersFactory.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/19/25.
//

import UIKit

final class ViewControllersFactory:ViewControllersFactoryProtocool {
    func makeSplashViewController(flowDelegate: SplashFlowDelegate) -> SplashViewController {
        let contentView = SplashView()
        let viewController = SplashViewController(contentView:contentView,
                                                  flowDelegate: flowDelegate)
        return viewController

    }
    
    func makeLoginBottomSheetViewController(flowDelegate: LoginBottomSheetFlowDelegate) ->
    LoginBottomSheetViewController {
        let contentView = LoginBottomSheetView()
        let viewController = LoginBottomSheetViewController(contentView:contentView,
                                                            flowDelegate: flowDelegate)
        return viewController
        
    }
    
    let loginView = LoginBottomSheetView()
    
    
}
