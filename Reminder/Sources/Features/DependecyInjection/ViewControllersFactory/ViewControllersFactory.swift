//
//  ViewControllersFactory.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/19/25.
//

    // func makeLoginBottomSheetController(flowDelegate: LoginBottomSheetFlowDelegate) -> LoginBottomSheetViewController
   // func makeHomeViewController(flowDelegate: HomeFlowDelegate) -> HomeViewController
 

import UIKit

final class ViewControllersFactory: ViewControllersFactoryProtocol {
    func makeSplashViewController(flowDelegate: SplashFlowDelegate) ->
    SplashViewController {
        let contentView = SplashView()
        let viewController = SplashViewController(contentView: contentView,
                                                  flowDelegate: flowDelegate)
        return viewController

    }
     func makeLoginBottomSheetController(flowDelegate: LoginBottomSheetFlowDelegate) ->
    LoginBottomSheetViewController {
        let contentView = LoginBottomSheetView()
        let viewController = LoginBottomSheetViewController(contentView: contentView,
                                                            flowDelegate: flowDelegate)
        return viewController
        
    }
    
     func makeHomeViewController(flowDelegate: HomeFlowDelegate) ->
    HomeViewController {
        let contentView = HomeView()
        let viewController = HomeViewController(contentView: contentView,
                                                flowDelegate: flowDelegate)
        return viewController
        
    }

    
  //  let loginView = LoginBottomSheetView()
    
    
}
