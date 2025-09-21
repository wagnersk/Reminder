//
//  SplashViewController.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/4/25.
//
import UIKit

class SplashViewController:UIViewController {
    let contentView: SplashView
 
    public weak var flowDelegate: SplashFlowDelegate?
    
    init(contentView:SplashView,
         flowDelegate: SplashFlowDelegate) {
        self.contentView = contentView
        self.flowDelegate = flowDelegate
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGesture()
        startBreathingAnimation()
        
        setup()
    }
    
    
    private func decideNavigationFlow(){
        if let user = UserDefaultsManager.loadUser(), user.isUserSaved {
            flowDelegate?.navigateToHome()
        } else {
            showLoginBottomSheet()
        }
        
    }
    
    private func setup(){
        self.view.addSubview(contentView)
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = Colors.primaryRedBase
        
        setupConstraints()

    }
    
    private func setupConstraints(){
            setupContentViewToBounds(contentView: contentView)
    
    }
    
    private func setupGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showLoginBottomSheet))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func showLoginBottomSheet(){
        animateLogoUp()
        self.flowDelegate?.openLoginBottomSheet()

    }
}

//MARK: - Animations
extension SplashViewController {
    private func startBreathingAnimation() {
        UIView.animate(withDuration: 1.5,
                       delay: 0.0,
                       animations: {
            self.contentView.logoImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            
        },completion: { _ in
            self.decideNavigationFlow()
            
        })
    }
    
    private func animateLogoUp() {
        UIView.animate(withDuration: 0.5,
                       delay: 0.0,
                       options: [.curveEaseInOut],
                       animations: {
            self.contentView.logoImageView.transform = self.contentView.logoImageView.transform.translatedBy(x:0, y: -150)
            
        })
        
    }
    
}
