//
//  HomeViewController.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/20/25.
//
import UIKit

class HomeViewController:UIViewController {
    let contentView: HomeView
    let flowDelegate: HomeFlowDelegate
    
    init(contentView: HomeView,
         flowDelegate: HomeFlowDelegate){
        
        self.contentView = contentView
        self.flowDelegate = flowDelegate
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupActionForNewRecipe()
        
        setupNavigationBar()
        checkForExistingData()
    }
    
    private func setupNavigationBar() {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.hidesBackButton = true
        let logoutButton = UIBarButtonItem(image: UIImage(named: "log-out-icon"), style: .plain, target: self, action: #selector(logoutAction))
        logoutButton.tintColor = Colors.primaryRedBase
        navigationItem.rightBarButtonItem = logoutButton
    }
    
    private func setup(){
        view.addSubview(contentView)
        view.backgroundColor = Colors.gray600
        contentView.delegate = self
        setupConstraints()
        
    }
    private func setupConstraints(){
        setupContentViewToBounds(contentView: contentView)
    }
    
    private func setupActionForNewRecipe(){
        contentView.newPrescriptionButton.tapAction = { [weak self] in
            self?.didTapNewPrescriptionButton()
        }
          
    }
    
    
    @objc
    private func logoutAction(){
        UserDefaultsManager.removeUser()
        self.flowDelegate.logout()
  
    }
     private func checkForExistingData(){
        if let user = UserDefaultsManager.loadUser(){
            contentView.nameTextField.text = UserDefaultsManager.loadUserName()
             
         }
         
         if let savedImage = UserDefaultsManager.loadProfileImage(){
             contentView.profileImage.image = savedImage
         }
  
    }
    
}

extension HomeViewController: HomeViewDelegate{
    func didTapProfileImage(){
        selectProfileImage()
        
        //chamr metodo quie aprenseta seletor de imagem
    }
    func didTapNewPrescriptionButton(){
        flowDelegate.navigateToRecipes()
    }
}

extension HomeViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    private func selectProfileImage(){
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true)
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let editedImage = info[.editedImage] as? UIImage{
            contentView.profileImage.image = editedImage
            UserDefaultsManager.saveProfileImage(image: editedImage)
            
        } else if let originalImage = info[.originalImage] as? UIImage {
            contentView.profileImage.image = originalImage
            UserDefaultsManager.saveProfileImage(image: originalImage)
            
        }
        
        dismiss(animated: true)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
}
